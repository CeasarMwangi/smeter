<?php
require_once 'core/init.php';
include('views/parts/header.php');
    /*
     * if user is not logged in and tring to access the page redirect to index
     * 
     * */
    $user = new User();
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
                            'password_current' => array(
                                            'required' => true,
                                            'min' => 6
                                    ),
                            'password_new' => array(
                                            'required' => true,
                                            'min' => 6
                                    ),
                            'password_new_again' => array(
                                            'required' => true,
                                            'min' => 6,
                                            'matches' => 'password_new'
                                    )
            ));
            if($validation->passed())
            {
                if(Hash::make(Input::get('password_current'),$user->data()->salt) !== $user->data()->password )
                {
                    echo 'Wrong password';
                }
                else
                {
                    $salt = Hash::salt(32);
                    $user->update(array(
                            'password'=>Hash::make(Input::get('password_new'),$salt),
                            'salt'=>$salt
                    ));
                    $user->logout();
                    Session::flash('password_changed_successfully', 'You password has been changed successfully');
                    Redirect::to('password_changed_successfully.php');
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
    }
?>
<div class="change_password_form">
    <div class="form_title">Change Password</div>
    <form action="" method="post">
        <div class="field">
            <label for="username">Old password</label>
            <input type="password" name="password_current" value="" id="password_current">
        </div>

        <div class="field">
            <label for="password"> New password</label>
            <input type="password" name="password_new" id="password_new">
        </div>

        <div class="field">
            <label for="password_again"> New password again</label>
            <input type="password" name="password_new_again" id="password_new_again">
        </div>	
        <input type="hidden" name="token" value="<?php echo Token::generate();?>">
        <div>
            <input type="submit" class="change_pass_button" value="Update">
            <a href="index.php">Cancel</a>
        </div>
    </form>
    
</div> <!-- end of change_password_form div -->

<?php
   include('views/parts/footer.php');

?>
