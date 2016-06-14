<?php
require_once('loader.php');

//http://localhost/watermeter/get_total_bill.php

//$meter_id= $_POST['meter_id'];
//$member_id= $_POST['member_id'];
$meter_id=5;
$member_id= 5;

	$sql_1 = "SELECT SUM(amount) AS 'total_water' FROM meter_reading WHERE `meter_id` = '$meter_id'";
	$sql_2 = "SELECT SUM(amount) AS 'total_paid' FROM payments WHERE `member_id` = '$member_id'";


	$result_1 = mysqli_query($conn, $sql_1);
	$total_water =  mysqli_num_rows($result_1);

	$result_2 = mysqli_query($conn, $sql_2);
	$total_paid =  mysqli_num_rows($result_2);
	
	$json = array();
	$json["bill"] = array();

	if($total_water >= 1 || $total_paid >= 1)
	{
		$json["total"] = '1';
		$ModuleArray1 = array();
        

		  $row1 = mysqli_fetch_array($result_1, MYSQL_ASSOC);		    
		  $ModuleArray1["total_water"]=$row1["total_water"];


		 $row2 = mysqli_fetch_array($result_2, MYSQL_ASSOC);		    
		 $ModuleArray1["total_paid"]=$row2["total_paid"];
		array_push($json["bill"],$ModuleArray1 );

	}else{
		$json = array("total" => '0');
	}

	echo json_encode($json);
	
$conn->close();
?>