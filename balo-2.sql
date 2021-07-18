-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 09, 2020 lúc 07:10 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `balo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `link`, `position`, `created_time`, `last_updated`) VALUES
(4, 0, 'Level 1', 'home2.php', 0, 1555232698, 1555232698),
(5, 4, 'Level 2', 'product.php', 1, 1555232976, 1555232976),
(6, 5, 'Level 3', 'product.php', 0, 1555232976, 1555232976),
(7, 6, 'Level 4', 'home.php', 0, 1555232976, 1555232976),
(8, 4, 'Level 2.2', 'product.php', 2, 1555232976, 1555232976),
(9, 8, 'Level 3.2', 'product.php', 1, 1555427808, 1555427808),
(10, 7, 'Level 5', 'home.php', 0, 1555427808, 1555427808),
(16, 0, 'Level 1.2', 'home2.php', 1, 1555232698, 1555232698),
(17, 10, 'Level 6', '#', 1, 1555542591, 1555542591),
(20, 17, 'Level 7', '#', 1, 1555542591, 1555542591),
(21, 16, 'Level 2.2.2', 'home2.php', 1, 1555232698, 1555232698);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES
(29, 'Andn', '0654654615', 'Ha Noi', 'Ghi chu', 8290000, 1587872426, 1587872426),
(30, 'long le', '111', 'uuu', 'ff', 1620000, 1604478194, 1604478194),
(31, 'long le', '123456', 'oloidsfhfitser', 'ádfasdfasd', 6120000, 1604494230, 1604494230),
(32, 'long le', '111', 'oloidsfhfitser', 'rte hèhujdfyg', 5800000, 1605065861, 1605065861),
(33, 'ádfasd', 'ádfasd', 'ádfasd', 'ádf', 540000, 1605084013, 1605084013),
(34, 'ádf', 'sadf', 'ádf', 'ádf', 540000, 1605084186, 1605084186),
(35, 'ádf', 'sadf', 'ádf', 'ádf', 540000, 1605084229, 1605084229),
(37, 'long le', '123456', 'oloidsfhfitser', 'fdgdg', 780000, 1605680367, 1605680367),
(38, 'long le', '123456', 'd', 'f', 657000, 1606285633, 1606285633);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES
(32, 'Mr.Luan', '6516156', 'Ha Noi', 'Giao nhanh lên em nhé', 4188000, 1592695048, 1592695048),
(33, 'Rapper Long le', '5651616', 'Ha Noi', 'Hàng tốt\r\n', 540000, 1592695816, 1592695816),
(34, 'LuanTD', '1919191', 'Nam Định', 'Mua hang', 11520000, 1592696473, 1592696473),
(35, 'No Name', '3234234', 'Ha Noi', 'Tốt trong tầm giá', 9120000, 1592696604, 1592696604),
(36, 'long le', '123456', 'nam định', 'no ', 657000, 1605691561, 1605691561),
(37, 'ưewr', '1234', '333', 'ê', 4128000, 1605694437, 1605694437),
(38, 'trần đưcluân', '0942273195', 'hà nooiij nam đuinh', 'ádf', 5940000, 1606275792, 1606275792),
(39, 'long le', '123456', '12fffffff', 'qqqqqqqqqqqqq', 5707000, 1606285243, 1606285243);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(28, 32, 4, 2, 780000, 1592695048, 1592695048),
(29, 32, 5, 4, 657000, 1592695048, 1592695048),
(32, 33, 2, 1, 540000, 1592695816, 1592695816),
(33, 34, 2, 3, 540000, 1592696473, 1592696473),
(34, 34, 3, 4, 1500000, 1592696473, 1592696473),
(35, 34, 4, 5, 780000, 1592696473, 1592696473),
(36, 35, 2, 3, 540000, 1592696604, 1592696604),
(37, 35, 3, 5, 1500000, 1592696604, 1592696604),
(38, 32, 16, 10, 580000, 1605065861, 1605065861),
(39, 33, 2, 1, 540000, 1605084013, 1605084013),
(40, 34, 2, 1, 540000, 1605084186, 1605084186),
(41, 35, 2, 1, 540000, 1605084229, 1605084229),
(44, 36, 5, 1, 657000, 1605691561, 1605691561),
(45, 37, 3, 1, 1500000, 1605694437, 1605694437),
(46, 37, 5, 4, 657000, 1605694437, 1605694437),
(47, 38, 2, 4, 540000, 1606275792, 1606275792),
(48, 38, 3, 2, 1500000, 1606275792, 1606275792),
(49, 38, 4, 1, 780000, 1606275792, 1606275792),
(50, 39, 2, 1, 540000, 1606285243, 1606285243),
(51, 39, 3, 1, 1500000, 1606285243, 1606285243),
(52, 39, 4, 2, 780000, 1606285243, 1606285243),
(53, 39, 5, 1, 657000, 1606285243, 1606285243),
(54, 39, 9, 1, 1450000, 1606285243, 1606285243),
(55, 38, 5, 1, 657000, 1606285633, 1606285633);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_match` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `group_id`, `name`, `url_match`, `created_time`, `last_updated`) VALUES
(1, 1, 'Danh sÃ¡ch sáº£n pháº©m', 'product_listing\\.php$', 1553185530, 1553185530),
(2, 1, 'XÃ³a sáº£n pháº©m', 'product_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(3, 1, 'Sá»­a sáº£n pháº©m', 'product_editing\\.php\\?id=\\d+$|product_editing\\.php\\?action=edit&id=\\d+$', 1553185530, 1553185530),
(4, 1, 'ThÃªm sáº£n pháº©m', 'product_editing\\.php$|product_editing\\.php\\?action=add$', 1553185530, 1553185530),
(5, 1, 'Copy sáº£n pháº©m', 'product_editing\\.php\\?id=\\d+&task=copy', 1553185530, 1553185530),
(6, 4, 'Danh sÃ¡ch danh má»¥c', 'menu_listing\\.php$', 1553185530, 1553185530),
(7, 4, 'XÃ³a danh má»¥c', 'menu_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(8, 4, 'Sá»­a danh má»¥c', 'menu_editing\\.php\\?id=\\d+$', 1553185530, 1553185530),
(9, 4, 'ThÃªm danh má»¥c', 'menu_editing\\.php$', 1553185530, 1553185530),
(10, 4, 'Copy danh má»¥c', 'menu_editing\\.php\\?id=\\d+&task=copy', 1553185530, 1553185530),
(11, 3, 'Danh sÃ¡ch Ä‘Æ¡n hÃ ng', 'order_listing\\.php$', 1553185530, 1553185530),
(12, 2, 'PhÃ¢n quyá»n quáº£n trá»‹', 'member_privilege\\.php\\?id=\\d+$|member_privilege\\.php\\?action=save$', 1553185530, 1553185530),
(13, 2, 'Danh sÃ¡ch thÃ nh viÃªn', 'member_listing\\.php$', 1553185530, 1553185530),
(14, 2, 'XÃ³a thÃ nh viÃªn', 'member_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(15, 2, 'Sá»­a thÃ nh viÃªn', 'member_editing\\.php\\?id=\\d+$|member_editing\\.php\\?action=edit&id=\\d+$', 1553185530, 1553185530),
(16, 2, 'ThÃªm thÃ nh viÃªn', 'member_editing\\.php$|member_editing\\.php\\?action=add$', 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege_group`
--

CREATE TABLE `privilege_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege_group`
--

INSERT INTO `privilege_group` (`id`, `name`, `position`, `created_time`, `last_updated`) VALUES
(1, 'Sáº£n pháº©m', 2, 1553185530, 1553185530),
(2, 'ThÃ nh viÃªn', 4, 1553185530, 1553185530),
(3, 'ÄÆ¡n hÃ ng', 3, 1553185530, 1553185530),
(4, 'Danh má»¥c', 1, 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(2, 'Balo Oxford', 'uploads/image_balo/1.jpg', 540000, 'Balo Oxford', 1552615987, 1552615987),
(3, 'Balo du lich canvas cao cap, phong cach vintage MOYYI', 'uploads/image_balo/2.jpeg', 250000, 'Balo du lich canvas cao cap, phong cach vintage MOYYI', 1552615987, 1552615987),
(4, 'Balo thoi trang Mark Ryden ALUMNO', 'uploads/image_balo/3.jpg', 130000, 'Balo thoi trang Mark Ryden ALUMNO\r\n', 1552615987, 1552615987),
(5, 'Balo nu sinh Suran thoi trang Han Quoc (EP24)', 'uploads/image_balo/4.jpg', 357000, 'Balo nu sinh Suran thoi trang Han Quoc (EP24)', 1552615987, 1552615987),
(6, 'Balo du lich, Balo laptop thoi trang James JS829', 'uploads/image_balo/5.jpg', 284000, 'Balo du lich, Balo laptop thoi trang James JS829', 1552615987, 1552615987),
(7, 'Balo Nam Da Nang Laptop, Balo Thoi Trang Chong Trom Khoa Ma', 'uploads/image_balo/6.jpg', 240000, 'Balo Nam Da Nang Laptop, Balo Thoi Trang Chong Trom Khoa Ma', 1552615987, 1552615987),
(8, 'Balo chong gu tieu hoc cho be', 'uploads/image_balo/7.jpg', 130000, 'Balo chong gu tieu hoc cho be', 1552615987, 1552615987),
(9, 'Balo hoat hinh cho be', 'uploads/image_balo/8.jpg', 100000, 'Balo hoat hinh cho be', 1552615987, 1552615987),
(10, 'Balo TaoBao thoi trang', 'uploads/image_balo/9.jpeg', 260000, 'Balo TaoBao thoi trang\r\n', 1552615987, 1554822153),
(11, 'Balo chong soc, chong nuoc danh cho laptop, may anh ELECOM DGB-S023', 'uploads/image_balo/10.jpg', 400000, 'Balo chong soc, chong nuoc danh cho laptop, may anh ELECOM DGB-S023', 1552615987, 1552615987),
(12, 'BALO THOI TRANG BALOS ACTIVE 01 BACKPACK BLACK', 'uploads/image_balo/11.jpeg', 690000, 'BALO THOI TRANG BALOS ACTIVE 01 BACKPACK BLACK', 1552615987, 1552615987),
(13, 'Balo nu sinh Suran thoi trang Han Quoc', 'uploads/image_balo/12.jpg', 180000, 'Balo nu sinh Suran thoi trang Han Quoc', 1552615987, 1552615987),
(14, 'Balo nu sinh Suran thoi trang Han Quoc', 'uploads/image_balo/13.jpeg', 198000, 'Balo nu sinh Suran thoi trang Han Quoc', 1552615987, 1552615987),
(16, 'Balo may anh va laptop PortaBrace Large Modular', 'uploads/image-balo/14.jpeg', 500000, 'Balo may anh va laptop PortaBrace Large Modular', 1552615987, 1606270654);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbuser`
--

CREATE TABLE `tbuser` (
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbuser`
--

INSERT INTO `tbuser` (`username`, `pass`) VALUES
('admin1', '12345'),
('rapperlongle', '12345'),
('luantd', '12345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Andn', '12345', 1553185530, 1553185530, 1553185530),
(3, 'writer', 'Äáº·ng Ngá»c An', '12345', 1553185530, 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_privilege`
--

CREATE TABLE `user_privilege` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_privilege`
--

INSERT INTO `user_privilege` (`id`, `user_id`, `privilege_id`, `created_time`, `last_updated`) VALUES
(28, 1, 6, 1595430953, 1595430953),
(29, 1, 7, 1595430953, 1595430953),
(30, 1, 8, 1595430953, 1595430953),
(31, 1, 9, 1595430953, 1595430953),
(32, 1, 10, 1595430953, 1595430953),
(33, 1, 1, 1595430953, 1595430953),
(34, 1, 2, 1595430953, 1595430953),
(35, 1, 3, 1595430953, 1595430953),
(36, 1, 4, 1595430953, 1595430953),
(37, 1, 5, 1595430953, 1595430953),
(38, 1, 11, 1595430953, 1595430953),
(39, 1, 12, 1595430953, 1595430953),
(40, 1, 13, 1595430953, 1595430953),
(41, 1, 14, 1595430953, 1595430953),
(42, 1, 15, 1595430953, 1595430953),
(43, 1, 16, 1595430953, 1595430953),
(253, 3, 6, 1595430953, 1595430953),
(254, 3, 7, 1595430953, 1595430953),
(255, 3, 8, 1595430953, 1595430953),
(256, 3, 9, 1595430953, 1595430953),
(257, 3, 10, 1595430953, 1595430953),
(258, 3, 1, 1595430953, 1595430953),
(259, 3, 2, 1595430953, 1595430953),
(260, 3, 3, 1595430953, 1595430953),
(261, 3, 4, 1595430953, 1595430953),
(262, 3, 5, 1595430953, 1595430953);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_privilege_ibfk_1` (`user_id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD CONSTRAINT `privilege_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `privilege_group` (`id`);

--
-- Các ràng buộc cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
