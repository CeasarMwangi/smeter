<?php

$email= $_POST['email'];
$password= $_POST['password'];

$json = array();
if (isset($email) && isset($password)){
		
		$to =$email;
		
		$subject="SMeter Password Recoverly";
$body="Your password is (".$password.")";
if(mail($to,$subject,$body)){

	$json = array("emailstatus" => '1');
}else{
	$json = array("emailstatus" => '0');
	
	
}
}else{
$json = array("emailstatus" => '0');
}

echo json_encode($json);
		
?>