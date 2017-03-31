-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 05:38 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
`Berita_id` int(5) NOT NULL,
  `Berita_judul` varchar(100) NOT NULL,
  `Berita_headline` text NOT NULL,
  `Berita_isi` text NOT NULL,
  `Berita_author` varchar(15) NOT NULL,
  `Berita_tanggal` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`Berita_id`, `Berita_judul`, `Berita_headline`, `Berita_isi`, `Berita_author`, `Berita_tanggal`) VALUES
(2, 'Pilkada DKI 2017', 'Pilkada DKI Tahun ini Bakal Sengit Sekali', 'Jakarta - Ketua KPU DKI Sumarno dan Ketua Bawaslu DKI Mimah Susanti hadir dalam rapat koordinasi partai-partai pengusung pasangan Basuki Tjahaja Purnama (Ahok)-Djarot Saiful Hidayat, yang lolos ke putaran kedua Pilgub DKI. Ahok menyebut keduanya memang sengaja diundang.\r\n\r\nDalam acara internal yang digelar di Hotel Novotel, Jalan Gajah Mada, Jakarta Barat, tersebut, Ahok dan Djarot turut hadir. Menurut Ahok, salah satu yang dibahas adalah mengenai pelatihan saksi.\r\n\r\n"Ini rapat koordinasi, rapat kerja, supaya ngerti cara kerja saksi segala macam. Semua partai, semua relawan, kita kumpulkan," kata Ahok seusai rapat, Kamis (9/3/2017).\r\n\r\nMengenai kehadiran Sumarno dan Mimah, ia mengatakan keduanya diundang untuk menyamakan persepsi soal daftar pemilih tetap (DPT) pada putaran kedua. Ahok tidak mau ada warga DKI yang tidak dapat menggunakan hak suaranya karena datang siang ke TPS.\r\n\r\n"Kasih pengarahan juga ke KPU (DKI) dan Bawaslu (DKI). Kita mesti samakan persepsi, dong. Contoh KPU, kalau orang datang sampai jam 1 siang, sudah terdaftar, boleh milih nggak? Boleh. Jadi TPS itu bukan ditutup, penghitungan suara itu jam 1 siang," jelasnya.\r\n\r\nAhok juga memberi contoh mengenai ada banyaknya pemilih di TPS tertentu yang tidak sesuai dengan DPT. Itu karena melonjaknya partisipasi pemilih, sehingga menyebabkan surat suara habis sebelum TPS ditutup pada pukul 13.00 WIB.\r\n\r\n"KPU boleh nggak minjam dari TPS yang lain? Boleh. Orang sekarang logikanya begini ya, orang yang nggak milih berapa persen, 22 persen. Kena surat suara 100 persen, berarti kan ada 105 persen. Kalau 22 persen nggak milih, logikanya kalau datang penuh pun kamu masih sisa 27 persen, dong," tutur Ahok.\r\n\r\n"Kalau dianggap kami salah ngitung deh, DPT salah ngitung sampai meledak datangnya 120 persen. Kamu kurang 15 persen datang sebelum jam 13.00 WIB, kamu bisa pinjam dari TPS terdekat. Kan nggak mungkin dong TPS bisa dipenuhi 100 persen. Nah, ini harus kita samakan persepsi dengan KPU dan Bawaslu," lanjutnya.\r\n\r\nAhok berharap tidak ada lagi kesalahpahaman yang terjadi di lapangan soal penggunaan hak suara setelah adanya pertemuan dengan KPU DKI dan Bawaslu DKI. Dia menyebut penghilangan hak suara warga DKI yang datang ke TPS karena datang siang adalah hal yang lucu. Karena itu, cagub DKI yang merupakan petahana ini tidak mau peristiwa yang banyak ditemukan pada putaran pertama itu kembali terulang pada hari pencoblosan Pilgub DKI putaran kedua pada 19 April 2017.\r\n\r\n"Jadi kita betul-betul mengkonsolidasi (supaya) nggak ada lagi yang salah paham. Nah, kita mau samakan persepsi KPU dan Bawaslu. Di mana ada sejarahnya jam 13.00 WIB nggak boleh milih. Dia sudah datang, kita menghilangkan hak pilih orang, lucu saja," ujar Ahok.\r\n\r\nSebelumnya Sumarno mengakui kedatangannya ke acara internal partai pengusung Ahok-Djarot adalah atas undangan. Ia diundang untuk diskusi persiapan Pilgub DKI putaran kedua.\r\n\r\n"KPUD diundang. Diskusi saja, persiapan putaran kedua," kata Sumarno kepada wartawan saat tiba di lokasi, Kamis (9/3).', 'Alief Laksana', '2017-03-10 05:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  `privilege` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `privilege`) VALUES
(1, 'irfan', '$2y$10$mRCdob4A8WjCKWnLXvxM9.eGXdj2rRTS.OgsPt0UHekvTbDYn3MX.', 1),
(5, 'fendi', '$2y$10$o3HLE.bOGaW3WaYNK3gnduVq5Tp5T2fQhDgAnwBckxm1XgZcYaBbS', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
 ADD PRIMARY KEY (`Berita_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
MODIFY `Berita_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
