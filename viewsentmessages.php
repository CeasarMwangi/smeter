<?php
    require_once 'core/init.php';
    include('views/parts/home_header.php');
    /*
     * if user is not logged in and tring to access 
     this page redirect to home page
     * 
     * */
    $user = new User();
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
     $message = new Message();
     
    if(isset($_GET['message_id'])){

        $message->deletemessage($_GET['message_id']);
        
    }
    
    $result = $message->findordered('admin');

   

?>

    <div class="login_form" style="width:800px">

        <div class="form_title">Sent Messages</div>
        <table style="width:100%" border="1">
        <tr>

    
    <th>No</th>
    <th>Title</th>
    <th>From</th>
    <th>Message</th>
    <th>Date</th>
    <th>Author</th>
</tr> 
            <?php
                if(!$result)
    {
        echo 'No results';
    }   
                $total_messages = $message->get_total_messages();
                 $data = $message->data();
                for($i =0 ; $i<$total_messages; $i++)
                { 
               
            ?>
<tr>

    
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->title; ?> </td>
        <td><?php echo $data->next($i)->from; ?> </td>
        <td><?php echo $data->next($i)->message_body; ?> </td>
        <td><?php echo $data->next($i)->date; ?> </td>
        <td><?php echo $data->next($i)->author; ?> </td>
        <td><a style="color:red;" href="viewsentmessages.php?message_id=<?php echo $data->next($i)->id; ?>">Delete</a> </td>
</tr> 

            <?php } ?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>