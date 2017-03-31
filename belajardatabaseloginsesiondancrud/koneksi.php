<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$dbnm  = "pweb";
	$conn = mysql_connect ($host, $user, $pass);
	if($conn){
		$buka =mysql_select_db($dbnm);
		if(!$buka){
			die ("Databasae tidak  ditemukan");
		}
	}else{
		die("server MySQL Tidak Terhubung");
	}
?>