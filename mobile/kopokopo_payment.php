<?php
require_once('../loader.php');

$amount= $_POST["amount"]; //title of the message
$code= $_POST["code"]; //the sender


/*
$amount= "1000"; 
$transaction_code= "5re545"; 
*/
if (isset($amount) && isset($transaction_code)) 
{

	$sql = 
	"INSERT INTO payments(`date`,`amount`,`transaction_code`) 
			  VALUES(NOW(),'$amount','$transaction_code')";
	
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
$conn->close();
?>