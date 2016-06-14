<?php
    require_once 'core/init.php';
    include('views/parts/home_header.php');
    /*
     * if user is not logged in and tring to access 
     this page redirect 
     * 
     * */
    $user = new User();
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
     $areacode = new Areacode();
    
    $result = $areacode->findallordered();

   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Area Codes List</div>
        <table style="width:100%" border="1">
        <tr>

    
    <th>No</th>
    <th>Area ID</th>
    <th>Area Name</th>
    <th>Area Code</th>

</tr> 
            <?php
                if(!$result){ echo 'No results'; } 

                $total_areacodes = $areacode->get_total_areacodes();
                 $data = $areacode->data();
                for($i =0 ; $i<$total_areacodes; $i++)
                { 
               
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->id; ?> </td>
        <td><?php echo $data->next($i)->area_name; ?> </td>
        <td><?php echo $data->next($i)->area_code; ?> </td>
       
        <td><a style="color:green;" href="edit_areacode.php?id=<?php echo $data->next($i)->id; ?>&area_name=<?php echo $data->next($i)->area_name; ?>&area_code=<?php echo $data->next($i)->area_code; ?>">Edit</a> </td>
</tr> 

            <?php } ?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>