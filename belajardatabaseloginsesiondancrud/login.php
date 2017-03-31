<!DOCTYPE html>
<html>
	<head>
		<title>Pratikum Pemrograman WEB</title>
		
		<?php
		require 'koneksi.php';
		session_start();
		if (isset($_POST['submit'])) {
			$username = $_POST['username'];
			$password = $_POST['password'];
			$query = mysql_query("SELECT * FROM login WHERE username =
			'$username' LIMIT 1");
			$hasil = mysql_fetch_array($query);
			if (password_verify($password, $hasil['password'])) {
				$_SESSION['username'] = $hasil['username'];
				if($hasil['privilege'] == 1){
					header('location: ./home_admin.php');
				} else{
					header('location: ./home_user.php');
				}
			} else {
				echo 'Invalid password.';
			}
		}
		?>
	</head>
	<body style=background:lightgreen>
	<center>
		<form method="POST">
			<h1>Login Page</h1>
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="Login"></td>
				</tr>
			</table>
		</form>
		</center>
	</body>
</html>