<?php
    require_once 'core/init.php';
    include('views/parts/header.php');
    /*
     * if user is logged in and tring to access login redirect to home page
     * 
     * */
    $user = new User();
    if($user->isLoggedIn())
    {
        Redirect::to('index.php');
    }
    if(Input::exists())
    {
        if(Token::check(Input::get('token')))
        {
            $validate = new Validate();
            $validation = $validate->check($_POST, array(
                            'username' => array(
                                            'required' => true,
                                            'min' => 2,
                                            'max' => 20
                                    ),
                            'password' => array(
                                            'required' => true,
                                            'min' => 6
                                    )
                        ));
            if($validation->passed())
            {
                $user = new User();
                
                $remember = (Input::get('remember') === 'on') ? true :false;
                $login = $user->login($remember, trim(Input::get('username')),trim(Input::get('password')));
                if($login)
                {
                    Session::flash('login_success','Login Success');
                    Redirect::to('home.php');
                }
                else
                {
                    echo 'login failed';

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

    <div class="login_form">
        <div class="form_title">Login</div>
        <form action="" method="post">
            <div class="field">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" value="<?php echo Input::get('username');?>" autocomplete="off">
            </div>

            <div class="field">
                <label for="password"> Password</label>
                <input type="password" name="password" id="password">
            </div>
            <div class="field">
                <label for="remember"> </label>
                    <input type="checkbox" name="remember" id="remember">Remember me
                

            </div>

            <input type="hidden" name="token" value="<?php echo Token::generate();?>">
            <div>
                <input type="submit" class="login_button"value="Login">or 
                <a href="register.php">Click here to Register</a>
            </div>
        </form> <!-- end of login form -->
    </div> <!-- end of login_form div -->



<?php
include('views/parts/footer.php');

?>