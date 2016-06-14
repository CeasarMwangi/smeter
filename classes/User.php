<?php
class User
{
    private $_db,
            $_data,
            $_sessionName,
            $_cookieName,
            $_isLoggedIn,
            $_total_users;

    public function __construct($user = null)
    {
        $this->_db = DB::getInstance();

        $this->_sessionName = Config::get('session/session_name');
        $this->_cookieName = Config::get('remember/cookie_name');
        if(!$user)
        {
            if(Session::exists($this->_sessionName))
            {
                $user = Session::get($this->_sessionName);
                if($this->find($user))
                {
                        $this->_isLoggedIn = true;
                }
                else
                {
                    //
                }
            }
        }
        else
        {
            $this->find($user);
        }
    }

    public function create($fields = array())
    {
        if(!$this->_db->insert('users',$fields))
        {
            throw new Exception("There was a problem creating an account.");
        }
    }
    public function find($user = null)
    {
    	
        if($user)
        {
		
            $field = (is_numeric($user)) ? 'member_id': 'username';
            $data = $this->_db->get('users', array($field, '=', $user));

            if($data->count())
            {
		
                $this->_data = $data->first();
                //print_r($this->_data = $data->first());
                return true;
            }
        }
        return false;
    }

    public function finduserbymember_id($member_id = null)
    {
        if($member_id)
        {

            $field = (is_numeric($member_id)) ? 'member_id': 'username';
            $data = $this->_db->get('users', array($field, '=', $member_id));

            if($data->count())
            {

                $this->_total_users = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        }
        return 0;
    }
    public function findallordered()
    {

            $data = $this->_db->getordered('users', array('member_id', '>', 0));

          if($data->count())
            {
                $this->_total_users = $data->count();
                $this->_data = $data;
                return $this->_data;
            }
        
        return 0;
    }
    
    //returns true or false
    public function login($remember = false, $username = null, $password = null)
    {
        if(!$username && !$password && $this->exists())
        {
            Session::put($this->_sessionName, $this->data()->member_id);
        }
        else
        {
            $user = $this->find($username); //here $user is either true or false
            //print_r($user);
            
           	//print_r($this->_data);
           	//die();

            if($user)
            {
                
                if($this->data()->password === Hash::make($password, $this->data()->salt))
                {
                    Session::put($this->_sessionName, $this->data()->member_id);
                     
                    if($remember)
                    {
                    
                        $hash = Hash::unique();
                        
                        $hashCheck = $this->_db->get('users_session', array('user_id','=', $this->data()->member_id));
                       
                        if(!$hashCheck->count())
                        {
                            $this->_db->insert('users_session', array(
                                'user_id' => $this->data()->member_id,
                                'hash' => $hash
                            ));
                        }
                        else
                        {
                           $hash = $hashCheck->first()->hash;
                        }

                        Cookie::put($this->_cookieName,$hash, Cookie::get('remember/cookie_expiry'));

                    }
                    return true;
                }	
            }
                    
        }
        return false;
    }

    public function data()
    {
        return $this->_data;
    }

    public function isLoggedIn()
    {
        return $this->_isLoggedIn;
    }
    public function logout()
    {
        $this->_db->delete('users_session', array('user_id','=',  $this->data()->member_id));
        Session::delete($this->_sessionName);
        Cookie::delete($this->_cookieName);
    }
    public function exists()
    {
        return (!empty($this->_data)) ? true : false;
    }   

    public function update($fields = array(), $id=null)
    {
        if(!$id && $this->isLoggedIn())
        {
            $id = $this->data()->member_id;
        }
        if(!$this->_db->update('users', $id, $fields))
        {
            throw new Exception('There was an error updating your profile. Please try again later.');
        }
    }
        public function get_total_users()
    {
        return $this->_total_users;
    }
}