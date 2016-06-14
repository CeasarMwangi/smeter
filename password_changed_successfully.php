<?php
  require_once 'core/init.php';
   include('views/parts/header.php');


    /*
     * if user is logged in and trying to access login redirect to home page
     * 
     * */
    $user = new User();
    if($user->isLoggedIn() || !(Session::exists('password_changed_successfully')))
    {
        Redirect::to('index.php');
    }
?>
<div class="content">
        <p> <?php if(Session::exists('password_changed_successfully')){ 
            echo Session::flash('password_changed_successfully');}?></p>

        <ul>
            <li><a href="login.php">Proceed to login</a></li>


        </ul>

</div>
<?php
   include('views/parts/footer.php');

?>