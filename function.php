<?php

   //Storing new user and returns user details
   
   function storeUser($name, $email, $pass, $gcm_regid) {
	   
	 $res = mysql_query("SELECT * FROM mobitender_users WHERE gcm_regid = '$gcm_regid'") or die(mysql_error());
            // return user details
            if (mysql_num_rows($res) <= 0) {   
        // insert user into database
        $result = mysql_query("INSERT INTO mobitender_users(name, email, password, gcm_regid, created_at) VALUES('$name', '$email', '$pass', '$gcm_regid', NOW())");
		
        // check for successful store
        if ($result) {			
            // get user details
            $id = mysql_insert_id(); // last inserted id
            $result = mysql_query("SELECT * FROM mobitender_users WHERE id = $id") or die(mysql_error());
            // return user details
            if (mysql_num_rows($result) > 0) {
                return mysql_fetch_array($result);
            } else {
                return false;
            }			
        } else {
            return false;
        }
        }else{
       return(updateUserDetails($name, $email, $pass, $gcm_regid));
     
        }
    }
    
    
function updateuserDetails($name, $email, $pass, $gcm_regid){
$res = mysql_query("SELECT * FROM mobitender_users WHERE gcm_regid = '$gcm_regid'") or die(mysql_error());
            // return user details
            if (mysql_num_rows($res) == 1) { 
            $result = mysql_query("UPDATE mobitender_users SET name='$name',email='$email',password='$pass' WHERE gcm_regid = '$gcm_regid'");
            // check for success
        if ($result) {
			
		return "1";
        } else {
            return "0";
        }

}else{
return "0";
}

}



   function storeSubscription($gcm_regid) {
	   
	   $res = mysql_query("SELECT * FROM subscription WHERE reg_id = '$gcm_regid'") or die(mysql_error());
            // return user details
            if (mysql_num_rows($res) <= 0) {
        // insert user into database
        $result = mysql_query("INSERT INTO subscription(reg_id) VALUES('$gcm_regid')");
		
        // check for successful store
        if ($result) {
			
            // get user details
            $id = mysql_insert_id(); // last inserted id
            $result = mysql_query("SELECT * FROM subscription WHERE id = '$gcm_regid'") or die(mysql_error());
            // return user details
            if (mysql_num_rows($result) > 0) {
                return mysql_fetch_array($result);
            } else {
                return false;
            }
			
        } else {
            return false;
        }
        }
    }
    
    
    
    
   function updateSubscription($supply,$disposal,$consultancy,$reg_id,$construction) {
	   $res = mysql_query("SELECT * FROM subscription WHERE reg_id = '$reg_id'") or die(mysql_error());
            // return user details
            if (mysql_num_rows($res) == 1) {
        // UPDATE 
        $result = mysql_query("UPDATE subscription SET supply=$supply,disposal=$disposal,consultancy=$consultancy,construction=$construction WHERE reg_id='$reg_id'");
		
        // check for successful store
        if ($result) {
			
		return "1";
        } else {
            return "0";
        }
        }
    }
    	   function savePaymentDetails($mpesacode, $regid) {
	   
	 $res = mysql_query("SELECT * FROM mobitender_users WHERE gcm_regid = '$regid'") or die(mysql_error());
            
            if (mysql_num_rows($res) == 1) {   
	$result = mysql_query("UPDATE mobitender_users SET has_paid=1,mpesa_code='$mpesacode' WHERE gcm_regid = '$regid'");
            // check for success
        if ($result) {
			
		return "1";
        } else {
            return "0";
        }

        }else{
		//do nothing
		return "0";
        }
    }	
    
   function notifySubsribers($category,$msg) {
      $result = mysql_query("SELECT reg_id FROM subscription WHERE $category='1'");
  

if($result )
{
 while($row=mysql_fetch_object($result ))
  {
        $regid= $row->reg_id;
        $_ids = array($regid);
        send_push_notification($_ids, $msg);
  }
     
        
    }
    return true;
    }
    
    
    
    /**
     * Get user by email
     */
   function getUserByEmail($email) {
        $result = mysql_query("SELECT * FROM mobitender_users WHERE email = '$email' LIMIT 1");
        return $result;
    }

    // Getting all registered users
  function getAllUsers() {
        $result = mysql_query("select * FROM mobitender_users");
        return $result;
    }

    // Validate user
  function isUserExisted($email) {
        $result    = mysql_query("SELECT email from mobitender_users WHERE email = '$email'");
        $NumOfRows = mysql_num_rows($result);
        if ($NumOfRows > 0) {
            // user existed
            return true;
        } else {
            // user not existed
            return false;
        }
    }
	
	//Sending Push Notification
   function send_push_notification($registatoin_ids, $message) {
        

        // Set POST variables
        $url = 'https://android.googleapis.com/gcm/send';

        $fields = array(
            'registration_ids' => $registatoin_ids,
            'data' => $message,
        );

//GOOGLE_API_KEY is defined in config.php
        $headers = array(
            'Authorization: key=' . GOOGLE_API_KEY,
            'Content-Type: application/json'
        );
		//print_r($headers);
        // Open connection
        $ch = curl_init();

        // Set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));

        // Execute post
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }

        // Close connection
        curl_close($ch);
      // return GOOGLE_API_KEY." result from gcm is = ".$result;
        
    }
?>