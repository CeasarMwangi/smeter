<?php
    require_once 'core/init.php';
    include('views/parts/header.php');
    /*
     * if user is not logged in and tring to access 
     this page redirect to index page
     * 
     * */
    $user = new User();
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
 

?>

    <div class="login_form">
        <h2 style="color: red;">Error</h2>
        <a href="home.php">Back Home</a>
    </div>



<?php
include('views/parts/footer.php');

?>