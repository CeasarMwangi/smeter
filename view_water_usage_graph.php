<?php
    require_once 'core/init.php';
    include('views/parts/home_header.php');
    /*
     * if user is not logged in and tring to access 
     this page redirect
     * 
     * */
    $user = new User();
    $result="";
    $month="";
    $mon='January';
    if(!($user->isLoggedIn()))
    {
        Redirect::to('index.php');
    }
    $meterreading = new Meterreading();
    if(Input::exists())
    {
        $month = Input::get('month');
        if($month == '1'){
            $mon = 'January';
        }else if($month == '2'){
            $mon = 'February';
        }else if($month == '3'){
            $mon = 'March';
        }else if($month == '4'){
            $mon = 'April';
        }else if($month == '5'){
            $mon = 'May';
        }else if($month == '6'){
            $mon = 'June';
        }else if($month == '7'){
            $mon = 'July';
        }else if($month == '8'){
            $mon = 'August';
        }else if($month == '9'){
            $mon = 'September';
        }else if($month == '10'){
            $mon = 'October';
        }else if($month == '11'){
            $mon = 'November';
        }else if($month == '12'){
            $mon = 'December';
        }
    }else{
        $month = '1';

    }
    // $meterreading = new Meterreading();
    // $result = $meterreading->selectcumulitivemeterreadings($month);
    // echo $total_meterreadings = $meterreading->get_total_meterreadings();


?>

    <div class="login_form" style="width:800px">
        <div class="form_title">Water Consumptions for <?php echo $mon;?></div>
        <table style="width:100%" border="1">
        <tr>

    
            <th>Month <p><?php echo $mon;?></p></th>
            <th>            



    <div class="month_form">
        <form  action="" method="post">
            <div class="fields">
<!--                 <label for="send_to"> Month</label> -->
                <select name="month">
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
            </div>

            <div>
                <input type="submit" class="reg_button"value="OK">
            </div>


        </form>
    </div> </th>
        </tr> 
            <?php
 
                 // if(!$result){ echo 'No results'; } 
                 // else{
                 //    // echo 'ok';
                 //    // print_r($result);
                 //    // die();
                 // }

                // $total_meterreadings = $meterreading->get_total_meterreadings();
                //  $data = $meterreading->data();
                for($i =0 ; $i<1; $i++)
                { 
               
            ?>
<tr>
        <td>Liters</td>
        <td>
<!--             <img  src="graph_line_<?php echo $month; ?>.php">
 <img src="graph_line.php?month=<?php echo $month; ?>">
 -->
             <img id= "graph" src="graph_line.php?month=<?php echo $month; ?>">

        </td>
</tr> 

            <?php } ?>

        </table> <!-- end of table -->
    </div> <!-- end of login_form div -->



<?php

include('views/parts/footer.php');

?>