<?php
session_start();

//global variable an array f arrays

//USE SERVER ADDRESS TO AVOID SLOWING PROCESSING DOWN 
//DOING DNS TABLE LOOK UP
$GLOBALS['config'] = array(
	'mysql' => array(
			'host' => '127.0.0.1',
			'username' => 'keydigit_kanja',
			'password' => 'kanja@2015',
			'db' => 'keydigit_watermeter'
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

//autoloading class as the need arise/ when required

//like when you do $db = new DB(); the DB class in loaded automatically 
//dont need to maintain a list of required classes
spl_autoload_register(function($class){
	require_once 'classes/'.$class.'.php';
});
require_once 'functions/sanitize.php';

if(Cookie::exists(Config::get('remember/cookie_name')) && !Session::exists(Config::get('session/session_name')))
{
   $hash = Cookie::get(Config::get('remember/cookie_name'));
   $hashheck = DB::getInstance()->get('users_session',array('hash','=',$hash));
   
   if($hashheck->count())
   {
     $user = new User($hashheck->first()->user_id);  
      $user->login();
     
   }
}