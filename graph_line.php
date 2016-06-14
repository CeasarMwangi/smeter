<?php
    require_once 'core/init.php';
//Include the code
require_once 'phplot.php';

//Define the object
$plot = new PHPlot();

	$result="";
    $month  = '1';
    if(isset($_GET['month'])){
        $month = $_GET['month'];
    }
    $meterreading = new Meterreading();
    $result = $meterreading->selectcumulitivemeterreadings($month);
    $total_meterreadings = $meterreading->get_total_meterreadings();

 	$data = $meterreading->data();



    //echo $data->next($i)->total; 

if($total_meterreadings == '31'){
$example_data = array(
     array('1',$data->next(0)->total),
     array('2',$data->next(1)->total),
     array('3',$data->next(2)->total),
     array('4',$data->next(3)->total),
     array('5',$data->next(4)->total),
     array('6',$data->next(5)->total),
     array('7',$data->next(6)->total),
     array('8',$data->next(7)->total),
     array('9',$data->next(8)->total),
     array('10',$data->next(9)->total),
     array('11',$data->next(10)->total),
     array('12',$data->next(11)->total),
     array('13',$data->next(12)->total),
     array('14',$data->next(13)->total),
     array('15',$data->next(14)->total),
     array('16',$data->next(15)->total),
     array('17',$data->next(16)->total),
     array('18',$data->next(17)->total),
     array('19',$data->next(18)->total),
     array('20',$data->next(19)->total),
     array('21',$data->next(20)->total),
     array('22',$data->next(21)->total),
     array('23',$data->next(22)->total),
     array('24',$data->next(23)->total),
     array('24',$data->next(24)->total),
     array('25',$data->next(25)->total),
     array('27',$data->next(26)->total),
     array('28',$data->next(27)->total),
     array('29',$data->next(28)->total),
     array('30',$data->next(29)->total),
     array('31',$data->next(30)->total)
);
}
else if($total_meterreadings == '30'){
//Define some data
$example_data = array(
     array('1',$data->next(0)->total),
     array('2',$data->next(1)->total),
     array('3',$data->next(2)->total),
     array('4',$data->next(3)->total),
     array('5',$data->next(4)->total),
     array('6',$data->next(5)->total),
     array('7',$data->next(6)->total),
     array('8',$data->next(7)->total),
     array('9',$data->next(8)->total),
     array('10',$data->next(9)->total),
     array('11',$data->next(10)->total),
     array('12',$data->next(11)->total),
     array('13',$data->next(12)->total),
     array('14',$data->next(13)->total),
     array('15',$data->next(14)->total),
     array('16',$data->next(15)->total),
     array('17',$data->next(16)->total),
     array('18',$data->next(17)->total),
     array('19',$data->next(18)->total),
     array('20',$data->next(19)->total),
     array('21',$data->next(20)->total),
     array('22',$data->next(21)->total),
     array('23',$data->next(22)->total),
     array('24',$data->next(23)->total),
     array('24',$data->next(24)->total),
     array('25',$data->next(25)->total),
     array('27',$data->next(26)->total),
     array('28',$data->next(27)->total),
     array('29',$data->next(28)->total),
     array('30',$data->next(29)->total)
);
}
else if($total_meterreadings == '29'){
$example_data = array(
     array('1',$data->next(0)->total),
     array('2',$data->next(1)->total),
     array('3',$data->next(2)->total),
     array('4',$data->next(3)->total),
     array('5',$data->next(4)->total),
     array('6',$data->next(5)->total),
     array('7',$data->next(6)->total),
     array('8',$data->next(7)->total),
     array('9',$data->next(8)->total),
     array('10',$data->next(9)->total),
     array('11',$data->next(10)->total),
     array('12',$data->next(11)->total),
     array('13',$data->next(12)->total),
     array('14',$data->next(13)->total),
     array('15',$data->next(14)->total),
     array('16',$data->next(15)->total),
     array('17',$data->next(16)->total),
     array('18',$data->next(17)->total),
     array('19',$data->next(18)->total),
     array('20',$data->next(19)->total),
     array('21',$data->next(20)->total),
     array('22',$data->next(21)->total),
     array('23',$data->next(22)->total),
     array('24',$data->next(23)->total),
     array('24',$data->next(24)->total),
     array('25',$data->next(25)->total),
     array('27',$data->next(26)->total),
     array('28',$data->next(27)->total),
     array('29',$data->next(28)->total)
);
} 
else if($total_meterreadings=='28')
{
    //Define some data
$example_data = array(
     array('1',$data->next(0)->total),
     array('2',$data->next(1)->total),
     array('3',$data->next(2)->total),
     array('4',$data->next(3)->total),
     array('5',$data->next(4)->total),
     array('6',$data->next(5)->total),
     array('7',$data->next(6)->total),
     array('8',$data->next(7)->total),
     array('9',$data->next(8)->total),
     array('10',$data->next(9)->total),
     array('11',$data->next(10)->total),
     array('12',$data->next(11)->total),
     array('13',$data->next(12)->total),
     array('14',$data->next(13)->total),
     array('15',$data->next(14)->total),
     array('16',$data->next(15)->total),
     array('17',$data->next(16)->total),
     array('18',$data->next(17)->total),
     array('19',$data->next(18)->total),
     array('20',$data->next(19)->total),
     array('21',$data->next(20)->total),
     array('22',$data->next(21)->total),
     array('23',$data->next(22)->total),
     array('24',$data->next(23)->total),
     array('24',$data->next(24)->total),
     array('25',$data->next(25)->total),
     array('27',$data->next(26)->total),
     array('28',$data->next(27)->total),
 
);
}
$plot->SetDataValues($example_data);

//Turn off X axis ticks and labels because they get in the way:
$plot->SetXTickLabelPos('none');
$plot->SetXTickPos('none');

//Draw it
$plot->DrawGraph();
?>
