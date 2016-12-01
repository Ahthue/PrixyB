<?php 
session_start();	

	//Suppression des variables de session et de la session	
	$_SESSION = array();	
	session_destroy();	

	// Suppression des cookies de connexion automatique		
	setcookie('PHPSESSID', false, (time() - 3600), '/');
	unset($_COOKIE['PHPSESSID']);
	//Redirection vers la page inex
	header('location: index.php');
	exit;
?>
