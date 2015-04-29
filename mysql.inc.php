<?php
/*defining the constants for accessing the database*/
DEFINE('DB_USER','root');
DEFINE('DB_PASSWORD','');
DEFINE('DB_HOST','localhost');
DEFINE('DB_NAME','expresswaycabs');

/*Connect to the database*/
$dbc = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
 if(! $dbc )
          {
           die('Could not connect: ' . mysqli_error());
          }
/*Establish character set*/
mysqli_set_charset($dbc,'utf8');

/*Defining a function to make data safe to use in queries(preventing SQL Injection atttacks)*/
function escape_data($data){
   global $dbc;
   if(get_magic_quotes_gpc())$data = stripslashes($data);
   return mysqli_real_escape_string(trim($data),$dbc);
}

/*defining a function for protecting passwords*/
function get_password_hash($password){
   global $dbc;
   return mysqli_real_escape_string($dbc,SHA1($password,true));
}