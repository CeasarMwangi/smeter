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
    $cost_per_unit=0;
    $data="";
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
     $unitcost = new Unitcost();
    $res = $unitcost->find();
    $d = $unitcost->data();
    $cost_per_unit = $d->next(0)->unit_cost;

    $meterreading = new Meterreading();  
    $result = $meterreading->findmeterreadingunionmeter(); 

   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Water Bills</div>
        <table style="width:100%" border="1">
<tr>

    
    <th>No</th>
    <th>Meter ID</th>
    <th>Member ID</th>
    <th>Date</th>
    <th>Amount</th>
    <th>Cost Per Unit</th>
    <th>Total Cost</th>
    

</tr> 
            <?php
                if(!$result){ echo 'No results'; } 

              // echo
                 $total_meterreadings = $meterreading->get_total_meterreadings();
               //die();
                 $data = $meterreading->data();
                for($i =0 ; $i<$total_meterreadings; $i++)
                { 
               //print_r($data->next($i));
               //die();
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->meter_id; ?> </td>
        <td><?php echo $data->next($i)->member_id; ?> </td>
        <td><?php echo $data->next($i)->date; ?> </td>
        <td><?php echo $data->next($i)->amount; ?> </td>
        
        <td><?php echo $cost_per_unit; ?> </td>
        <td> <?php echo $cost_per_unit *$data->next($i)->amount; ?></td>
</tr> 

            <?php } ?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>