   <?php
   require_once 'core/init.php';
   //insert_random_meter_readings.php
    $meterreading = new Meterreading();

    if((isset($_GET['meter_id'])) && (isset($_GET['status'])))
    {

    }
    for($j=1;$j<=30;$j++){
    	$date = "";
    	$meter_id = "";
    	    if($j<10){
				$date = '2015-04-0'.$j;
    		}else{
    			$date = '2015-04-'.$j;
    		}

    	for($i=1;$i<=10;$i++){
    	
    		$meter_id = $i;
    		$amount = rand(50, 400);
    	    $meterreading->create(array(
							'date'=>$date,
							'amount'=>$amount,
							'meter_id'=>$meter_id							
						));
    	}
    }
 

?>