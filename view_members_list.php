<?php
    require_once 'core/init.php';
    include('views/parts/home_header.php');
    /*
     * if user is not logged in and tring to access 
     this page redirect to home page
     * 
     * */
    $user = new User();
    $result="";
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
    
    if(Input::exists())
    {
        if(Token::check(Input::get('token')))
        {

            $validate = new Validate();
            $validation = $validate->check($_POST, array(
                    'member_id' => array(
                            'required' => true,
                            'min' => 1,
                            'max' => 20,
                            'number' =>true
                        )
                ));

            if($validation->passed())
            {
            try
                {
                   $result = $user->finduserbymember_id(Input::get('member_id'));
                }
                catch(Exception $e)
                {
                    die($e->getMessage());
                }


            }
            else
            {   
                $result = $user->findallordered(); 
            }
        }
    }
    else{
            $result = $user->findallordered(); 
    }
   

   

?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Users List</div>
            <div class="search_form">
                    <form action="" method="post">
                    <table>
                        
                            <td><input type="text" name="member_id" id="member_id" value=""></td>
                            
                        <td>
                            <input type="submit" class="reg_button"value="Search by Member ID">
                        </td>

                    </table>
                        <input type="hidden" name="token" value="<?php echo Token::generate();?>">

                    </form> 
            </div> 
        <table style="width:100%" border="1">
        <tr>

    
    <th>No</th>
    <th>Name</th>
    <th>Member ID</th>
    <th>Phone No</th>
    <th>Email</th>
    <th>Reg Date</th>
</tr> 
            <?php
                if(!$result){ echo 'No results'; } 

               $total_users = $user->get_total_users();

                 $data = $user->data();
                for($i =0 ; $i<$total_users; $i++)
                { 
               
            ?>
<tr>
        <td><?php echo $i+1; ?></td>
        <td><?php echo $data->next($i)->name; ?> </td>
        <td><?php echo $data->next($i)->member_id; ?> </td>
        <td><?php echo $data->next($i)->phone_no; ?> </td>
        <td><?php echo $data->next($i)->email; ?> </td>
        <td><?php echo $data->next($i)->joined; ?> </td>
        
        <td><a target="_blank" style="color:green;" href="sendmessagetouser.php?user_id=<?php echo $data->next($i)->member_id; ?>&user_name=<?php echo $data->next($i)->name; ?>">Send Message</a> </td>
</tr> 

            <?php } ?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>