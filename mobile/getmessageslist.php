<?php

require_once('../loader.php');


$start= $_POST['start'];
/*
if($start==0){
$sql = "SELECT * FROM message where `id` > '$start' ORDER BY id DESC limit 10";
}else{
$sql = "SELECT * FROM message where `id` < '$start' ORDER BY id DESC limit 10";
}
*/
$sql = "SELECT * FROM message ORDER BY id DESC";
$query = mysqli_query($conn,$sql);


$sql1="SELECT * FROM message";
$query1=mysqli_query($conn,$sql1);

$total_messages =  mysqli_num_rows($query1);



$json = array();

$total_records = mysqli_num_rows($query);
if($total_records >= 1){

$json = array("totalmessages" => $total_messages);

  while ($row = mysqli_fetch_array($query, MYSQL_ASSOC)){
    
    $json['messageList'][]=$row;
    
    
    
    
  }
 // $json['totalitems'][]=$total_records;
}else{
$json = array("totalmessages" => '0');
}
        
    

echo json_encode($json);



mysqli_close($conn );
 
?>