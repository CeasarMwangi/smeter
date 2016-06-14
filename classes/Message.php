<?php
class Message
{
    private $_db,
            $_data,
            $_total_messages;

    private $DB_HOST = "localhost";
    private $DB_USER = "keydigit_kanja";
    private $DB_PASSWORD = "kanja@2015";
    private $DB_DATABASE = "keydigit_watermeter";

    //Google Cloud Messaging API Key
    // Place your Google API Key here
    private $GOOGLE_API_KEY = "AIzaSyAkKOPECRu7CUANYEWdAr28oA1c40YGcUg"; 

       //AIzaSyC2GAJcxc7Bt6x8w50K16pbxBJJMxFl3dA 
    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function create($fields = array())
    {
        if(!$this->_db->insert('message',$fields))
        {
            throw new Exception("There was a problem adding the message.");
        }
    }
     public function create_notification($fields = array())
    {
        if(!$this->_db->insert('notifications',$fields))
        {
            throw new Exception("There was a problem adding the notification.");
        }
    }   
    
    
    public function find($message = null)
    {
        if($message)
        {

            $field = (is_numeric($message)) ? 'send_to': 'author';
            $data = $this->_db->get('message', array($field, '=', $message));

            if($data->count())
            {
                $this->_total_messages = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        }
        return 0;
    }
    public function findordered($message = null)
    {
        if($message)
        {

            $field = (is_numeric($message)) ? 'send_to': 'author';
            $data = $this->_db->getordered('message', array($field, '=', $message));

            if($data->count())
            {
                $this->_total_messages = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        }
        return 0;
    }
    

    public function data()
    {
        return $this->_data;
    }
    public function get_total_messages()
    {
        return $this->_total_messages;
    }
    public function deletemessage($where_id){
        return $this->_db->delete('message', array('id', '=', $where_id));
    }

public function send_new_notification_to_user($user_id){

        // connecting to mysql
        $conn = new mysqli($this->DB_HOST, $this->DB_USER, $this->DB_PASSWORD, $this->DB_DATABASE);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
       $msg= array("price" => "New message...");
        $sql = "SELECT `device_regid` FROM users WHERE `member_id` ='$user_id'";
        $result = mysqli_query($conn, $sql);
          

        if($result )
        {
            
         while($row=mysqli_fetch_object($result ))
          {
                $regid= $row->device_regid;
           
                $_ids = array($regid);
                $this->send_push_notification($_ids, $msg);
          }
             
    
            }
    return true;

}


    public function send_new_notification_to_all_users()
    {
        // connecting to mysql
        $conn = new mysqli($this->DB_HOST, $this->DB_USER, $this->DB_PASSWORD, $this->DB_DATABASE);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
       $msg= array("price" => "New message...");
        $sql = "SELECT `device_regid` FROM users WHERE `device_regid`IS NOT NULL";
        $result = mysqli_query($conn, $sql);
          

        if($result )
        {
            
         while($row=mysqli_fetch_object($result ))
          {
                $regid= $row->device_regid;
           
                $_ids = array($regid);
                $this->send_push_notification($_ids, $msg);
          }
             
    
            }
    return true;
    }
    //Sending Push Notification
   function send_push_notification($registatoin_ids, $message) {
        

        // Set POST variables
        $url = 'https://android.googleapis.com/gcm/send';

        $fields = array(
            'registration_ids' => $registatoin_ids,
            'data' => $message,
        );

        $headers = array(
            'Authorization: key=' . $this->GOOGLE_API_KEY,
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
       // echo $result;
        
    }
}