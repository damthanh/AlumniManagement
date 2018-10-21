-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2018 lúc 06:40 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuusinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `user` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `loai_acc` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `co_quan`
--

CREATE TABLE `co_quan` (
  `co_quanID` int(10) NOT NULL,
  `ten_co_quan` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `loai_hinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csv_namhoc`
--

CREATE TABLE `csv_namhoc` (
  `CuuSinhVienID` int(10) NOT NULL,
  `namhoc_ID` int(5) NOT NULL,
  `lop_ID` int(5) NOT NULL,
  `ghi_chu` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctsv`
--

CREATE TABLE `ctsv` (
  `ctsv_ID` int(10) NOT NULL,
  `Ho` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` int(10) NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Account` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuusv`
--

CREATE TABLE `cuusv` (
  `CuuSinhVienID` int(10) NOT NULL,
  `Ho` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDienThoai` int(10) NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Account` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `QueQuan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi_coquan`
--

CREATE TABLE `diachi_coquan` (
  `co_quanID` int(10) NOT NULL,
  `huyen_ID` int(10) NOT NULL,
  `dia_chi` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huyen`
--

CREATE TABLE `huyen` (
  `huyen_ID` int(2) NOT NULL,
  `tinh_ID` int(2) NOT NULL,
  `ten_huyen` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `kich_hoat` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lam_viec`
--

CREATE TABLE `lam_viec` (
  `CuuSinhVienID` int(10) NOT NULL,
  `co_quanID` int(10) NOT NULL,
  `bat_dau` year(4) NOT NULL,
  `ket_thuc` year(4) NOT NULL,
  `vi_tri` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `muc_luong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `lop_ID` int(5) NOT NULL,
  `ten` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `kich_hoat` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nam_hoc`
--

CREATE TABLE `nam_hoc` (
  `namhoc_ID` int(5) NOT NULL,
  `ten_khoa` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `kich_hoat` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `tinh_ID` int(2) NOT NULL,
  `ten_tinh` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `kich_hoat` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user`);

--
-- Chỉ mục cho bảng `co_quan`
--
ALTER TABLE `co_quan`
  ADD PRIMARY KEY (`co_quanID`);

--
-- Chỉ mục cho bảng `csv_namhoc`
--
ALTER TABLE `csv_namhoc`
  ADD PRIMARY KEY (`CuuSinhVienID`,`namhoc_ID`,`lop_ID`),
  ADD KEY `namhoc_ID` (`namhoc_ID`),
  ADD KEY `lop_ID` (`lop_ID`);

--
-- Chỉ mục cho bảng `ctsv`
--
ALTER TABLE `ctsv`
  ADD PRIMARY KEY (`ctsv_ID`),
  ADD KEY `Account` (`Account`);

--
-- Chỉ mục cho bảng `cuusv`
--
ALTER TABLE `cuusv`
  ADD PRIMARY KEY (`CuuSinhVienID`),
  ADD KEY `Account` (`Account`),
  ADD KEY `QueQuan` (`QueQuan`);

--
-- Chỉ mục cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`huyen_ID`),
  ADD KEY `tinh_ID` (`tinh_ID`);

--
-- Chỉ mục cho bảng `lam_viec`
--
ALTER TABLE `lam_viec`
  ADD PRIMARY KEY (`CuuSinhVienID`,`co_quanID`),
  ADD KEY `co_quanID` (`co_quanID`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`lop_ID`);

--
-- Chỉ mục cho bảng `nam_hoc`
--
ALTER TABLE `nam_hoc`
  ADD PRIMARY KEY (`namhoc_ID`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`tinh_ID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `csv_namhoc`
--
ALTER TABLE `csv_namhoc`
  ADD CONSTRAINT `csv_namhoc_ibfk_1` FOREIGN KEY (`CuuSinhVienID`) REFERENCES `cuusv` (`CuuSinhVienID`),
  ADD CONSTRAINT `csv_namhoc_ibfk_2` FOREIGN KEY (`namhoc_ID`) REFERENCES `nam_hoc` (`namhoc_ID`),
  ADD CONSTRAINT `csv_namhoc_ibfk_3` FOREIGN KEY (`lop_ID`) REFERENCES `lop` (`lop_ID`);

--
-- Các ràng buộc cho bảng `ctsv`
--
ALTER TABLE `ctsv`
  ADD CONSTRAINT `ctsv_ibfk_1` FOREIGN KEY (`Account`) REFERENCES `account` (`user`);

--
-- Các ràng buộc cho bảng `cuusv`
--
ALTER TABLE `cuusv`
  ADD CONSTRAINT `cuusv_ibfk_1` FOREIGN KEY (`Account`) REFERENCES `account` (`user`),
  ADD CONSTRAINT `cuusv_ibfk_2` FOREIGN KEY (`QueQuan`) REFERENCES `huyen` (`huyen_ID`);

--
-- Các ràng buộc cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD CONSTRAINT `huyen_ibfk_1` FOREIGN KEY (`tinh_ID`) REFERENCES `tinh` (`tinh_ID`);

--
-- Các ràng buộc cho bảng `lam_viec`
--
ALTER TABLE `lam_viec`
  ADD CONSTRAINT `lam_viec_ibfk_1` FOREIGN KEY (`co_quanID`) REFERENCES `co_quan` (`co_quanID`),
  ADD CONSTRAINT `lam_viec_ibfk_2` FOREIGN KEY (`CuuSinhVienID`) REFERENCES `cuusv` (`CuuSinhVienID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
