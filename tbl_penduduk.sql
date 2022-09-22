-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 03:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penduduk`
--

CREATE TABLE `tbl_penduduk` (
  `id_penduduk` int(2) NOT NULL,
  `nik` bigint(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kelamin` enum('Perempuan','Laki-Laki') DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status` enum('Sudah Menikah','Belum Menikah') NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `kewarganegaraan` enum('WNI','WNA') NOT NULL,
  `tempatlahir` varchar(100) NOT NULL,
  `tanggallahir` date NOT NULL,
  `golongandarah` enum('A',' B','AB','O') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_penduduk`
--

INSERT INTO `tbl_penduduk` (`id_penduduk`, `nik`, `nama`, `kelamin`, `alamat`, `status`, `pekerjaan`, `kewarganegaraan`, `tempatlahir`, `tanggallahir`, `golongandarah`) VALUES
(57, 78965650, 'ahmat', 'Laki-Laki', 'solo', 'Belum Menikah', 'Gamer', 'WNI', 'Surakarta', '2008-05-22', 'AB'),
(63, 5867890, 'Paijo', 'Perempuan', 'solo', 'Belum Menikah', 'Gamer', 'WNA', 'Surakarta', '2022-09-29', 'AB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  ADD PRIMARY KEY (`id_penduduk`,`nik`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  MODIFY `id_penduduk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
