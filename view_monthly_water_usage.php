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
    $total_water=0;
    $sum_cost=0;
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
     $unitcost = new Unitcost();
    $res = $unitcost->find();
    $d = $unitcost->data();
    $cost_per_unit = $d->next(0)->unit_cost;

    $meterreading = new Meterreading();  
    $result = $meterreading->select_cumulitive_monthly_water_usage(); 

   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Monthly Water Usage</div>
        <table style="width:100%" border="1">
<tr>

    
    <th>No</th>
    <th>Date</th>
    <th>Cost Per Unit</th>
    <th>Water Amount(L)</th>    
    <th>Total Cost</th>
  </tr> 
            <?php
                if(!$result){ echo 'No results'; die(); } 
                 $total_meterreadings = $meterreading->get_total_meterreadings();
                 $data = $meterreading->data();
                for($i =0 ; $i<$total_meterreadings; $i++)
                { 
                  $total_water= $total_water + $data->next($i)->total;
                  $sum_cost = $sum_cost + ($cost_per_unit *$data->next($i)->total);
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->date; ?> </td>
        <td><?php echo $cost_per_unit; ?> </td>
        <td><?php echo $data->next($i)->total; ?> </td>       
        
        <td> <?php echo $cost_per_unit *$data->next($i)->total; ?></td>
</tr> 

            <?php } ?>
<tr>

    <th></th>
    <td></td>
    <th></th>
    <th><?php echo $total_water; ?></th>    
    <th><?php echo $sum_cost; ?></th>
  </tr>
        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>