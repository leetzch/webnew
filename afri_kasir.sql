-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2025 at 09:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afri_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_detail_pesanan` int(11) NOT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_satuan` decimal(10,3) DEFAULT NULL,
  `subtotal` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail_pesanan`, `id_pesanan`, `id_menu`, `jumlah`, `harga_satuan`, `subtotal`) VALUES
(67, 21, 1, 3, NULL, 60.000),
(68, 21, 2, 1, NULL, 27.000),
(72, 22, 1, 1, NULL, 20.000),
(73, 22, 4, 2, NULL, 54.000),
(74, 22, 7, 3, NULL, 21.000),
(75, 18, 1, 4, NULL, 80.000),
(76, 18, 2, 2, NULL, 54.000),
(77, 18, 3, 1, NULL, 27.000),
(78, 18, 7, 3, NULL, 21.000),
(107, 23, 1, 100, NULL, 2000.000),
(108, 23, 2, 10, NULL, 270.000),
(109, 23, 3, 10, NULL, 270.000),
(110, 23, 4, 10, NULL, 270.000),
(111, 23, 5, 10, NULL, 130.000),
(112, 23, 6, 10, NULL, 60.000),
(113, 23, 7, 10, NULL, 70.000),
(121, 24, 1, 100, NULL, 2000.000),
(122, 24, 2, 100, NULL, 2700.000),
(123, 24, 3, 100, NULL, 2700.000),
(124, 24, 4, 100, NULL, 2700.000),
(125, 24, 5, 100, NULL, 1300.000),
(126, 24, 6, 100, NULL, 600.000),
(127, 24, 7, 100, NULL, 700.000),
(144, 26, 1, 1, 20.000, 20.000),
(145, 26, 2, 1, 27.000, 27.000),
(146, 26, 3, 1, 27.000, 27.000),
(147, 26, 4, 1, 27.000, 27.000),
(152, 27, 1, 2, 20.000, 40.000),
(153, 27, 2, 3, 27.000, 81.000),
(154, 27, 3, 1, 27.000, 27.000),
(155, 27, 4, 1, 27.000, 27.000),
(178, 44, 1, 1, 20.000, 20.000);

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(10) NOT NULL,
  `kapasitas_meja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `kapasitas_meja`) VALUES
(1, '1', 5),
(2, '2', 10),
(3, '3', 7),
(4, '4', 2),
(6, '5', 5),
(12, '6', 7);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `harga` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`) VALUES
(1, 'Nasi Goreng', 20.000),
(2, 'Ayam Pecel', 27.000),
(3, 'ayam bakar', 27.000),
(4, 'ayam penyet', 27.000),
(5, 'es jeruk', 13.000),
(6, 'Mie Goreng', 6.000),
(7, 'Es teh', 7.000),
(9, 'Susu Beruang', 10.000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `no_hp`, `alamat`) VALUES
(1, 'andre', 1, '0857341412312', 'Cibubur'),
(2, 'afri', 1, '08572198312', 'Bandung'),
(4, 'vincent', 1, '09691412412', 'Kalisari'),
(5, 'Fryta', 0, '08572424141', 'Lubang Buaya'),
(6, 'kemal', 1, '086858124214', 'Ciracas'),
(7, 'hafiz', 0, '0969141241', 'Cipayung');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_meja` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_menu` varchar(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `status_pesanan` enum('Menunggu','Diproses','Selesai','Dibatalkan') DEFAULT NULL,
  `tanggal_pesanan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_meja`, `id_pelanggan`, `id_user`, `id_menu`, `id_transaksi`, `jumlah`, `status_pesanan`, `tanggal_pesanan`) VALUES
(18, 1, 2, 2, '1,2,3,7', NULL, 10, 'Selesai', '2025-04-22 14:36:40'),
(21, 4, 4, 2, '1,2', NULL, 4, 'Selesai', '2025-04-28 01:47:09'),
(22, 6, 5, 2, '1,4,7', NULL, 6, 'Selesai', '2025-04-28 02:51:10'),
(23, 3, 1, 2, '1,2,3,4,5,6', NULL, 160, 'Selesai', '2025-04-28 03:19:13'),
(24, 2, 6, 2, '1,2,3,4,5,6', NULL, 700, 'Selesai', '2025-04-28 03:44:18'),
(26, 4, 1, 2, '1,2,3,4', NULL, 4, 'Selesai', '2025-04-28 04:20:31'),
(27, 12, 7, 2, '1,2,3,4', NULL, 7, 'Selesai', '2025-04-28 08:26:35'),
(44, 12, 4, 2, '1', NULL, 1, 'Menunggu', '2025-04-28 09:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `bayar` decimal(10,3) DEFAULT NULL,
  `uang` decimal(10,3) NOT NULL,
  `tanggal_transaksi` datetime DEFAULT NULL,
  `status_transaksi` enum('Belum Dibayar','Lunas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pesanan`, `total`, `bayar`, `uang`, `tanggal_transaksi`, `status_transaksi`) VALUES
(13, 18, 9, 162.000, 200.000, '2025-04-28 01:43:27', 'Lunas'),
(15, 21, 87, 87.000, 200.000, '2025-04-28 01:59:43', 'Lunas'),
(16, 22, 6, 95.000, 300.000, '2025-04-28 02:52:29', 'Lunas'),
(18, 23, 160, 3070.000, 3070.000, '2025-04-28 03:42:32', 'Lunas'),
(21, 24, 700, 12700.000, 15000.000, '2025-04-28 04:02:34', 'Lunas'),
(22, 26, 4, 101.000, 200.000, '2025-04-28 04:21:49', 'Lunas'),
(23, 27, 7, 175.000, 200.000, '2025-04-28 08:27:59', 'Belum Dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Kasir','Waiter','Owner') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin1', '$2y$10$/nCLP6tlLTxMJpCJO92bHeRFQK7k1zLUUPMSVzLkafegi0Nnr4AKS', 'Admin'),
(2, 'waiter1', '$2y$10$8RWRy8MwBoeSOu229LBJ2.LHkLKHIMh0mTjf87oFvJ5XGrZBC3A0O', 'Waiter'),
(3, 'kasir1', '$2y$10$lkJb2JoVD4wykwUMz50aI.XEq94vynnGHk5fK7XYCSHdPuB.umG6C', 'Kasir'),
(5, 'owner1', '$2y$10$zhuJlGj1qj.tMHUHwlgxJe0b/bNgqHTWz0z4/jW8wMJT2mY6l3Kb6', 'Owner'),
(6, 'pincen', '$2y$10$o7T.V.pwJZkhuXu7vuhNgexPeFSN1wxL6qc7IjVlCT7nxtH.TghTG', 'Waiter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_detail_pesanan`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`),
  ADD UNIQUE KEY `nomor_meja` (`nomor_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_meja` (`id_meja`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `fk_transaksi` (`id_transaksi`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id_detail_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`),
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_meja`) REFERENCES `meja` (`id_meja`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `pesanan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
