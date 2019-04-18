<?php 
	ini_set('display_errors', 1);
	error_reporting(E_ALL);
	include_once('resources/config.php'); 
	include_once('resources/init.php'); 

// if ( ! isset($_GET['id']) ) {
// 	header('location: index.php');
// 	die();
// }

print_r($_GET);
fun_del_post($_GET['id']);

//header('location: index.php');
die();

?>