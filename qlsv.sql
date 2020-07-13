-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 13, 2020 lúc 08:50 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsv`
--
CREATE DATABASE IF NOT EXISTS `qlsv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `qlsv`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dkien`
--

DROP TABLE IF EXISTS `dkien`;
CREATE TABLE IF NOT EXISTS `dkien` (
  `mamh` varchar(8) NOT NULL,
  `mamh_truoc` varchar(8) NOT NULL,
  PRIMARY KEY (`mamh`,`mamh_truoc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dkien`
--

INSERT INTO `dkien` (`mamh`, `mamh_truoc`) VALUES
('COSC3320', 'COSC1310'),
('COSC3380', 'COSC3320'),
('COSC3380', 'MATH2410');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hphan`
--

DROP TABLE IF EXISTS `hphan`;
CREATE TABLE IF NOT EXISTS `hphan` (
  `mahp` int(11) NOT NULL,
  `mamh` varchar(8) NOT NULL,
  `hocky` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `gv` varchar(30) NOT NULL,
  PRIMARY KEY (`mahp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hphan`
--

INSERT INTO `hphan` (`mahp`, `mamh`, `hocky`, `nam`, `gv`) VALUES
(85, 'MATH2410', 1, 1996, 'Kim'),
(92, 'COSC1310', 1, 1996, 'An'),
(102, 'COSC3320', 2, 1997, 'Nhien'),
(112, 'MATH2410', 1, 1997, 'Van'),
(119, 'COSC1310', 1, 1997, 'An'),
(135, 'COSC3380', 1, 1997, 'Son');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

DROP TABLE IF EXISTS `khoa`;
CREATE TABLE IF NOT EXISTS `khoa` (
  `makhoa` varchar(4) NOT NULL,
  `tenkhoa` varchar(30) NOT NULL,
  `namthanhlap` int(11) NOT NULL,
  PRIMARY KEY (`makhoa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`, `namthanhlap`) VALUES
('CNTT', 'Cong Nghe Thong Tin', 1995),
('VL', 'Vat Ly', 1976),
('TOAN', 'Toan', 1976);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kqua`
--

DROP TABLE IF EXISTS `kqua`;
CREATE TABLE IF NOT EXISTS `kqua` (
  `masv` int(11) NOT NULL,
  `mahp` int(11) NOT NULL,
  `diem` double NOT NULL,
  PRIMARY KEY (`masv`,`mahp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `kqua`
--

INSERT INTO `kqua` (`masv`, `mahp`, `diem`) VALUES
(25, 102, 7),
(25, 135, 9),
(17, 102, 8),
(17, 119, 6),
(5, 85, 10),
(8, 92, 10),
(8, 102, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mhoc`
--

DROP TABLE IF EXISTS `mhoc`;
CREATE TABLE IF NOT EXISTS `mhoc` (
  `tenmh` varchar(30) NOT NULL,
  `mamh` varchar(8) NOT NULL,
  `tinchi` int(11) NOT NULL,
  `makh` varchar(4) NOT NULL,
  PRIMARY KEY (`mamh`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `mhoc`
--

INSERT INTO `mhoc` (`tenmh`, `mamh`, `tinchi`, `makh`) VALUES
('Nhap mon tin hoc', 'COSC1310', 4, 'CNTT'),
('Cau truc du lieu', 'COSC3320', 4, 'CNTT'),
('Toan roi rac', 'MATH2410', 3, 'Toan'),
('Co so du lieu', 'COSC3380', 3, 'CNTT'),
('Vat ly dai cuong', 'PHYS3332', 3, 'VL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `svien`
--

DROP TABLE IF EXISTS `svien`;
CREATE TABLE IF NOT EXISTS `svien` (
  `ten` varchar(30) NOT NULL,
  `masv` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `makh` varchar(4) NOT NULL,
  PRIMARY KEY (`masv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `svien`
--

INSERT INTO `svien` (`ten`, `masv`, `nam`, `makh`) VALUES
('Nam', 25, 2, 'CNTT'),
('Son', 17, 1, 'CNTT'),
('Bao', 8, 2, 'CNTT'),
('Trang', 5, 3, 'TOAN');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
