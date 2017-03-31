<!DOCTYPE html>
<html>
<head>
<title>Pratikum Pemrograman WEB</title>
</head>
<body style="background:lightblue">
<div class= "wrap">
	<div class="header">
		<h1>Latihan Database</h1>
		<h3>Tiada Hari Tanpa Latihan</h3>
	</div>
	<div class="menu">
		<nav>
			<li> <a href="home_admin.php">Home</li>
			<li> <a href="login.php">Login</li>
			<li> <a href="register.php">Register</li>
		</nav>
	</div>
</div>
<?php
require 'koneksi.php';
session_start();
if($_SESSION['username']){
echo "Home User, selamat datang : ". $_SESSION['username'];?>
<br>
<a href="logout.php">Logout</a>
<?php } else{
header('location: ./login.php');
}
?>
</body>
</html>