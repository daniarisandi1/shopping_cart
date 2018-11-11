-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2018 at 10:03 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(59) NOT NULL,
  `deskripsi` text NOT NULL,
  `kode_barang` varchar(21) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `stok` varchar(5) NOT NULL,
  `pembaharuan` datetime NOT NULL,
  `status` enum('Public','Draf') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `deskripsi`, `kode_barang`, `harga`, `stok`, `pembaharuan`, `status`) VALUES
(1, 'Kemeja Formal', '<p>\r\n	Kemeja formal pria terbaru</p>\r\n', '12345', '50000', '5', '2014-09-10 02:09:56', 'Public'),
(2, 'Baju Kaos', '<p>\r\n	Baju Silverhawk</p>\r\n', '23456', '6000', '9', '2014-09-10 02:11:26', 'Public'),
(3, 'Celana', '<p>\r\n	Celana Chino</p>\r\n', '13456', '40000', '7', '2014-09-10 02:15:30', 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `kode_pesanan` varchar(9) NOT NULL,
  `qty` int(11) NOT NULL,
  `produk` varchar(201) NOT NULL,
  `hrg_satuan` varchar(16) NOT NULL,
  `tgl` datetime NOT NULL,
  `status` enum('Konfirmasi','Selesai','Baru','Batal','Sedang Dikirim') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `kode_pesanan`, `qty`, `produk`, `hrg_satuan`, `tgl`, `status`) VALUES
(1, '2730', 12, 'Baju Kaos', '6000', '2014-09-11 09:31:40', 'Sedang Dikirim'),
(2, '9910', 3, 'Baju seo', '40000', '2014-09-11 09:31:40', 'Batal'),
(3, '7918', 1, 'baju', '50000', '2014-09-11 09:31:40', 'Batal'),
(4, '6552', 1, 'baju', '50000', '2014-09-11 10:40:59', 'Selesai'),
(5, '2381', 1, 'Baju Kaos', '6000', '2014-09-11 10:40:59', 'Sedang Dikirim'),
(6, '4478', 1, 'Baju seo', '40000', '2014-09-11 10:40:59', 'Sedang Dikirim'),
(7, '6639', 1, 'baju', '50000', '2014-09-11 10:42:04', 'Selesai'),
(8, '8580', 1, 'Baju Kaos', '6000', '2014-09-11 10:42:04', 'Konfirmasi'),
(9, '2517', 1, 'Baju seo', '40000', '2014-09-11 10:42:04', 'Batal'),
(10, '1846', 1, 'baju', '50000', '2014-09-13 07:48:19', 'Baru'),
(11, '9950', 1, 'Baju Kaos', '6000', '2014-09-13 07:48:19', 'Baru'),
(12, '6941', 1, 'baju', '50000', '2014-09-19 04:35:02', 'Baru'),
(13, '451', 1, 'Baju Kaos', '6000', '2014-09-19 04:35:02', 'Baru'),
(14, '7241', 1, 'Baju seo', '40000', '2014-09-19 04:35:02', 'Baru'),
(15, '3235', 1, 'Kemeja Formal', '50000', '2018-11-12 17:46:31', 'Baru'),
(16, '8535', 1, 'Kemeja Formal', '50000', '2018-11-12 17:46:45', 'Baru'),
(17, '2259', 1, 'Kemeja Formal', '50000', '2018-11-12 18:04:26', 'Baru'),
(18, '7437', 1, 'Kemeja Formal', '50000', '2018-11-12 18:08:54', 'Baru'),
(19, '8219', 1, 'Kemeja Formal', '50000', '2018-11-12 18:09:43', 'Baru'),
(20, '897', 1, 'Celana', '40000', '2018-11-12 18:09:43', 'Baru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
