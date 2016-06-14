<?php
    require_once 'core/init.php';
   include('views/parts/header.php');

?>
        <div class="content">
<?php
    if(Session::exists('home')){
            echo '<p>'. Session::flash('home') .'</p';
    }

    $user = new User();

    if($user->isLoggedIn())
    {
        Redirect::to('home.php');
        //Redirect::to('view_daily_water_usage.php');

    }
    else
    {
        // echo '<p>You need to <a href="login.php">Login </a> or <a href="register.php">Register</a></p>';

        Redirect::to('login.php');
    }





   include('views/parts/footer.php');