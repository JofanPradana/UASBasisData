-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 03:40 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(160) NOT NULL,
  `jenis_kelamin` varchar(160) NOT NULL,
  `nomor_telp` varchar(160) NOT NULL,
  `alamat` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jenis_kelamin`, `nomor_telp`, `alamat`) VALUES
(1, 'Jofan Pradana', 'Pria', '087800000008', 'Depok'),
(2, 'Bagus Baharudin', 'Pria', '081298786858', 'Tangerang'),
(3, 'Naufal Jibal', 'Pria', '081212243648', 'Depok'),
(4, 'Ivaldi Mikael', 'Pria', '087809876543', 'Bekasi'),
(5, 'Siti Aisyah', 'Wanita', '089699887766', 'Padang'),
(6, 'Amelia Fadillah', 'Wanita', '085655667788', 'Cepu'),
(7, 'Fulan bin Fulan', 'Pria', '087800789008', 'Jakarta'),
(8, 'Marcellina', 'Wanita', '081370900008', 'Jakarta'),
(9, 'Angelina Tiara', 'Wanita', '087812349876', 'Jakarta'),
(10, 'Renaldy Yasir', 'Pria', '087809127865', 'Sukabumi');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(160) NOT NULL,
  `tahun_terbit` varchar(160) NOT NULL,
  `penerbit` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `tahun_terbit`, `penerbit`) VALUES
(111001, 'Mekanika Fluida', '2018', 'Ganesha'),
(111002, 'Bahan dan Material', '2018', 'Yudistira'),
(111003, 'Perancangan Mesin-Mesin Industri', '2018', 'Ganesha'),
(111004, 'Gambar Teknik', '2018', 'Erlangga'),
(111005, 'Mesin Hybrid', '2018', 'Bobo'),
(222001, 'Rangkaian Listrik 1', '2013', 'Erlangga'),
(222002, 'Rangkaian Listrik 2', '2013', 'Erlangga'),
(222003, 'Pengukruan Listrik', '2013', 'Erlangga'),
(222004, 'Disrtibusi Daya', '2013', 'Erlangga'),
(222005, 'Perancangan Kecerdasar Buatan', '2020', 'Erlangga'),
(333001, 'Fisika Dasar 1', '2018', 'Erlangga'),
(333002, 'Fisika Dasar Universitas', '2018', 'Ganesha'),
(333003, 'Fisika Univeritas Lanjutan', '2015', 'Yudistira'),
(333004, 'Fisika Terapan', '2011', 'Yudistira'),
(333005, 'Latihan Soal Fisika', '2019', 'Ganesha'),
(444001, 'Kimia Dasar 1', '2013', 'Ganesha'),
(444002, 'Kimia Dasar 2', '2015', 'Ganesha'),
(444003, 'Fluida', '2013', 'Yudistira'),
(444004, 'Termodinamika', '2013', 'Ganesha'),
(444005, 'K3', '2020', 'Erlangga'),
(555001, 'Pengenalan Material', '2013', 'Yudistira'),
(555002, 'Pengantar Material Teknik', '2013', 'Ganesha'),
(555003, 'Metalurgi Fisik', '2013', 'Ganesha'),
(555004, 'Metalurgi Mekanik', '2011', 'Yusdistira'),
(555005, 'Rekayasa Material', '2011', 'Ganesha');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_petugas` varchar(160) NOT NULL,
  `id_anggota` varchar(160) NOT NULL,
  `nama_anggota` varchar(160) NOT NULL,
  `id_buku` varchar(160) NOT NULL,
  `tgl_pinjam` varchar(160) NOT NULL,
  `tgl_kembali` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_petugas`, `id_anggota`, `nama_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`) VALUES
(1, '1', '1', 'Jofan Pradana', '222001', '12-02-2022', '13-02-2022'),
(2, '1', '2', 'Bagus Baharudin', '222002', '12-02-2022', '13-02-2022'),
(4, '1', '5', 'Siti Aisyah', '444001', '12-02-2022', '14-02-2022'),
(7, '1', '4', 'Ivaldi Mikael', '222002', '12-02-2022', '13-02-2022'),
(8, '1', '6', 'Amelia Fadillah', '333002', '12-02-2022', '13-02-2022'),
(9, '1', '3', 'Naufal Jibal', '111001', '12-02-2022', '13-02-2022'),
(10, '1', '7', 'Fulan bin FUlan', '111002', '12-02-2022', '13-02-2022'),
(11, '1', '8', 'Marcellina', '444002', '12-02-2022', '13-02-2022'),
(12, '1', '9', 'Angelina Tiara', '333003', '12-02-2022', '13-02-2022'),
(13, '1', '10', 'Renaldy Yasir', '111004', '12-02-2022', '13-02-2022'),
(14, '3', '1', 'Jofan Pradana', '222002', '14-02-2022', '18-02-2022'),
(15, '3', '3', 'Naufal Jibal', '111005', '14-02-2022', '20-02-2022'),
(16, '3', '2', 'Bagus Baharudin', '222002', '14-02-2022', '21-02-2022'),
(17, '2', '2', 'Bagus Baharudin', '222003', '15-02-2022', '21-02-2022'),
(18, '2', '1', 'Jofan Pradana', '222004', '15-02-2022', '18-02-2022'),
(19, '2', '2', 'Bagus Baharudin', '222004', '16-02-2022', '21-02-2022'),
(20, '2', '2', 'Bagus Baharudin', '222005', '17-02-2022', '21-02-2022'),
(21, '2', '5', 'Siti Aisyah', '4444002', '16-02-2022', '18-02-2022'),
(22, '2', '5', 'Siti Aisyah', '4444003', '17-02-2022', '18-02-2022'),
(23, '2', '5', 'Siti Aisyah', '4444004', '18-02-2022', '19-02-2022'),
(24, '2', '5', 'Siti Aisyah', '4444005', '20-02-2022', '21-02-2022'),
(25, '2', '3', 'Naufal Jibal', '111002', '21-02-2022', '22-02-2022'),
(26, '2', '3', 'Naufal Jibal', '111003', '22-02-2022', '24-02-2022'),
(27, '2', '3', 'Naufal Jibal', '111004', '23-02-2022', '28-02-2022'),
(28, '3', '8', 'Marcellina', '444001', '01-03-2022', '07-03-2022'),
(29, '3', '8', 'Marcellina', '444003', '02-03-2022', '07-03-2022'),
(30, '3', '8', 'Marcellina', '444004', '03-03-2022', '07-03-2022'),
(31, '3', '8', 'Marcellina', '444005', '05-03-2022', '08-03-2022'),
(32, '3', '4', 'Ivaldi Mikael', '222001', '06-03-2022', '07-03-2022'),
(33, '3', '4', 'Ivaldi Mikael', '222003', '07-03-2022', '09-03-2022'),
(34, '3', '4', 'Ivaldi Mikael', '222004', '08-03-2022', '11-03-2022'),
(35, '3', '4', 'Ivaldi Mikael', '222005', '13-03-2022', '18-03-2022'),
(36, '3', '4', 'Renaldy Yasir', '111001', '13-03-2022', '15-03-2022'),
(37, '4', '6', 'Amelia Fadillah', '333001', '13-03-2022', '17-03-2022'),
(38, '4', '6', 'Amelia Fadillah', '333003', '14-03-2022', '17-03-2022'),
(39, '4', '6', 'Amelia Fadillah', '333004', '15-03-2022', '17-03-2022'),
(40, '4', '6', 'Amelia Fadillah', '333005', '16-03-2022', '17-03-2022'),
(45, '4', '1', 'Jofan Pradana', '333001', '13-03-2022', '17-03-2022'),
(46, '4', '1', 'Jofan Pradana', '333003', '14-03-2022', '17-03-2022'),
(47, '4', '1', 'Jofan Pradana', '333004', '15-03-2022', '17-03-2022'),
(48, '4', '1', 'Jofan Pradana', '333005', '16-03-2022', '17-03-2022'),
(49, '4', '1', 'Jofan Pradana', '333002', '17-03-2022', '18-03-2022'),
(50, '4', '2', 'Bagus Baharudin', '222001', '17-03-2022', '18-03-2022'),
(51, '5', '1', 'Jofan Pradana', '111001', '20-03-2022', '22-03-2022'),
(53, '5', '3', 'Naufal Jibal', '222001', '20-03-2022', '22-03-2022'),
(54, '5', '4', 'Ivaldi Mikael', '222003', '20-03-2022', '22-03-2022'),
(55, '5', '5', 'Siti Aisyah', '555001', '20-03-2022', '22-03-2022'),
(56, '5', '6', 'Amelia Fadillah', '555003', '20-03-2022', '22-03-2022'),
(57, '5', '7', 'Fulan bin Fulan', '333001', '20-03-2022', '22-03-2022'),
(58, '5', '8', 'Marcellina', '333003', '20-03-2022', '22-03-2022'),
(59, '5', '9', 'Angelina Tiara', '444001', '20-03-2022', '22-03-2022'),
(60, '5', '10', 'Renaldy Yasir', '444003', '20-03-2022', '22-03-2022'),
(61, '5', '2', 'Bagus Baharudin', '111003', '20-03-2022', '22-03-2022'),
(62, '6', '1', 'Jofan Pradana', '111002', '21-03-2022', '22-03-2022'),
(63, '6', '2', 'Bagus Baharudin', '111004', '21-03-2022', '22-03-2022'),
(64, '6', '3', 'Naufal Jibal', '222002', '21-03-2022', '22-03-2022'),
(65, '6', '4', 'Ivaldi Mikael', '222004', '21-03-2022', '22-03-2022'),
(66, '6', '5', 'Siti Aisyah', '555002', '21-03-2022', '22-03-2022'),
(67, '6', '6', 'Amelia Fadillah', '555004', '21-03-2022', '22-03-2022'),
(68, '6', '7', 'Fulan bin Fulan', '333002', '21-03-2022', '22-03-2022'),
(69, '6', '8', 'Marcellina', '333004', '21-03-2022', '22-03-2022'),
(70, '6', '9', 'Angelina Tiara', '444002', '21-03-2022', '22-03-2022'),
(71, '6', '10', 'Renaldy Yasir', '444004', '21-03-2022', '22-03-2022'),
(72, '7', '1', 'Jofan Pradana', '111003', '22-03-2022', '28-03-2022'),
(73, '7', '2', 'Bagus Baharudin', '111005', '22-03-2022', '28-03-2022'),
(74, '7', '3', 'Naufal Jibal', '222003', '22-03-2022', '28-03-2022'),
(75, '7', '4', 'Ivaldi Mikael', '222005', '22-03-2022', '28-03-2022'),
(76, '7', '5', 'Siti Aisyah', '555003', '22-03-2022', '28-03-2022'),
(77, '7', '6', 'Amelia Fadillah', '555005', '22-03-2022', '28-03-2022'),
(78, '7', '7', 'Fulan bin Fulan', '333003', '22-03-2022', '28-03-2022'),
(79, '7', '8', 'Marcellina', '333005', '22-03-2022', '28-03-2022'),
(80, '7', '9', 'Angelina Tiara', '444003', '22-03-2022', '28-03-2022'),
(81, '7', '10', 'Renaldy Yasir', '444005', '22-03-2022', '28-03-2022'),
(83, '8', '1', 'Jofan Pradana', '111004', '23-03-2022', '28-03-2022'),
(84, '8', '2', 'Bagus Baharudin', '111001', '23-03-2022', '28-03-2022'),
(85, '8', '3', 'Naufal Jibal', '222004', '23-03-2022', '28-03-2022'),
(86, '8', '4', 'Ivaldi Mikael', '222001', '23-03-2022', '28-03-2022'),
(87, '8', '5', 'Siti Aisyah', '555004', '23-03-2022', '28-03-2022'),
(88, '8', '6', 'Amelia Fadillah', '555001', '23-03-2022', '28-03-2022'),
(89, '8', '7', 'Fulan bin Fulan', '333004', '23-03-2022', '28-03-2022'),
(90, '8', '8', 'Marcellina', '333001', '23-03-2022', '28-03-2022'),
(91, '8', '9', 'Angelina Tiara', '444004', '23-03-2022', '28-03-2022'),
(92, '8', '10', 'Renaldy Yasur', '444001', '23-03-2022', '28-03-2022'),
(103, '9', '1', 'Jofan Pradana', '111005', '24-03-2022', '28-03-2022'),
(104, '9', '2', 'Bagus Baharudin', '111002', '24-03-2022', '28-03-2022'),
(105, '9', '3', 'Naufal Jibal', '222005', '24-03-2022', '28-03-2022'),
(106, '9', '4', 'Ivaldi Mikael', '222002', '24-03-2022', '28-03-2022'),
(107, '9', '5', 'Siti Aisyah', '555005', '24-03-2022', '28-03-2022'),
(108, '9', '6', 'Amelia Fadillah', '555002', '24-03-2022', '28-03-2022'),
(109, '9', '7', 'Fulan bin Fulan', '333005', '24-03-2022', '28-03-2022'),
(110, '9', '8', 'Marcellina', '333002', '24-03-2022', '28-03-2022'),
(111, '9', '9', 'Angelina Tiara', '444005', '24-03-2022', '28-03-2022'),
(112, '9', '10', 'Renaldy Yasur', '444002', '24-03-2022', '28-03-2022'),
(113, '10', '1', 'Jofan Pradana', '111005', '25-03-2022', '28-03-2022'),
(114, '10', '2', 'Bagus Baharudin', '111002', '25-03-2022', '28-03-2022'),
(115, '10', '3', 'Naufal Jibal', '222005', '25-03-2022', '28-03-2022'),
(116, '10', '4', 'Ivaldi Mikael', '222002', '25-03-2022', '28-03-2022'),
(117, '10', '5', 'Siti Aisyah', '555005', '25-03-2022', '28-03-2022'),
(118, '10', '6', 'Amelia Fadillah', '555002', '25-03-2022', '28-03-2022'),
(119, '10', '7', 'Fulan bin Fulan', '333005', '25-03-2022', '28-03-2022'),
(120, '10', '8', 'Marcellina', '333002', '25-03-2022', '28-03-2022'),
(121, '10', '9', 'Angelina Tiara', '444005', '25-03-2022', '28-03-2022'),
(122, '10', '10', 'Renaldy Yasur', '444002', '25-03-2022', '28-03-2022');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(150) NOT NULL,
  `nomor_telp` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `nomor_telp`) VALUES
(1, 'Ibnu Muniron', '089612345678'),
(2, 'Masaji Wijaya', '087812345678'),
(3, 'Eka Setio Aji', '082212345678'),
(4, 'Azef Rahmat', '089677755543'),
(5, 'Aditya Rahmat', '082277663300'),
(6, 'Roihaposan Nikolas', '081212131415'),
(7, 'Kokoh Irawan', '089610203040'),
(8, 'Redho Doinanda', '085670702020'),
(9, 'Paulus Miki', '087820907685'),
(10, 'Meliani', '085687789009');

-- --------------------------------------------------------

--
-- Table structure for table `rak_buku`
--

CREATE TABLE `rak_buku` (
  `id_rak` int(11) NOT NULL,
  `lokassi` varchar(160) NOT NULL,
  `nama_rak` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rak_buku`
--

INSERT INTO `rak_buku` (`id_rak`, `lokassi`, `nama_rak`) VALUES
(1, 'Rak 1', 'Teknik Mesin'),
(2, 'Rak 2', 'Teknik Elektro'),
(3, 'Rak 3', 'Fisika'),
(4, 'Rak 4', 'Kimia'),
(5, 'Rak 5', 'Teknik Metalurgi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `rak_buku`
--
ALTER TABLE `rak_buku`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555006;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rak_buku`
--
ALTER TABLE `rak_buku`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
