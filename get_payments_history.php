<?php
require_once('loader.php');

//http://localhost/watermeter/get_payments_history.php

//$member_id= $_POST['member_id'];
$member_id=1;
	$sql = "SELECT * FROM payments WHERE `member_id` = '$member_id' ORDER BY `id` DESC";

	$result = mysqli_query($conn, $sql);
	$total_payments =  mysqli_num_rows($result);
	$json = array();

	if($total_payments >= 1)
	{
		$json = array("totalpayments" => $total_payments);

		  while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)){
		    
		    $json['paymentslist'][]=$row; 
		  }
		 // $json['totalitems'][]=$total_records;
	}else{
		$json = array("totalpayments" => '0');
	}

	echo json_encode($json);
	
$conn->close();
?>