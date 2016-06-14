<?php
require_once('loader.php');

//http://localhost/watermeter/read_messages_from_mobile.php

	$sql = "SELECT * FROM message ORDER BY `id` DESC";

	$result = mysqli_query($conn, $sql);
	$total_messages =  mysqli_num_rows($result);
	$json = array();

	if($total_messages >= 1)
	{
		$json = array("totalmessages" => $total_messages);

		  while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)){
		    
		    $json['messageslist'][]=$row; 
		  }
		 // $json['totalitems'][]=$total_records;
	}else{
		$json = array("totalmessages" => '0');
	}

	echo json_encode($json);
	
$conn->close();
?>