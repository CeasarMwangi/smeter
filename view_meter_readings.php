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
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
    $meterreading = new Meterreading();
    if((isset($_GET['meter_id'])) && (isset($_GET['status'])))
    {
    	$meter = new Meter();
        $meter->update(array(
                            'status'=>$_GET['status']
                        ),
                        $_GET['meter_id']
                    );
                    $meter->setstatus(array(
                            'status'=>$_GET['status']
                        ),
                        $_GET['meter_id']
                    );

        //send message to member and notify of 
        //meter status
    }
    
           $result = $meterreading->findmeterreadingunionmeter(); 

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Meter Readings</div>
        <table style="width:100%" border="1">
        <tr>

    
    <th>No</th>
    <th>Date</th>
    <th>Amount</th>
    <th>Meter ID</th>
    <th>Member ID</th>
    <th>Meter Status</th>
    

</tr> 
            <?php
                if(!$result){ echo 'No results'; } 

                $total_meterreadings = $meterreading->get_total_meterreadings();
                 $data = $meterreading->data();
                for($i =0 ; $i<$total_meterreadings; $i++)
                { 
               
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->date; ?> </td>
        <td><?php echo $data->next($i)->amount; ?> </td>
        <td><?php echo $data->next($i)->meter_id; ?> </td>
        <td><?php echo $data->next($i)->member_id; ?> </td>
        <td><?php echo $data->next($i)->status; ?> </td>
        
        

        
        <td><a  href="view_meter_readings.php?meter_id=<?php echo $data->next($i)->meter_id; ?>&status=<?php 
        if($data->next($i)->status === 'ON')
        {
            echo 'OFF';
        }else{
            echo 'ON';
        }

         ?>">
        <?php
        if($data->next($i)->status === 'ON')
        {
            echo '<p style="color:red">Stop Meter</p>';
        }else{
            echo '<p style="color:green">Start Meter</p>';
        }
        ?>
        </a> </td>
</tr> 

            <?php } ?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>