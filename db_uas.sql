-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2022 pada 02.22
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `leptop`
--

CREATE TABLE `leptop` (
  `id_leptop` int(11) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `harga_leptop` int(11) NOT NULL,
  `stock_leptop` int(11) NOT NULL,
  `spesifikasi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `leptop`
--

INSERT INTO `leptop` (`id_leptop`, `merk`, `tipe`, `harga_leptop`, `stock_leptop`, `spesifikasi`) VALUES
(1, 'Asus Zenbook pro 14', 'Ultrabook', 30000000, 15, 'Intel, Nvidia, 1TB/16GB'),
(2, 'Acer Swift X', 'Ultrabook', 15000000, 25, 'AMD, Nvidia, 512/16 GB\r\n'),
(3, ' Acer Swift 3 oled', 'Ultrabook', 14000000, 21, 'Intel, Nvidia, 512/16 GB'),
(4, 'HP Omen (n0046ax)', ' Gaming', 36000000, 20, 'AMD, Nvidia, 1TB/32 GB'),
(5, ' HP Victus(fa0008tx)', ' Gaming', 17000000, 17, 'Intel, Nvidia, 512/8 GB'),
(6, ' Lenovo  Legion 5', 'Gaming', 21400000, 15, 'AMD, Nvidia, 512/16 GB'),
(7, 'Lenovo Legion slim 7', 'Gaming', 20000000, 10, 'AMD, Nvidia, 512/16 GB'),
(8, 'Asus ROG zephyrus g1', 'Gaming', 31500000, 12, 'AMD, Nvidia, 1 TB/16 GB'),
(9, 'Asus Tuf dash f15', 'Gaming', 20200000, 5, 'Intel, Nvidia, 1 TB/16 GB'),
(10, ' HP Omen (c0092ax)', 'Gaming', 24000000, 15, 'AMD, Nvidia, 512/16 GB'),
(11, 'MSI Prestige 14 evo', 'Ultrabook', 17000000, 19, 'Intel, Intel, 512/8 GB'),
(12, 'Asus ROG strix g15', 'Gaming', 19500000, 5, 'AMD, Nvidia, 1 TB/ 16 GB'),
(13, 'MSI Titan gt77 – 12u', 'Gaming', 77000000, 10, 'Intel, Nvidia, 2 TB / 16 GB'),
(14, 'Lenovo Legion 5i pro', 'Gaming', 27000000, 3, 'Intel, Nvidia, 512/16 GB'),
(15, ' Lenovo Legion slim7', 'Gaming', 20000000, 10, 'AMD, Nvidia, 512/16 GB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `email`, `nama`, `password`) VALUES
(4, 'syahlasyafiqah31@gmail.com', 'Syahla', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pgw` varchar(25) DEFAULT NULL,
  `alamat_pgw` varchar(50) DEFAULT NULL,
  `telp_pgw` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pgw`, `alamat_pgw`, `telp_pgw`) VALUES
(1, 'Hendery', 'Cengakreng, Jakarta Barat', '082251116009'),
(2, 'Renjun', 'Cengakreng, Jakarta Barat', '082251116021'),
(3, 'Mark', 'Cengakareng, Jakarta Barat', '0822772378263'),
(4, 'Lucas', 'PIK, Jakarta Utara', '081234786545'),
(5, 'Jaemin', 'Cibinong, Bogor', '081234512345'),
(6, 'Yuta', 'Cilodong, Depok', '086543212312'),
(7, 'Jisung', 'Pasar Minggu, Jakarta Selatan', '081234561234'),
(8, 'Jeno', 'Menteng, Jakarta Pusat', '085171223456'),
(9, 'haechan', 'Pondok Kopi, Jakarta Timur', '087812349854'),
(10, 'Winwin', 'Gajah Mada, Jakarta', '081234567894');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama`, `alamat`, `no_hp`) VALUES
(1, 'Suho', 'Jakarta', '082267890978'),
(2, 'Sehun', 'Jakarta', '082209876789'),
(3, 'DO', 'Depok', '081381776034'),
(4, 'Xiumin', 'Jakarta', '085873456352'),
(5, 'Chanyeol', 'Jakarta', '081234561234'),
(6, 'Baekhyun', 'Jakarta', '089823456743'),
(7, 'Lay', 'Tangerang', '081278569345'),
(8, 'Kai', 'Bogor', '081281827933'),
(9, 'Chen', 'Bogor', '081256745678'),
(10, 'Iqbaal', 'Jakarta', '081244557684');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_pembeli` int(11) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `id_leptop` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal`, `id_pembeli`, `id_pegawai`, `id_leptop`, `total_harga`, `jumlah`) VALUES
(1, '2021-06-30 15:10:32', 1, 1, 1, 24000000, 2),
(2, '2021-06-30 15:10:48', 1, 2, 2, 7800000, 2),
(15, '2022-12-06 14:48:55', 10, 4, 11, 17000000, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `leptop`
--
ALTER TABLE `leptop`
  ADD PRIMARY KEY (`id_leptop`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `id_leptop` (`id_leptop`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `leptop`
--
ALTER TABLE `leptop`
  MODIFY `id_leptop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_leptop`) REFERENCES `leptop` (`id_leptop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
