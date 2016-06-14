<?php

require_once('../loader.php');


$regid= $_POST['regId'];
//$regid ="APA91bEzRoF3TP9k1-95hSPuvHgvJqePz0I2nVcsMmtFu60itrqLPoYd97Cl-CcwbbdFUosUDhPefgSKVxnUoruGRb-Oksa4fDifXBOFSiIV1ZiA5oF68br0sQ0zFbGq6a3cdCdhArEcaF2G75Bqdrshmq3ePaD1F8GU5LCJWl1pgBu518nlWzY";

if($regid)
{
	
	$sql1 = "SELECT * FROM users WHERE `device_regid` ='$regid' limit 1";
	$result1= mysqli_query($conn,$sql1);
	
	$total= mysqli_num_rows($result1);
	if($total== 1){
	   
		$row1=mysqli_fetch_object($result1);
		$member_id= $row1->member_id;
		//die();
		
		$sql2 = "SELECT * FROM notifications WHERE `receiver_id` ='$member_id'";
		$result2= mysqli_query($conn,$sql2);
		
		$json = array();
		
		$total_messages = mysqli_num_rows($result2);
		if($total_messages >= 1){
			$json = array("totalnotifications" => $total_messages);
		//echo 'oops';die();
			while ($row2 = mysqli_fetch_array($result2, MYSQL_ASSOC)){
			
				$json['notificationList'][]=$row2;
			}
		}else{
			$json = array("totalnotifications" => '0');
		}
		
		echo json_encode($json);

	
	}
	else
	{
		$json = array("totalnotifications" => '0');
		echo json_encode($json);
	}
}
else
{
	$json = array("totalnotifications" => '0');
	echo json_encode($json);
}
	 
	
mysqli_close($conn);
?>