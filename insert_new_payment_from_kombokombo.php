<?php
require_once('loader.php');

//http://localhost/watermeter/insert_new_payment_from_kombokombo.php

/*
$amount= $_POST["amount"]; //title of the message
$member_id= $_POST["member_id"]; //the sender
$transaction_code= $_POST["transaction_code"];

*/

$amount= 929; //title of the message
$member_id= 1; //the sender
$transaction_code= "DER45GR"; 
$status =0; //should be set to zero by default
$payment_method = "mpesa";


if (isset($amount) && isset($member_id) && isset($transaction_code)&& isset($status)) 
{
	$sql = 
	"INSERT INTO payments(`date`,`amount`,`member_id`,`transaction_code`,`status`,`payment_method`) 
	VALUES(NOW(),'$amount','$member_id','$transaction_code','$status','$payment_method')";

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