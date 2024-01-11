<?php
	

	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$baza = 'moja_strona';
	
	$link = mysqli_connect($dbhost, $dbuser, $dbpass);
	if(!$link) echo '<b>przerwane połączenie </b>';
	if(!mysqli_select_db($link, $baza)) echo 'nie wybrano bazy';

	$login = 'admin@wp.pl';
	$pass = 'password';
	$config = array(
		'smtp_host' => 'smtp.gmail.com',
		'smtp_auth' => true,
		'smtp_username' => 'arczibiceq@gmail.com',
		'smtp_password' => 'norw bhlc vqiv hmmj',
		'smtp_secure' => 'tls',
		'smtp_port' => 587,
	);
?>