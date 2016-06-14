<?php

require_once('../loader.php');
require_once '../core/init_mobile.php';


$regid= $_POST['regId'];


$regid ="APA91bEzRoF3TP9k1-95hSPuvHgvJqePz0I2nVcsMmtFu60itrqLPoYd97Cl-CcwbbdFUosUDhPefgSKVxnUoruGRb-Oksa4fDifXBOFSiIV1ZiA5oF68br0sQ0zFbGq6a3cdCdhArEcaF2G75Bqdrshmq3ePaD1F8GU5LCJWl1pgBu518nlWzY";

if($regid)
{
$json = array();	


    $sql_1 = "SELECT `member_id` FROM users WHERE `device_regid`='$regid' LIMIT 1";
    $result_1 = mysqli_query($conn, $sql_1);
while ($row = mysqli_fetch_array($result_1, MYSQL_ASSOC))
{
	$member_id = $row['member_id'];

    $sql_2 = "SELECT meter_id FROM meter WHERE member_id = '$member_id'";
    $result_2 = mysqli_query($conn, $sql_2);
    $row = mysqli_fetch_array($result_2, MYSQL_ASSOC);
    $meter_id = $row['meter_id'];

    $sql_3 = "SELECT SUM(amount) AS 'total_water' FROM meter_reading WHERE `meter_id` = '$meter_id'";
    $result_3 = mysqli_query($conn, $sql_3);
    $row = mysqli_fetch_array($result_3, MYSQL_ASSOC);
    $total_water = $row['total_water'];

    $sql_4 = "SELECT SUM(amount) AS 'total_paid' FROM payments WHERE `member_id` = '$member_id'";
    $result_4 = mysqli_query($conn, $sql_4);
    $row = mysqli_fetch_array($result_4, MYSQL_ASSOC);
    $total_paid = $row['total_paid'];
    if($total_paid==='null'){
    	 $total_paid=0;
    }
$sql123="SELECT `unit_cost` FROM water_unit_cost LIMIT 1";
    $result123 = mysqli_query($conn, $sql123);
    $row123 = mysqli_fetch_array($result123, MYSQL_ASSOC);
    $cost_per_unit= $row123['unit_cost'];
    
    
		$meter_id;
		
		$total_water_cost = $total_water*$cost_per_unit; 
		$total_paid;
		$bill = ($total_water*$cost_per_unit)-$total_paid;
		$total_water= $total_water.' Liters';
		$bill = $bill.' KSh';
		$total_paid =$total_paid.' KSh';
		$total_water_cost = $total_water_cost.' KSh';
		
}

$json = array("totalreading" => '1');

$json['readingList']=array();


//$json['readingList']=array('meterid'=>$meter_id,'totalwaterused'=>$total_water,'totalwatercost'=>$total_water_cost,'totalpaid'=>$total_paid,'waterbill'=>$bill);


array_push($json['readingList'], array('meterid'=>$meter_id,'totalwaterused'=>$total_water,'totalwatercost'=>$total_water_cost,'totalpaid'=>$total_paid,'waterbill'=>$bill));

echo json_encode($json);	

}
else
{
	$json = array("totalreading" => '0');
	echo json_encode($json);
}
	 
	
mysqli_close($conn);
?>