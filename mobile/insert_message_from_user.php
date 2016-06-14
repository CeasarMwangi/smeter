<?php
require_once('../loader.php');

//http://localhost/watermeter/insert_new_message_from_user.php


$title= $_POST["title"]; //title of the message
$from= $_POST["from"]; //the sender
$message_body= $_POST["message_body"];
$name= $_POST["name"];
/*

$title= "test title"; //title of the message
$from= "kanja user"; //the sender
$message_body= "test message"; 
$date = date('Y-m-d H:i:s'); //NOW();
*/



if (isset($title) && isset($from) && isset($message_body) && isset($name)) 
{

	$sql = 
	"INSERT INTO message(`date`,`message_body`,`from`,`title`) 
	VALUES(NOW(),'$message_body','$name','$title')";
	
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