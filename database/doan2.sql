-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 21, 2024 at 08:29 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddh` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `tensp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `anhsp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double(10,2) NOT NULL DEFAULT '0.00',
  `soluong` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `iddh` (`iddh`),
  KEY `laptop_id` (`laptop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddh`, `laptop_id`, `tensp`, `anhsp`, `tongtien`, `soluong`) VALUES
(1, 56, 19, 'MSI Modern 15', 'msi_moderm15.jpg', 3000000.00, 1),
(3, 57, 20, 'Acer nitro 5', 'nitro5.webp', 3000000.00, 1),
(4, 58, 18, 'MSI KATANA G15', 'HP.jpg', 3000000.00, 1),
(5, 59, 19, 'MSI Modern 15', 'msi_moderm15.jpg', 3000000.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tk` int(11) DEFAULT NULL,
  `madh` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double(10,2) NOT NULL DEFAULT '0.00',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pttt` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_tk` (`id_tk`),
  KEY `madh` (`madh`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `id_tk`, `madh`, `tongtien`, `name`, `address`, `phone`, `pttt`) VALUES
(27, NULL, 'dtung57870', 60000000.00, 'khi', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(28, NULL, 'dtung76723', 15000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(29, NULL, 'dtung47684', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(30, NULL, 'dtung51250', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(31, NULL, 'dtung64876', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(32, NULL, 'dtung58008', 15000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(33, NULL, 'dtung61630', 30000000.00, 'khi', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(34, NULL, 'dtung50085', 15000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(35, NULL, 'dtung40543', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(36, NULL, 'dtung5866', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(37, NULL, 'dtung83549', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(38, NULL, 'dtung39546', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(39, NULL, 'dtung89297', 90000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(40, NULL, 'dtung63060', 30000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(41, NULL, 'dtung34089', 3000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(42, NULL, 'dtung58754', 3000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(43, NULL, 'dtung46554', 36000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(44, NULL, 'dtung37260', 9000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(45, NULL, 'dtung36689', 129000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(46, NULL, 'dtung90889', 129000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(47, NULL, 'dtung57072', 129000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(48, NULL, 'dtung69547', 129000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(49, NULL, 'dtung41260', 30000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(50, NULL, 'dtung1303', 12000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(51, NULL, 'dtung67241', 3000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(52, NULL, 'dtung58457', 3000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(53, NULL, 'dtung47710', 21000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(54, NULL, 'dtung9567', 21000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(55, NULL, 'dtung96364', 21000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(56, NULL, 'dtung10514', 18000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(57, NULL, 'dtung5833', 3000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(58, NULL, 'dtung79672', 3000000.00, 'Khá»‰', 'tá»• 4 phÆ°á»ng nghÄ©a thÃ nh', '0975439645', 1),
(59, NULL, 'dtung36069', 6000000.00, 'thai', '1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tk` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anhsp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double(10,2) NOT NULL DEFAULT '0.00',
  `soluong` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tk` (`id_tk`),
  KEY `chitietdonhang_ibfk_1` (`laptop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `id_tk`, `laptop_id`, `tensp`, `anhsp`, `tongtien`, `soluong`) VALUES
(1, 4, 19, 'MSI Modern 15', 'msi_moderm15.jpg', 9000000.00, 3),
(5, 3, 19, 'MSI Modern 15', 'msi_moderm15.jpg', 3000000.00, 1),
(6, 3, 20, 'Acer nitro 5', 'nitro5.webp', 3000000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

DROP TABLE IF EXISTS `laptops`;
CREATE TABLE IF NOT EXISTS `laptops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_id` int(11) NOT NULL,
  `manhasanxuat` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dungluong` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manhinh` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `quanity` int(10) NOT NULL,
  `anhlaptop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manhasanxuat` (`manhasanxuat`),
  KEY `laptop_id` (`loai_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `loai_id`, `manhasanxuat`, `tensp`, `processor`, `ram`, `dungluong`, `vga`, `manhinh`, `price`, `mota`, `quanity`, `anhlaptop`) VALUES
(18, 11, 1, 'MSI KATANA G15', 'i7 11230h', '8', '512gb', 'RTX 3060', '15.6 inch', 3000000, 'Rá»“ng Ä‘á»', 30, ''),
(19, 12, 1, 'MSI Modern 15', 'i5 12400U', '8', '512gb', 'GTX 1650', '15.6 inch', 3000000, 'Rá»“ng Ä‘á»', 30, 'msi_moderm15.jpg'),
(20, 13, 2, 'Acer nitro 5', 'i7 11230h', '8', '512gb', 'RTX 3060', '15.6 inch', 3000000, 'Chim xanh', 30, 'nitro5.webp'),
(21, 14, 2, 'Acer asprite 3', 'i5 12400U', '8', '512gb', 'GTX 1650', '15.6 inch', 30000000, 'Chim xanh', 30, 'acer.jpg'),
(22, 15, 3, 'Asus TUF F15', 'i7 11230h', '16', '512gb', 'RTX 3060', '15.6 inch', 30000000, 'chim vang', 30, 'tuf_2022.jpg'),
(23, 16, 3, 'Asus vivo book', 'i7 11230h', '8', '512gb', 'GTX 1650', '15.6 inch', 15000000, 'chim vang', 30, 'asus_vivobook.jpg'),
(24, 11, 1, 'MSI TITAN 18', 'i7 11230h', '16', '4tb', 'RTX 3090', '18inch', 180000000, 'Rá»“ng Ä‘á»', 30, 'MSI.jpg'),
(25, 11, 1, 'MSI Modern 15', 'i7 11230h', '8', '4', 'RTX 3060', '17inch', 3000, 'Rá»“ng Ä‘á»', 30, 'MSI.jpg'),
(26, 11, 1, 'Lenovo legion 6', 'i7 11230', '8', '4tb', 'RTX 3060', '15.6 inch', 3000, 'Chim xanh', 3, 'MSI.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `laptop_categories`
--

DROP TABLE IF EXISTS `laptop_categories`;
CREATE TABLE IF NOT EXISTS `laptop_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenloaisanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manhasanxuat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manhasanxuat` (`manhasanxuat`),
  KEY `laptop_id` (`tenloaisanpham`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laptop_categories`
--

INSERT INTO `laptop_categories` (`id`, `tenloaisanpham`, `manhasanxuat`) VALUES
(11, 'Gaming', 1),
(12, 'VÄƒn phÃ²ng', 1),
(13, 'Gaming', 2),
(14, 'VÄƒn phÃ²ng', 2),
(15, 'gaming', 3),
(16, 'VÄƒn phÃ²ng', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

DROP TABLE IF EXISTS `nhasanxuat`;
CREATE TABLE IF NOT EXISTS `nhasanxuat` (
  `manhasanxuat` int(11) NOT NULL AUTO_INCREMENT,
  `tennhasanxuat` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`manhasanxuat`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`manhasanxuat`, `tennhasanxuat`, `mota`) VALUES
(1, 'msi', 'Rá»“ng Ä‘á»'),
(2, 'Acer', 'Chim xanh'),
(3, 'Asus', 'chim vang'),
(33, '11', '1');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `id_tk` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_tk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id_tk`, `username`, `password`, `name`, `email`, `phone`, `address`, `role`) VALUES
(2, 'phuong123', '12345', 'phuong', 'phg@gmail.com', 123456789, '123123 sdfgnklsdf', 1),
(3, 'tuankhi', '12345', 'khi', 'khi@gmail.com', 975439645, 'lololo', 0),
(4, 'khinui', '12345', 'khi nui', 'duytung9903@gmail.com', 975439645, 'ccccc', 0),
(5, 'khinuiw', '123451', 'Tráº§n ThÃ¡i', 'dh52100133@student.edu.vn', 965664933, '5 Hoang Trong Mau, Tan Hung, Q7, Tp.HCM', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`iddh`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `taikhoan` (`id_tk`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `taikhoan` (`id_tk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laptops`
--
ALTER TABLE `laptops`
  ADD CONSTRAINT `laptops_ibfk_1` FOREIGN KEY (`manhasanxuat`) REFERENCES `nhasanxuat` (`manhasanxuat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laptops_ibfk_2` FOREIGN KEY (`loai_id`) REFERENCES `laptop_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laptop_categories`
--
ALTER TABLE `laptop_categories`
  ADD CONSTRAINT `laptop_categories_ibfk_1` FOREIGN KEY (`manhasanxuat`) REFERENCES `nhasanxuat` (`manhasanxuat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
