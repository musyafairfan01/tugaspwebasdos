<!DOCTYPE html>
<html>
	<head>
		<title>CRUD PHP</title>
		<?php
		require 'koneksi.php';
		if(isset($_POST['submit'])){
			$berita_judul	= $_POST['berita_judul'];
			$berita_headline	= $_POST['berita_headline'];
			$berita_isi	= $_POST['berita_isi'];
			$berita_author	= $_POST['berita_author'];
			$berita_tanggal	= date('Y-m-d H:i:s');
			$query	=mysql_query("INSERT into berita VALUE('','$berita_judul','$berita_headline','$berita_isi',
				'$berita_author','$berita_tanggal')");
			if(query){
				header('location: ./read.php');
			}else{
				echo "Gagal Input";
			}
		}
		?>
	</head>
	<body>
		<h1><u>Input Data Berita</u></h1>
		<form method="POST">
		<table>
			<tr>
				<td>Judul Berita</td>
				<td><input autocomplete="none" type="text" name="berita_judul"></td>
			</tr>
			<tr>
				<td>Headline Berita</td>
				<td><input type="text" name="berita_headline"></td>
			</tr>
			<tr>
				<td>Isi Berita</td>
				<td><textarea name="berita_isi"></textarea></td>
			</tr>
			<tr>
				<td>Penulis Berita</td>
				<td><input type="text" name="berita_author"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="SIMPAN"></td>
			</tr>
			
		</table>
	</body>
</html>