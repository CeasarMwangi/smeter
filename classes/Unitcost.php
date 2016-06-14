<?php
class Unitcost
{
    private $_db,
            $_data,
            $_total_unitcosts;

    public function __construct($user = null)
    {
        $this->_db = DB::getInstance();
    }

    public function update($fields = array(), $id=null)
    {
        $id=1;
        
        if(!$this->_db->updatewaterunitcost('water_unit_cost', $id, $fields))
        {
            //echo $id;
           // print_r($fields);
            throw new Exception('There was an error updating the water unit cost.');
           
        }
    }

    public function find()
    {

            $field = 'id';
            $data = $this->_db->get('water_unit_cost', array($field, '=', 1));

            if($data->count())
            {
                $this->_total_unitcosts = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
    public function data()
    {
        return $this->_data;
    }
}