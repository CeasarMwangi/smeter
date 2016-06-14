<?php
require_once 'core/init.php';
include('views/parts/home_header.php');


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
					'unit_cost' => array(
							'required' => true,
							'min' => 1,
							'max' => 20,
                            'number'=>true
                    )
                ));  
        }
        if($validation->passed())
	{
            $unitcost = new Unitcost();
            try
            {
                $unitcost->update(array(
                                'unit_cost'=>Input::get('unit_cost'),
                                'date'=>date('Y-m-d')
                        ));
                Session::flash('home', 'Water unit cost updated successfully');
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
    <div class="form_title">Edit Water Unit Cost</div>
    <form action="" method="post">
        <div class="field">
            <label for="unit_cost"> New Unit Cost</label>
            <input type="text" name="unit_cost" value="" id="unit_cost">
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