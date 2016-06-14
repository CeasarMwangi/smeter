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
    $meter = new Meter();
    if((isset($_GET['meter_id'])) && (isset($_GET['status'])))
    {
        $meter->update(array(
                            'status'=>$_GET['status']
                        ),
                        $_GET['meter_id']
                    );

        //send message to member and notify of 
        //meter status
    }
    if(Input::exists())
    {
        if(Token::check(Input::get('token')))
        {

            $validate = new Validate();
            $validation = $validate->check($_POST, array(
                    'meter_id' => array(
                            'required' => true,
                            'min' => 2,
                            'max' => 20,
                            'number' =>true
                        )
                ));

            if($validation->passed())
            {
            try
                {
                   $result = $meter->find(Input::get('meter_id'));
                }
                catch(Exception $e)
                {
                    die($e->getMessage());
                }


            }
            else
            {   
               $result = $meter->findallordered(); 
            }
        }
    }
    else{
           $result = $meter->findallordered(); 
    }
   
    


   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Meters List</div>
            <div class="search_form">
                    <form action="" method="post">
                    <table>
                        
                            <td><input type="text" name="meter_id" id="meter_id" value=""></td>
                            
                        <td>
                            <input type="submit" class="reg_button"value="Search by Meter ID">
                        </td>

                    </table>
                        <input type="hidden" name="token" value="<?php echo Token::generate();?>">

                    </form> 
            </div> 


        <table style="width:100%" border="1">
        <tr>

    
    <th>No</th>
    <th>Meter ID</th>
    <th>Member ID</th>
    <th>Status</th>

</tr> 
            <?php
                if(!$result){ echo 'No results'; } 

                $total_meters = $meter->get_total_meters();
                 $data = $meter->data();
                for($i =0 ; $i<$total_meters; $i++)
                { 
               
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->meter_id; ?> </td>
        <td><?php echo $data->next($i)->member_id; ?> </td>
        <td><?php echo $data->next($i)->status; ?> </td>
        

        
        <td><a  href="view_meters_list.php?meter_id=<?php echo $data->next($i)->meter_id; ?>&status=<?php 
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