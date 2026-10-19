-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2026 at 01:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp_oyan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('1', '12', 'RPL'),
('2', '11', 'FF'),
('3', '10', 'AKL'),
('4', 'XII 2', 'RPL');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `no_bayar` varchar(11) DEFAULT NULL,
  `id_petugas` varchar(5) DEFAULT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `bulan_tagihan` varchar(12) NOT NULL,
  `tahun_tagihan` int(4) NOT NULL,
  `id_spp` varchar(5) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `no_bayar`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `keterangan`) VALUES
(6, NULL, NULL, '01239847', '0000-00-00', 'Juli', 2026, 'SPP1', ''),
(7, NULL, NULL, '01239847', '0000-00-00', 'Agustus', 2026, 'SPP1', ''),
(8, NULL, NULL, '01239847', '0000-00-00', 'September', 2026, 'SPP1', ''),
(9, NULL, NULL, '01239847', '0000-00-00', 'Oktober', 2026, 'SPP1', ''),
(10, NULL, NULL, '01239847', '0000-00-00', 'Nopember', 2026, 'SPP1', ''),
(11, NULL, NULL, '01239847', '0000-00-00', 'Desember', 2026, 'SPP1', ''),
(12, NULL, NULL, '01239847', '0000-00-00', 'Januari', 2027, 'SPP1', ''),
(13, NULL, NULL, '01239847', '0000-00-00', 'Februari', 2027, 'SPP1', ''),
(14, NULL, NULL, '01239847', '0000-00-00', 'Maret', 2027, 'SPP1', ''),
(15, NULL, NULL, '01239847', '0000-00-00', 'April', 2027, 'SPP1', ''),
(16, NULL, NULL, '01239847', '0000-00-00', 'Mei', 2027, 'SPP1', ''),
(17, NULL, NULL, '01239847', '0000-00-00', 'Juni', 2027, 'SPP1', ''),
(18, '2609040001', 'A01', '13091309', '2026-09-04', 'Juli', 2026, 'SPP0', 'LUNAS'),
(19, '2609040002', 'A01', '13091309', '2026-09-04', 'Agustus', 2026, 'SPP0', 'LUNAS'),
(20, '2609040003', 'A01', '13091309', '2026-09-04', 'September', 2026, 'SPP0', 'LUNAS'),
(21, NULL, NULL, '13091309', '0000-00-00', 'Oktober', 2026, 'SPP0', ''),
(22, NULL, NULL, '13091309', '0000-00-00', 'Nopember', 2026, 'SPP0', ''),
(23, NULL, NULL, '13091309', '0000-00-00', 'Desember', 2026, 'SPP0', ''),
(24, NULL, NULL, '13091309', '0000-00-00', 'Januari', 2027, 'SPP0', ''),
(25, NULL, NULL, '13091309', '0000-00-00', 'Februari', 2027, 'SPP0', ''),
(26, NULL, NULL, '13091309', '0000-00-00', 'Maret', 2027, 'SPP0', ''),
(27, NULL, NULL, '13091309', '0000-00-00', 'April', 2027, 'SPP0', ''),
(28, NULL, NULL, '13091309', '0000-00-00', 'Mei', 2027, 'SPP0', ''),
(29, NULL, NULL, '13091309', '0000-00-00', 'Juni', 2027, 'SPP0', '');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'sasa', 'admin'),
('A02', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'puji', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('01239847', '01293847', 'lkaSDJFSH', '2', 'ffjeskn', '90129398', 'SPP1'),
('101010', 'N101010', 'Achmad Fadhil Arroyyan', '1', 'Los Angels', '0871371212', 'SPP0'),
('13091309', '130904', 'A.FAdhil', '3', 'palam', '081345', 'SPP0'),
('131313', '0923210', 'yan', '1', 'Los Angels', '0871371212', 'SPP0'),
('4314314', 'fqe', 'sfvsfv', '1', 'Los Angels', '120392013', 'SPP0'),
('7501', '1111', 'yayan', '4', 'Egypt', '088888', 'SPP2');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP0', 2026, 75000),
('SPP1', 2027, 100000),
('SPP2', 2026, 6700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`,`nisn`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`,`id_spp`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
