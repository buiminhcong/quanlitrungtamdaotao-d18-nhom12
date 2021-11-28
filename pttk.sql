-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 28, 2021 lúc 02:51 AM
-- Phiên bản máy phục vụ: 8.0.13-4
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `VNafdfDqgY`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi`
--

CREATE TABLE `diachi` (
  `ID` int(11) NOT NULL,
  `SoNha` varchar(255) NOT NULL,
  `ToaNha` varchar(255) NOT NULL,
  `XomPho` varchar(255) NOT NULL,
  `PhuongXa` varchar(255) NOT NULL,
  `QuanHuyen` varchar(255) NOT NULL,
  `TinhThanh` varchar(255) NOT NULL,
  `ThanhVienID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdaura`
--

CREATE TABLE `diemdaura` (
  `ID` int(11) NOT NULL,
  `Diem` double NOT NULL,
  `PhieuDangKiID` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `diemdaura`
--

INSERT INTO `diemdaura` (`ID`, `Diem`, `PhieuDangKiID`, `FullName`) VALUES
(6, 7, 8, 'Nguyễn Mạnh Cường'),
(7, 8, 9, 'Trần Văn Nam'),
(8, 7.5, 10, 'Nguyễn Mai Linh'),
(9, 9, 11, 'Nguyễn Văn Thanh'),
(10, 8.5, 12, 'Nguyễn Văn Thanh'),
(11, 6, 13, 'Phạm Minh Đức'),
(12, 7.5, 14, 'Trần Văn Nam'),
(13, 8, 15, 'Nguyễn Văn Thanh'),
(14, 9, 16, 'Trần Văn Nam'),
(15, 7, 17, 'Nguyễn Mạnh Cường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `ThanhVienID` int(11) NOT NULL,
  `MaGV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`ThanhVienID`, `MaGV`) VALUES
(10, 'GV1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioday`
--

CREATE TABLE `gioday` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `MoTa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gioday`
--

INSERT INTO `gioday` (`ID`, `Ten`, `MoTa`) VALUES
(3, '7h', '7 giờ tối'),
(4, '9h', '8 giờ tối');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `ThanhVienID` int(11) NOT NULL,
  `MaHV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`ThanhVienID`, `MaHV`) VALUES
(11, 'HV1'),
(13, 'HV2'),
(14, 'HV3'),
(16, 'HV4'),
(17, 'HV5'),
(18, 'HV6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoten`
--

CREATE TABLE `hoten` (
  `ID` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `TenDem` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `ThanhVienID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoten`
--

INSERT INTO `hoten` (`ID`, `Ho`, `TenDem`, `Ten`, `ThanhVienID`) VALUES
(7, 'Nguyễn', 'Văn', 'Nam', 9),
(8, 'Huỳnh', 'Minh', 'Cường', 12),
(9, 'Le', 'Quang', 'An', 10),
(10, 'Bùi', 'Minh', 'Công', 11),
(11, 'Nguyễn', 'Mai', 'Linh', 16),
(12, 'Trần', 'Văn', 'Nam', 14),
(13, 'Nguyễn', 'Văn', 'Thanh', 17),
(14, 'Phạm', 'Minh', 'Đức', 18),
(15, 'Nguyễn', 'Mạnh', 'Cường', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `HocPhi` varchar(255) NOT NULL,
  `SiSoToiDa` int(11) NOT NULL,
  `KiemTraHoatDong` int(11) NOT NULL,
  `ThoiGianBatDau` date NOT NULL,
  `ThoiGianKetThuc` date NOT NULL,
  `LinhVucID` int(11) NOT NULL,
  `NhanVienThanhVienID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`ID`, `Ten`, `MoTa`, `HocPhi`, `SiSoToiDa`, `KiemTraHoatDong`, `ThoiGianBatDau`, `ThoiGianKetThuc`, `LinhVucID`, `NhanVienThanhVienID`) VALUES
(14, 'Khóa cơ bản', 'khóa học thuộc trung tâm master', '2.000.000', 50, 1, '2020-12-12', '2021-11-10', 4, 15),
(15, 'Khóa nâng cao', 'Khóa học thuộc trung tâm master', '2.000.000', 50, 1, '2021-05-26', '2021-11-15', 4, 15),
(16, 'Khóa học back-end', 'khóa học web back-end', '2.000.000', 50, 1, '2020-11-02', '2021-01-10', 4, 15),
(17, 'Khóa học nâng cao', 'Khóa học lập trình nâng cao', '3.000.000', 60, 1, '2020-05-10', '2020-08-10', 7, 15),
(18, 'Khóa cơ bản', 'Khóa học lập trình cơ bản', '2.500.000', 40, 1, '2020-11-09', '2021-10-05', 7, 15),
(19, 'Khóa học font-end', 'Khóa học tạo giao diện', '2.000.000', 50, 1, '2020-11-02', '2021-01-10', 4, 15),
(20, 'Khóa học Toiec 450', 'Khóa học tiếng anh ', '2.400.000', 30, 1, '2020-11-02', '2021-02-05', 6, 15),
(21, 'Khóa học Toiec 550', 'Khóa học dành cho người ra trường', '3.500.000', 30, 1, '2020-11-02', '2021-01-10', 6, 15),
(22, 'Khóa hoc IELTS', 'Khóa học tiếng anh 4 kỹ năng', '5.000.000', 20, 1, '2020-11-02', '2021-05-10', 6, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichday`
--

CREATE TABLE `lichday` (
  `ID` int(11) NOT NULL,
  `GiangVienThanhVienID` int(11) NOT NULL,
  `KhoaHocID` int(11) NOT NULL,
  `GioDayID` int(11) NOT NULL,
  `ThuDayID` int(11) NOT NULL,
  `PhongHocID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lichday`
--

INSERT INTO `lichday` (`ID`, `GiangVienThanhVienID`, `KhoaHocID`, `GioDayID`, `ThuDayID`, `PhongHocID`) VALUES
(15, 10, 14, 3, 3, 4),
(16, 10, 14, 4, 4, 5),
(17, 10, 15, 3, 3, 4),
(18, 10, 15, 4, 4, 6),
(19, 10, 16, 3, 3, 6),
(20, 10, 17, 4, 4, 4),
(21, 10, 18, 4, 3, 5),
(22, 10, 19, 3, 3, 6),
(23, 10, 20, 4, 4, 4),
(24, 10, 21, 3, 3, 4),
(25, 10, 18, 3, 3, 4),
(26, 10, 22, 3, 3, 4),
(27, 10, 16, 3, 3, 4),
(28, 10, 22, 3, 4, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linhvuc`
--

CREATE TABLE `linhvuc` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `Mota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `linhvuc`
--

INSERT INTO `linhvuc` (`ID`, `Ten`, `Mota`) VALUES
(4, 'Lập trình web', 'Phát triển web'),
(5, 'Lập trình mobile', 'Phát triển app'),
(6, 'Tiếng anh', 'Ngoại ngữ'),
(7, 'Lập trình nhập môn', 'Dành cho người mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(255) NOT NULL,
  `MoTa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`ID`, `TenMon`, `MoTa`) VALUES
(5, 'Java', 'Môn Java'),
(6, 'C++', 'Môn C++'),
(7, 'Javascript', 'Môn Javascript'),
(8, 'HTML, CSS', 'Môn html,css'),
(9, 'Spring MVC', 'Khóa java web nâng cao'),
(10, 'Tiếng anh', 'Tiếng anh cơ bản'),
(11, 'Tiếng anh cao cấp', 'Tiếng anh nâng cao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc_khoahoc`
--

CREATE TABLE `monhoc_khoahoc` (
  `MonHocID` int(11) NOT NULL,
  `KhoaHocID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `monhoc_khoahoc`
--

INSERT INTO `monhoc_khoahoc` (`MonHocID`, `KhoaHocID`) VALUES
(6, 14),
(9, 16),
(5, 17),
(5, 18),
(6, 18),
(7, 19),
(8, 19),
(10, 20),
(10, 21),
(11, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `ThanhVienID` int(11) NOT NULL,
  `MaNV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`ThanhVienID`, `MaNV`) VALUES
(15, 'NV1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudangki`
--

CREATE TABLE `phieudangki` (
  `ID` int(11) NOT NULL,
  `NgayDangKy` date NOT NULL,
  `KiemTraThanhToan` int(11) NOT NULL,
  `HocVienThanhVienID` int(11) NOT NULL,
  `LichDayID` int(11) NOT NULL,
  `TenKhoaHoc` varchar(255) NOT NULL,
  `HocPhi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phieudangki`
--

INSERT INTO `phieudangki` (`ID`, `NgayDangKy`, `KiemTraThanhToan`, `HocVienThanhVienID`, `LichDayID`, `TenKhoaHoc`, `HocPhi`) VALUES
(8, '2020-12-11', 1, 13, 15, 'Khóa cơ bản', '2.000.000'),
(9, '2020-12-10', 1, 14, 15, 'Khóa cơ bản', '2.000.000'),
(10, '2021-05-20', 1, 16, 16, 'Khóa học nâng cao', '2.000.000'),
(11, '2021-05-10', 1, 17, 17, 'Khóa học nâng cao', '2.000.000'),
(12, '2020-11-01', 1, 17, 19, 'Khóa học back-end', '2.000.000'),
(13, '2020-10-28', 1, 18, 19, 'Khóa học back-end', '2.000.000'),
(14, '2020-11-01', 1, 14, 22, 'Khóa học font-end', '2.000.000'),
(15, '2020-10-25', 1, 17, 22, 'Khóa học font-end', '2.000.000'),
(16, '2020-11-01', 1, 14, 23, 'Khóa học Toiec 450', '2.400.000'),
(17, '2020-10-26', 1, 18, 23, 'Khóa học Toiec 450', '2.400.000'),
(20, '2021-11-26', 1, 11, 24, 'Khóa học Toiec 550', '3.500.000'),
(21, '2021-11-26', 1, 11, 26, 'Khóa hoc IELTS', '5.000.000'),
(22, '2021-11-26', 1, 18, 15, 'Khóa cơ bản', '2.000.000'),
(23, '2021-11-27', 1, 16, 15, 'Khóa cơ bản', '2.000.000'),
(24, '2021-11-27', 1, 11, 15, 'Khóa cơ bản', '2.000.000'),
(25, '2021-11-27', 1, 16, 26, 'Khóa hoc IELTS', '5.000.000'),
(26, '2021-11-27', 1, 11, 25, 'Khóa cơ bản', '2.500.000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phonghoc`
--

CREATE TABLE `phonghoc` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `SucChua` int(11) NOT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `ToaNhaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phonghoc`
--

INSERT INTO `phonghoc` (`ID`, `Ten`, `SucChua`, `MoTa`, `ToaNhaID`) VALUES
(4, '101', 50, 'Tầng 1', 2),
(5, '102', 50, 'Tầng 1', 2),
(6, '202', 50, 'Tầng 2', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanli`
--

CREATE TABLE `quanli` (
  `ThanhVienID` int(11) NOT NULL,
  `MaQL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quanli`
--

INSERT INTO `quanli` (`ThanhVienID`, `MaQL`) VALUES
(12, 'QL1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantrivienhethong`
--

CREATE TABLE `quantrivienhethong` (
  `ThanhVienID` int(11) NOT NULL,
  `MaQTV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quantrivienhethong`
--

INSERT INTO `quantrivienhethong` (`ThanhVienID`, `MaQTV`) VALUES
(9, 'QTV1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID` int(11) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhanQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID`, `TaiKhoan`, `MatKhau`, `NgaySinh`, `DienThoai`, `Email`, `PhanQuyen`) VALUES
(9, 'admin', 'admin', '2000-12-20', 423123123, 'acfd@gmail.com', 'QTV'),
(10, 'giangvien', 'giangvien', '2000-12-20', 423123123, 'acfd@gmail.com', 'GV'),
(11, 'hocvien', 'hocvien', '2000-12-20', 123243433, 'mic@gmail.com', 'HV'),
(12, 'quanli', 'quanli', '2000-10-05', 53245234, 'mic@gmail.com', 'QL'),
(13, 'cuong', 'cuong', '2000-12-20', 123243433, 'mic@gmail.com', 'HV'),
(14, 'nam', 'nam', '2000-10-05', 53245234, 'mic@gmail.com', 'HV'),
(15, 'nhanvien', 'nhanvien', '2000-12-20', 423423434, 'mic@gmail.com', 'NV'),
(16, 'linh', 'linh', '2000-10-05', 53245234, 'mic@gmail.com', 'HV'),
(17, 'thanh', 'thanh', '2000-12-20', 234232343, 'vsdvfv@gmail.com', 'HV'),
(18, 'duc', 'duc', '2000-10-05', 312322323, 'fgdfgd@gmail.com', 'HV');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuday`
--

CREATE TABLE `thuday` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `MoTa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thuday`
--

INSERT INTO `thuday` (`ID`, `Ten`, `MoTa`) VALUES
(3, '2 - 4 - 6', 'Thứ Chẵn'),
(4, '3 - 5 -7', 'Thứ Lẻ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toanha`
--

CREATE TABLE `toanha` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `MoTa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `toanha`
--

INSERT INTO `toanha` (`ID`, `Ten`, `MoTa`) VALUES
(2, 'VinCom-Hà đông', 'Đường Nguyễn Trãi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKDiaChi357830` (`ThanhVienID`);

--
-- Chỉ mục cho bảng `diemdaura`
--
ALTER TABLE `diemdaura`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKDiemDauRa703531` (`PhieuDangKiID`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`ThanhVienID`);

--
-- Chỉ mục cho bảng `gioday`
--
ALTER TABLE `gioday`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`ThanhVienID`);

--
-- Chỉ mục cho bảng `hoten`
--
ALTER TABLE `hoten`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKHoTen469284` (`ThanhVienID`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKKhoaHoc625692` (`LinhVucID`),
  ADD KEY `FKKhoaHoc433480` (`NhanVienThanhVienID`);

--
-- Chỉ mục cho bảng `lichday`
--
ALTER TABLE `lichday`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKLichDay319780` (`GiangVienThanhVienID`),
  ADD KEY `FKLichDay241451` (`GioDayID`),
  ADD KEY `FKLichDay645576` (`ThuDayID`),
  ADD KEY `FKLichDay429629` (`PhongHocID`),
  ADD KEY `FKLichDay165879` (`KhoaHocID`);

--
-- Chỉ mục cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `monhoc_khoahoc`
--
ALTER TABLE `monhoc_khoahoc`
  ADD PRIMARY KEY (`MonHocID`,`KhoaHocID`),
  ADD KEY `FKMonHoc_Kho723496` (`KhoaHocID`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`ThanhVienID`);

--
-- Chỉ mục cho bảng `phieudangki`
--
ALTER TABLE `phieudangki`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKPhieuDangK680814` (`HocVienThanhVienID`),
  ADD KEY `FKPhieuDangK888713` (`LichDayID`);

--
-- Chỉ mục cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKPhongHoc967919` (`ToaNhaID`);

--
-- Chỉ mục cho bảng `quanli`
--
ALTER TABLE `quanli`
  ADD PRIMARY KEY (`ThanhVienID`);

--
-- Chỉ mục cho bảng `quantrivienhethong`
--
ALTER TABLE `quantrivienhethong`
  ADD PRIMARY KEY (`ThanhVienID`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thuday`
--
ALTER TABLE `thuday`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `toanha`
--
ALTER TABLE `toanha`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `diachi`
--
ALTER TABLE `diachi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diemdaura`
--
ALTER TABLE `diemdaura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `gioday`
--
ALTER TABLE `gioday`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoten`
--
ALTER TABLE `hoten`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `lichday`
--
ALTER TABLE `lichday`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phieudangki`
--
ALTER TABLE `phieudangki`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `thuday`
--
ALTER TABLE `thuday`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `toanha`
--
ALTER TABLE `toanha`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `FKDiaChi357830` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `diemdaura`
--
ALTER TABLE `diemdaura`
  ADD CONSTRAINT `FKDiemDauRa703531` FOREIGN KEY (`PhieuDangKiID`) REFERENCES `phieudangki` (`id`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `FKGiangVien398670` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD CONSTRAINT `FKHocVien335219` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `hoten`
--
ALTER TABLE `hoten`
  ADD CONSTRAINT `FKHoTen469284` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `FKKhoaHoc433480` FOREIGN KEY (`NhanVienThanhVienID`) REFERENCES `nhanvien` (`thanhvienid`),
  ADD CONSTRAINT `FKKhoaHoc625692` FOREIGN KEY (`LinhVucID`) REFERENCES `linhvuc` (`id`);

--
-- Các ràng buộc cho bảng `lichday`
--
ALTER TABLE `lichday`
  ADD CONSTRAINT `FKLichDay165879` FOREIGN KEY (`KhoaHocID`) REFERENCES `khoahoc` (`id`),
  ADD CONSTRAINT `FKLichDay241451` FOREIGN KEY (`GioDayID`) REFERENCES `gioday` (`id`),
  ADD CONSTRAINT `FKLichDay319780` FOREIGN KEY (`GiangVienThanhVienID`) REFERENCES `giangvien` (`thanhvienid`),
  ADD CONSTRAINT `FKLichDay429629` FOREIGN KEY (`PhongHocID`) REFERENCES `phonghoc` (`id`),
  ADD CONSTRAINT `FKLichDay645576` FOREIGN KEY (`ThuDayID`) REFERENCES `thuday` (`id`);

--
-- Các ràng buộc cho bảng `monhoc_khoahoc`
--
ALTER TABLE `monhoc_khoahoc`
  ADD CONSTRAINT `FKMonHoc_Kho723496` FOREIGN KEY (`KhoaHocID`) REFERENCES `khoahoc` (`id`),
  ADD CONSTRAINT `FKMonHoc_Kho895855` FOREIGN KEY (`MonHocID`) REFERENCES `monhoc` (`id`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `FKNhanVien253250` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `phieudangki`
--
ALTER TABLE `phieudangki`
  ADD CONSTRAINT `FKPhieuDangK680814` FOREIGN KEY (`HocVienThanhVienID`) REFERENCES `hocvien` (`thanhvienid`),
  ADD CONSTRAINT `FKPhieuDangK888713` FOREIGN KEY (`LichDayID`) REFERENCES `lichday` (`id`);

--
-- Các ràng buộc cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  ADD CONSTRAINT `FKPhongHoc967919` FOREIGN KEY (`ToaNhaID`) REFERENCES `toanha` (`id`);

--
-- Các ràng buộc cho bảng `quanli`
--
ALTER TABLE `quanli`
  ADD CONSTRAINT `FKQuanLi659883` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);

--
-- Các ràng buộc cho bảng `quantrivienhethong`
--
ALTER TABLE `quantrivienhethong`
  ADD CONSTRAINT `FKQuanTriVie48267` FOREIGN KEY (`ThanhVienID`) REFERENCES `thanhvien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
