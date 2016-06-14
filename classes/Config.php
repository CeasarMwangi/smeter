<?php
class Config
{

	//the get function
	// null is the default argument
	//usage $tokenName = Config::get('session/token_name');
	public static function get($path = null)
	{ 
		if($path)
		{

			//$GLOBALS is defined in core/init.php
			$config = $GLOBALS['config']; 
			$path = explode('/', $path); //Break a string into an array

			//print_r($path);
/*

$GLOBALS['config'] = array(
	'mysql' => array(
			'host' => '127.0.0.1',
			'username' => 'root',
			'password' => '',
			'db' => 'usersdb'
		),
	'remember' => array(
			'cookie_name' => 'hash',
			'cookie_expiry' => 604800
		),
	'session' => array(
		'session_name' => 'user',
		'token_name' => 'token'
		)

	);

	*/
			//loop through the array of arrays
			foreach ($path as $bit) 
			{	
				if(isset($config[$bit]))
				{
					//set the config array to the inner array/the array element
					//note $GLOBALS['config'] is an array of arrays
					
					$config = $config[$bit]; //reassign the value of config[$bit] to config

				}
			}
			return $config;
		}
		return false;
	}
}