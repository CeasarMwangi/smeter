<?php

require_once('../loader.php');
require_once '../core/init_mobile.php';


$regid= $_POST['regId'];

/*
$regid ="APA91bEzRoF3TP9k1-95hSPuvHgvJqePz0I2nVcsMmtFu60itrqLPoYd97Cl-CcwbbdFUosUDhPefgSKVxnUoruGRb-Oksa4fDifXBOFSiIV1ZiA5oF68br0sQ0zFbGq6a3cdCdhArEcaF2G75Bqdrshmq3ePaD1F8GU5LCJWl1pgBu518nlWzY";
*/
if($regid)
{
$json = array();	
	$sql1 = "SELECT * FROM users WHERE `device_regid` ='$regid' limit 1";
	$result1= mysqli_query($conn,$sql1);
	
	$total= mysqli_num_rows($result1);
	if($total== 1){
	   
		$row1=mysqli_fetch_object($result1);
		$member_id= $row1->member_id;
		
		$sql2 = "SELECT id,date,amount FROM payments WHERE `member_id` ='$member_id' ORDER BY id DESC";
		$result2= mysqli_query($conn,$sql2);
		$total2 = mysqli_num_rows($result2);
		
		if($total2 >= 1){
		
			$json = array("totalreading" => $total2 );
			$row_1= array(
			'date'=>'Date',
			'amount'=>'Amount');
			$json['readingList'][]=$row_1;
			
			while ($row2 = mysqli_fetch_array($result2, MYSQL_ASSOC)){
			
				$json['readingList'][]=$row2;
			}
			
			
		}else{
			$json = array("totalreading" => '0');
		}
	}else{
	$json = array("totalreading" => '0');
	}
		
		echo json_encode($json);

	

}
else
{
	$json = array("totalreading" => '0');
	echo json_encode($json);
}
	 
	
mysqli_close($conn);
?>