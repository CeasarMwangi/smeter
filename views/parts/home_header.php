<?php
require_once 'core/init.php';
include('views/parts/header.php');
    /*
     * if user is not logged in and tring to access the page redirect to home
     * 
     * */
    $user = new User();
    if(!$user->isLoggedIn())
    {
        Redirect::to('index.php');
    }

?>


    <div class="welcome_user_msg">Welcome <?php echo $user->data()->username; ?> <a href="logout.php">Log out</a></div>
        
<?php

    include('views/parts/mainmenu.php');

?>
<div class="clear"></div>