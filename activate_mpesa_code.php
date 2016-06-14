<?php
require_once('loader.php');

//http://localhost/watermeter/activate_mpesa_code.php

/*
$member_id= $_POST["member_id"]; 
$mpesa_code= $_POST["mpesa_code"]; 

*/

$member_id= 1; //
$mpesa_code= "DER45GR"; //


if (isset($mpesa_code) && isset($member_id)) 
{
		$sql = 
		"SELECT * FROM payments 
		WHERE transaction_code= '$mpesa_code' AND status = '0'";

		$result = mysqli_query($conn, $sql);
		$num =  mysqli_num_rows($result);	
	if($num == 1){	
		$sql = 
		"UPDATE payments SET status ='1',member_id='$member_id' 
		WHERE transaction_code= '$mpesa_code' AND status = '0'";

		$result = mysqli_query($conn, $sql);
		if($result){
			$json = array("response" => '1');
			echo json_encode($json);
		}else{
			$json = array("response" => '0');
			echo json_encode($json);
		}
	}else{
		$json = array("response" => '0');
			echo json_encode($json);
	}
}
$conn->close();
?>