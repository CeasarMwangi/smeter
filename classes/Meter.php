<?php
class Meter
{
    private $_db,
            $_data,
            $_total_meters;

    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function update($fields = array(), $id=0)
    {
        
        
        if(!($id) || !$this->_db->updatemeter('meter', $id, $fields))
        {
            throw new Exception('There was an error updating the meter.');
        }

    }
    public function setstatus($fields = array(), $id=0)
    {
        
        
        if(!($id) || !$this->_db->setstatus('meter_status', $id, $fields))
        {
            throw new Exception('There was an error updating the meter.');
        }

    }
    public function create($fields = array())
    {
        if(!$this->_db->insert('meter',$fields))
        {
            throw new Exception("There was a problem adding the meter.");
        }
    }
    public function find($code = null)
    {
        if($code)
        {

            $field = (is_numeric($code)) ? 'meter_id': 'status';
            $data = $this->_db->get('meter', array($field, '=', $code));

            if($data->count())
            {
                $this->_total_meters = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        }
        return 0;
    }
    public function findallordered()
    {

            $data = $this->_db->getordered('meter', array('id', '>', 0));

          if($data->count())
            {
                $this->_total_meters = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
    public function get_total_meters()
    {
        return $this->_total_meters;
    }
    public function data()
    {
        return $this->_data;
    }
    
}