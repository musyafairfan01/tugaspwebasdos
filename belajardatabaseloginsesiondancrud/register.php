<!DOCTYPE html>
<html>
	<head>
		<title>Praktikum Pemrograman WEB</title>
		<link rel="stylesheet" type="text/css" href="../semantic/dist/semantic.min.css">
		<link rel="stylesheet" type="text/css" href="css.css">
		<script src="../semantic/dist/semantic.min.js"></script>
		<?php
		require 'koneksi.php';
		if(isset($_POST['submit'])){
			$username	=$_POST['username'];
			$password	=password_hash($_POST['password'],PASSWORD_BCRYPT);
			$privileges	=$_POST['privileges'];

			$query		=mysql_query("INSERT into login VALUES('','$username','$password','$privileges')");

			if(query){
				header('location: ./login.php');
			}else{
				echo"Gagal register";
			}
		}
		?>
	</head>
	<body style=background:skyblue>
		<center>
		<form method="POST">
			<h1><u>Register Your Account</u></h1>
			<table>
				<tr>
					<td><b>Username<b></td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>Hak akses</td>
					<td>
						<select name="privileges">
							<option enabled selected>--pilih hak akses--</option>
							<option value="1">Admin</option>
							<option value="0">User biasa</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="Register"></td>
				</tr>
			</table>
		</form>
		</center>
	</body>
</html>