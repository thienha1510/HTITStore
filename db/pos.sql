-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2021 lúc 05:06 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pos`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Laptops'),
(2, 'Desktop PC\'s'),
(3, 'Tablets');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'ThienHa', 'HoChiMinh city, VietNam', '0969503361');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(11, 2, 'Purchase', 2, 1, '2021-11-25 22:51:50'),
(12, 2, 'Purchase', 12, 1, '2021-11-25 22:51:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', 899, 891, 'upload/1.jpg', 4),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB\r\n', 799, 947, 'upload/2.jpg', 0),
(3, 2, 'DELL Inspiron 15 5000 15.6', 599, 977, 'upload/3.jpg', 4),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', 399, 982, 'upload/4.jpg', 0),
(5, 1, 'APPLE MacBook Air 13.3\" (2017)', 879, 9900, 'upload/5.jpg', 0),
(6, 1, 'DELL Inspiron 15 5000 15', 449.99, 1000, 'upload/6.jpg', 4),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', 549.99, 1000, 'upload/8.jpg', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', 599.99, 1000, 'upload/9.jpg', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', 599.99, 1000, 'upload/10.jpg', 4),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', 489.98, 1000, 'upload/11.jpg', 0),
(12, 2, 'ACER Aspire GX-781 Gaming PC', 749.99, 999, 'upload/12.jpg', 0),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', 799.99, 1000, 'upload/13.jpg', 0),
(14, 2, 'LENOVO Legion Y520 Gaming PC', 899.99, 1000, 'upload/14.jpg', 0),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', 999.99, 1000, 'upload/15.jpg', 0),
(16, 2, 'C SPECIALIST Vortex Core II Gaming PC', 649.99, 1000, 'upload/16.jpg', 0),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', 49.99, 1000, 'upload/17.jpg', 0),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', 79.99, 1000, 'upload/18.jpg', 0),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', 99.99, 1000, 'upload/19.jpg', 0),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', 339, 990, 'upload/20.jpg', 0),
(21, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', 339, 1000, 'upload/21.jpg', 0),
(22, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', 619, 1000, 'upload/22.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(11, 2, 1548.99, '2021-11-25 22:51:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(19, 11, 2, 1),
(20, 11, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(4, 'Dell Computer Corporation', 'One Dell WayRound Rock, Texas 78682', '1-800-WWW-DELL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(4, 'supplier', '99b0e8da24e29e4ccb5d7d76e677c2ac', 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Chỉ mục cho bảng `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
