<?php
require_once('../loader.php');

//http://localhost/watermeter/insert_new_message_from_user.php



$meterid= $_GET["meterid"]; 
$amount= $_GET["amount"]; 
$totalamount= $_GET["totalamount"];
$signal= $_GET["signal"];
$status= $_GET["status"];



/*
$meterid= "1111"; //title of the message
$amount= "40"; //the sender
$totalamount=2322;

*/


$json = array();
if (isset($totalamount) && isset($amount) && isset($meterid)) 
{

	$sql = 
	"INSERT INTO meter_reading(`date`,`amount`,`meter_id`,`totalamount`) 
				VALUES(NOW(),$amount,'$meterid',$totalamount)";
	
	$sql2= "SELECT status FROM meter WHERE `meter_id`=$meterid LIMIT 1";
	
	$result = mysqli_query($conn, $sql);
	
	$result2 = mysqli_query($conn, $sql2);
	
	$sql3 = 
	"INSERT INTO meter_status(`last_seen`,`status`,`signal`) 
				VALUES(NOW(),$status,'$signal')";
				
	$result2 = mysqli_query($conn, $sql3 );

 
	
	if($result){
		$json = array("response" => '1');
			$row1=mysqli_fetch_object($result2);
		$meter_status= $row1->status;
		if($meter_status == "ON"){
			$json['meterstatus'][]="METERON";
		}else if($meter_status == "OFF"){
			$json['meterstatus'][]="METEROFF";
		}
		
	}else{
		$json = array("response" => '0');
		
	}

	echo json_encode($json);

}else{
		$json = array("response" => '0');
		echo json_encode($json);
	}
	
$conn->close();
?>