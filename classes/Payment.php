<?php
class Payment
{
    private $_db,
            $_data,
            $_total_payments;

    public function __construct()
    {
        $this->_db = DB::getInstance();
    }

    public function update($fields = array(), $id=0)
    {
        
        
        if(!($id) || !$this->_db->updatemeter('payments', $id, $fields))
        {
            throw new Exception('There was an error updating the payment.');
        }

    }
    public function create($fields = array())
    {
        if(!$this->_db->insert('payments',$fields))
        {
            throw new Exception("There was a problem adding the payments.");
        }
    }
    public function find($code = null)
    {
        if($code)
        {

            $field = (is_numeric($code)) ? 'member_id': 'transaction_code';
            $data = $this->_db->get('payments', array($field, '=', $code));

            if($data->count())
            {
                $this->_total_payments = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        }
        return 0;
    }
    public function select_individual_monthly_payments()
    {
        
            $data = $this->_db->select_payments_u_users();

            if($data->count())
            {
                $this->_total_payments = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }

    public function pk_select_individual_monthly_payments()
    {
        
            $data = $this->_db->pk_select_individual_monthly_payments();

            if($data->count())
            {
                $this->_total_payments = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }  
    public function select_cumulitive_monthly_payments()
    {
        
            $data = $this->_db->select_cumulitive_monthly_payments();

            if($data->count())
            {
                $this->_total_payments = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
    public function get_total_payments()
    {
        return $this->_total_payments;
    }
    public function data()
    {
        return $this->_data;
    }
   


}