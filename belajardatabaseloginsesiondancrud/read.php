<!DOCTYPE html>
<html>
	<head>
		<title>CRUD PHP</title>
	</head>
	<body style=background:skyblue>
		<h1>Data Berita</h1>
			<table border="1">
				<tr>
					<th>No</th>
					<th>Judul Berita</th>
					<th>Headline Berita</th>
					<th>Isi Berita</th>
					<th>Author</th>
					<th>Tanggal Post</th>
					<th>Aksi</th>
				</tr>
				<?php
				require 'koneksi.php';
				$no = 1;
				$query = mysql_query("SELECT * FROM berita");
				while ($hasil = mysql_fetch_array($query)) { ?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $hasil[1]?></td>
					<td><?php echo $hasil[2]?></td>
					<td><?php echo $hasil[3]?></td>
					<td><?php echo $hasil[4]?></td>
					<td><?php echo $hasil[5]?></td>
					<td>
						<a href="update.php?berita_id=<?php echo $hasil[0]?>">Update |
						<a href="delete.php?berita_id=<?php echo $hasil[0]?>">Delete
					</td>
				</tr>
				<?php }?>
			</table>
	</body>
</html>