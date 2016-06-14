<?php
require_once('../loader.php');
require_once '../core/init_mobile.php';

$json = array();

$nameUser  = $_POST["name"];
$nameEmail = $_POST["email"];
$pass = $_POST["password"];
$gcmRegID  = $_POST["regId"]; 

if (isset($nameUser) && isset($nameEmail) && isset($pass) && isset($gcmRegID)) {

$salt = Hash::random_num();

$sha_pass = Hash::make(trim($pass,$salt));

$sql = "SELECT * FROM users WHERE `device_regid` = '$gcmRegID' AND `email`='$nameEmail'";
$res = mysqli_query($conn,$sql);
            
            
        if (mysqli_num_rows($res) == 1) {
        	$sql2 =  "UPDATE users SET `password`='$pass',`salt`='$salt' WHERE `device_regid` = '$gcmRegID' AND `email`='$nameEmail'";
            $result = mysqli_query($conn, $sql2);
            // check for success
        if ($result) {
			
		$json = array("passchangestatus" => '1');
        } else {
            $json = array("passchangestatus" => '0');
        }

	}else{
		$json = array("passchangestatus" => '0');
	}



} else {

    $json = array("passchangestatus" => '0');
}
   
echo json_encode($json);
?>