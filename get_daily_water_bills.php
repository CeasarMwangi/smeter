<?php
require_once('loader.php');

//http://localhost/watermeter/get_daily_water_bills.php

//$meter_id= $_POST['member_id'];

$meter_id=9;

	$sql = "SELECT * FROM meter_reading WHERE `meter_id` = '$meter_id' ORDER BY `id` DESC";

	$result = mysqli_query($conn, $sql);
	$total_readings =  mysqli_num_rows($result);
	$json = array();

	if($total_readings >= 1)
	{
		$json = array("totalreadings" => $total_readings);

		  while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)){
		    
		    $json['readingslist'][]=$row; 
		  }
		 // $json['totalitems'][]=$total_records;
	}else{
		$json = array("totalreadings" => '0');
	}

	echo json_encode($json);
	
$conn->close();
?>