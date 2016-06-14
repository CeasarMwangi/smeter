<?php
	require_once 'core/init.php';
   include('views/parts/header.php');


    /*
     * if user is logged in and tring to access register page redirect to home
     * 
     * */
    $user = new User();
    if($user->isLoggedIn())
    {
        Redirect::to('index.php');
    }
	//var_dump(Token::check(Input::get('token')));
	//die();

	//check to see if the button on the form was clicked
	//calling a static function/method
	if(Input::exists())
	{
			//echo 'submitted oooops';

		//validate that the token exists and is valid
		//calling a static function/method
		if(Token::check(Input::get('token')))
		{

			//echo 'submitted i have been run';

			//echo $_POST['username'];
			//echo Input::get('username');//getter method
			$validate = new Validate();
			$validation = $validate->check($_POST, array(
					'username' => array(
							'required' => true,
							'min' => 2,
							'max' => 20,
							'unique' => 'users'//username should be unique in the users table
						),
					'password' => array(
							'required' => true,
							'min' => 6
						),
					'password_again' => array(
							'required' => true,
							'matches' => 'password'
						),
					'name' => array(
							'required' => true,
							'min' => 2,
							'max' => 50
						),
					'phone_no' => array(
							'required' => true,
							'min' => 2,
							'max' => 20,
							'number'=>true,
							'unique' => 'users'
						),
					'email' => array(
							'required' => true,
							'min' => 2,
							'max' => 50,
							'unique' => 'users'
							),
					'member_id' => array(
							'required' => true,
							'min' => 2,
							'max' => 50,
							'unique' => 'users'
						)

				));

			if($validation->passed())
			{
				//register user

				//echo 'Passed';
				//Session::flash('success', 'You registered successfuly!');
				//header('Location: index.php');

				$user = new User();

				//$salt = Hash::salt(32);//this resulted to error during login
				$salt = Hash::random_num();
				try
				{
					
					$sha_pass = Hash::make(trim(Input::get('password')),$salt);
					
					$user->create(array(
							'username'=>trim(Input::get('username')),
							'password'=>$sha_pass,
							'salt'=>$salt,
							'name'=>Input::get('name'),
							'joined'=>date('Y-m-d H:i:s'),
							'user_group'=>1,
							'phone_no'=>Input::get('phone_no'),
							'email'=>Input::get('email'),
							'member_id'=>Input::get('member_id')
							
						));
	
					Session::flash('home', 'You have been registered and now you can login');
					//header('Location: index.php');
					Redirect::to('index.php');

				}
				catch(Exception $e)
				{
					die($e->getMessage());
				}


			}
			else
			{	?>

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


	<div class="reg_form">
		<div class="form_title">Create New Admin</div>
		<form action="" method="post">
			<div class="field">
				<label for="username">Username</label>
				<input type="text" name="username" id="username" value="<?php echo Input::get('username');?>" autocomplete="off">
				</div>
			<div class="field">
				<label for="name"> Name</label>
				<input type="text" name="name" value="<?php echo Input::get('name');?>" id="name">
			</div>
			<div class="field">
				<label for="email"> Email</label>
				<input type="email" name="email" value="<?php echo Input::get('email');?>" id="email">
			</div>
			<div class="field">
				<label for="phone_no"> Phone No</label>
				<input type="text" name="phone_no" value="<?php echo Input::get('phone_no');?>" id="phone_no">
			</div>
			<div class="field">
				<label for="member_id"> Employee ID</label>
				<input type="text" name="member_id" value="<?php echo Input::get('member_id');?>" id="member_id">
			</div>					
			<div class="field">
				<label for="password"> Password</label>
				<input type="password" name="password" id="password">
			</div>

			<div class="field">
				<label for="password_again"> Enter Password again</label>
				<input type="password" name="password_again" id="password_again">
			</div>	


			<input type="hidden" name="token" value="<?php echo Token::generate();?>">
			<div>
				<input type="submit" class="reg_button"value="Register"> or 
				<a href="login.php">Click here to Login</a>
			</div>


		</form> <!-- end of registration form -->
	</div> <!-- end of reg_form  div -->

<?php
   include('views/parts/footer.php');

?>