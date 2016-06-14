<?php
require_once('../loader.php');
require_once '../core/init_mobile.php';

$json = array();


$transaction_code = $_POST["transaction_code"];
$nameEmail = $_POST["email"];
$gcmRegID  = $_POST["regId"]; 

/*
$transaction_code = "5re545";
$nameEmail = "peter@gmail.com";
$gcmRegID  = "APA91bEzRoF3TP9k1-95hSPuvHgvJqePz0I2nVcsMmtFu60itrqLPoYd97Cl-CcwbbdFUosUDhPefgSKVxnUoruGRb-Oksa4fDifXBOFSiIV1ZiA5oF68br0sQ0zFbGq6a3cdCdhArEcaF2G75Bqdrshmq3ePaD1F8GU5LCJWl1pgBu518nlWzY"; 
*/
if (isset($transaction_code) && isset($nameEmail) && isset($gcmRegID)) {

$sql = "SELECT * FROM users WHERE `device_regid` = '$gcmRegID' AND `email`='$nameEmail'";
$res = mysqli_query($conn,$sql);

$sql_2 = "SELECT * FROM payments WHERE `status` = '0' AND `transaction_code`='$transaction_code'";
$res_2 = mysqli_query($conn,$sql_2);
           
            
        if (mysqli_num_rows($res) == 1 && mysqli_num_rows($res_2) == 1) {
       $row1=mysqli_fetch_object($res);
		$member_id= $row1->member_id;
		
        	$sql2 =  "UPDATE payments SET `status`='1',`member_id`='$member_id' WHERE `transaction_code` = '$transaction_code' AND `status`='0'";
$res2 = mysqli_query($conn,$sql2);

	        if ($res2) {
				
			$json = array("paymentstatus" => '1');
	        } else {
	            $json = array("paymentstatus" => '0');
	        }

	}else{
		$json = array("paymentstatus" => '0');
	}



} else {

    $json = array("paymentstatus" => '0');
}
   
echo json_encode($json);
?>