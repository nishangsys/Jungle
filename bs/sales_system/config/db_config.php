<?php
//######### DATABASE INFORMATION ##########//
$db_host = "localhost";
$db_user = "root";
$db_passwd ="";
$db_name = "jungle";

//######### DATABASE CONNECTION ##########//
mysql_connect($db_host, $db_user, $db_passwd);
mysql_select_db($db_name);
session_start();
?>