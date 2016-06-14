<?php
require_once('../loader.php');

//http://keydigitalsolutionslimited.com//watermeter/activate_user.php


$name= $_POST["name"]; //title of the message
$email= $_POST["email"]; //the sender
$password= $_POST["password"];
$regId= $_POST["regId"];

/*
params.put("regId", regId);
params.put("name", name);
params.put("email", email);
params.put("password", password);
		
*/
/*
$name= "test title"; //title of the message
$email= "peter@gmail.com"; //the sender
$password= "test message"; 
$regId = '12345';

*/
if (isset($name) && isset($email) && isset($password)) 
{

	$sql = "UPDATE users SET `status`='1', `device_regid`='$regId' WHERE `email` = '$email' AND `status`='0' AND `user_group`='2'";
	
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