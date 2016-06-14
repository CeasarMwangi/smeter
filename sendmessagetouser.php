<?php
	require_once 'core/init.php';
   include('views/parts/home_header.php');


    /*
     * if user is not logged in and tring to access this
      page redirect to login page
     * 
     * */
    $user = new User();
    if(!($user->isLoggedIn()))
    {
        Redirect::to('login.php');
    }





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
					'title' => array(
							'required' => true,
							'min' => 2,
							'max' => 50
						),
					'from' => array(
							'required' => true,
							'min' => 2,
							'max' => 20
						),
					'send_to' => array(
							'required' => true,
							'min' => 2,
							'max' => 20
						),
					'message_body' => array(
							'required' => true,
							'min' => 2,
							'max' => 500
						)

				));

			if($validation->passed())
			{
				//register user

				//echo 'Passed';
				//Session::flash('success', 'You registered successfuly!');
				//header('Location: index.php');

				$message = new Message();

			try
				{
					$user_id = Input::get('user_id');
					$message->create_notification(array(
							'title'=>Input::get('title'),
							'from'=>Input::get('from'),
							'date'=>date('Y-m-d H:i:s'),
							'message_body'=>trim(Input::get('message_body')),
							'send_to'=>Input::get('send_to'),
							'receiver_id'=>$user_id,
							'author'=>'admin'
							
						));

												
						$message->send_new_notification_to_user($user_id);
						
						
						Session::flash('message_sent', 'Success... Message Sent');
					//header('Location: index.php');
					//Redirect::to('home.php');

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
	
<div class="form_title" style="color:green;">
    <?php    
    	if(Session::exists('message_sent')){
        echo Session::flash('message_sent');
       
    }?>
</div>
		<div class="form_title">New Message</div>
		<form action="" method="post">
			<div class="field">
				<label for="from"> From</label>
				<input type="text" name="from" value="<?php echo $user->data()->username; ?>" id="from" readonly>
			</div>		
			<div class="field">
				<label for="title">Title</label>
				<input type="text" name="title" id="title" value="<?php echo Input::get('title');?>" autocomplete="off">
			</div>
			<div class="field">
				<label for="send_to"> Send to</label>
<input type="text" name="send_to" id="send_to" value="<?php echo $_GET['user_name'];?>" readonly>
			</div>
			<div class="field">
				<label for="message_body"> Message</label>
				<textarea rows="4" cols="40" name="message_body" id="message_body" >
					<?php echo Input::get('message_body');?>	
				</textarea>
				
			</div>
			

<input type="hidden" name="user_id" value="<?php echo $_GET['user_id'];?>">
			<input type="hidden" name="token" value="<?php echo Token::generate();?>">
			<div>
				<input type="submit" class="reg_button"value="Send"> or 
				<a href="home.php">Cancel</a>
			</div>


		</form> <!-- end of registration form -->
	</div> <!-- end of reg_form  div -->

<?php
   include('views/parts/footer.php');

?>