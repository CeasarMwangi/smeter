<?php
require_once 'core/init.php';
include('views/parts/header.php');


    $user = new User();

    /*
     * if user is not logged in and try to access update redirect to home page
     * 
     * */
     
    if(!$user->isLoggedIn())
    {
        Redirect::to('index.php');
    }
    
    if(Input::exists())
    {
        if(Token::check(Input::get('token')))
        {
            $validate = new Validate();
            $validation = $validate->check($_POST, array(
					'name' => array(
							'required' => true,
							'min' => 2,
							'max' => 20
                                            )
                                        ));  
        }
        if($validation->passed())
	{
            $user = new User();
            try
            {
                $user->update(array(
                                'name'=>Input::get('name')
                        ));
                Session::flash('home', 'You profile has been updated successfully');
                Redirect::to('index.php');
            }
            catch(Exception $e)
            {
                die($e->getMessage());
            }
        }
        else
        {   ?>

            <div class="error">

                <?php
                    //show errors

                    //print_r($validation->errors());
                    foreach ($validation->errors() as $error) 
                    {
                        echo $error, '<br>';
                    }
                ?>
            </div>
            <?php
        }
    }
?>
<div class="update_profile_form">
    <div class="form_title">Update profile</div>
    <form action="" method="post">
        <div class="field">
            <label for="name"> Name</label>
            <input type="text" name="name" value="<?php echo $user->data()->name;?>" id="name">
        </div>
        <input type="hidden" name="token" value="<?php echo Token::generate();?>">
        <div>
            <input type="submit" class="update_profile_button" value="Update">
            <a href="index.php">Cancel</a>
        </div>
       
    </form> <!-- end of update profile form -->
</div> <!-- end of update_profile_form div -->



<?php
   include('views/parts/footer.php');

?>