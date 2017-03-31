<!DOCTYPE html>
<html>
<head>
<title>Pratikum Pemrograman WEB</title>
</head>
<body style=background-color:lightgray>
<div class= "wrap">
	<div class="header">
		<h1>Latihan Database</h1>
		<p>Tiada Hari Tanpa Latihan</p>
	</div>
	<div class="menu">
		<ul>
			<li> <a href="home_admin.php">Home</li>
			<li> <a href="create.php">Create</li>
			<li> <a href="read.php">Read</li>
			<li> <a href="update.php">Update</li>
			<li> <a href="delete.php">Delete</li>
		</ul>
	</div>
</div>
<?php
require 'koneksi.php';
session_start();
if($_SESSION['username']){
echo "Home Admin, selamat datang: ".$_SESSION['username'];?>
<br>
<a href="logout.php">Logout</a>
<?php } else{
header('location: ./login.php');
}
?>
</body>
</html>