<?php
class Meterreading
{
    private $_db,
            $_data,
            $_total_meterreadings;

    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function update($fields = array(), $id=0)
    {
        
        
        if(!($id) || !$this->_db->updatemeter('meter_reading', $id, $fields))
        {
            throw new Exception('There was an error updating the meter.');
        }

    }
    public function create($fields = array())
    {
        if(!$this->_db->insert('meter_reading',$fields))
        {
            throw new Exception("There was a problem adding the meter reading.");
        }
    }
    public function find($code = null)
    {
        if($code)
        {

            $field = (is_numeric($code)) ? 'meter_id': 'amount';
            $data = $this->_db->get('meter_reading', array($field, '=', $code));

            if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        }
        return 0;
    }
    public function findmeterreadingunionmeter()
    {
        
            $data = $this->_db->selectmeterreadingunionmeter();

            if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }    
    public function findallordered()
    {

            $data = $this->_db->getordered('meter_reading', array('id', '>', 0));

          if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
    public function get_total_meterreadings()
    {
        return $this->_total_meterreadings;
    }
    public function data()
    {
        return $this->_data;
    }
    public function selectcumulitivemeterreadings($month = '1')
    {
        
            $data = $this->_db->selectcumulitivemeterreadings($month);

            if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }   
    public function select_meter_reading_u_meter_u_users()
    {
        
            $data = $this->_db->select_meter_reading_u_meter_u_users();
            

            if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
    public function select_cumulitive_daily_water_usage()
    {
        
            $data = $this->_db->select_cumulitive_daily_water_usage();
            

            if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
public function select_cumulitive_monthly_water_usage()
    {
        
            $data = $this->_db->select_cumulitive_monthly_water_usage();
            

            if($data->count())
            {
                $this->_total_meterreadings = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
}