<?php
    require_once 'core/init.php';
    include('views/parts/home_header.php');
    /*
     * if user is not logged in and tring to access 
     this page redirect
     * 
     * */
    $user = new User();
    $result="";
    $data="";
    $sum=0;
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
    $payment = new Payment();  
    $result = $payment->select_cumulitive_monthly_payments(); 

   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Cumulitive Monthly Payments</div>
        <table style="width:100%" border="1">
<tr>

    
    <th>No</th>
    <th>Month</th>  
    <th>Amount Paid</th>
  </tr> 
            <?php
                if(!$result){ echo 'No results'; die(); } 
                 $total_payments = $payment->get_total_payments();
                 $data = $payment->data();
                for($i =0 ; $i<$total_payments; $i++)
                { 
                    $sum = $sum + $data->next($i)->total;
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php 
        if($data->next($i)->date == 1){
            echo 'January';
        }else if($data->next($i)->date == 2){
            echo 'February';
        }else if($data->next($i)->date == 3){
            echo 'March';
        }else if($data->next($i)->date == 4){
            echo 'April';
        }else if($data->next($i)->date == 5){
            echo 'May';
        }else if($data->next($i)->date == 6){
            echo 'June';
        }else if($data->next($i)->date == 7){
            echo 'July';
        }else if($data->next($i)->date == 8){
            echo 'August';
        }else if($data->next($i)->date == 9){
            echo 'September';
        }else if($data->next($i)->date == 10){
            echo 'October';
        }else if($data->next($i)->date == 12){
            echo 'November';
        }else if($data->next($i)->date == 12){
            echo 'December';
        }  



        ?> </td>
      
        <td><?php echo $data->next($i)->total; ?></td>
</tr> 

            <?php } ?>
<tr>
    <th></th>
    <th></th>    
    <th><?php echo $sum ;?></th>
</tr>
</table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>