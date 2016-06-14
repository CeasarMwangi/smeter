<?php
    require_once 'core/init.php';
    require_once('loader.php');
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
    $i=0;
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
     $unitcost = new Unitcost();
    $res = $unitcost->find();
    $d = $unitcost->data();
    $cost_per_unit = $d->next(0)->unit_cost;
 

   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Water Bills</div>
        <table style="width:100%" border="1">
<tr>

    
    <th>No</th>
    <th>Meter ID</th>
    <th>Member ID</th>
    <th>Name</th>
    <th>Total Cost </th>
    <th>Total Paid</th>
    <th>Balance</th>
    

</tr> 
<?php
    $sql_1 = "SELECT name,member_id FROM users";
    $result_1 = mysqli_query($conn, $sql_1);
while ($row = mysqli_fetch_array($result_1, MYSQL_ASSOC))
{
	$member_id = $row['member_id'];
	$name= $row['name'];

    $sql_2 = "SELECT meter_id FROM meter WHERE member_id = '$member_id'";
    $result_2 = mysqli_query($conn, $sql_2);
    $row = mysqli_fetch_array($result_2, MYSQL_ASSOC);
    $meter_id = $row['meter_id'];

    $sql_3 = "SELECT SUM(amount) AS 'total_water' FROM meter_reading WHERE `meter_id` = '$meter_id'";
    $result_3 = mysqli_query($conn, $sql_3);
    $row = mysqli_fetch_array($result_3, MYSQL_ASSOC);
    $total_water = $row['total_water'];

    $sql_4 = "SELECT SUM(amount) AS 'total_paid' FROM payments WHERE `member_id` = '$member_id'";
    $result_4 = mysqli_query($conn, $sql_4);
    $row = mysqli_fetch_array($result_4, MYSQL_ASSOC);
    $total_paid = $row['total_paid'];
    if($total_paid==='null'){
    	 $total_paid=0;
    }










?>
<tr>
		<td><?php echo $i+1; ?></td>
		<th><?php echo $meter_id; ?></th>
		<th><?php echo $member_id; ?></th>
		<th><?php echo $name; ?></th>
		<th><?php echo $total_water*$cost_per_unit; ?></th>
		<th style="color:green;"><?php echo $total_paid; ?></th>
		<th style="color:red;"><?php echo ($total_water*$cost_per_unit)-$total_paid; ?></th>
</tr> 

            <?php 	
            		 }//end of while loop?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>