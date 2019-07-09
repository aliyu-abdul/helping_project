<?php
//error_reporting(0);
ob_start();
session_start();
$siteName = "Cipet.in";

//DEFINE("BASE_URL","http://cipetbhopal.com/");
DEFINE("BASE_URL","http://localhost/rainbow/");

DEFINE ('DB_USER', 'root');
DEFINE ('DB_PSWD', ''); 
DEFINE ('DB_HOST', 'localhost'); 
DEFINE ('DB_NAME', 'csrs'); 

date_default_timezone_set('Asia/Calcutta'); 
$con =  new mysqli(DB_HOST,DB_USER,DB_PSWD,DB_NAME);
if($con->connect_error)
die("Failed to connect database ".$con->connect_error );