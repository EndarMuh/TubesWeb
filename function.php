<?php
session_start();

// database conection
$conn = mysqli_connect("localhost", "root", "", "db_uas");

// insert stock
if (isset($_POST['insertleptop'])) {
	$merk_leptop = $_POST['merk_leptop'];
	$tipe_leptop = $_POST['tipe_leptop'];
	$harga_leptop = $_POST['harga_leptop'];
	$stock_leptop = $_POST['stock_leptop'];
	$spek_leptop = $_POST['spek'];

	$tambahkb = mysqli_query($conn, "INSERT INTO leptop (`merk`, `tipe`, `harga_leptop`, `stock_leptop`, `spesifikasi`) VALUES ('$merk_leptop', '$tipe_leptop', '$harga_leptop', '$stock_leptop', '$spek_leptop')");
	if ($tambahkb) {
		header('location:index.php');
	} else {
		echo "gagal";
		header('location:index.php');
	}
}

// Register
if (isset($_POST['regist'])) {
	$email = $_POST['email'];
	$nama = $_POST['nama'];
	$password = $_POST['password'];

	$tambahAdmin = mysqli_query($conn, "insert into login (email, nama, password) values ('$email', '$nama', '$password')");
	if ($tambahAdmin) {
		header('location:index.php');
	} else {
		echo "gagal";
		header('location:index.php');
	}
}

//update stock
if (isset($_POST['updateleptop'])) {
	$merk_leptop = $_POST['merk'];
	$tipe_leptop = $_POST['tipe'];
	$harga_leptop = $_POST['harga'];
	$stock_leptop = $_POST['stock'];
	$spek_leptop = $_POST['spek'];
	$id_leptop = $_POST['idleptop'];
	// print_r($iduser);
	// exit();
	$updateleptop = mysqli_query($conn, "update leptop set merk='$merk_leptop', tipe='$tipe_leptop', harga_leptop='$harga_leptop' , stock_leptop='$stock_leptop', spesifikasi='$spek_leptop' where leptop.id_leptop='$id_leptop' ");
	if ($updateleptop) {
		header('location:index.php');
	} else {
		echo "gagal";
		header('location:index.php');
	}
}

//delete stock
if (isset($_POST['deleteleptop'])) {
	$id_leptop = $_POST['idleptop'];

	$deleteleptop = mysqli_query($conn, "delete from leptop where id_leptop='$id_leptop'");
	if ($deleteleptop) {
		header('location:index.php');
	} else {
		echo "gagal";
		header('location:index.php');
	}
}

//insert pegawai
if (isset($_POST['savepgw'])) {
	$nama = $_POST['nama'];
	$no_hp = $_POST['nohp'];
	$alamat = $_POST['alamat'];

	$tambahpgw = mysqli_query($conn, "insert into pegawai (nama_pgw, alamat_pgw, telp_pgw) values ('$nama', '$alamat', '$no_hp')");
	if ($tambahpgw) {
		header('location:pegawai.php');
	} else {
		echo "gagal";
		header('location:pegawai.php');
	}
}

//update pegawai
if (isset($_POST['updatepgw'])) {
	$nama = $_POST['nama'];
	$no_hp = $_POST['no_hp'];
	$alamat = $_POST['alamat'];
	$id_pgw = $_POST['idpgw'];

	$updatepgw = mysqli_query($conn, "update pegawai set nama_pgw='$nama', alamat_pgw='$alamat', telp_pgw='$no_hp' where id_pegawai='$id_pgw'");
	if ($updatepgw) {
		header('location:pegawai.php');
	} else {
		echo "gagal";
		header('location:pegawai.php');
	}
}

//delete pegawai
if (isset($_POST['deletepgw'])) {
	$id_pgw = $_POST['idpgw'];

	$deletepgw = mysqli_query($conn, "delete from pegawai where id_pegawai='$id_pgw'");
	if ($deletepgw) {
		header('location:pegawai.php');
	} else {
		echo "gagal";
		header('location:pegawai.php');
	}
}

//insert pembeli
if (isset($_POST['savepembeli'])) {
	$nama = $_POST['nama'];
	$no_hp = $_POST['nohp'];
	$alamat = $_POST['alamat'];

	$tambahpembeli = mysqli_query($conn, "insert into pembeli (nama, alamat, no_hp) values ('$nama', '$alamat', '$no_hp')");
	if ($tambahpembeli) {
		header('location:pembeli.php');
	} else {
		echo "gagal";
		header('location:pembeli.php');
	}
}

//update pembeli
if (isset($_POST['updatepembeli'])) {
	$nama = $_POST['nama'];
	$no_hp = $_POST['nohp'];
	$alamat = $_POST['alamat'];
	$idpembeli = $_POST['id_pembeli'];

	$updatepembeli = mysqli_query($conn, "update pembeli set nama='$nama', alamat='$alamat', no_hp='$no_hp' where id_pembeli='$idpembeli'");
	if ($updatepembeli) {
		header('location:pembeli.php');
	} else {
		echo "gagal";
		header('location:pembeli.php');
	}
}

//delete pembeli
if (isset($_POST['deletepembeli'])) {
	$idpembeli = $_POST['id_pembeli'];

	$deletepembeli = mysqli_query($conn, "delete from pembeli where id_pembeli='$idpembeli'");
	if ($deletepembeli) {
		header('location:pembeli.php');
	} else {
		echo "gagal";
		header('location:pembeli.php');
	}
}

// insert transaksi
if (isset($_POST['savetransaksi'])) {
	$pembeli = $_POST['pembeli'];
	$pegawai = $_POST['pgw'];
	$leptop = explode('_', $_POST['leptop']); //[0]=>3, [1]=>1200
	$jumlah = $_POST['jumlah'];
	$harga = $_POST['harga'];

	$lihatstock = mysqli_query($conn, "select * from leptop where id_leptop='$leptop[0]'");
	$stocknya = mysqli_fetch_array($lihatstock); //ambil datanya
	$stockskrg = $stocknya['stock_leptop'];

	if ($jumlah <= $stockskrg) {
		$stockupdate = $stockskrg - $jumlah;
		$updatestock = mysqli_query($conn, "update leptop set stock_leptop='$stockupdate' where id_leptop='$leptop[0]'");
		$tambahtransaksi = mysqli_query($conn, "insert into transaksi (id_pembeli, id_pegawai, id_leptop, total_harga, jumlah) values ('$pembeli', '$pegawai', '$leptop[0]', '$harga', '$jumlah')");
		header('location:transaksi.php');
	} else {
		echo "gagal";
		header('location:transaksi.php');
	}
}


// delete transaksi
if (isset($_POST['deletetransaksi'])) {
	$id_transaksi = $_POST['id_transaksi'];
	$id_leptop = $_POST['id_leptop'];
	$jumlah = $_POST['jumlah'];

	$lihatstock = mysqli_query($conn, "select * from leptop where id_leptop='$id_leptop'");
	$stocknya = mysqli_fetch_array($lihatstock); //ambil datanya
	$stockskrg = $stocknya['stock_leptop'];

	$stockupdate = $stockskrg + $jumlah;
	$updatestock = mysqli_query($conn, "update leptop set stock_leptop='$stockupdate' where id_leptop='$id_leptop'");
	$tambahtransaksi = mysqli_query($conn, "delete from transaksi where id_transaksi='$id_transaksi'");

	header('location:transaksi.php');
}
