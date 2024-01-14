-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2024 lúc 03:33 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id_brand`, `name`) VALUES
(1, 'Rolex'),
(2, 'Casio'),
(3, 'Lobinni'),
(4, 'DW'),
(5, 'Hawii'),
(6, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `name`) VALUES
(1, 'Đồng hồ'),
(2, 'Phụ kiện'),
(3, 'Dây đồng hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_cart`
--

CREATE TABLE `ct_cart` (
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_cart`
--

INSERT INTO `ct_cart` (`id_user`, `id_product`, `qty`) VALUES
(5, 5, 1),
(5, 6, 1),
(5, 11, 1),
(5, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_ir`
--

CREATE TABLE `ct_ir` (
  `id_ir` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `import_price` int(11) NOT NULL,
  `total_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_ir`
--

INSERT INTO `ct_ir` (`id_ir`, `id_product`, `qty`, `import_price`, `total_item`) VALUES
(13, 13, 20, 10000, 200000),
(22, 15, 3, 20000, 60000),
(23, 15, 20, 10000, 200000),
(24, 11, 8, 2999, 23992),
(25, 5, 30, 500000, 15000000),
(25, 6, 50, 600000, 30000000),
(25, 8, 40, 100000, 4000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_order`
--

CREATE TABLE `ct_order` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `total_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_order`
--

INSERT INTO `ct_order` (`id_order`, `id_product`, `qty`, `sellprice`, `total_item`) VALUES
(5, 5, 1, 500000, 500000),
(6, 11, 2, 1950000, 3900000),
(6, 12, 3, 1850000, 5550000),
(7, 7, 1, 750000, 750000),
(7, 8, 1, 500000, 500000),
(7, 9, 1, 500000, 500000),
(8, 6, 1, 750000, 750000),
(8, 7, 1, 750000, 750000),
(8, 9, 1, 500000, 500000),
(8, 10, 1, 750000, 750000),
(8, 11, 1, 1950000, 1950000),
(8, 12, 1, 1850000, 1850000),
(9, 5, 2, 500000, 1000000),
(9, 7, 2, 750000, 1500000),
(9, 8, 2, 500000, 1000000),
(9, 9, 2, 500000, 1000000),
(9, 12, 1, 1850000, 1850000),
(10, 11, 1, 1950000, 1950000),
(10, 12, 1, 1850000, 1850000),
(11, 5, 1, 500000, 500000),
(11, 6, 1, 750000, 750000),
(11, 11, 1, 1950000, 1950000),
(11, 12, 1, 1850000, 1850000),
(12, 5, 1, 500000, 500000),
(12, 6, 2, 750000, 1500000),
(12, 7, 1, 750000, 750000),
(12, 8, 1, 500000, 500000),
(12, 9, 1, 500000, 500000),
(12, 10, 1, 750000, 750000),
(12, 11, 2, 1950000, 3900000),
(12, 12, 1, 1850000, 1850000),
(13, 5, 1, 500000, 500000),
(13, 6, 1, 750000, 750000),
(13, 7, 1, 750000, 750000),
(13, 8, 1, 500000, 500000),
(13, 9, 1, 500000, 500000),
(13, 10, 1, 750000, 750000),
(13, 11, 1, 1950000, 1950000),
(13, 12, 1, 1850000, 1850000),
(14, 6, 1, 750000, 750000),
(14, 11, 1, 1950000, 1950000),
(15, 11, 1, 1950000, 1950000),
(16, 12, 1, 1850000, 1850000),
(17, 6, 1, 750000, 750000),
(18, 12, 1, 1850000, 1850000),
(19, 11, 1, 1950000, 1950000),
(20, 5, 1, 500000, 500000),
(20, 6, 1, 750000, 750000),
(20, 7, 1, 750000, 750000),
(20, 8, 1, 500000, 500000),
(20, 9, 1, 500000, 500000),
(20, 10, 1, 750000, 750000),
(20, 11, 1, 1950000, 1950000),
(20, 12, 1, 1850000, 1850000),
(21, 5, 1, 400000, 400000),
(21, 6, 1, 525000, 525000),
(21, 11, 2, 1365000, 2730000),
(21, 12, 1, 1295000, 1295000),
(22, 7, 1, 750000, 750000),
(22, 8, 1, 500000, 500000),
(22, 9, 1, 500000, 500000),
(22, 11, 1, 1950000, 1950000),
(25, 6, 1, 525000, 525000),
(26, 5, 1, 400000, 400000),
(26, 6, 1, 525000, 525000),
(26, 11, 1, 1365000, 1365000),
(27, 6, 1, 525000, 525000),
(28, 11, 1, 1365000, 1365000),
(29, 11, 1, 1365000, 1365000),
(30, 6, 1, 525000, 525000),
(30, 11, 1, 1365000, 1365000),
(31, 11, 5, 1950000, 9750000),
(31, 13, 1, 2200000, 2200000),
(33, 5, 1, 500000, 500000),
(34, 12, 1, 1850000, 1850000),
(35, 11, 1, 1950000, 1950000),
(35, 12, 1, 1850000, 1850000),
(36, 11, 1, 1950000, 1950000),
(36, 12, 1, 1850000, 1850000),
(37, 6, 1, 750000, 750000),
(37, 11, 1, 1950000, 1950000),
(37, 12, 1, 1850000, 1850000),
(38, 6, 1, 525000, 525000),
(38, 11, 1, 1365000, 1365000),
(38, 12, 1, 1295000, 1295000),
(39, 12, 1, 1295000, 1295000),
(40, 11, 1, 1950000, 1950000),
(40, 12, 1, 1850000, 1850000),
(41, 11, 1, 1950000, 1950000),
(42, 11, 1, 1365000, 1365000),
(43, 11, 1, 1365000, 1365000),
(44, 11, 1, 1365000, 1365000),
(45, 8, 1, 500000, 500000),
(45, 9, 2, 500000, 1000000),
(45, 11, 1, 1950000, 1950000),
(46, 12, 1, 1850000, 1850000),
(47, 6, 1, 750000, 750000),
(47, 11, 1, 1950000, 1950000),
(47, 12, 2, 1850000, 3700000),
(48, 12, 1, 1850000, 1850000),
(49, 6, 1, 750000, 750000),
(49, 11, 4, 1950000, 7800000),
(49, 12, 6, 1850000, 11100000),
(51, 6, 3, 525000, 1575000),
(51, 11, 3, 1365000, 4095000),
(51, 12, 3, 1295000, 3885000),
(52, 11, 1, 1950000, 1950000),
(52, 12, 1, 1850000, 1850000),
(53, 6, 2, 750000, 1500000),
(53, 11, 2, 1950000, 3900000),
(54, 5, 1, 400000, 400000),
(54, 6, 3, 525000, 1575000),
(54, 11, 1, 1365000, 1365000),
(55, 6, 1, 525000, 525000),
(56, 6, 1, 525000, 525000),
(57, 5, 1, 400000, 400000),
(57, 6, 3, 525000, 1575000),
(57, 11, 1, 1365000, 1365000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventoryreceipt`
--

CREATE TABLE `inventoryreceipt` (
  `id_ir` int(11) NOT NULL,
  `day` date NOT NULL DEFAULT current_timestamp(),
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inventoryreceipt`
--

INSERT INTO `inventoryreceipt` (`id_ir`, `day`, `total`) VALUES
(13, '2023-12-25', 200000),
(14, '2023-12-26', 100000),
(15, '2023-12-26', 100000),
(16, '2023-12-26', 100000),
(17, '2023-12-26', 100000),
(18, '2023-12-26', 100000),
(19, '2023-12-26', 100000),
(20, '2023-12-26', 100000),
(21, '2023-12-26', 200000),
(22, '2023-12-26', 60000),
(23, '2023-12-26', 200000),
(24, '2023-12-26', 23992),
(25, '2023-12-27', 49000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `location` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `total_order` int(11) NOT NULL,
  `status` varchar(20) NOT NULL COMMENT 'trạng thái của đơn hàng (chờ xác nhận, đang vận chuyển, đã nhận được hàng)',
  `day` date NOT NULL DEFAULT current_timestamp(),
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `id_user`, `first_name`, `last_name`, `email`, `location`, `phone`, `total_order`, `status`, `day`, `note`) VALUES
(5, 5, 'huy', 'ngo', 'huy@gmail.com', 'Hue', '0326000507', 1250000, '3', '2023-12-05', NULL),
(6, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 9450000, '3', '2023-12-26', NULL),
(7, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1750000, '3', '2023-12-26', NULL),
(8, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 6550000, '3', '2023-12-26', NULL),
(9, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 6350000, '2', '2023-12-26', NULL),
(10, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3800000, '2', '2023-12-26', NULL),
(11, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 5050000, '1', '2023-12-26', NULL),
(12, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 10250000, '1', '2023-12-26', NULL),
(13, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 7550000, '1', '2023-12-26', NULL),
(14, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 2700000, '1', '2023-12-26', NULL),
(15, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1950000, '1', '2023-12-26', NULL),
(16, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1850000, '1', '2023-12-26', NULL),
(17, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 750000, '1', '2023-12-26', NULL),
(18, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1850000, '1', '2023-12-26', NULL),
(19, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1950000, '3', '2023-12-26', NULL),
(20, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 7550000, '3', '2023-12-26', NULL),
(21, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 4950000, '4', '2023-12-26', NULL),
(22, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3700000, '5', '2023-12-27', NULL),
(23, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 0, '1', '2023-12-27', NULL),
(24, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 0, '1', '2023-12-27', NULL),
(25, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 525000, '1', '2023-12-27', NULL),
(26, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 2290000, '1', '2023-12-27', NULL),
(27, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 525000, '1', '2023-12-27', NULL),
(28, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1365000, '1', '2023-12-27', NULL),
(29, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1365000, '1', '2023-12-27', NULL),
(30, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1890000, '1', '2023-12-27', NULL),
(31, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 11950000, '1', '2023-12-27', NULL),
(32, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 0, '1', '2023-12-27', NULL),
(33, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 500000, '1', '2023-12-27', NULL),
(34, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1850000, '1', '2023-12-27', NULL),
(35, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3800000, '1', '2023-12-27', NULL),
(36, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3800000, '1', '2023-12-27', NULL),
(37, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 4550000, '1', '2023-12-27', NULL),
(38, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3185000, '1', '2023-12-27', NULL),
(39, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1295000, '1', '2023-12-27', NULL),
(40, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3800000, '1', '2023-12-27', NULL),
(41, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1950000, '1', '2023-12-27', NULL),
(42, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1365000, '1', '2023-12-27', NULL),
(43, 5, 'huy ngo', 'huy ngo', 'huy', 'Hue', '0326000507', 1365000, '1', '2023-12-27', NULL),
(44, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1365000, '1', '2023-12-27', NULL),
(45, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3450000, '1', '2023-12-27', NULL),
(46, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1850000, '1', '2023-12-27', NULL),
(47, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 6400000, '1', '2023-12-27', NULL),
(48, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 1850000, '1', '2023-12-27', NULL),
(49, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 19650000, '1', '2023-12-27', NULL),
(50, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 0, '1', '2023-12-27', NULL),
(51, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 9555000, '1', '2023-12-27', NULL),
(52, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3800000, '4', '2023-12-27', NULL),
(53, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 5400000, '5', '2023-12-27', NULL),
(54, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 3340000, '4', '2023-12-27', NULL),
(55, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 525000, '5', '2023-12-27', NULL),
(56, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'Hue', '0326000507', 525000, '4', '2023-12-27', NULL),
(57, 5, 'huy ngo', 'huy ngo', 'huy@gmail.com', 'TPHCM', '0326000507', 3340000, '5', '2023-12-27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `sellprice` int(11) NOT NULL,
  `qty_store` int(11) NOT NULL,
  `discount` float NOT NULL,
  `isdiscount` tinyint(1) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '0',
  `img_main` varchar(500) NOT NULL,
  `img1` varchar(500) NOT NULL,
  `img2` varchar(500) NOT NULL,
  `img3` varchar(500) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `id_brand`, `id_category`, `name`, `description`, `sellprice`, `qty_store`, `discount`, `isdiscount`, `status`, `img_main`, `img1`, `img2`, `img3`, `gender`) VALUES
(5, 2, 1, 'GM-B2100VF-1A', 'mô tả 5', 500000, 78, 20, 1, '1', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GM/gmb/gm-b2100vf-1a/assets/GM-B2100VF-1A.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GM/gmb/gm-b2100vf-1a/assets/GM-B2100VF-1A_kv.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GM/gmb/gm-b2100vf-1a/assets/GM-B2100VF-1A_03.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GM/gmb/gm-b2100vf-1a/assets/GM-B2100VF-1A_04.jpg.transform/main-visual-pc/image.jpg', 'Nam'),
(6, 2, 1, 'GA-2100AH-6A', 'Mô tả 6', 750000, 86, 30, 1, '1', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GA/GA2/ga-2100ah-6a/assets/GA-2100AH-6A.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GA/GA2/ga-2100ah-6a/assets/GA-2100AH-6A_N.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GA/GA2/ga-2100ah-6a/assets/GA-2100AH-6A_LED.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/G/GA/GA2/ga-2100ah-6a/assets/GA-2100AH-6A_squre.jpg.transform/main-visual-pc/image.jpg', 'nam'),
(7, 2, 1, 'BGA-290DS-7A', 'Mô tả 7', 750000, 50, 30, 1, '1', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290ds-7a/assets/BGA-290DS-7A.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290ds-7a/assets/BGA-290DS-7A_model.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290ds-7a/assets/BGA-290DS-7A_square.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290ds-7a/assets/BGA-290DS-7A_front.jpg.transform/main-visual-pc/image.jpg', 'nữ'),
(8, 2, 1, 'BA-110XWS-7A', 'Mô tả 8', 500000, 90, 20, 1, '1', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BA/BA1/ba-110xws-7a/assets/BA-110XWS-7A.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BA/BA1/ba-110xws-7a/assets/BA-110XWS-7A_N.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BA/BA1/ba-110xws-7a/assets/BA-110XWS-7A_front.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BA/BA1/ba-110xws-7a/assets/BA-110XWS-7A_urabuta.png.transform/main-visual-pc/image.png', 'nữ'),
(9, 2, 1, 'BGA-290SA-2A', 'Mô tả 9', 500000, 50, 20, 1, '1', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290sa-2a/assets/BGA-290SA-2A.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290sa-2a/assets/BGA-290SA-2A_theme1.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290sa-2a/assets/BGA-290SA-2A_theme2.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/B/BG/BGA/bga-290sa-2a/assets/BGA-290SA_square.jpg.transform/main-visual-pc/image.jpg', 'nữ'),
(10, 2, 1, 'ECB-2200HTR-1A', 'Mô tả 10', 750000, 50, 20, 1, '1', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/E/EC/ECB/ecb-2200htr-1a/assets/ECB-2200HTR-1A.png.transform/main-visual-pc/image.png', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/E/EC/ECB/ecb-2200htr-1a/assets/ECB-2200HTR-1A_kv.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/E/EC/ECB/ecb-2200htr-1a/assets/ECB-2200HTR-1A_front.jpg.transform/main-visual-pc/image.jpg', 'https://www.casio.com/content/dam/casio/product-info/locales/vn/vi/timepiece/product/watch/E/EC/ECB/ecb-2200htr-1a/assets/ECB-2200HTR-1A_urabuta.png.transform/main-visual-pc/image.png', 'nữ'),
(11, 4, 1, 'CLASSIC BLACK DURHAM', 'Mô tả 11', 1950000, 46, 30, 1, '1', 'https://danielwellingtons.com.vn/wp-content/uploads/2019/06/w1-768x768.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2019/06/z3766279261597_a1ed5dc2544e9009ca8dff3218c8996a.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2019/06/w3-768x768.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2019/06/w6-768x768.jpg', 'nam'),
(12, 4, 1, 'ICONIC LINK AUTOMATI', 'Mô tả 12', 1850000, 39, 30, 1, '1', 'https://danielwellingtons.com.vn/wp-content/uploads/2023/11/z4857048982563_d57e2006ed4e0e350c12ff28bc090861-768x784.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2023/11/z4857048988942_665972dff8418bd91edc5ecb868365bd-768x790.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2023/11/z4857048991016_91b706df57b1e982e7dd8a634c930af2-768x782.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2023/11/z4857049032250_10e1c13c12a4083352b2566120a2744e-768x768.jpg', 'nam'),
(13, 4, 1, 'ICONIC LINK MELROSE ', 'Mô tả 13', 2200000, 30, 30, 1, '1', 'https://danielwellingtons.com.vn/wp-content/uploads/2022/08/5df8c5515602925ccb13-768x773.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2021/10/z3766368624517_2a1dc3130f5f701a0557abb1d991fa4f-768x570.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2021/10/z3766368638110_0070ea3c768c0a400c0582d10dba0ee5-768x757.jpg', 'https://danielwellingtons.com.vn/wp-content/uploads/2021/10/33a9dd5fca62083c5173-768x867.jpg', 'nam'),
(15, 1, 1, 'MORAINE CHARM', 'Đồng hồ nữ Curnon Moraine Charm', 2074000, 0, 20, 1, '0', 'https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fproduct%2Fc%2Fh%2Fcharm.png&w=640&q=75', 'https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fproduct%2Fc%2Fh%2Fcharm.2.png&w=640&q=75', 'https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fproduct%2F7%2F_%2F7_3.jpg&w=640&q=75', 'https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fproduct%2Fc%2Fh%2Fcharm.jpg&w=640&q=75', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `first_name`, `last_name`, `email`, `password`, `location`, `phone`) VALUES
(1, 'Ngô', 'Huy', 'huyngo@gmail.com', '123', 'Thừa Thiên Huế', '0326000507'),
(2, 'Lê ', 'Tú', 'LeTu@gmail.com', '123', 'Quảng Nam', '0326000507'),
(4, 'Sơn', 'Hà', 'SonHa@gmail.com', '123', 'Vũng Tàu', '0326000507'),
(5, 'huy', 'ngo', 'huy@gmail.com', '$2y$12$TeptxNUzXc68.GaGGo9vquCxhsx29Da0AgCbJViqT9PJ3w9kBmp7C', 'Hue', '0326000507'),
(6, 'Ngo', 'Huy', '21522148@gm.uit.edu.vn', '$2y$12$.QQVJnM1MVjGqRMdF5oq6u4TbXgVL8u1guB8LXMuhBQAu2Cf3Tnhy', 'Viet Nam', '0326000507'),
(7, 'Nguyen', 'Ha', 'ha@gmail.com', '$2y$12$ojREiJ9fYE8Y2mQxSLAF5ONC82UyU8Babi4tDRwYeB49WQN8lruu.', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `ct_cart`
--
ALTER TABLE `ct_cart`
  ADD PRIMARY KEY (`id_user`,`id_product`),
  ADD KEY `fk_cart_product` (`id_product`);

--
-- Chỉ mục cho bảng `ct_ir`
--
ALTER TABLE `ct_ir`
  ADD PRIMARY KEY (`id_ir`,`id_product`),
  ADD KEY `fk_ir_product` (`id_product`);

--
-- Chỉ mục cho bảng `ct_order`
--
ALTER TABLE `ct_order`
  ADD PRIMARY KEY (`id_order`,`id_product`),
  ADD KEY `fk_order_product` (`id_product`);

--
-- Chỉ mục cho bảng `inventoryreceipt`
--
ALTER TABLE `inventoryreceipt`
  ADD PRIMARY KEY (`id_ir`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`,`id_user`),
  ADD KEY `fk_order_user` (`id_user`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_product_brand` (`id_brand`),
  ADD KEY `fk_product_category` (`id_category`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `inventoryreceipt`
--
ALTER TABLE `inventoryreceipt`
  MODIFY `id_ir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ct_cart`
--
ALTER TABLE `ct_cart`
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `ct_ir`
--
ALTER TABLE `ct_ir`
  ADD CONSTRAINT `fk_ct_ir` FOREIGN KEY (`id_ir`) REFERENCES `inventoryreceipt` (`id_ir`),
  ADD CONSTRAINT `fk_ir_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Các ràng buộc cho bảng `ct_order`
--
ALTER TABLE `ct_order`
  ADD CONSTRAINT `fk_ct_order` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`),
  ADD CONSTRAINT `fk_order_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
