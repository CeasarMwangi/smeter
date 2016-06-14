<?php

//singletone class 
class DB
{
    private static $_instance = null;//store instance of our db
    private $_pdo,
            $_query,
            $_error = false, 
            $_results,
            $_count = 0;


//private help connect or create and maintain only a single connection to 
//our database
    private function __construct(){
        try{
            $this->_pdo = new PDO('mysql:host='.Config::get('mysql/host').';dbname='. Config::get('mysql/db'), Config::get('mysql/username'),Config::get('mysql/password'));
                //echo 'connected';
        }catch(PDOException $e){
            die($e->getMessage());
        }
    }

    //check the singletone instance
    public static function getInstance(){

            //accessing class/static variable
            //class_name::instance_name
            //self::$_instance
            //self here refer to this class name
            if(!isset(self::$_instance)){
                    self::$_instance =  new DB();
            }
            return self::$_instance;
    }

    public function query($sql, $params = array()){
            $this->_error = false;
            if($this->_query = $this->_pdo->prepare($sql)){
                    //echo 'Successful prepared';
                    $x = 1;
                    if(count($params)){
                            foreach ($params as $param){
                                    $this->_query->bindValue($x, $param);
                                    $x++;
                            }

                    }
                    if($this->_query->execute()){
                            //echo 'Sucessfully executed';

                            //note we want results as objects and not as an array	
                            $this->_results = $this->_query->fetchAll(PDO::FETCH_OBJ);
                            $this->_count = $this->_query->rowCount();
                    }else{
                            $this->_error = true;
                    }
            }
            return $this;
    }



    public function action($action, $table, $where = array()){
            if(count($where)===3){
                    $operators = array('=','>','>=','<','<=');

                    $field    = $where[0];
                    $operator = $where[1];
                    $value    = $where[2];

                    if(in_array($operator, $operators)){
                            //$sql = "SELECT * FROM users WHERE username = 'kanja";

                            $sql = "{$action} FROM {$table} WHERE {$field} {$operator} ? ";
                            if(!$this->query($sql, array($value))->_error){

                                return $this;
                                    
                            }
                    }

            }
            return false;
    }
    public function orderbyaction($action, $table, $where = array()){
            if(count($where)===3){
                    $operators = array('=','>','>=','<','<=');

                    $field    = $where[0];
                    $operator = $where[1];
                    $value    = $where[2];

                    if(in_array($operator, $operators)){
                            //$sql = "SELECT * FROM users WHERE username = 'kanja";

                            $sql = "{$action} FROM {$table} WHERE {$field} {$operator} ? ORDER BY id DESC";
                            if(!$this->query($sql, array($value))->_error){

                                return $this;
                                    
                            }
                    }

            }
            return false;
    }
    
    public function get($table, $where){
            return $this->action('SELECT *',$table,$where );
    }
    
    public function getordered($table, $where){
            return $this->orderbyaction('SELECT *',$table,$where );
    }
    
    public function delete($table, $where){
            return $this->action('DELETE',$table,$where );
    }		
    
    
    	
    public function insert($table, $fields = array()){
            //if(count($fields)){
                    $keys = array_keys($fields);
                    //$values = null;
                    $values = '';
                    $x = 1;

                    foreach ($fields as $field) 
                    {

                            $values .= '?';
                            if($x < count($fields))
                            {
                                    $values .=',';

                            }
                            $x++;
                    }
                    //die($values);

                    //$sql = "INSERT INTO users (username, password, salt) VALUES ()"
                    $sql = "INSERT INTO {$table} (`".implode('`,`', $keys)."`) VALUES ({$values})"; //(` - this is called backtick)					
                   // echo $sql;
                    //die();

                    if(!$this->query($sql, $fields)->error()){
                            return true;
                    }
            //}
            return false;


    }
    
    
    public function update($table, $id, $fields){
            $set = '';
            $x = 1;
            //$sql = "UPDATE users SET password = 'newpassword' WHERE member_id = 3";
            foreach ($fields as $name => $value){
                    $set .= "{$name} = ?";//binding
                    if($x<count($fields)){
                            $set .=', ';
                            //die($set);
                    }
                    $x++;
            }				

            $sql = "UPDATE {$table} SET {$set} WHERE member_id = {$id}";

            //echo $sql;

            if(!$this->query($sql,$fields)->error()){
                    return true;

            }
            return false;
    }
    public function updatewaterunitcost($table, $id, $fields){
            $set = '';
            $x = 1;
            //$sql = "UPDATE users SET password = 'newpassword' WHERE member_id = 3";
            foreach ($fields as $name => $value){
                    $set .= "{$name} = ?";//binding
                    if($x<count($fields)){
                            $set .=', ';
                            //die($set);
                    }
                    $x++;
            }				

            $sql = "UPDATE {$table} SET {$set} WHERE id = {$id}";

            //echo $sql;

            if(!$this->query($sql,$fields)->error()){
                    return true;

            }
            return false;
    }
    public function updatemeter($table, $id, $fields){
            $set = '';
            $x = 1;
            //$sql = "UPDATE users SET password = 'newpassword' WHERE id = 3";
            foreach ($fields as $name => $value){
                    $set .= "{$name} = ?";//binding
                    if($x<count($fields)){
                            $set .=', ';
                            //die($set);
                    }
                    $x++;
            }               

            $sql = "UPDATE {$table} SET {$set} WHERE meter_id = {$id}";

            //echo $sql;

            if(!$this->query($sql,$fields)->error()){
                    return true;

            }
            return false;
    }
    public function setstatus($table, $id, $fields){
            $set = '';
            $x = 1;
            //$sql = "UPDATE users SET password = 'newpassword' WHERE id = 3";
            foreach ($fields as $name => $value){
                    $set .= "{$name} = ?";//binding
                    if($x<count($fields)){
                            $set .=', ';
                            //die($set);
                    }
                    $x++;
            }               

            $sql = "UPDATE {$table} SET {$set} WHERE meterid = {$id}";

            //echo $sql;

            if(!$this->query($sql,$fields)->error()){
                    return true;

            }
            return false;
    }
    
    
    public function results(){
            return $this->_results;
    }
    //return the first result
    //result at position 0
    public function first(){

            //using the above (results) method here
            return $this->results()[0]; //depends on the version of your PHP server
            //return $this->results[0];
    }
    public function next($index=1){

            //using the above (results) method here
            return $this->results()[$index]; //depends on the version of your PHP server
            //return $this->results[0];
    }
    public function error(){
            return $this->_error;
    }	

    public function count(){
            return $this->_count;

    }


    public function selectmeterreadingunionmeter(){


                $sql = "SELECT meter_reading.id,meter_reading.date,meter_reading.amount,
                meter_reading.meter_id,meter.status,meter.member_id
                 FROM meter_reading 
                 INNER JOIN meter
                 ON
                 meter_reading.meter_id = meter.meter_id ORDER BY meter_reading.id DESC";
                
                if(!$this->query($sql)->_error){

                    return $this;
                        
                }
        

            
            return false;
    }	

    public function selectcumulitivemeterreadings($month = '1'){

                $sql = "";
                $start = '';
                $end = '';
                $limit=31;
                if($month == '1')
                {
                    $start = '2015-01-01';
                    $end = '2015-02-01';
                }
                else if($month == '2')
                {
                    $start = '2015-02-01';
                    $end = '2015-03-01';
                    
                }                
                else if($month == '3')
                {
                    $start = '2015-03-01';
                    $end = '2015-04-01';
                    
                }
                else if($month == '4')
                {
                    $start = '2015-04-01';
                    $end = '2015-05-01';
                    
                }else if($month == '5')
                {
                    $start = '2015-05-01';
                    $end = '2015-06-01';
                    
                }else if($month == '6')
                {
                    $start = '2015-06-01';
                    $end = '2015-07-01';
                    
                }else if($month == '7')
                {
                    $start = '2015-07-01';
                    $end = '2015-08-01';
                    
                }else if($month == '8')
                {
                    $start = '2015-08-01';
                    $end = '2015-09-01';
                    
                }else if($month == '9')
                {
                    $start = '2015-09-01';
                    $end = '2015-10-01';
                    
                }else if($month == '10')
                {
                    $start = '2015-10-01';
                    $end = '2015-11-01';
                    
                }else if($month == '11')
                {
                    $start = '2015-11-01';
                    $end = '2015-12-01';
                    
                }else if($month == '12')
                {
                    $start = '2015-12-01';
                    $end = '2016-01-01';
                    
                }
                $sql = "SELECT date,
                SUM(amount) AS 'total'
                 FROM meter_reading WHERE date >= '{$start}' AND date < '{$end}'
                 GROUP BY date
                 ORDER BY date ASC LIMIT {$limit}
                 "; 
                
           
                
                if(!$this->query($sql)->_error){

                    return $this;
                        
                }
        

            
            return false;
    }		

	



    public function select_cumulitive_daily_water_usage(){


$sql = "SELECT SUM(meter_reading.amount)AS 'total',meter_reading.date
FROM meter_reading 
GROUP BY meter_reading.date ORDER BY meter_reading.date DESC";


                if(!$this->query($sql)->_error){

                    return $this;
                        
                }
                   
            return false;
    }

    public function select_cumulitive_monthly_water_usage(){
$sql = "SELECT SUM(meter_reading.amount)AS 'total',meter_reading.date
FROM meter_reading 
GROUP BY EXTRACT(MONTH FROM meter_reading.date) ORDER BY EXTRACT(MONTH FROM meter_reading.date) DESC";
                if(!$this->query($sql)->_error){

                    return $this;
                        
                }
                   
            return false;
    }
    
    
    public function select_payments_u_users(){


$sql = "SELECT payments.id,EXTRACT(MONTH FROM payments.date) AS 'date',payments.amount,
payments.payment_method,payments.member_id,users.name
FROM payments 
INNER JOIN users
ON
payments.member_id = users.member_id ORDER BY payments.id DESC";

                if(!$this->query($sql)->_error){

                    return $this;
                        
                }      
            return false;
    }

//return the total cumulitive amount paid per user
    public function select_totalpaid_payments_u_users(){


$sql = "SELECT payments.id,payments.date,SUM(payments.amount) AS 'amount',
payments.payment_method,payments.member_id,users.name,users.member_id
FROM payments 
INNER JOIN users
ON
payments.member_id = users.member_id GROUP BY users.member_id";

                if(!$this->query($sql)->_error){

                    return $this;
                        
                }      
            return false;
    }
public function select_cumulitive_monthly_payments(){


$sql = "SELECT payments.id,EXTRACT(MONTH FROM payments.date) AS 'date',SUM(payments.amount) AS 'total'
FROM payments 
GROUP BY EXTRACT(MONTH FROM payments.date) ORDER BY payments.id ASC";

                if(!$this->query($sql)->_error){

                    return $this;
                        
                }      
            return false;
    }
        public function select_meter_reading_u_meter_u_users(){


$sql = "SELECT SUM(meter_reading.amount)AS 'total',meter_reading.meter_id,users.member_id,users.name
FROM meter_reading 
INNER JOIN 
meter ON meter_reading.meter_id = meter.meter_id 
INNER JOIN 
users ON meter.member_id = users.member_id

GROUP BY meter_reading.meter_id";


                if(!$this->query($sql)->_error){

                    return $this;
                        
                }
                   
            return false;
    }
    /**************************************************/
//     public function pk_select_individual_monthly_payments(){


// $sql = "SELECT mr.amount,p.amount AS 'amount_paid',m.meter_id,u.name,u.member_id
// FROM users u, meter m, payments p, meter_reading mr
// WHERE
// u.member_id = m.member_id AND p.member_id = m.member_id
// AND mr.meter_id = m.meter_id";

//                 if(!$this->query($sql)->_error){

//                     return $this;
                        
//                 }      
//             return false;
//     }
        public function pk_select_individual_monthly_payments(){


$sql = "SELECT SUM(mr.amount) AS 'amount',m.meter_id,u.name,u.member_id
FROM users u, meter m, payments p, meter_reading mr
WHERE
u.member_id = m.member_id AND p.member_id = m.member_id
AND mr.meter_id = m.meter_id
GROUP BY u.member_id";

                if(!$this->query($sql)->_error){

                    return $this;
                        
                }      
            return false;
    }
}