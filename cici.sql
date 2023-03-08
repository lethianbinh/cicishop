-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 09:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cici`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(30) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `permissions` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `email`, `phone`, `status`, `date`, `permissions`) VALUES
(1, 'admin', 'e807f1fcf82d132f9bb018ca6738a19f', 'Đinh Nguyễn Phương Vy', 'phuongvy012456@gmail.com', 827900032, 0, '2021-11-02 01:37:28', ''),
(8, 'Đinh Vy', '3484c215877df30849ec5768f8021584', 'Trần Thị Tú', 'phuongvy012446@gmail.com', 827900032, 0, '2021-11-02 09:09:05', 'null'),
(9, 'anbinh123', '51fe4d329bec933c5476f94372e55cd5', 'Lê Thị An Bình', 'inhflethianbinh123@gmail.com', 827900045, 0, '2021-11-02 10:01:56', 'null'),
(10, 'thuanhuynh', '70873e8580c9900986939611618d7b1e', 'Huỳnh Lưu Vĩnh Thuận', 'thuanhuynh123@gmail.com', 827900049, 0, '2021-11-02 10:03:49', 'null'),
(26, 'dinhvy12311', 'e807f1fcf82d132f9bb018ca6738a19f', 'Đinh Nguyễn Phương Vy', 'phuongvy01222456@gmail.com', 900394768, 0, '2021-12-12 07:24:02', '{\"admin\":[\"index\",\"add\"],\"catalog\":[\"index\"],\"contact\":[\"index\"]}'),
(27, 'admin1234', 'e807f1fcf82d132f9bb018ca6738a19f', 'Đinh Nguyễn Phương Vy', 'phuongvy0124611@gmail.com', 827900042, 0, '2021-12-12 08:01:45', '{\"admin\":[\"index\",\"add\"],\"catalog\":[\"index\"],\"contact\":[\"index\"]}'),
(28, 'admin123111', 'e807f1fcf82d132f9bb018ca6738a19f', 'Đinh Nguyễn Phương Vy', 'phuongvy0124116@gmail.com', 827900042, 0, '2021-12-12 08:03:40', '{\"admin\":[\"index\",\"add\"],\"catalog\":[\"index\"],\"contact\":[\"index\"]}'),
(29, 'admin134242', 'e807f1fcf82d132f9bb018ca6738a19f', 'Đinh Nguyễn Phương Vy', 'phuongvy01246666@gmail.com', 827900042, 0, '2021-12-12 09:26:13', '{\"admin\":[\"index\",\"add\"],\"catalog\":[\"index\"],\"contact\":[\"index\"]}'),
(30, 'sellercici5@gmail.com', 'sellergmail', 'seller', 'sellercici5@gmail.com', 182716421, 0, '2022-08-08 07:44:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `site_title`, `meta_desc`, `meta_key`, `parent_id`, `sort_order`) VALUES
(1, 'Laptop', '', '', '', 0, 0),
(2, 'Phone', '', '', '', 0, 1),
(3, 'Tivi', '', '', '', 0, 2),
(4, ' Acer', '', '', '', 1, 0),
(49, 'ZADEZ', '', '', '', 44, 1),
(6, 'Asus', '', '', '', 1, 2),
(7, 'Dell', '', '', '', 1, 3),
(8, 'HP', '', '', '', 1, 5),
(37, 'Appe', '', '', '', 2, 2),
(35, 'MacBook', '', '', '', 1, 1),
(11, 'Realme', '', '', '', 2, 3),
(12, 'Xiaomi', '', '', '', 2, 4),
(13, 'AKAI', '', '', '', 3, 0),
(14, 'JVC', '', '', '', 3, 1),
(15, 'LG', '', '', '', 3, 2),
(16, 'Panasonic', '', '', '', 3, 3),
(17, 'Samsung', '', '', '', 3, 5),
(30, 'Toshiba', '', '', '', 3, 5),
(31, 'Samsung', '', '', '', 2, 5),
(32, 'Oppo', '', '', '', 2, 6),
(33, 'Nokia', '', '', '', 2, 7),
(34, 'Vivo', '', '', '', 2, 8),
(48, 'Sony', '', '', '', 45, 3),
(47, 'JBL', '', '', '', 45, 2),
(40, 'Headphone', '', '', '', 0, 5),
(41, 'Camera', '', '', '', 0, 6),
(46, 'Xiaomi', '', '', '', 45, 1),
(43, 'Air Conditional', '', '', '', 0, 8),
(44, 'Mouse', '', '', '', 0, 9),
(45, ' Bluetooth speaker', '', '', '', 0, 10),
(50, 'Logitech', '', '', '', 44, 2),
(51, 'Microsoft', '', '', '', 44, 3),
(52, 'Samsung', '', '', '', 43, 1),
(53, 'Aqua Inverter', '', '', '', 44, 2),
(54, 'Panasonic', '', '', '', 43, 3),
(55, 'Toshiba', '', '', '', 43, 4),
(56, 'Logitech', '', '', '', 41, 1),
(57, 'Genius', '', '', '', 41, 2),
(58, 'Sony', '', '', '', 40, 1),
(59, 'LG', '', '', '', 40, 2),
(60, 'Xiaomi', '', '', '', 40, 3),
(62, 'Appe', '', '', '', 40, 4),
(63, 'Lenovo', '', '', '', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(128) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `name`, `email`, `address`, `title`, `content`, `phone`, `created`) VALUES
(16, 0, 'map', 'phuongvy012468@gmail.com', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'map', ' map không hoạt động', '0827900042', 1638495663),
(17, 0, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'map', ' map không hoạt động', '0827900043', 1639236586),
(18, 0, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'dell ', ' sản phẩm này còn không', '0827900043', 1639277074),
(19, 0, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'iphone', ' sản phẩm này còn giảm giá không', '0827900043', 1639279786),
(20, 0, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'iphone', ' sản phẩm còn không', '0827900043', 1639296473);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `feature` enum('0','1') COLLATE utf8_bin NOT NULL,
  `count_view` int(11) NOT NULL DEFAULT 0,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `meta_desc`, `meta_key`, `image_link`, `created`, `feature`, `count_view`, `link`) VALUES
(12, '10 cách để tăng thời lượng dùng pin của iPhone 13', '', 'Theo đánh giá từ người dùng, thời lượng pin thế hệ iPhone năm nay đã được cải tiến rõ rệt so với thế hệ trước và chúng có thể đáp ứng tốt một ngày dài sử dụng của người dùng. Tuy nhiên, bạn có thể có được thời lượng pin tốt hơn nữa bằng cách thực hiện các cách dưới đây...', '', '', 'tiet-kiem-pin-iPhone-13-2.jpg', 1636866493, '0', 0, 'https://fptshop.com.vn/tin-tuc/danh-gia/10-cach-de-tang-thoi-luong-dung-pin-cua-iphone-13-140436'),
(13, 'Nên mua iPhone 13 Pro hay iPhone 12 Pro Max hợp lý hơn?', '', 'Phone 13 Pro mới được Apple ra mắt thời gian gần đây mang trên mình khá nhiều cải tiến như thiết kế notch nhỏ gọn hơn, màn hình 120Hz, hiệu năng được nâng cấp và hệ thống camera được cải tiến.Vậy khi đặt lên bàn cân so sánh giữa iPhone 13 Pro và iPhone 12 Pro Max thì đâu mới là lựa chọn hợp lý hơn cho người dùng?\r\n\r\n', '', '', 'iphone-12-Pro-Max-1.jpg', 1636867202, '0', 0, 'https://fptshop.com.vn/tin-tuc/danh-gia/nen-mua-iphone-13-pro-hay-iphone-12-pro-max-hop-ly-hon-140232'),
(14, 'Đặt trước vivo V23e, FPT Shop giảm 500.000 đồng kèm ưu đãi trả góp 0% lãi suất', '', 'vivo V23e hiện là sản phẩm đáng mong chờ nhất trong thời điểm cuối năm năm 2021, khi sở hữu nhiều tính năng vượt trội như camera selfie 50MP AF, chụp ảnh Bokeh Flare, cụm camera selfie chân dung ban đêm, công nghệ RAM mở rộng,… Với thông điệp “Selfie Tự Nhiên.Tự Tin Nét Riêng”, tân binh nhà vivo sẽ giúp bạn ghi lại những khoảnh khắc đáng nhớ và sống động trong cuộc sống.\r\n\r\n', '', '', 'Vivo-V23e-_(11).jpg', 1637567588, '0', 0, 'https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/dat-truoc-vivo-v23e-fpt-shop-giam-500000-dong-kem-uu-dai-tra-gop-0-lai-suat-140969'),
(17, '8 flagship Samsung đồng loạt giảm giá trong tháng 11: Cơ hội vàng cho các Samfan', '', 'Trong các flagship Samsung giảm giá trong tháng 11 này, siêu phẩm trình làng hồi đầu năm là Galaxy S21 Ultra ghi nhận mức khuyến mãi lớn nhất lên đến 5 triệu đồng – cùng với đó là loạt điện thoại cao cấp đáng mơ ước với mức giảm tối thiểu 1 triệu đồng.\r\n', '', '', 'Galaxy-zflip3-vs-Z-FOLD3_(7).jpg', 1637567917, '0', 1, 'https://fptshop.com.vn/tin-tuc/danh-gia/8-flagship-samsung-dong-loat-giam-gia-trong-thang-11-140881'),
(16, 'Top 3 smartphone Tecno giá rẻ, đáng mua nhất cuối năm 2021', '', 'Thời điểm mua sắm cuối năm đã đến rất gần. Nếu bạn đang dự định chọn mua điện thoại Tecno thì dưới đây là 3 mẫu smartphone rất đáng cân nhắc với những tính năng hấp dẫn cùng giá bán phải chăng.\r\n', '', '', 'TECNO-POVA-2-23.jpg', 1637567842, '0', 0, 'https://fptshop.com.vn/tin-tuc/danh-gia/top-3-smartphone-tecno-gia-re-dang-mua-nhat-cuoi-nam-2021-140949'),
(18, 'OPPO sẽ ra mắt dòng Reno7 vào ngày 25 tháng 11', '', 'Theo các nguồn tin rò rỉ gần đây, OPPO đang phát triển các điện thoại Reno7 mới và thông tin về chúng đã liên tục được chia sẻ trên các trang mạng trong thời gian gần đây.\r\n', '', '', 'OPPO-Reno7-Launch-Date-2.png', 1637567986, '0', 0, 'https://fptshop.com.vn/tin-tuc/tin-moi/oppo-se-ra-mat-dong-reno7-vao-ngay-25-thang-11-141030'),
(19, 'Điện thoại gập OPPO Find N lộ cấu hình chi tiết với camera 50MP, vi xử lý Snapdragon cao cấp, mức giá khá gây sốc', '', 'Sự kiện OPPO INNO DAY 2021 sẽ chính thức được diễn ra vào ngày 14/12 tới. Tại sự kiện này hứa hẹn cũng sẽ có sự góp mặt của smartphone màn hình gập OPPO Find N. Đáng chú ý, thông số cấu hình \"xịn sò\" cùng với mức giá bán đã được giới thạo tin khai thác và chia sẻ đến chúng ta.\r\nTheo Mysmartprice, OPPO Find N sẽ có ngôn ngữ thiết kế tương tự như dòng Samsung Galaxy Fold, thiết kế dạng gập vào trong. Màn hình ngoài của OPPO Find N sẽ có tần số quét 60 Hz, trong khi đó màn hình chính là tấm nền LTPO với tần số quét 120 Hz. Cung cấp sức mạnh cho máy là bộ vi xử lý Qualcomm Snapdragon 888 xử lý - bộ vi xử lý cao cấp ra mắt vào đầu năm 2020.', '', '', 'oppo-find-n-1_1280x720-800-resize.jpg', 1639213284, '0', 0, 'https://www.thegioididong.com/tin-tuc/oppo-find-n-lo-cau-hinh-chi-tiet-voi-camera-50mp-1403750'),
(20, 'Huawei Mate V lộ diện thiết kế vỏ ngoài, trông giống Galaxy Z Flip3 nhưng camera có điểm nhấn ấn tượng hơn, là gì vậy?', '', 'Huawei dự kiến sẽ cho ra mắt một siêu phẩm mang tên Huawei Mate V trước thềm giáng sinh năm nay. Đây là smartphone sẽ có thiết kế gập vỏ sò đầu tiên của hãng. Mới đây, một số hình ảnh rò rỉ về vỏ ngoài mới của Huawei Mate V. Kiểu dáng Mate V lần này giống với Galaxy Z Flip3 nhưng thiết kế camera có điểm khác biệt.\r\nNhững hình ảnh rò rỉ này chính là thiết kể vỏ ngoài cho mặt sau của Huawei Mate V mới. Chiếc smartphone sẽ có thiết kế gập vỏ sò không khác gì so với chiếc Galaxy Z Flip3 đã được Samsung cho ra mắt trước đây.', '', '', 'huawei-mate-v-daubai_1280x720-800-resize.jpg', 1639213355, '0', 0, 'https://www.thegioididong.com/tin-tuc/huawei-mate-v-lo-dien-thiet-ke-vo-ngoai-moi-1403749'),
(21, 'Lộ diện TOP 4 laptop Dell chuyên đồ họa đáng mua nhất tại TGDĐ, cấu hình mạnh và màn hình đẹp tối ưu cho công việc sáng tạo', '', 'Dell là một thương hiệu laptop uy tín và lâu đời đến từ Mỹ, nổi tiếng với những chiếc laptop bền bỉ và mạnh mẽ, phù hợp với những ai cần xử lý các tác vụ đồ họa đòi hỏi cấu hình cao. Vậy nên mua laptop Dell nào để làm đồ họa? 24h Công Nghệ sẽ gửi đến bạn TOP 4 laptop Dell chuyên đồ họa tốt nhất thông qua bài viết này.', '', '', 'laptopdelldohoa1_1280x720-800-resize.jpg', 1639213513, '0', 0, 'https://www.thegioididong.com/tin-tuc/top-laptop-dell-chuyen-do-hoa-tot-nhat-lam-sang-tao-1381821');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) UNSIGNED NOT NULL,
  `catalog_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'abc xyz',
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `slug`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `meta_desc`, `feature`) VALUES
(22, 12, 'Xiaomi 11T Pro 12GB - 256GB', 'xiaomi-11t-pro-12gb-256gb', '14999000.0000', 'Xiaomi 11T Pro là chiếc điện thoại cao cấp có mức giá tốt nhất hiện nay. Bạn sẽ nhận được camera chuyên nghiệp 108MP, sạc siêu nhanh 120W, màn hình AMOLED 120Hz mượt mà hỗ trợ Dolby Vision và bộ vi xử lý đầu bảng Snapdragon 888, một loạt những tính năng đỉnh cao sẽ mang tới trải nghiệm thú vị hơn bao giờ hết.', 0, 'xiaomi-11t-pro-blue-1-600x600.jpg', '[]', 1636885183, 4, '', '', '24 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(126, 12, 'Xiaomi 11T 8GB - 128GB', 'xiaomi-11t-8gb-128gb', '10990000.0000', 'Xiaomi 11T sẽ biến mỗi khoảnh khắc thường ngày của bạn thành những thước phim điện ảnh sống động với trải nghiệm camera 108MP đỉnh cao. Hơn nữa, Xiaomi 11T còn là một cỗ máy đầy tốc độ dưới vẻ ngoài của kiệt tác thời trang.', 400000, 'xiaomi-11t-white-1-2-600x600.jpg', '[]', 1638799427, 1, '', '', '24 tháng', 0, 0, 0, 0, '', '', '', '0'),
(24, 12, 'Xiaomi Redmi 10 4GB-128GB', 'xiaomi-redmi-10-4gb-128gb', '4290000.0000', 'Dòng điện thoại Redmi yêu thích của bạn đã quay trở lại, Redmi 10 với bộ tứ camera 50MP AI đột phá, màn hình 90Hz siêu mượt và cấu hình “phá đảo” trong tầm giá, chắc chắn sẽ tiếp tục là lựa chọn hàng đầu ở phân khúc smartphone giá rẻ.', 0, 'redmi-10-white-600x600.jpg', '[\"637668698173547207_xiaomi-redmi-10-00806.jpg\",\"637668698180109640_xiaomi-redmi-10-00811.jpg\",\"637668698289484545_xiaomi-redmi-10-00813.jpg\",\"637668698325578216_xiaomi-redmi-10-00817.jpg\"]', 1636885653, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(25, 12, 'Xiaomi Redmi Note 10S 8GB-128GB ', 'xiaomi-redmi-note-10s-8gb-128gb', '6490000.0000', 'Cùng Xiaomi Redmi Note 10S nắm giữ mọi khoảnh khắc với bộ tứ camera 64MP chuyên nghiệp, trải nghiệm màn hình AMOLED tuyệt đẹp và hiệu năng vốn đã thành thương hiệu của dòng Redmi. Hãy bắt đầu cuộc phiêu lưu của bạn theo cách hứng khởi nhất.', 490000, 'xiaomi-redmi-note-10s-xanh-1-600x600.jpg', '[\"637571174597468115_REDMI-NOTE-10S-9.jpg\",\"637571174603093990_REDMI-NOTE-10S-8.jpg\",\"637571174612625823_REDMI-NOTE-10S-13.jpg\",\"637571174641219321_REDMI-NOTE-10S-21.jpg\"]', 1636885882, 0, '', '', '18 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(26, 12, 'Xiaomi Mi 10T Pro 5G 8GB-128GB ', 'xiaomi-mi-10t-pro-5g-8gb-128gb', '11990000.0000', 'Cấu hình mạnh mẽ tuyệt đỉnh, camera bùng nổ sáng tạo và kết nối 5G cho tương lai, Xiaomi Mi 10T Pro 5G sở hữu những tính năng xuất sắc nhất, nhưng lại có mức giá rẻ đến bất ngờ ở phân khúc smartphone cao cấp.', 0, 'xiaomi-mi-10t-pro-den-600x600.jpg', '[]', 1636885988, 1, '', '', '24 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(28, 11, 'Realme C21y 3GB - 32GB', 'realme-c21y-3gb-32gb', '3490000.0000', 'Trải nghiệm mượt mà suốt cả ngày nhờ viên pin dung lượng cao 5000mAh, tận hưởng mọi nội dung trên màn hình lớn 6,5 inch cực đã, thỏa sức sáng tạo với bộ 3 camera chất lượng, realme C21Y sẽ khiến cho mỗi ngày của bạn trôi qua đầy hứng khởi.', 0, '637679927441675274_realme-c21y-xanh-dd.jpg', '[\"637713582654453653_REALME-C21Y-2.jpg\",\"637713582661641374_REALME-C21Y-1.jpg\",\"637713582667266042_REALME-C21Y-3.jpg\",\"637713582760860527_REALME-C21Y-18.jpg\"]', 1636886476, 2, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(29, 11, 'Realme C25y 4GB-128GB', 'realme-c25y-4gb-128gb', '4990000.0000', '6.5\", HD+, LCD, 720 x 1600 Pixel\r\n\r\n50.0 MP + 2.0 MP + 2.0 MP\r\n\r\n8.0 MP\r\n\r\nUnisoc T618\r\n\r\n128 GB', 0, '637717387178369946_realme-c25y-xanh-dd.jpg', '[\"637723283761792332_realme-c25-y-00547.jpg\",\"637723283796202178_realme-c25-y-00556.jpg\",\"637723284378834030_realme-c25-y-00573.jpg\",\"637723284627628820_realme-c25-y-00593.jpg\"]', 1636891234, 2, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(30, 11, 'Realme C11 2021 2GB - 32GB', 'realme-c11-2021-2gb-32gb', '2990000.0000', 'Phiên bản realme C11 2021 mang tới cho người dùng sự lựa chọn giá rẻ hơn nữa nhưng vẫn đảm bảo trải nghiệm cực đã với pin “trâu” 5000mAh, màn hình lớn tới 6,5 inch và camera kép thời thượng.', 0, '637571288205187101_realme-c11-2021-xanh-dd.jpg', '[]', 1636892314, 1, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(31, 11, 'Realme 8 8GB - 128GB ', 'realme-8-8gb-128gb', '7290000.0000', 'Phong cách thiết kế hoàn toàn mới lạ, 4 camera 64MP AI chuyên nghiệp cùng sức mạnh hiệu năng vượt trội, realme 8 thúc đẩy sự sáng tạo và mang đến niềm vui cho cuộc sống năng động của bạn.', 0, '637541688043520797_realme-8-bac-dd.jpg', '[\"637545092946437497_FRT07695.jpg\",\"637545092948000041_FRT07694.jpg\",\"637545093016125779_FRT07714.jpg\",\"637545093054720382_FRT07722.jpg\"]', 1636892509, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(32, 34, 'Vivo Y21s 4GB+1GB - 128GB ', 'vivo-y21s-4gb1gb-128gb', '5290000.0000', 'Thiết kế mỏng thời thượng, 3 camera sau siêu nét độ phân giải lên tới 50MP, mạnh mẽ với công nghệ RAM mở rộng cùng dung lượng pin cực khủng, vivo Y21s sẵn sàng cùng bạn cháy hết mình trong mọi cuộc vui.', 0, '637672549881930223_vivo-y21s-xanh-dd.jpg', '[\"637698043695798368_Vivo-01080.jpg\",\"637698043696579824_Vivo-01079.jpg\",\"637698043976738030_Vivo-01098.jpg\",\"637698044100801536_Vivo-01105.jpg\"]', 1636893012, 1, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(33, 34, 'Vivo Y21 4GB+1GB - 64GB', 'vivo-y21-4gb1gb-64gb', '4290000.0000', 'Điện thoại vivo Y21 có thiết kế siêu mỏng thời thượng, vân kim cương độc đáo, mang trên mình viên pin dung lượng cao 5000 mAh, sạc siêu tốc 18W và công nghệ RAM mở rộng, đem tới sự năng động, ngập tràn cảm hứng cho giới trẻ hiện đại.', 0, '637644824833391058_vivo-y21-xanh-dd.jpg', '[]', 1636893081, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(34, 34, 'Vivo Y12s 2021 3GB-32GB ', 'vivo-y12s-2021-3gb-32gb', '3290000.0000', 'Trải nghiệm xuyên suốt ngày dài với viên pin dung lượng cực lớn 5000mAh trên Vivo Y12s 2021. Đây còn là chiếc điện thoại có thiết kế đẹp hiện đại, bảo mật thông minh bằng cảm biến vân tay cạnh bên.', 0, '637515974341223613_vivo-y12s-2021-dd.jpg', '[]', 1636893158, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(35, 34, 'Vivo Y20s 6GB - 128GB', 'vivo-y20s-6gb-128gb', '4990000.0000', 'Khám phá sức mạnh tuyệt đỉnh từ Vivo Y20s, chiếc điện thoại có cấu hình và thời lượng pin tuyệt vời trong tầm giá, đi cùng thiết kế hiện đại, cao cấp đầy thời trang.', 0, '637352628072512925_vivo-y20s-den-dd.jpg', '[]', 1636893253, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(36, 33, 'Nokia C30 3GB-32GB', 'nokia-c30-3gb-32gb', '3290000.0000', 'Thoải mái trải nghiệm trên màn hình cực lớn và thời lượng pin lên tới 3 ngày của Nokia C30. Với thiết kế bền đẹp và thường xuyên được cập nhật phần mềm, Nokia C30 sẽ đồng hành cùng bạn trong nhiều năm tới một cách ổn định.', 0, '637649063877578070_nokia-c30-xanh-dd.jpg', '[]', 1636894490, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(37, 33, 'Nokia 5310 (2020) ', 'nokia-5310-2020', '1000000.0000', 'Thiết kế của Nokia 5310 2020 lấy cảm hứng từ chiếc điện thoại Xpressmusic làm nên tên tuổi lẫy lừng cho gã khổng lồ Phần Lan, do đó, sản phẩm được kế thừa nhiều đường nét đặc trưng từ ngoại hình cho tới cụm phím điều khiển âm thanh và khả năng nghe radio nổi bật.', 0, '637206630403330025_nokia-5310-2020-den-dd.jpg', '[]', 1636895514, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(38, 33, 'Nokia 150 DS (2020)', 'nokia-150-ds-2020', '700000.0000', 'Chiếc điện thoại với 2 SIM, sử dụng dễ dàng nhờ bàn phím T9 quen thuộc và màn hình 2,4 inch, ngoài ra Nokia 150 DS 2020 còn mang đến cho người dùng thời lượng pin xuất sắc cùng độ bền đáng tin cậy.', 0, '637260972543263013_nokia-150-den-dd.jpg', '[]', 1636895581, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(39, 33, 'Nokia 105 DS (2019)', 'nokia-105-ds-2019', '420000.0000', 'Dòng điện thoại phổ thông Nokia 105 “huyền thoại” của Nokia vừa ra mắt thêm một thành viên mới, đó là Nokia 105 2019, chiếc điện thoại có thiết kế hiện đại hơn và pin khỏe hơn thế hệ 2017.\r\n\r\n', 0, '637260972543263013_nokia-150-den-dd1.jpg', '[]', 1636895634, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(40, 33, 'Nokia 105 DS 4G', 'nokia-105-ds-4g', '710000.0000', 'Nokia 105 DS 4G hoàn toàn mới với thiết kế hiện đại, độ bền đáng tin cậy và thời lượng pin siêu dài vốn đã thành thương hiệu của Nokia, giờ đây lại được bổ sung thêm kết nối mạng 4G LTE, giúp việc giữ liên lạc hay vào mạng trở nên dễ dàng hơn bao giờ hết.', 0, '637607682248137712_nokia-105-4g-den-dd.jpg', '[]', 1636895699, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(41, 32, 'Oppo Reno6 5G', 'oppo-reno6-5g', '12990000.0000', 'Sẵn sàng bật tung cảm xúc cùng OPPO Reno6 5G, chiếc điện thoại sở hữu thiết kế đẳng cấp siêu mỏng nhẹ, camera chụp chân dung Bokeh Flare độc đáo và trên hết là kết nối mạng 5G siêu tốc, cùng bạn kết nối tương lai.', 0, '637641009301320775_oppo-reno6-dd-bh2nam.jpg', '[\"637641188927049107_oppo-reno-6-5g-15.jpg\",\"637641189080177235_oppo-reno-6-5g-21.jpg\",\"637641189234711767_oppo-reno-6-5g-30.jpg\",\"637641189432059661_oppo-reno-6-5g-39.jpg\"]', 1636895984, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(42, 32, 'OPPO Reno6 Z 5G', 'oppo-reno6-z-5g', '9490000.0000', 'Không chỉ đưa bạn đến những trải nghiệm đầy phấn khích của mạng 5G siêu tốc, OPPO Reno6 Z 5G còn là chiếc điện thoại tuyệt vời để lưu giữ cảm xúc. Chụp ảnh và quay video chân dung chưa bao giờ thú vị đến thế với loạt tính năng chuyên nghiệp, đầy nghệ thuật.', 0, '637641007844732573_oppo-reno6z-dd-bh2nam.jpg', '[\"637641183413349863_HASP-Oppo-Reno6Z-5G-5.jpg\",\"637641183421162605_HASP-Oppo-Reno6Z-5G-1.jpg\",\"637641183858513904_HASP-Oppo-Reno6Z-5G-12.jpg\",\"637641184247114577_HASP-Oppo-Reno6Z-5G-19.jpg\"]', 1636896565, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(43, 32, 'OPPO A55 4GB-64GB', 'oppo-a55-4gb-64gb', '4990000.0000', 'Một chiếc điện thoại chụp ảnh tuyệt đẹp và có đủ năng lượng để cùng bạn trải nghiệm những điều thú vị trong cuộc sống, OPPO A55 với thiết kế tươi trẻ, cấu hình xuất sắc trong tầm giá rẻ chắc chắn sẽ làm bạn hài lòng.\r\n\r\n', 0, '637699137820447063_oppo-a55-dd.jpg', '[\"637703356916869223_HASP-HP-Victus-HASP-Oppo-A55-1.jpg\",\"637703356934681688_HASP-HP-Victus-HASP-Oppo-A55-11.jpg\",\"637703356959056778_HASP-HP-Victus-HASP-Oppo-A55-19.jpg\",\"637703356960463066_HASP-HP-Victus-HASP-Oppo-A55-20.jpg\"]', 1636896694, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(44, 32, 'OPPO A74 8GB-128GB ', 'oppo-a74-8gb-128gb', '6690000.0000', 'Giải trí bất tận trên màn hình chấm O tuyệt đẹp của OPPO A74, nơi bạn sẽ không phải lo lắng về năng lượng khi với pin siêu khủng, sạc siêu nhanh, điện thoại luôn đồng hành cùng bạn trong mọi cuộc vui.', 0, '637713521930355851_00755010-oppo-a74-dd.jpg', '[\"637581661846247367_oppo-a74-blue_(8_of_21).jpg\",\"637581661891717272_oppo-a74-blue_(9_of_21).jpg\",\"637581662080314249_oppo-a74-blue_(18_of_21).jpg\",\"637581662097814383_oppo-a74-blue_(19_of_21).jpg\"]', 1636896833, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(45, 32, 'OPPO A54 4GB-128GB ', 'oppo-a54-4gb-128gb', '4690000.0000', 'Sở hữu Viên pin khủng 5000mAh, bộ nhớ lên tới 128GB, thiết kế trẻ trung với màn hình lớn, camera AI thông minh và cả khả năng chống nước, OPPO A54 đơn giản là chiếc điện thoại mang trên mình đầy đủ mọi tính năng bạn cần.', 0, '637533207341424245_oppo-a54-dd-1.jpg', '[]', 1636897073, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(46, 32, 'OPPO A15s 4GB-64GB ', 'oppo-a15s-4gb-64gb', '4290000.0000', 'Với sự nâng cấp mạnh mẽ về bộ nhớ và màn hình, OPPO A15s giúp cuộc sống của bạn trở nên dễ dàng hơn bằng những trải nghiệm mượt mà, thời lượng pin dài lâu. Hơn nữa, cụm 3 camera AI luôn sẵn sàng để ghi lại các khoảnh khắc đáng nhớ một cách chất lượng nhất.', 0, '637473412916807576_oppo-a15s-dd.jpg', '[\"637467549126293229_FRT07996-1.jpg\",\"637467549144575109_FRT08032-9.jpg\",\"637467549151606570_FRT08053-12.jpg\",\"637467549166763122_FRT08073-16.jpg\"]', 1636897181, 1, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(47, 31, 'Samsung Galaxy A72', 'samsung-galaxy-a72', '11490000.0000', 'Pin dung lượng khủng 5000mAh, bộ nhớ trong lên tới 256GB, khả năng thu phóng hình ảnh tới 30x và màn hình tuyệt mỹ, Samsung Galaxy A72 đã sẵn sàng để đưa bạn tới những trải nghiệm không giới hạn.', 0, '637510730660770271_samsung-a72-tim-dd.jpg', '[\"637528887599927381_FRT00195-11-11.jpg\",\"637528887615396682_FRT00204-19-19.jpg\",\"637528887618677666_FRT00205-20-20.jpg\",\"637528887623677783_FRT00207-22-22.jpg\"]', 1636897343, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(48, 31, 'Samsung Galaxy Z Flip3 5G 128GB', 'samsung-galaxy-z-flip3-5g-128gb', '24990000.0000', 'Một biểu tượng thời trang, một kiệt tác của thế giới công nghệ mà ai cũng phải kinh ngạc khi nhìn thấy Samsung Galaxy Z Flip3 5G và cách mà bạn sử dụng siêu phẩm smartphone này, nơi công nghệ điện thoại màn hình gập đã mang đến những điều không tưởng.', 0, '637677376399424740_Samsung-galaxy-z-flip3_(6)1.jpg', '[\"637677375660520324_samsung-galaxy-zflip-3-unbox-00604.jpg\",\"637677376399424740_Samsung-galaxy-z-flip3_(6).jpg\",\"637677376404580968_Samsung-galaxy-z-flip-3_(6).jpg\",\"637677376847861114_Samsung-galaxy-z-flip-3_(19).jpg\"]', 1636897547, 1, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(49, 31, 'Samsung Galaxy Z Fold3 5G 256GB', 'samsung-galaxy-z-fold3-5g-256gb', '41990000.0000', 'Khi bạn mở ra màn hình gập lớn tới 7,6 inch trên Samsung Galaxy Z Fold3 5G là lúc bạn đã mở ra một tương lai hoàn toàn mới cho thế giới smartphone, nơi công nghệ vượt qua mọi giới hạn, cho trải nghiệm hoàn hảo nhất ở một thiết bị di động nhỏ gọn.', 1000000, 'samsung-galaxy-z-fold3-5g-1.jpg', '[\"637677372868182960_Samsung-galaxy-zfold-3-00474.jpg\",\"637677372920839033_Samsung-galaxy-zfold-3-00478.jpg\",\"637677372958182717_Samsung-galaxy-zfold-3-00480.jpg\",\"637677373154432331_Samsung-galaxy-zfold-3-00495.jpg\"]', 1636897720, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(50, 31, 'Samsung Galaxy Note 20 Ultra', 'samsung-galaxy-note-20-ultra', '20990000.0000', 'Chiếc Galaxy Note màn hình lớn nhất, bút S Pen thông minh nhất và những tính năng mạnh mẽ nhất đã xuất hiện. Samsung Galaxy Note 20 Ultra sẽ định nghĩa lại smartphone, thay đổi những trải nghiệm của bạn theo cách thú vị hơn bao giờ hết.', 1000000, '637322682439532348_ss-note-20-ultra-5g-gold-dd.jpg', '[\"637340482865333229_samsung-galaxy-note-20-Ultra-07944.jpg\",\"637340483136582195_samsung-galaxy-note-20-Ultra-07974.jpg\",\"637340483193769861_samsung-galaxy-note-20-Ultra-07980.jpg\",\"637340483205644690_samsung-galaxy-note-20-Ultra-07981.jpg\"]', 1636897906, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(51, 31, 'Samsung Galaxy Z Flip', 'samsung-galaxy-z-flip', '19990000.0000', 'Một chiếc điện thoại vừa nhỏ gọn đáng kinh ngạc, lại vừa mang đến trải nghiệm mãn nhãn trên màn hình lớn chuẩn điện ảnh 6,7 inch, những điều tưởng như nằm ngoài giới hạn đã thực sự xuất hiện trên Samsung Galaxy Z Flip với thiết kế gập độc đáo và sáng tạo chưa từng thấy.', 5000000, '637503637729039217_ss-z-flip-dd.jpg', '[\"637177262758643936_HASP-Samsung-Galaxy-Z-Flip-3.jpg\",\"637177262765675396_HASP-Samsung-Galaxy-Z-Flip-11.jpg\",\"637177262770831599_HASP-Samsung-Galaxy-Z-Flip-14.jpg\",\"637177262778336120_HASP-Samsung-Galaxy-Z-Flip-22.jpg\"]', 1636898036, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(52, 31, 'Samsung Galaxy S20+', 'samsung-galaxy-s20', '16990000.0000', 'Siêu phẩm Samsung Galaxy S20 Plus đã xuất hiện. Thể hiện đẳng cấp đích thực với thiết kế cao cấp, màn hình lớn đẹp tuyệt mỹ, 5 camera chuyên nghiệp và hiệu suất đáng kinh ngạc.', 3000000, '637503636824959109_ss-s20-plus-dd.jpg', '[\"637175447574425141_HASP-Samsung-Galaxy-S2-Plus-6.jpg\",\"637175447575565097_HASP-Samsung-Galaxy-S2-Plus-1.jpg\",\"637175447615051204_HASP-Samsung-Galaxy-S2-Plus-23.jpg\",\"637175447618574541_HASP-Samsung-Galaxy-S2-Plus-28.jpg\"]', 1636898183, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(53, 35, 'MacBook Pro 13', 'macbook-pro-13', '47990000.0000', 'MacBook Pro 13 2020 mới với bộ vi xử lý Intel thế hệ thứ 10 mạnh mẽ, bàn phím Magic Keyboard mới bền vững hơn, sẽ đưa bạn đến trải nghiệm của sự chuyên nghiệp, tốc độ và tính tiện lợi trong công việc.', 1000000, '637269501975415139_mb-pro-13-2020-xam-dd.jpg', '[\"637285184781344507_mbp13touch-space-gallery3-202005.jpg\",\"637285184781494328_mbp13touch-space-gallery1-202005.jpg\",\"637285184781644439_mbp13touch-space-gallery4-202005.jpg\",\"637285184781674411_mbp13touch-space-gallery2-202005_GEO_US.jpg\"]', 1636898501, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(54, 35, 'MacBook Air 13', 'macbook-air-13', '28999000.0000', 'Chiếc MacBook Air có hiệu năng đột phá nhất từ trước đến nay đã xuất hiện. Bộ vi xử lý Apple M1 hoàn toàn mới đưa sức mạnh của MacBook Air M1 13 inch vượt xa khỏi mong đợi người dùng, có thể chạy được những tác vụ nặng và thời lượng pin đáng kinh ngạc.', 0, '637407970062806725_mba-2020-gold-dd.jpg', '[\"637285184781344507_mbp13touch-space-gallery3-2020051.jpg\",\"637445070996982903_macbook-air-gallery4-20201110.jpg\",\"637445070997609650_macbook-air-gallery1-20201110_GEO_US.jpg\",\"637445070997609650_macbook-air-gallery2-20201110.jpg\"]', 1636898639, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(55, 35, 'MacBook Pro 13', 'macbook-pro-13', '39999000.0000', 'Bộ vi xử lý Apple M1 giúp MacBook Pro 13 16GB tốc độ và mạnh mẽ hơn bao giờ hết. Thậm chí phiên bản 16GB RAM còn mang đến hiệu suất ấn tượng hơn nữa, cho bạn bộ nhớ đệm lớn, băng thông cao để thoải mái làm nhiều việc cùng lúc với hiệu quả tuyệt đối.', 0, '637408530311831907_mbp-2020-m1-gray-dd-1.jpg', '[]', 1636898712, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(56, 35, 'MacBook Pro 14', 'macbook-pro-14', '52990000.0000', 'Thế hệ MacBook Pro 14 và MacBook Pro 16 mạnh mẽ nhất đã xuất hiện với thiết kế dành cho những công việc chuyên nghiệp, nơi bạn được tận hưởng hiệu suất đột phá.', 0, '637703174146015116_macbook-pro-16-2021-xam-dd.jpg', '[]', 1636898862, 0, '', '', '24 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(57, 35, 'MacBook Pro 16', 'macbook-pro-16', '65990000.0000', 'Thế hệ MacBook Pro 14 và MacBook Pro 16 mạnh mẽ nhất đã xuất hiện với thiết kế dành cho những công việc chuyên nghiệp, nơi bạn được tận hưởng hiệu suất đột phá.', 0, '637703174146015116_macbook-pro-16-2021-xam-dd1.jpg', '[]', 1636898938, 0, '', '', '24 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(58, 8, 'Laptop HP Pavilion 15 eg0513TU i3 1125G4/4GB/256GB/15.6\'\'FHD/Win 10', 'laptop-hp-pavilion-15-eg0513tu-i3-1125g44gb256gb156fhdwin-10', '14999000.0000', 'HP Pavilion 15 eg0513TU là chiếc laptop có thiết kế tuyệt đẹp, kiểu dáng doanh nhân trong tầm giá chưa đến 15 triệu đồng. Bộ vi xử lý mới cũng mang đến sức mạnh mới, cho bạn hoàn thành công việc với hiệu suất cao.', 0, '637605637686923568_hp-pavilion-15-eg-vang-dd.jpg', '[]', 1636899028, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(59, 8, 'Laptop HP Envy 13 ba1535TU i7 1165G7/8GB/512GB/13.3', 'laptop-hp-envy-13-ba1535tu-i7-1165g78gb512gb133', '29899000.0000', '13.3\", 1920 x 1080 Pixel, IPS, 60 Hz, 400 nits\r\n\r\nIntel Core i7-1165G7\r\n\r\n8 GB, DDR4, 3200 MHz\r\n\r\nSSD 512 GB\r\n\r\nIntel Iris Xe Graphics', 0, '637360390392454557_hp-envy-13-vang-dd.jpg', '[]', 1636899100, 1, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(60, 8, 'Laptop HP Pavilion 15 eg0509TU i3 1125G4/4GB/512GB/15.6\'\'FHD/Win 10', 'laptop-hp-pavilion-15-eg0509tu-i3-1125g44gb512gb156fhdwin-10', '15999000.0000', 'Dòng laptop 15,6 inch thời trang, thiết kế siêu mỏng nhẹ HP Pavilion 15 eg0509TU giờ đây đã có sự nâng cấp mạnh mẽ về hiệu năng, màn hình Full HD IPS sắc nét và ổ SSD dung lượng cao 512GB, mang đến một chiếc laptop cân bằng hoàn hảo cho cả công việc và giải trí.', 0, '637605637686923568_hp-pavilion-15-eg-vang-dd1.jpg', '[]', 1636899188, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(61, 7, 'Laptop Dell Inspiron N3511 i3 1115G4/4GB/256GB/15.6FHD/Win 10+Office Home&Student', 'laptop-dell-inspiron-n3511-i3-1115g44gb256gb156fhdwin-10office-homestudent', '15299000.0000', '15.6\", 1920 x 1080 Pixel, WVA, 60 Hz, 220 nits, WVA Anti-glare LED Backlit Narrow Border\r\n\r\nIntel Core i3-1115G4\r\n\r\n4 GB, DDR4, 2666 MHz\r\n\r\nSSD 256 GB\r\n\r\nIntel UHD Graphics', 0, '637696541426162655_dell-inspiron-n3511-den-dd.jpg', '[]', 1636899269, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(62, 7, 'Laptop Dell Vostro V3500 i3 1115G4/8GB/256GB/15.6', 'laptop-dell-vostro-v3500-i3-1115g48gb256gb156', '15599000.0000', 'Trải nghiệm những công nghệ mới nhất trên Dell Vostro V3500, chiếc laptop doanh nhân 15,6 inch được thiết kế nhỏ gọn, chạy bộ vi xử lý Intel thế hệ thứ 11 mới nhất và độ bền đã trở thành thương hiệu của Dell.', 0, '637495973910034211_dell-vostro-v3500-den-dd.jpg', '[]', 1636900351, 1, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(63, 7, 'Laptop Dell Inspiron N3511 i5 1135G7/4GB/512GB/15.6', 'laptop-dell-inspiron-n3511-i5-1135g74gb512gb156', '19999000.0000', '15.6\", 1920 x 1080 Pixel, WVA, 60 Hz, 220 nits, WVA Anti-glare LED Backlit Narrow Border\r\n\r\nIntel Core i5-1135G7\r\n\r\n4 GB, DDR4, 2666 MHz\r\n\r\nSSD 512 GB\r\n\r\nIntel Iris Xe Graphics', 0, '637696541426162655_dell-inspiron-n3511-den-dd1.jpg', '[]', 1636900405, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(64, 7, 'Laptop Dell Inspiron N5515 R5 5500U/8GB/256GB/15.6', 'laptop-dell-inspiron-n5515-r5-5500u8gb256gb156', '18999000.0000', '15.6\", 1920 x 1080 Pixel, WVA, 60 Hz, 250 nits, WVA Anti-glare LED Backlit Narrow Border\r\n\r\nAMD Ryzen 5-5500U\r\n\r\n8 GB, DDR4, 3200 MHz\r\n\r\nSSD 256 GB\r\n\r\nAMD Radeon RX Graphics Vega 7', 0, '637707541885208939_dell-inspiron-n5510-bac-dd.jpg', '[]', 1636900453, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(65, 37, 'iPhone 11 64GB', 'iphone-11-64gb', '16999000.0000', 'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.', 0, '637393169370871358_ip-11-dd1.jpg', '[\"637274688345972278_iPhone_11_Green_2-up_US-EN_SCREEN1.jpg\",\"637274688346082259_iPhone_11_Green_Rosette_Vertical_US-EN_SCREEN1.jpg\",\"637274688349002340_3_iPhone_11_Black_2-up_US-EN_SCREEN1.jpg\",\"637285887276615537_4_iPhone_11_Black_2-up_US-EN_SCREEN.jpg\"]', 1636901012, 0, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(66, 37, 'iPhone 13 Pro Max 128GB', 'iphone-13-pro-max-128gb', '33990000.0000', 'iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.', 0, '637673213598401263_iphone-13-pro-max-dd-11.jpg', '[\"637274688349002340_3_iPhone_11_Black_2-up_US-EN_SCREEN2.jpg\",\"637716443491808351_22.jpg\",\"637716443491808351_32.jpg\",\"637716443491808351_5.jpg\"]', 1636902205, 6, '', '', '12 Tháng', 0, 0, 0, 0, '', 'Đánh_Giá_Thực_Tế_Các_Nâng_Cấp_trên_iPhone_13_Pro_Max_-_Điều_các_bạn_nên_biết!.mp4', '', '0'),
(67, 37, 'iPhone 13 mini 128GB', 'iphone-13-mini-128gb', '21990000.0000', 'iPhone 13 mini là chiếc điện thoại dành cho những ai yêu thích sự nhỏ gọn. Với một kiểu dáng dễ thương, nằm gọn trong bàn tay hay túi quần của bạn, iPhone 13 mini còn gây bất ngờ hơn nữa với sức mạnh đáng kinh ngạc, màn hình OLED siêu nét và camera nhiếp ảnh chuyên nghiệp.', 1000000, '637673186690398016_iphone-13-mini-dd.jpg', '[\"637716428589973121_2.jpg\",\"637716428589973121_5.jpg\",\"637716428592316892_7.jpg\",\"637716428593098302_8.jpg\"]', 1636902325, 8, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(68, 37, 'iPhone 12 Mini 64GB', 'iphone-12-mini-64gb', '18999000.0000', 'Chiếc iPhone siêu nhỏ gọn nhưng mang trên mình sức mạnh không đối thủ. iPhone 12 mini là sự lựa chọn hoàn hảo cho những ai đang cần một chiếc điện thoại có thể làm mọi thứ nhưng lại nằm gọn trong lòng bàn tay và độ tiện dụng đáng kinh ngạc.', 3000000, '637686973937774079_ip-12-dd.jpg', '[\"637716428589973121_21.jpg\",\"637716428589973121_51.jpg\",\"637716428592316892_71.jpg\",\"637716428593098302_81.jpg\"]', 1636902398, 4, '', '', '12 Tháng', 0, 0, 0, 0, '', '', '', '0'),
(127, 12, 'Xiaomi 11 Lite 5G NE 8GB - 256GB', 'xiaomi-11-lite-5g-ne-8gb-256gb', '10490000.0000', 'Không chỉ là một chiếc điện thoại, Xiaomi 11 Lite 5G NE xứng đáng được gọi là biểu tượng thời trang trong giới smartphone, nơi bạn được cảm nhận sự thanh tú và tinh tế đến từng đường nét, cùng với đó là sức mạnh không ngờ, kết nối 5G siêu tốc độ, làm chủ tương lai.', 500000, 'xiaomi-11-lite-5g-ne-trang-swarovski-1-660x600.jpg', '[]', 1638799552, 0, '', '', '18 tháng', 0, 0, 0, 0, '', '', '', '0'),
(128, 12, 'Xiaomi POCO X3 Pro NFC 8GB-256GB', 'xiaomi-poco-x3-pro-nfc-8gb-256gb', '7990000.0000', 'Xiaomi POCO X3 Pro NFC là tập hợp của mọi tính năng mà một game thủ cần trên smartphone. Màn hình siêu mượt, điện thoại pin khủng, sạc siêu nhanh, âm thanh chất lượng phòng thu và một cấu hình đáng kinh ngạc, có quá nhiều điều đang chờ đón bạn.', 300000, 'xiaomi-poco-x3-pro-600x600-1-600x600.jpg', '[]', 1638799719, 0, '', '', '18 tháng', 0, 0, 0, 0, '', '', '', '0'),
(129, 12, 'Xiaomi Redmi 9A 2GB-32GB', 'xiaomi-redmi-9a-2gb-32gb', '2290000.0000', 'Xiaomi Redmi 9A thể hiện sự vượt trội trong phân khúc giá rẻ khi sở hữu màn hình lớn, thời lượng pin suốt cả ngày và cấu hình tuyệt đỉnh, mang đến cho bạn trải nghiệm thực sự hài lòng.', 0, 'xiaomi-redmi-9a-xanhduong-600x600-600x600.jpg', '[]', 1638799834, 0, '', '', '18 tháng', 0, 0, 0, 0, '', '', '', '0'),
(130, 12, 'Xiaomi Redmi Note 9 4GB-128GB', 'xiaomi-redmi-note-9-4gb-128gb', '4990000.0000', 'Xiaomi Redmi Note 9 viết tiếp câu chuyện thành công của Redmi series, dòng điện thoại bán chạy nhất từ trước đến nay của Xiaomi. Với sức mạnh đáng kinh ngạc, thời lượng pin vượt trội và 4 camera AI chuyên nghiệp, Redmi Note 9 sẽ mang đến những trải nghiệm chưa từng có cho người dùng smartphone giá rẻ.', 500000, 'xiaomi-redmi-note-9-trang-600x600-600x600.jpg', '[]', 1638799908, 0, '', '', '18 tháng', 0, 0, 0, 0, '', 'Hãy_xem_Video_này_trước_khi_MUA_Redmi_Note_9!.mp4', '', '0'),
(131, 12, 'Xiaomi Redmi 9C 4GB-128GB', 'xiaomi-redmi-9c-4gb-128gb', '3490000.0000', 'Xiaomi Redmi 9C phiên bản mới 4GB RAM 128GB bộ nhớ trong chắc chắn sẽ là lựa chọn hoàn hảo trong tầm giá rẻ, khi bạn sẽ có sức mạnh, khả năng đa nhiệm và bộ nhớ được nâng cấp đầy hấp dẫn', 0, 'redmi-9c-xanh-la-600x600.jpg', '[]', 1638800151, 0, '', '', '18 tháng', 0, 0, 0, 0, '', '', '', '0'),
(132, 11, 'Realme Narzo 30A 4GB - 64GB', 'realme-narzo-30a-4gb-64gb', '3990000.0000', 'realme narzo 30A là chiếc điện thoại có hiệu năng thực sự “khủng” trong tầm giá rẻ. Trang bị chip Helio G85 chuyên game, pin dung lượng lên tới 6000mAh, realme narzo 30A sẽ cùng bạn khai phá sức mạnh hiệu năng cực đỉnh.', 0, '637571280163165163_realme-narzo-30a-xanh-dd.jpg', '[]', 1638800383, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(133, 11, 'Realme C12 3GB-32GB', 'realme-c12-3gb-32gb', '3490000.0000', 'Nếu bạn đang tìm kiếm một chiếc điện thoại cấu hình tốt và thời lượng pin siêu khủng trong tầm giá rẻ, Realme C12 chắc chắn sẽ không để bạn phải thất vọng.', 0, '637335169508732843_realme-c12-do-dd.jpg', '[]', 1638800480, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(134, 11, 'Realme C17 6GB - 128GB', 'realme-c17-6gb-128gb', '5290000.0000', 'Tận hưởng tốc độ mượt mà hơn với màn hình 90Hz, realme C17 mang đến cho bạn trải nghiệm hoàn toàn khác ở phân khúc smartphone tầm trung.', 0, '637426796794465679_realme-c17-blue-dd.jpg', '[]', 1638800562, 1, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(135, 8, 'HP Envy x360 13 ay0069AU R7 4700U/8GB/256GB/13.3FHDTouch/Win 10+Office Home&Student', 'hp-envy-x360-13-ay0069au-r7-4700u8gb256gb133fhdtouchwin-10office-homestudent', '27199000.0000', 'HP Envy x360 13 ay0069AU là chiếc laptop 2-in-1 xuất sắc bậc nhất hiện nay khi không chỉ linh hoạt với màn hình cảm ứng và khả năng xoay 360 độ mà máy còn trang bị cấu hình mạnh mẽ đáng kinh ngạc.', 0, 'hp-envy-x360-2020-20.jpg', '[]', 1638800837, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(136, 8, 'Laptop HP Pavilion Gaming 15 dk1159TX i7 10750H/8GB/512GB+32GB/1650Ti 4GB/Win 10', 'laptop-hp-pavilion-gaming-15-dk1159tx-i7-10750h8gb512gb32gb1650ti-4gbwin-10', '28990000.0000', 'HP Pavilion Gaming 15 dk1159TX với công nghệ Intel Optane giúp tăng tốc toàn diện máy tính bên cạnh cấu hình lý tưởng đối với game thủ, mang đến cho bạn tốc độ và tính chính xác trong những trận chiến game hấp dẫn.', 1000000, 'hp-pavilion-gaming-15-intel-4.jpg', '[]', 1638801055, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(137, 8, 'Laptop HP Pavilion 15 eg0504TU i7 1165G7/8GB/512GB/15.6', 'laptop-hp-pavilion-15-eg0504tu-i7-1165g78gb512gb156', '22690000.0000', 'HP Pavilion 15 eg0504TU dành cho những ai đang cần một chiếc laptop thực sự mạnh mẽ, khi trang bị bộ vi xử lý Intel Core i7 thế hệ thứ 11 “trùm cuối”, màn hình lớn và âm thanh B&O cao cấp.', 0, 'hp-pavilion-15-intel-11-12.jpg', '[]', 1638801340, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(138, 8, 'Laptop HP Pavilion 14 dv0510TU i5 1135G7/8GB/512GB/14', 'laptop-hp-pavilion-14-dv0510tu-i5-1135g78gb512gb14', '18499000.0000', '', 0, '637522788300815610_hp-pavilion-14-dv-vang-dd-1.jpg', '[]', 1638801446, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(139, 7, 'Laptop Dell Gaming G5 5500 i7 10750H/16GB/512GB/RTX 2070 8GB/15', 'laptop-dell-gaming-g5-5500-i7-10750h16gb512gbrtx-2070-8gb15', '37990000.0000', 'Dell Gaming G5 15 5500 xứng đáng là vũ khí gaming lợi hại bậc nhất khi trang bị card đồ họa rời RTX 2070 đỉnh cao, bộ vi xử lý Intel Core i7 thế hệ thứ 10 mạnh mẽ, cho bạn tự tin tham gia mọi trận chiến ở bất cứ đâu.', 0, '637493278502148750_dell-g5-15-5500-den-dd.jpg', '[]', 1638801701, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(140, 7, 'Laptop Dell Gaming G7 15 7500 i7 10750H/8GB/512GB/15.6', 'laptop-dell-gaming-g7-15-7500-i7-10750h8gb512gb156', '38990000.0000', 'Dell Gaming G7 15 7500 là mẫu laptop gaming cao cấp có thiết kế siêu mỏng, tinh tế đến từng đường nét. Bên trong máy là bộ vi xử lý Intel Core i7 thế hệ thứ 10 và card đồ họa rời GTX 1660 Ti, cho bạn hiệu năng cực đỉnh trong mọi tựa game.', 2000000, 'Dell-Gaming-G7-15-7500-15.jpg', '[]', 1638801762, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(141, 7, 'Laptop Dell Gaming G15 5511 i7 11800H/16GB/512GB/15.6FHD/NV-RTX3050Ti 4GB/Win 11+Office HS 21', 'laptop-dell-gaming-g15-5511-i7-11800h16gb512gb156fhdnv-rtx3050ti-4gbwin-11office-hs-21', '35990000.0000', '', 0, '637740490696341842_dell-gaming-g15-5511-xam-dd.jpg', '[]', 1638801835, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(142, 7, 'Laptop Dell Vostro V3400 i5 1135G7/8GB/256GB/14.0', 'laptop-dell-vostro-v3400-i5-1135g78gb256gb140', '18890000.0000', 'Dell Vostro V3400 sở hữu bộ vi xử lý Intel Core i5 1135G7 tích hợp GPU Intel Iris Xe mạnh mẽ, không chỉ đáp ứng tốt công việc cơ bản mà còn có thể chạy tốt những tác vụ đồ họa. Bạn có thể làm nhiều việc hơn trên chiếc laptop nhỏ gọn và bền bỉ.', 0, 'dell-vostro-v3400-7.jpg', '[]', 1638801955, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(143, 7, 'Laptop Dell Vostro V5410 i5 11320H/8GB/512GB/14.0', 'laptop-dell-vostro-v5410-i5-11320h8gb512gb140', '23699000.0000', '', 700000, '637639323976879219_dell-vostro-v5410-xam-dd.jpg', '[]', 1638842139, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(144, 7, 'Laptop Dell Vostro V3510 i5 1135G7/8GB/512GB/15.6', 'laptop-dell-vostro-v3510-i5-1135g78gb512gb156', '20999000.0000', '', 600000, '637673115503991603_dell-vostro-v3510-den-dd.jpg', '[]', 1638842210, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(145, 7, 'Laptop Dell Vostro V3405 R5 3500U/8GB/512GB/Win 10', 'laptop-dell-vostro-v3405-r5-3500u8gb512gbwin-10', '18499000.0000', 'Dell Vostro V3405 thuộc dòng laptop doanh nhân nhỏ gọn của Dell, trang bị màn hình Full HD viền cạnh mỏng, thiết kế bền bỉ, thời lượng pin tốt và sử dụng bộ vi xử lý của AMD.', 0, '637412887546506965_dell-vostro-v3405-den-dd.jpg', '[]', 1638842461, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(146, 7, 'Laptop Dell Vostro V5515 R3 5300U/8GB/256GB/15.6', 'laptop-dell-vostro-v5515-r3-5300u8gb256gb156', '18599000.0000', '', 0, '637717458493650925_dell-vostro-v5515-xam-dd.jpg', '[]', 1638842617, 0, '', '', '12 tháng', 0, 0, 0, 0, 'Tặng Chuột không dây Zadez M390', '', '', '0'),
(147, 7, 'Laptop Dell Vostro V3400 i7 1165G7/8GB/512GB/14', 'laptop-dell-vostro-v3400-i7-1165g78gb512gb14', '25999000.0000', 'Dell Vostro V3400 là chiếc laptop doanh nhân thực sự mạnh mẽ, khi trang bị cả bộ vi xử lý Intel Core i7 thế hệ thứ 11 mới nhất và cả card đồ họa rời. Đặc biệt, chiếc laptop này lại vô cùng nhỏ gọn và bền vững, xứng đáng là người bạn đồng hành lý tưởng trong công việc.', 780000, '637493273510919678_dell-vostro-v3400-den-dd.jpg', '[]', 1638842875, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(148, 6, 'Laptop Asus ZenBook Flip UX363EA i7 1165G7/16GB/512GB/OLED/Touch/Pen/Cáp/Túi/Win10 (HP163T) ', 'laptop-asus-zenbook-flip-ux363ea-i7-1165g716gb512gboledtouchpencáptúiwin10-hp163t', '33990000.0000', '', 5000000, 'asus-zenbook-flip-ux363ea-i7-hp163t-600x600.jpg', '[]', 1638843108, 1, '', '', '24 tháng', 0, 0, 0, 0, '', 'yt1s_com_-_Flexible_performance_effortless_mobility_ZenBook_Flip_13_ASUS.mp4', '', '0'),
(153, 6, 'Laptop Asus VivoBook X515EA-BR1409T i5 1135G7/8GB/512GB SSD/Win10', 'laptop-asus-vivobook-x515ea-br1409t-i5-1135g78gb512gb-ssdwin10', '17599000.0000', '', 0, '637711439822397887_asus-vivobook-x515-xam-dd.jpg', '[]', 1638844189, 0, '', '', '24 tháng', 0, 0, 0, 0, 'Tặng Chuột không dây Zadez M390', '', '', '0'),
(154, 6, 'Laptop ASUS Flip BR1100FKA-BP0531T N4500/4GB/128GB eMMc/11.6\'\'HD Touch/Win10', 'laptop-asus-flip-br1100fka-bp0531t-n45004gb128gb-emmc116hd-touchwin10', '9999000.0000', 'Chỉ với chưa đến 10 triệu đồng, bạn đã có một chiếc laptop đa năng có thể xoay gập, màn hình cảm ứng linh hoạt, thích hợp cho học tập online. ASUS Flip BR1100FKA-BP0531T chắc chắn sẽ được các bé và phụ huynh yêu thích nhờ loạt tính năng chuyên dụng cho công việc giáo dục cũng như giải trí.', 500000, '637650938827218126_asus-flip-br1100fka-xam-dd.jpg', '[]', 1638844283, 2, '', '', '24 tháng', 0, 0, 0, 0, '', '', '', '0'),
(156, 6, 'Laptop ASUS VivoBook S533EA BN293T i5 1135G7/8GB/512GB SSD/Win10', 'laptop-asus-vivobook-s533ea-bn293t-i5-1135g78gb512gb-ssdwin10', '20599000.0000', 'ASUS VivoBook S533EA BN293T thuộc dòng VivoBook S15 mới từ ASUS với thiết kế siêu mỏng nhẹ, vẻ đẹp thanh lịch hiện đại và tốc độ cực nhanh, sẵn sàng cùng bạn hoàn thành xuất sắc mọi công việc.', 650000, '637460678585794629_asus-vivobook-s533-den-dd.jpg', '[]', 1638846298, 1, '', '', '24 tháng', 0, 0, 0, 0, '', '', '', '0'),
(162, 4, 'Laptop Acer Aspire 3 A315-57G-524Z i5 1035G1/8GB/512GB SSD/MX330-2G/Win10', 'laptop-acer-aspire-3-a315-57g-524z-i5-1035g18gb512gb-ssdmx330-2gwin10', '16999000.0000', 'Chiếc laptop thuộc dòng Aspire 3 của nhà Acer giờ đây đã được nâng cấp vượt trội về cấu hình với bộ vi xử lý Intel Core i5 thế hệ thứ 10 và cả card đồ họa rời, mang đến một sản phẩm thực sự mạnh mẽ ở mức giá bán dễ chịu.', 0, 'acer-aspire-3-a315-2021-2.jpg', '[]', 1638847950, 1, '', '', '12 tháng', 0, 0, 0, 0, 'Tặng Chuột không dây Zadez M390 ', '', '', '0'),
(164, 4, 'Laptop Acer Aspire 3 A315 56 37DV i3 1005G1/4GB/256GB/15.6', 'laptop-acer-aspire-3-a315-56-37dv-i3-1005g14gb256gb156', '12199000.0000', 'Trang bị bộ vi xử lý Intel thế hệ thứ 10 Ice Lake mới nhất, ổ cứng SSD siêu tốc và màn hình Full HD tuyệt đẹp, Acer Aspire 3 A315 56 37DV là chiếc laptop đáp ứng tốt công việc và giải trí của bạn trong tầm giá hấp dẫn.', 0, 'acer-aspire-a315-intel-1.jpg', '[]', 1638848407, 1, '', '', '12 tháng', 0, 0, 0, 0, 'Tặng Chuột không dây Zadez M390', '', '', '0'),
(165, 63, 'Laptop Lenovo ThinkPad X1 Nano i5 1130G7/16GB/512GB/13”2K 450N SRGB/Win 10', 'laptop-lenovo-thinkpad-x1-nano-i5-1130g716gb512gb132k-450n-srgbwin-10', '49999000.0000', 'Lenovo ThinkPad X1 Nano là siêu phẩm laptop dành cho doanh nhân với sức mạnh không tưởng trong một thiết kế nhẹ chưa tới 1kg. Chứng nhận chuẩn Intel Evo, màn hình 2K tuyệt sắc, ThinkPad X1 Nano chính là chìa khóa đưa bạn đến thành công.', 3500000, '637583154411540750_lenovo-thinpad-x1-nano-dd.jpg', '[]', 1638848962, 4, '', '', '36 tháng', 0, 0, 0, 0, '', '', '', '0'),
(166, 63, 'Laptop Lenovo Yoga 9 14ITL5 i7/1185G7/16GB/1TB SSD/Touch/Pen/Win10 (82BG006EVN) ', 'laptop-lenovo-yoga-9-14itl5-i71185g716gb1tb-ssdtouchpenwin10-82bg006evn', '49990000.0000', 'Sang trọng, đẳng cấp, mạnh mẽ là những mỹ từ tóm gọn giá trị mà laptop Lenovo Yoga 9 14ITL5 (82BG006EVN) mang lại cho bạn. Nếu đang tìm 1 chiếc laptop mỏng nhẹ, linh hoạt, cấu hình ấn tượng hỗ trợ các tác vụ nặng, trải nghiệm ngay phiên bản cao cấp này từ Lenovo.\r\n', 500000, 'lenovo-yoga-9-14itl5-i7-82bg006evn-21-600x600.jpg', '[\"lenovo-yoga-9-14itl5-i7-82bg006evn-21-600x6001.jpg\",\"lenovo-yoga-9-14itl5-i7-82bg006evn-120821-0317081.jpg\",\"vi-vn-lenovo-yoga-9-14itl5-i7-82bg006evn-2.jpg\",\"vi-vn-lenovo-yoga-9-14itl5-i7-82bg006evn-04.jpg\"]', 1638849206, 13, '', '', '24 tháng', 0, 0, 0, 0, '', '', '', '0'),
(167, 63, 'Laptop Lenovo Yoga Slim 7 14ITL05 i7 1165G7/16GB/512GB/14”FHD/Win 11', 'laptop-lenovo-yoga-slim-7-14itl05-i7-1165g716gb512gb14fhdwin-11', '30299000.0000', 'Mang trên mình bộ vi xử lý Intel Core i7 thế hệ thứ 11 Tiger Lake mới nhất, Lenovo Yoga Slim 7 14ITL05 xứng đáng là sự lựa chọn hàng đầu cho dòng máy tính nhỏ gọn chuyên dành cho công việc, với thiết kế cao cấp và độ bảo mật đang tin cậy.', 2100000, 'lenovo-yoga-slim-7-4.jpg', '[]', 1638877808, 11, '', '', '36 tháng', 0, 0, 0, 0, '', '', '', '0'),
(72, 46, 'Loa Bluetooth Xiaomi Mi Portable Bluetooth Speaker 16W', 'loa-bluetooth-xiaomi-mi-portable-bluetooth-speaker-16w', '990000.0000', 'Âm thanh chất lượng cao, Khoang âm thanh âm lượng lớn, Chế độ âm thanh kép, Kết nối TWS: kết nối hai loa, tự động đầu ra kênh trái-phải', 0, 'bluetooth-speaker-xiaomi.jpg', '[\"bluetooth-speaker-xiaomi-1.jpg\"]', 1638760908, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(73, 46, 'Loa Bluetooth Xiaomi Mi Compact Speaker 2', 'loa-bluetooth-xiaomi-mi-compact-speaker-2', '290000.0000', 'Trong trường hợp bạn đang kiếm tìm cho bản thân một chiếc loa mini có thể đem theo bên người mọi nơi mọi lúc nhưng vẫn đảm bảo trải nghiệm âm thanh đủ chất thì Loa bluetooth mini Xiaomi Compact Speaker 2 chính là sản phẩm dành cho bạn. Chiếc loa cầm tay này có cơ chế hoạt động thông minh từ thiết kế cho đến tính năng đi kèm.', 50000, '637509832736058772_loa-bluetooth-compact-2-x1.jpg', '[\"637509832736058772_loa-bluetooth-compact-2-x11.jpg\"]', 1638761058, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(170, 63, 'Laptop Lenovo IdeaPad Slim 3 15ADA05 R5 3500U/8GB/512GB SSD/15.6HD/Win 10', 'laptop-lenovo-ideapad-slim-3-15ada05-r5-3500u8gb512gb-ssd156hdwin-10', '14499000.0000', '', 0, '637353563373216648_lenovo-ideapad-5-xamnhat-dd.jpg', '[]', 1638878149, 45, '', '', '12 tháng', 0, 0, 0, 0, 'Tặng Chuột không dây Zadez M390', '', '', '0'),
(171, 63, 'Laptop Lenovo Gaming 3 15IHU6 i7 11370H/ 8GB/512GB/RTX 3050 4GB/Win 10', 'laptop-lenovo-gaming-3-15ihu6-i7-11370h-8gb512gbrtx-3050-4gbwin-10', '28999000.0000', 'Lenovo Gaming 3 15IHU6 thuộc thế hệ IdeaPad Gaming 3i Gen 6 mới nhất từ nhà Lenovo, trang bị những linh kiện hàng đầu hiện nay như bộ vi xử lý Intel Core i7 thế hệ thứ 11 hay card đồ họa rời RTX 30 series, cho bạn hiệu suất chơi game đỉnh cao trong một sản phẩm di động.', 2000000, 'Lenovo-Gaming-3-15IHU6-4.jpg', '[]', 1638878231, 86, '', '', '24 tháng', 0, 0, 0, 0, '', '', '', '0'),
(74, 48, 'Loa di động SONY SRS-XB12', 'loa-di-động-sony-srs-xb12', '1290000.0000', 'Có thiết kế nhỏ nhắn nhưng ẩn chứa sức mạnh âm thanh đầy nội lực, chiếc loa bluetooth Sony SRS-XB12 được tích hợp công nghệ EXTRA BASS, hứa hẹn đem tới trải nghiệm nhạc sống động và sâu lắng.', 258000, '636952527392663389_Loa-sony-dd.jpg', '[\"636952448456644615_do2.jpg\",\"636975687058589052_636952448456956591_xanh_duong1.jpg\"]', 1638761299, 3, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(75, 51, 'Chuột không dây quang Microsoft 1850', 'chuột-không-dây-quang-microsoft-1850', '369000.0000', 'Đến từ thương hiệu nổi danh Microsoft, sản phẩm chuột không dây Microsoft 1850 sở hữu thiết kế đơn giản vừa tay cầm, được trang trang bị nhiều tính năng ưu việt, có độ ổn định cao và khả năng tương thích tuyệt vời với máy tính Windows của bạn.', 0, '636935296754439686_00003462-dd.jpg', '[\"636917004618880912_chuot_xanh_dam.jpg\",\"636917004618950905_chuot_hong.jpg\",\"636917004618980902_chuot_doa.jpg\"]', 1638762326, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(76, 51, 'Chuột Bluetooth Microsoft', 'chuột-bluetooth-microsoft', '600000.0000', 'Chuột không dây Bluetooth Microsoft đem tới những trải nghiệm ưu việt khó lòng tìm thấy ở sản phẩm nào khác nhờ hàng loạt công nghệ hiện đại như Bluetooth 5.0, Swift Pair và cảm biến theo dõi nhanh. Ngoài ra, thiết kế linh hoạt và tiện dụng của thiết bị cũng sẽ khiến bạn ưng ý ngay từ cái nhìn đầu tiên.', 0, '637206660046143554_ACC_TopDown_001_RGB_1200.jpg', '[\"637206660672585934_ACC_TopDown_002_RGB_1200.jpg\",\"637206661225177522_ACC_TopDown_004_RGB_1200.jpg\"]', 1638762574, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(77, 51, 'Chuột Bluetooth Microsoft Modern', 'chuột-bluetooth-microsoft-modern', '900000.0000', 'Chuột không dây Microsoft Modern là sự lựa chọn không thể bỏ qua nếu bạn là người yêu thích các thiết bị công nghệ mỏng nhẹ và thời trang. Với khả năng vận hành êm ái trên mọi mặt phẳng nhờ công nghệ BlueTrack và thiết kế cân đối tiện dụng, bạn sẽ hài lòng về sản phẩm này ngay trong lần trải nghiệm đầu tiên.', 0, '637114960259389596_Microsoft_Modern_(3)_bia.jpg', '[\"637625697531186550_chuot-bluetooth-microsoft-modern-trang-1.jpg\",\"637625714294423025_chuot-bluetooth-microsoft-modern-xanh-1.jpg\"]', 1638762818, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(78, 50, 'Chuột không dây Logitech M221', 'chuột-không-dây-logitech-m221', '319000.0000', 'Nhằm để giảm thiểu những sự phiền toái và giới hạn khoảng cách do chuột máy tính có dây thì chuột không dây Logitech M221 được ra đời. Với công nghệ không dây 2.4GHz, chuột Logitech M221 cho phép người dùng kết nối xa lên đến 10m.', 0, '637418984502900576_M221.jpg', '[]', 1638763017, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(79, 50, 'Chuột Game có dây Logitech G402 Hyperion Fury Ultra', 'chuột-game-có-dây-logitech-g402-hyperion-fury-ultra', '820000.0000', 'Logitech G402 Hyperion Fury Ultra thực sự là một trợ thủ đắc lực dành cho các game thủ khi khoác lên mình thiết kế cắt xẻ tràn đầy cảm hứng, sử dụng công nghệ cảm biến siêu nhạy Fusion Engine cùng hệ thống 8 phím bấm có thể lập trình cho các tác vụ khác nhau.', 0, '637680738122983264_logitech_402_2.jpg', '[]', 1638763091, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(80, 50, 'Chuột Game có dây Logitech G502 HERO High Performance', 'chuột-game-có-dây-logitech-g502-hero-high-performance', '1759000.0000', 'Với thiết kế đậm chất gaming và những nét cắt xẻ cực cá tính, chuột Logitech G502 HERO High Performance sẽ là trợ thủ đắc lực để game thủ có điều kiện phô diễn kỹ năng thượng thừa trong từng pha giao tranh gay cấn. Mọi chi tiết của sản phẩm như cảm biến quang học, hệ thống nút bấm, trọng lượng và đèn RGB đều được tối ưu hợp lý nhằm tạo điều kiện tốt nhất khi chơi game.', 0, '637393203478882160_G502-AVT.jpg', '[]', 1638763159, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(81, 50, 'Chuột Game Logitech G102 Gen2 Lightsync', 'chuột-game-logitech-g102-gen2-lightsync', '590000.0000', 'Được thiết kế và tinh chỉnh để phục vụ tối ưu cho tác vụ chơi gaming của những người đam mê thể thao điện tử, chuột Logitech G102 Gen 2 Lightsync sẽ giúp bạn thao tác chính xác tuyệt đối để giành lấy lợi thế trong những pha giao tranh tốc độ cao nhờ hệ thống phím hỗ trợ đi kèm. Sản phẩm được tích hợp công nghệ LIGHTSYNC đầy cảm hứng, thắp sáng không gian gaming của bạn.', 0, '637369016416307067_G102_Gen2-1.jpg', '[\"637369017560990991_G102_Gen2-Trang-2.jpg\"]', 1638763274, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(82, 50, 'Chuột Game không dây Logitech G304', 'chuột-game-không-dây-logitech-g304', '800000.0000', 'Đem đến sự lựa chọn có giá thành phù hợp dành cho các game thủ, chuột Logitech G304 được nâng cấp toàn diện so với các thế hệ trước nhờ sở hữu thiết kế đột phá, cảm biến HERO 12.000 mức DPI, hệ thống 6 nút lập trình để tùy chỉnh tính năng và công nghệ tương tác không dây vượt trội LIGHTSPEED.', 0, '637393197109674265_G304-AVT.jpg', '[\"637393206150383514_G304-WHITE-2.jpg\"]', 1638763398, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0'),
(85, 50, 'Chuột không dây Logitech MX Master 3', 'chuột-không-dây-logitech-mx-master-3', '2490000.0000', 'Chuột không dây Logitech MX Master 3 được thiết kế với kiểu dáng hỗ trợ cử động cổ tay và bàn tay thoải mái nhất, có thể vận hành mượt mà trên nhiều bề mặt nhờ độ phân giải cảm biến lên tới 4000 DPI và hỗ trợ công nghệ Logitech Flow giúp duy trì tương tác với ba máy tính hoặc laptop riêng biệt.', 0, '637680744725377286_mxmaster3.jpg', '[]', 1638764770, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(86, 50, 'Chuột Game có dây Logitech G403 Hero', 'chuột-game-có-dây-logitech-g403-hero', '1150000.0000', 'Chuột gaming G403 nổi bật ở thiết kế nhỏ nhẹ, đem lại trải nghiệm cầm nắm thoải mái. Bạn sẽ ấn tượng trước tốc độ phản hồi nhanh nhạy mà cảm biến HERO 16K đem lại. Không chỉ vậy, cấu tạo với sáu nút lập trình qua HUB G và thời gian phản hồi chỉ 1ms cũng là những điểm nhấn đáng chú ý trên Logitech G403.', 0, '637680741618276952_403_1.jpg', '[]', 1638764840, 0, '', '', '24 tháng', 0, 0, 0, 0, '', '', '', '0'),
(88, 49, 'Chuột game có dây Zadez G153M', 'chuột-game-có-dây-zadez-g153m', '300000.0000', 'Chuột game có dây Zadez G153M được thiết kế theo phong cách Ergonomic giống như nhiều sản phẩm khác cùng thương hiệu. Tất cả các đường nét trên thân chuột được bo cong mềm mại để chúng có thể ôm sát vào lòng bàn tay.', 0, '637369022901170375_Zadez_G153M-AVT.jpg', '[]', 1638765108, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(89, 49, 'Chuột game có dây Zadez G156M', 'chuột-game-có-dây-zadez-g156m', '300000.0000', 'Với độ phân giải 1200/2400/4800/7200 DPI, chuột game có dây Zadez G156M cho phép các game thủ nhanh chóng chọn mức phù hợp cho từng thể loại game khác nhau. Điều đó đảm bảo mọi thao tác của người chơi game sẽ đều được đáp ứng ngay lập tức, nâng cao trải nghiệm chơi đối với mọi tựa game phổ biến trên thị trường.', 0, '637369024453398658_Zadez_G156M-AVT.jpg', '[]', 1638765186, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(90, 49, 'Chuột dây rút ZADEZ M215', 'chuôt-dây-rut-zadez-m215', '100000.0000', '', 0, '636764217287350085_chuot-day-rut-zadez-m215-1o.jpg', '[]', 1638765236, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(91, 49, 'Chuột Bluetooth Zadez M371', 'chuột-bluetooth-zadez-m371', '390000.0000', '', 0, '637574703415738938_CHUOT-BLUETOOTH-ZADEZ-avt.jpg', '[]', 1638765288, 1, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(92, 49, 'Chuột có dây Zadez M121', 'chuột-có-dây-zadez-m121', '100000.0000', '', 0, '637465757042545032_00716444-02.jpg', '[]', 1638765346, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(93, 49, 'Chuột game có dây Zadez GT616M', 'chuột-game-có-dây-zadez-gt616m', '650000.0000', 'Với 9 nút có thể lập trình, chuột game có dây Zadez GT616M sẽ hỗ trợ tối đa cho các game thủ trong việc thể hiện những kỹ năng của bản thân và chiến thắng các đối thủ trong mọi thể loại game, đặc biệt là các tựa game FPS đòi hỏi độ chính xác rất cao trong mỗi thao tác di và nhấn chuột.\r\n\r\nNgười dùng cũng có thể sử dụng phần mềm điều khiển của hãng để lưu tối đa 5 hỗ sơ cấu hình cá nhân để nhanh chóng chuyển đổi các phím chức năng phù hợp cho 5 game khác nhau.', 0, '637369027316723327_Zadez_GT616M-AVT.jpg', '[]', 1638765406, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(94, 49, 'Chuột game có dây Zadez GT615M', 'chuột-game-có-dây-zadez-gt615m', '550000.0000', 'Chuột game có dây Zadez GT615M được trang bị cảm biến PixArt PWN3325 cao cấp, cho phép các thao tác di/vẩy chuột trở nên chính xác hơn bao giờ hết. Kết hợp với mức DPI cao lên tới 10000, người dùng sẽ có thể di chuyển nhanh hơn trên màn hình với ít chuyển động chuột hơn. Điều đó thực sự rất có ích đối với các màn hình độ phân giải cao yêu cầu DPI độ nhạy cao để đạt được một chuyển động di chuột chính xác trên màn hình mà không cần tới các miếng lót chuột lớn.', 0, '637369025439625204_Zadez_GT615M-AVT.jpg', '[]', 1638765461, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(96, 62, 'Tai nghe Beats Studio Buds', 'tai-nghe-beats-studio-buds', '3999000.0000', 'Với Beats Studio Buds, bạn sẽ có được trải nghiệm âm nhạc đỉnh cao trên một chiếc tai nghe không dây gọn nhẹ. Sản phẩm sử dụng công nghệ chống ồn chủ động ANC mới nhất, có khả năng tương tác linh hoạt với mọi thiết bị Apple và Android. Không chỉ khoác lên mình vẻ đẹp tinh xảo, Beats Studio Buds còn đem lại trải nghiệm đeo thoải mái hơn bất cứ tai nghe nhét tai nào khác.', 0, '637654764645706321_apple-beats-studio-buds-dd.jpg', '[\"637630647136659324_tai-nghe-beats-studio-buds-den-1.jpg\",\"637630649333549215_tai-nghe-beats-studio-buds-trang-1.jpg\"]', 1638775602, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(97, 62, 'Tai nghe AirPods Pro', 'tai-nghe-airpods-pro', '5999000.0000', 'AirPods Pro sẽ đưa bạn chìm vào không gian âm nhạc sâu lắng và đem tới trải nghiệm giải trí ưu việt chưa từng có trên dòng tai nghe không dây Apple. Những nâng cấp mạnh mẽ về thiết kế và công nghệ giúp tai nghe AirPods Pro trở thành thiết bị nghe nhạc chuyên nghiệp thực thụ.', 500000, '637094271122983378_HASP-00629662-dd.jpg', '[]', 1638775706, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0');
INSERT INTO `product` (`id`, `catalog_id`, `name`, `slug`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `meta_desc`, `feature`) VALUES
(98, 62, 'Tai nghe AirPods 2 hộp sạc dây', 'tai-nghe-airpods-2-hộp-sạc-dây', '3999000.0000', 'Kế thừa toàn bộ tinh hoa của chiếc tai nghe AirPods đời đầu, tai nghe AirPods 2 được Apple bổ sung nhiều nâng cấp hiệu quả để gia tăng thời lượng pin cũng như tối ưu hóa âm thanh để trở thành một trong những mẫu tai nghe True Wireless có công nghệ tốt nhất.', 500000, '636924936322471575_pk-00564308-dd.jpg', '[]', 1638776095, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(100, 62, 'Tai nghe AirPods Max', 'tai-nghe-airpods-max', '13999000.0000', 'Là chiếc AirPods đầu tiên trong lịch sử Apple đi theo phong cách thiết kế over-ear chuyên dụng, AirPods Max đem tới sự cân bằng hoàn hảo giữa trải nghiệm âm thanh trung thực và tính tiện dụng đặc trưng của dòng tai nghe đến từ Táo khuyết.', 0, '637523738137561484_tai-nghe-airpods-max-dd-1.jpg', '[]', 1638776506, 0, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0'),
(101, 37, 'iPhone XR 64GB', 'iphone-xr-64gb', '12999000.0000', 'Chiếc iPhone với màn hình Liquid Retina hoàn toàn mới, công nghệ màn hình LCD tiên tiến nhất đi cùng Face ID nhanh hơn, con chip mạnh mẽ và hệ thống camera xóa phông hoàn hảo. Đó chính là iPhone XR với nhiều màu sắc tuyệt vời đang chờ đón bạn.', 500000, '637393169370716242_ip-xr-dd.jpg', '[\"637274707339798536_2_iPhoneXr-Red-PB-PF-US-EN-SCREEN.jpg\",\"637274707339808541_1iPhoneXr-Black-360_US-EN-SCREEN.jpg\"]', 1638777155, 2, '', '', '12 tháng', 0, 0, 0, 0, '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_name`, `image_link`, `link`, `info`, `sort_order`) VALUES
(6, 'Sony Alpha', '', 'image-slider1.jpg', '', 'Dolor sit amet, consecte, adipiscing', 1),
(7, 'Sony Alpha', '', 'image-slider2.jpg', '', 'Dolor sit amet, consecte, adipiscing', 2),
(9, 'Sony Alpha', '', 'image-slider3.jpg', '', 'Dolor sit amet, consecte, adipiscing', 3),
(10, 'Sony Alpha', '', 'image-slider4.jpg', '', 'Dolor sit amet, consecte, adipiscing', 4);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(255) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `gmail`, `skype`, `phone`, `sort_order`) VALUES
(1, 'CICI_GROUP', '', 'phuongvy012456@gmail.com', 'dinhvy000', '0827900044', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `product_id`, `product_name`, `image_link`, `qty`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `payment_info`, `message`, `security`, `created`) VALUES
(71, 32, 'Vivo-Y21s-4GB1GB-128GB', '637672549881930223_vivo-y21s-xanh-dd.jpg', 1, 0, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '5290000.0000', 'cash', '', 'thành thái', '', 1639408888),
(70, 29, 'Realme-C25y-4GB-128GB', '637717387178369946_realme-c25y-xanh-dd.jpg', 1, 2, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '4990000.0000', 'cash', '', 'thành thái', '', 1639408838),
(69, 30, 'Realme-C11-2021-2GB-32GB', '637571288205187101_realme-c11-2021-xanh-dd.jpg', 1, 0, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '2990000.0000', 'cash', '', 'thành thái', '', 1639408838),
(68, 22, 'Xiaomi-11T-Pro-12GB-256GB', 'xiaomi-11t-pro-blue-1-600x600.jpg', 1, 0, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '14999000.0000', 'cash', '', 'thành thái', '', 1639408838),
(67, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 1, 2, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '33990000.0000', 'cash', '', 'thành thái\r\n', '', 1639408813),
(65, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 1, 0, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '26999000.0000', 'cash', '', 'giao dùmnhes', '', 1639408750),
(66, 170, 'Laptop-Lenovo-IdeaPad-Slim-3-15ADA05-R5-3500U8GB512GB-SSD156HDWin-10', '637353563373216648_lenovo-ideapad-5-xamnhat-dd.jpg', 1, 0, 20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', '14499000.0000', 'cash', '', 'giao dùmnhes', '', 1639408750),
(72, 26, 'Xiaomi-Mi-10T-Pro-5G-8GB-128GB', 'xiaomi-mi-10t-pro-den-600x600.jpg', 40, 0, 0, 'sdfdsfdf', 'crtrunghau@gmail.com', '0382882573', '479600000.0000', 'paypal', '', 'fsdfdfdfdf', '', 1658142003),
(73, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 1, 0, 0, 'TrungHau', 'crtrunghau@gmail.comfdfd', 'fgfgfg', '26999000.0000', 'paypal', '', 'dfdf', '', 1658142065),
(74, 170, 'Laptop-Lenovo-IdeaPad-Slim-3-15ADA05-R5-3500U8GB512GB-SSD156HDWin-10', '637353563373216648_lenovo-ideapad-5-xamnhat-dd.jpg', 1, 0, 0, 'TrungHau', 'crtrunghau@gmail.com', '0382882573', '14499000.0000', 'paypal', '', 'fdfdf', '', 1658142173),
(75, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 1, 0, 0, 'TrungHau', 'crtrunghau@gmail.com', '0382882573', '26999000.0000', 'paypal', '', 'fdgdfgfgfg', '', 1658142377),
(76, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 1, 0, 0, 'le thi an binh', 'binh@gmail.com', '859400977', '26999000.0000', 'paypal', '', 'tphcm, từ t2 đến t6', '', 1658288240),
(77, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 1, 0, 0, 'le thi an binh', 'binh@gmail.com', '859400977', '26999000.0000', 'paypal', '', 'tphcm, từ t2 đến t6', '', 1658291180),
(78, 167, 'Laptop-Lenovo-Yoga-Slim-7-14ITL05-i7-1165G716GB512GB14FHDWin-11', 'lenovo-yoga-slim-7-4.jpg', 1, 0, 0, 'le thi an binh', 'binh@gmail.com', '859400977', '28199000.0000', 'paypal', '', 'tphcm, từ t2 đến t6', '', 1658316506),
(79, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 1, 0, 30, 'le thi an binh', 'lethianbinh@gmail.com', '0783181931', '26999000.0000', 'paypal', '', 'tphcm, từ thứ 2 đến thứ 6', '', 1658321156),
(80, 167, 'Laptop-Lenovo-Yoga-Slim-7-14ITL05-i7-1165G716GB512GB14FHDWin-11', 'lenovo-yoga-slim-7-4.jpg', 1, 2, 30, 'le thi an binh', 'lethianbinh@gmail.com', '0783181931', '28199000.0000', 'paypal', '', 'tphcm, từ t2 đến t6', '', 1658369125);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`) VALUES
(16, 'Hoàng văn Tuyền', 'tuyenht90@yahoo.com', '01686039488', '111111', '96e79218965eb72c92a549dd5a330112', 1405589118),
(19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '111', '96e79218965eb72c92a549dd5a330112', 0),
(20, 'Đinh Nguyễn Phương Vy', 'phuongvy012468@gmail.com', '0827900043', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1637760772),
(21, 'Đinh Nguyễn Phương Vy', '', '0827900043', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', '', 0),
(22, 'Đinh Nguyễn Phương Vy 1', 'phuongvy012467@gmail.com', '0827900042', 'Tòa Nhà VeroHomes, 7A/5/56 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1638071109),
(23, 'Lê Thị An Bình', 'lethianbinh03@gmail.com', '0827900044', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1639206747),
(24, 'Huỳnh Lưu Vĩnh Thuận', 'thuanhuynh123@gmail.com', '0827900049', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1639215121),
(25, 'Nguyen Van A', 'phuongvy012460@gmail.com', '0900394768', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1639234952),
(26, 'Đinh Nguyễn Phương Vy', 'phuongvy0124999@gmail.com', '0900394768', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, Hà Nội', 'e807f1fcf82d132f9bb018ca6738a19f', 1639236416),
(27, 'Đinh Nguyễn Phương Vy', 'phuongvy01245890@gmail.com', '0900394769', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1639276967),
(28, 'Đinh Nguyễn Phương Vy', 'phuongvy01246809@gmail.com', '0827900042', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, Hà Nội', 'e807f1fcf82d132f9bb018ca6738a19f', 1639279724),
(29, 'Đinh Nguyễn Phương Vy', 'phuongvy01245611@gmail.com', '0900394768', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', 'e807f1fcf82d132f9bb018ca6738a19f', 1639296420),
(30, 'le thi an binh', 'lethianbinh@gmail.com', '0783181931', 'tphcm', '147acc992f05da016e9c19ea826563d3', 1658321085),
(31, 'buyercici5', 'buyercici5@gmail.com', '0182716421', 'An Duong Vuong, quan 5, thanh pho Ho Chi Minh', 'buyergmail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(15) UNSIGNED NOT NULL,
  `product_id` int(255) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` int(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `product_name`, `image_link`, `price`, `created`) VALUES
(27, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638975163),
(26, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638975131),
(25, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638975042),
(24, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638974970),
(23, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638974950),
(22, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638974948),
(21, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638974917),
(20, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638974741),
(28, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638975164),
(29, 20, 166, 'Laptop-Lenovo-Gaming-Legion-5-R7-4800H16GB512GB156FHDGTX-1650Ti-4GBWin-10', 'Lenovo-Legion-5-amd-4000-13.jpg', 26999000, 1638975168),
(30, 20, 9, 'Tivi-LG-520', 'product13.jpg', 5400000, 1638975308),
(31, 20, 9, 'Tivi-LG-520', 'product13.jpg', 5400000, 1638975352),
(32, 20, 167, 'Laptop-Lenovo-Yoga-Slim-7-14ITL05-i7-1165G716GB512GB14FHDWin-11', 'lenovo-yoga-slim-7-4.jpg', 28199000, 1638975362),
(33, 20, 167, 'Laptop-Lenovo-Yoga-Slim-7-14ITL05-i7-1165G716GB512GB14FHDWin-11', 'lenovo-yoga-slim-7-4.jpg', 28199000, 1638975377),
(34, 20, 167, 'Laptop-Lenovo-Yoga-Slim-7-14ITL05-i7-1165G716GB512GB14FHDWin-11', 'lenovo-yoga-slim-7-4.jpg', 28199000, 1638975387),
(35, 20, 167, 'Laptop-Lenovo-Yoga-Slim-7-14ITL05-i7-1165G716GB512GB14FHDWin-11', 'lenovo-yoga-slim-7-4.jpg', 28199000, 1638975448),
(36, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975455),
(37, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975609),
(38, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975619),
(39, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975757),
(40, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975806),
(41, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975813),
(42, 20, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1638975845),
(43, 20, 164, 'Laptop-Acer-Aspire-3-A315-56-37DV-i3-1005G14GB256GB156', 'acer-aspire-a315-intel-1.jpg', 12199000, 1638975853),
(44, 20, 164, 'Laptop-Acer-Aspire-3-A315-56-37DV-i3-1005G14GB256GB156', 'acer-aspire-a315-intel-1.jpg', 12199000, 1638976166),
(45, 20, 164, 'Laptop-Acer-Aspire-3-A315-56-37DV-i3-1005G14GB256GB156', 'acer-aspire-a315-intel-1.jpg', 12199000, 1638976170),
(46, 20, 164, 'Laptop-Acer-Aspire-3-A315-56-37DV-i3-1005G14GB256GB156', 'acer-aspire-a315-intel-1.jpg', 12199000, 1638976174),
(47, 20, 164, 'Laptop-Acer-Aspire-3-A315-56-37DV-i3-1005G14GB256GB156', 'acer-aspire-a315-intel-1.jpg', 12199000, 1638976177),
(48, 20, 157, 'Laptop-Acer-Triton-Gaming-PT315-53-71DJ-i7-11800H16GB512GB-SSDRTX-3070-8GBWin10', 'Acer-Predator-Triton-300-PT315-fpt-5.jpg', 45999000, 1638976237),
(49, 0, 165, 'Laptop-Lenovo-ThinkPad-X1-Nano-i5-1130G716GB512GB132K-450N-SRGBWin-10', '637583154411540750_lenovo-thinpad-x1-nano-dd.jpg', 46499000, 1639148460),
(50, 0, 101, 'iPhone-XR-64GB', '637393169370716242_ip-xr-dd.jpg', 12499000, 1639216186),
(51, 0, 101, 'iPhone-XR-64GB', '637393169370716242_ip-xr-dd.jpg', 12499000, 1639216204),
(52, 0, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1639217339),
(53, 0, 19, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-1.jpg', 33990000, 1639217349),
(54, 20, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 26999000, 1639235127),
(55, 20, 171, 'Laptop-Lenovo-Gaming-3-15IHU6-i7-11370H-8GB512GBRTX-3050-4GBWin-10', 'Lenovo-Gaming-3-15IHU6-4.jpg', 26999000, 1639235129),
(56, 20, 170, 'Laptop-Lenovo-IdeaPad-Slim-3-15ADA05-R5-3500U8GB512GB-SSD156HDWin-10', '637353563373216648_lenovo-ideapad-5-xamnhat-dd.jpg', 14499000, 1639236624),
(57, 20, 66, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-11.jpg', 33990000, 1639277297),
(58, 20, 101, 'iPhone-XR-64GB', '637393169370716242_ip-xr-dd.jpg', 12499000, 1639279870),
(59, 20, 66, 'iPhone-13-Pro-Max-128GB', '637673213598401263_iphone-13-pro-max-dd-11.jpg', 33990000, 1639296623),
(60, 20, 170, 'Laptop-Lenovo-IdeaPad-Slim-3-15ADA05-R5-3500U8GB512GB-SSD156HDWin-10', '637353563373216648_lenovo-ideapad-5-xamnhat-dd.jpg', 14499000, 1639302628),
(61, 20, 21, 'iPhone-11-64GB', '637393169370871358_ip-11-dd.jpg', 16999000, 1639302633);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(128) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
