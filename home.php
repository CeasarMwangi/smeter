<?php
    require_once 'core/init.php';
   include('views/parts/header.php');

?>
        <div class="content">
<?php
    if(Session::exists('login_success')){
            echo '<p>'. Session::flash('login_success') .'</p';
       
    }

    $user = new User();

    if($user->isLoggedIn())
    {
       
        Redirect::to('view_daily_water_usage.php');

    }
    else
    {
        // echo '<p>You need to <a href="login.php">Login </a> or <a href="register.php">Register</a></p>';
        Redirect::to('login.php');
    }





   include('views/parts/footer.php');
