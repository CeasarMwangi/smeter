<?php
require_once('loader.php');

//http://localhost/watermeter/insert_new_water_meter_reading.php

/*
$amount= $_POST["amount"]; //the amount of water used
$meter_id= $_POST["meter_id"]; //the meter ID

*/

$amount= 55; //the amount of water used
$meter_id= 5; //the meter ID 


if (isset($amount) && isset($meter_id)) 
{
	$sql = 
	"INSERT INTO meter_reading(`date`,`amount`,`meter_id`) 
	VALUES(NOW(),'$amount','$meter_id')";

	$result = mysqli_query($conn, $sql);
	if($result){
		$json = array("response" => '1');
		echo json_encode($json);
	}else{
		$json = array("response" => '0');
		echo json_encode($json);
	}
}
$conn->close();
?>