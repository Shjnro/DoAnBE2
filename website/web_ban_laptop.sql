-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 02, 2023 lúc 11:57 PM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_customer` int UNSIGNED DEFAULT NULL,
  `date_order` date NOT NULL,
  `total` int UNSIGNED NOT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(6, 6, '2020-12-11', 6000000, 'COD', 'Ok', '2020-12-11 08:00:21', '2020-12-11 08:00:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bill` int UNSIGNED DEFAULT NULL,
  `id_products` int UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_products`, `quantity`, `image`, `price`, `created_at`, `updated_at`) VALUES
(3, 6, 7, 1, NULL, 6000000, '2020-12-11 08:00:21', '2020-12-11 08:00:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `description`, `content`, `created_at`, `updated_at`) VALUES
(14, 'DELL', '1685745041.jpg', 'Thương hiệu của LaptopDell', '<p>Laptop dell</p>', '2020-12-18 08:14:57', '2023-06-02 15:30:41'),
(15, 'ASUS', '1685745343.jpg', 'Thương hiệu của Laptop Asus', '<p>Laptop Asus</p>', '2020-12-18 08:16:02', '2023-06-02 15:35:43'),
(16, 'ACER', '1685745329.jpg', 'Thương hiệu Laptop Acer', '<h2>Laptop Acer</h2>', '2020-12-18 08:16:37', '2023-06-02 15:35:29'),
(18, 'HP', '1685745666.jpg', 'Thương hiệu LaptopHP', '<h2>laptopHP</h2>', '2020-12-18 08:18:26', '2023-06-02 15:41:06'),
(19, 'Gigabyte', '1685745759.jpg', 'Thương hiệu Gigabyte', '<p>Laptop Gigabyte</p>', '2020-12-18 08:19:17', '2023-06-02 15:42:39'),
(20, 'MacBook', '1685745802.png', 'Thương hiệu MacBook', '<p>Laptop Macbook</p>', '2020-12-18 08:19:48', '2023-06-02 15:43:22'),
(21, 'MSI', '1685745880.jpg', 'Thương hiệu MSI', '<p>Laptop MSI</p>', '2023-06-02 15:44:40', '2023-06-02 15:44:40'),
(22, 'LENOVO', '1685745921.jpg', 'Thương hiệu Lenovo', '<p>laptop Lenovo</p>', '2023-06-02 15:45:21', '2023-06-02 15:45:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_com` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_id_com_foreign` (`id_com`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `content`, `id_com`, `created_at`, `updated_at`) VALUES
(5, 'Sam Sung', 'admin@gmail.com', 'Mắc Quá', 36, '2020-12-23 04:13:09', '2020-12-23 04:13:09'),
(6, 'Khanh1', 'kq909981@gmail.com', 'Mua 10 Cái Lun Quá Rẻ', 36, '2020-12-23 04:13:35', '2020-12-23 04:13:35'),
(7, 'Sam Sung Note 20', 'admin@example.com', 'Gà', 36, '2020-12-23 04:13:46', '2020-12-23 04:13:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(6, 'Nguyến Khánh', 'nam', 'admin@gmail.com', '65 Huỳnh Thúc KHáng', '0343754517', 'Ok', '2020-12-11 08:00:21', '2020-12-11 08:00:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_08_12_0003651_create_news_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_10_01_021229_add_level_status_to_users_table', 1),
(6, '2020_10_27_112720_create_category_table', 1),
(7, '2020_10_27_112722_create_products_table', 1),
(8, '2020_11_27_065826_comment_table', 1),
(9, '2020_11_28_124331_slider_table', 1),
(10, '2020_11_28_124450_customer_table', 1),
(11, '2020_11_28_124531_bill_table', 1),
(12, '2020_11_28_124601_bill_detail_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescription` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint NOT NULL DEFAULT '0',
  `status` tinyint DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `status`, `diachi`, `dienthoai`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sam Sung', '1234@gmail.com', NULL, '$2y$10$j1mf.J630g6bzsOzVSu1QeYH34WKbJOax9M/hfsN34OeG3whlpyDS', 0, 1, '65 Huỳnh Thúc Kháng', '09543577', NULL, '2020-12-10 21:32:47', '2020-12-10 21:32:47'),
(2, 'aaa', '12345@gmail.com', NULL, '$2y$10$olXvyZuMMv5j3LazNIpNHuYHLrwpQaeQpdzCnlO4OviXudMKp.6G2', 0, NULL, '65 Huỳnh Thúc Kháng', '2222222222222222', NULL, '2020-12-10 21:51:28', '2020-12-10 21:51:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL,
  `discount` int DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `baohanh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `new` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idcat` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_idcat_foreign` (`idcat`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `discount`, `description`, `baohanh`, `new`, `trangthai`, `content`, `created_at`, `updated_at`, `idcat`) VALUES
(35, 'Laptop Asus vivobook', '1685746218.jpg', 18900000, 0, '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-15x-oled-a1503za-i5-l1290w\" target=\"_blank\">Laptop Asus VivoBook 15X OLED A1503ZA i5 (L1290W)</a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=cao-cap-sang-trong\" target=\"_blank\">laptop cao cấp - sang trọng</a>&nbsp;kh&ocirc;ng chỉ giải quyết triệt để c&aacute;c t&aacute;c vụ học tập, văn ph&ograve;ng nhờ sức mạnh b&ugrave;ng nổ đến từ bộ vi xử l&yacute; Intel thế hệ 12 m&agrave; c&ograve;n mang đến kh&ocirc;ng gian giải tr&iacute; trọn vẹn khi sở hữu những th&ocirc;ng số m&agrave;n h&igrave;nh ấn tượng.&nbsp;</h3>', '24 Tháng', '1', 'Còn Hàng', '<p>CPU:\r\n\r\ni512500H2.5GHz\r\nRAM:\r\n\r\n8 GBDDR4 2 khe (1 khe 8 GB onboard + 1 khe trống)3200 MHz\r\nỔ cứng:\r\n\r\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác không giới hạn dung lượng)\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080) OLED\r\nCard màn hình:\r\n\r\nCard tích hợpIntel UHD\r\nCổng kết nối:\r\n\r\nUSB Type-CHDMIJack tai nghe 3.5 mm1 x USB 2.02 x USB 3.2\r\nĐặc biệt:\r\n\r\nCó đèn bàn phím\r\nHệ điều hành:\r\n\r\nWindows 11 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa\r\nKích thước, khối lượng:\r\n\r\nDài 356.8 mm - Rộng 227.6 mm - Dày 19.9 mm - Nặng 1.7 kg\r\nThời điểm ra mắt:\r\n\r\n2022 </p>', '2020-12-21 06:47:04', '2023-06-02 15:50:18', 14),
(36, 'Laptop gaming ASUS ROG Strix G16', '1685746601.jpg', 48000000, 11800000, '<h2>Laptop gaming ng&agrave;y nay được rất nhiều kh&aacute;ch h&agrave;ng lựa chọn nhằm phục vụ nhu cầu giải tr&iacute; cao với c&aacute;c tựa game cấu h&igrave;nh nặng m&agrave; những chiếc laptop văn ph&ograve;ng&nbsp;kh&ocirc;ng thể đ&aacute;p ứng được. ASUS ROG Strix G16 G614JV N4455W được ra đời nhằm mang đến những ph&uacute;t gi&acirc;y thăng hoa cho người d&ugrave;ng được thỏa sức đắm ch&igrave;m v&agrave;o c&aacute;c tựa game y&ecirc;u th&iacute;ch của họ.</h2>', '12 Tháng', '1', 'Còn Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-21 06:49:29', '2023-06-02 15:56:41', 15),
(37, 'Laptop gaming ASUS ROG Zephyrus Duo 16', '1685746805.png', 119000000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết sản phẩm laptop gaming ASUS ROG Zephyrus Duo 16 GX650RX LO156W</strong></h2>\r\n\r\n<p>Si&ecirc;u phẩm laptop gaming&nbsp;ASUS ROG Zephyrus Duo 16 GX650PZ NM031W như một l&agrave;n gi&oacute; mới m&agrave; mọi game thủ kh&ocirc;ng thể bỏ qua. N&acirc;ng tầm trải nghiệm một c&aacute;ch mới mẻ với thiết kế 2 m&agrave;n h&igrave;nh độc đ&aacute;o. Hiệu năng mạnh mẽ chấp nhận mọi th&aacute;ch thức từ bạn khi tham chiến&nbsp;game cấu h&igrave;nh cao. C&ugrave;ng GEARVN t&igrave;m hiểu về sản phẩm gaming ASUS ROG Zephyrus ngay nh&eacute;!</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>', '2020-12-21 06:52:26', '2023-06-02 16:00:05', 15),
(38, 'Laptop gaming ASUS TUF Gaming F15', '1685746952.jpg', 36490000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming ASUS TUF Gaming F15 FX507ZV4-LP041W</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">Laptop gaming</a>&nbsp;ASUS TUF Gaming F15 FX507ZV4-LP041W&nbsp;thể hiện sức mạnh qua con chip Intel Core i7 Gen12 đầy mạnh mẽ. Thiết kế thời thượng đậm chất gaming với một c&aacute;ch đầy tinh tế. Ho&agrave;n thiện từ ngoại h&igrave;nh đến cấu h&igrave;nh b&ecirc;n trong n&acirc;ng cấp trải nghiệm chơi game của mọi game thủ. Hứa hẹn&nbsp;<a href=\"https://gearvn.com/collections/laptop-asus-tuf-gaming-series\" target=\"_blank\">ASUS TUF</a>&nbsp;Gaming F15 sẽ l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thị trường laptop gaming năm 2023 n&agrave;y.&nbsp;</p>', '12 Tháng', '0', 'Còn Hàng', '<p></p>', '2020-12-21 06:53:27', '2023-06-02 16:02:32', 15),
(39, 'Laptop Gaming Acer Aspire 7', '1685747066.jpg', 15490000, 7000000, '<h3><strong>Laptop gaming tốt nhất ph&acirc;n kh&uacute;c</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/laptop-acer-aspire-7\">Acer Aspire 7</a>&nbsp;2020 A715 42G&nbsp;t&iacute;ch hợp card đồ họa NVIDIA GTX1650 4GB GDDR6, l&agrave; laptop chơi game tốt nhất ph&acirc;n kh&uacute;c. Kh&ocirc;ng chỉ vậy, phi&ecirc;n bản n&agrave;y c&ograve;n mang thiết kế mới gọn g&agrave;ng v&agrave; sexy hơn.</p>\r\n\r\n<p>Aspire 7 2020&nbsp;được trang bị hệ thống tản nhiệt mạnh mẽ bậc nhất trong ph&acirc;n kh&uacute;c, thừa hưởng c&ocirc;ng nghệ từ c&aacute;c d&ograve;ng m&aacute;y cao cấp hơn của Acer, c&ugrave;ng cấu h&igrave;nh đỉnh cao, gi&uacute;p cho người d&ugrave;ng c&oacute; thể vừa chơi game vừa l&agrave;m việc ở bất cứ l&uacute;c n&agrave;o.</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>', '2020-12-21 06:54:26', '2023-06-02 16:04:26', 16),
(40, 'Laptop Gaming Acer Nitro 5', '1685747191.png', 17990000, 97000000, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Acer Nitro 5 AN515-45 R6EV</strong></h2>\r\n\r\n<p>Acer vừa ra mắt phi&ecirc;n bản mới nhất của d&ograve;ng m&aacute;y&nbsp;gaming&nbsp;Nitro 5 -&nbsp;Nitro 5 AN515-45 R6EV&nbsp;được trang bị bộ vi xử l&yacute;&nbsp;<a href=\"https://gearvn.com/collections/cpu-amd-ryzen-gen3-am4\">AMD Ryzen</a>&nbsp;5 5600H, card đồ họa&nbsp;Geforce GTX 1650 4GB v&agrave; tốc độ l&agrave;m mới 144Hz cho hiệu năng xử l&iacute; mạnh mẽ c&ugrave;ng với hỗ trợ b&agrave;n ph&iacute;m RGB c&aacute; t&iacute;nh gi&uacute;p mang lại trải nghiệm chơi game tốt nhất.</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-21 06:55:36', '2023-06-02 16:06:31', 16),
(41, 'Laptop gaming Acer Nitro 5 Eagle', '1685747357.jpg', 19790000, 0, '<h3><strong>Cấu h&igrave;nh mạnh mẽ, vượt trội</strong></h3>\r\n\r\n<p>Với sự kết hợp từ CPU Core i5 -11400H v&agrave; GPU&nbsp;NVIDIA GeForce RTX&nbsp;3050, laptop&nbsp;Acer Nitro 5 Eagle AN515-57&nbsp;sẽ cho ch&uacute;ng ta hiệu năng tốt để xử l&yacute; c&aacute;c c&ocirc;ng việc&nbsp;đồ họa đơn giản tr&ecirc;n c&aacute;c phần mềm chuy&ecirc;n dụng, tốc độ xử l&yacute; th&ocirc;ng tin cũng tương đối nhanh v&agrave; mượt.&nbsp;</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;&nbsp;RAM 8 GB c&oacute; khả năng n&acirc;ng cấp tối đa l&ecirc;n đến 32 GB gi&uacute;p đa nhiệm tốt, thoải m&aacute;i sử dụng nhiều ứng dụng c&ugrave;ng l&uacute;c hay mở nhiều tab Chrome.</p>', '24 Tháng', '1', 'Còn Hàng', '<p></p>', '2020-12-21 06:56:41', '2023-06-02 16:09:17', 16),
(42, 'Laptop Acer Nitro 5 Tiger', '1685747455.jpg', 26490000, 22900000, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;laptop Acer Nitro 5 Tiger AN515 58 769J</strong></h2>\r\n\r\n<p>Nổi danh với những chiếc laptop gaming gi&aacute; rẻ, Acer Nitro 5 vẫn thật sự l&agrave; một trong những &ldquo;&ocirc;ng ho&agrave;ng&rdquo; ở ph&acirc;n kh&uacute;c của m&igrave;nh. V&agrave; với những th&agrave;nh phần ti&ecirc;n tiến nhất hiện nay, Acer Nitro 5 đ&atilde; sẵn s&agrave;ng khi trang bị cho m&igrave;nh một sức mạnh mới, vẻ ngo&agrave;i mới c&ugrave;ng sản phẩm&nbsp;<strong>Acer Nitro 5 Tiger AN515 58 769J</strong>. C&ugrave;ng GEARVN đi v&agrave;o một c&aacute;ch chi tiết hơn về chiếc laptop n&agrave;y nh&eacute; !</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>', '2020-12-21 06:58:15', '2023-06-02 16:10:55', 16),
(43, 'Laptop gaming ACER Predator Helios', '1685747559.jpg', 119990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming ACER Predator Helios 18 PH18 71 94SJ</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/collections/laptop-acer\" target=\"_blank\">Laptop&nbsp;</a><a href=\"https://gearvn.com/collections/laptop-acer\" target=\"_blank\">ACER</a>&nbsp;Predator Helios 18 PH18 71 94SJ l&agrave; một trong những d&ograve;ng&nbsp;<a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;mới nhất c&oacute; tr&ecirc;n thị trường, được trang bị cấu h&igrave;nh mạnh mẽ, thiết kế hầm hố, hiệu năng ấn tượng,...Nếu bạn đang t&igrave;m cho ri&ecirc;ng m&igrave;nh d&ograve;ng laptop gaming chất lượng c&acirc;n được mọi tựa game th&igrave;&nbsp;<a href=\"https://gearvn.com/collections/laptop-acer-predator-series\" target=\"_blank\">ACER Predator Helios</a>&nbsp;18&nbsp;sẽ l&agrave; sự lựa chọn bạn kh&ocirc;ng n&ecirc;n bỏ qua.</p>', '12 Tháng', '0', 'Còn Hàng', '<p></p>', '2020-12-21 07:00:37', '2023-06-02 16:12:39', 16),
(44, 'Laptop Gaming HP VICTUS 16', '1685747666.jpg', 24990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming HP VICTUS 16 E1106AX 7C0T1PA</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">Laptop gaming</a>&nbsp;HP VICTUS 16 E1106AX 7C0T1PA đ&atilde; vừa tr&igrave;nh l&agrave;ng c&ocirc;ng nghệ với một diện mạo ấn tượng c&ugrave;ng hiệu năng si&ecirc;u khủng. Tiếp nối sự th&agrave;nh c&ocirc;ng của d&ograve;ng Omen, HP đ&atilde; thổi một l&agrave;n gi&oacute; mới v&agrave;o d&ograve;ng laptop gaming VICTUS. Được trang bị CPU AMD Ryzen thế hệ mới, m&agrave;n h&igrave;nh Full HD ti&ecirc;u chuẩn v&agrave; card đồ họa mạnh. HP Victus 16 ch&iacute;nh l&agrave; item m&agrave; nhiều game thủ hay sinh vi&ecirc;n y&ecirc;u cầu laptop c&oacute; cấu h&igrave;nh mạnh nhưng mức gi&aacute; hợp l&yacute;.</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>\r\n\r\n<p>SSD 240</p>', '2020-12-21 07:01:30', '2023-06-02 16:14:26', 18),
(46, 'Laptop gaming Gigabyte G5 GE', '1685747798.jpg', 20990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Gigabyte G5 GE 51VN213SH</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/collections/laptop-gaming-gigabyte\" target=\"_blank\">GIGABYTE</a>, thương hiệu đi l&ecirc;n với những sản phẩm&nbsp;<a href=\"https://gearvn.com/pages/linh-kien-may-tinh\" target=\"_blank\">linh kiện m&aacute;y t&iacute;nh</a>&nbsp;chất lượng như&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\" target=\"_blank\">mainboard</a>,&nbsp;<a href=\"https://gearvn.com/collections/vga-card-man-hinh\" target=\"_blank\">VGA</a>,&nbsp;<a href=\"https://gearvn.com/collections/psu-nguon-may-tinh\" target=\"_blank\">nguồn m&aacute;y t&iacute;nh</a>,... Hướng đến thị trường gaming đang v&ocirc; c&ugrave;ng s&ocirc;i động, GIGABYTE c&ograve;n mang đến những chiếc laptop gaming chất lượng. V&agrave; h&ocirc;m nay ch&uacute;ng ta sẽ c&ugrave;ng t&igrave;m hiểu chiếc laptop với t&ecirc;n&nbsp;<strong>Gigabyte G5 GE 51VN213SH</strong></p>', '24 Tháng', '1', 'Còn Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-22 08:11:16', '2023-06-02 16:16:38', 19),
(47, 'Laptop gaming Gigabyte AORUS 17', '1685747877.jpg', 45990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Gigabyte AORUS 17 BKF 73VN254SH</strong></h2>\r\n\r\n<p>Một trong những si&ecirc;u phẩm&nbsp;<a href=\"http://gearvn.com/pages/laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;kh&ocirc;ng thể bỏ qua trong năm nay l&agrave;&nbsp;Gigabyte AORUS 17 BKF 73VN254SH. Trang bị bộ cấu h&igrave;nh khủng c&ugrave;ng ngoại h&igrave;nh si&ecirc;u cuốn h&uacute;t khiến c&aacute;c game thủ kh&ocirc;ng thể rời mắt. T&igrave;m hiểu về đ&aacute;nh gi&aacute; chiếc laptop Gigabyte n&agrave;y c&ugrave;ng GEARVN nh&eacute;!</p>', '24 Tháng', '1', 'Còn Hàng', '<p></p>', '2020-12-23 04:59:23', '2023-06-02 16:17:57', 19),
(48, 'Macbook Air M2', '1685748028.jpg', 25990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết sản phẩm Macbook Air M2 8GPU 8GB 256GB - Midnight</strong></h2>\r\n\r\n<p>Nh&agrave;&nbsp;<a href=\"https://gearvn.com/pages/apple\">Apple</a>&nbsp;vừa cho ra mắt sản phẩm Macbook Air M2 8GPU 8GB 256GB - Midnight nối tiếp sự th&agrave;nh c&ocirc;ng của Macbook Air M1 trước đ&oacute;. Sử dụng con chip M2 mạnh mẽ hơn sẵn s&agrave;ng đ&aacute;p ứng mọi y&ecirc;u cầu khắt nghiệt từ người d&ugrave;ng l&ecirc;n m&aacute;y.</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-23 05:01:55', '2023-06-02 16:20:28', 20),
(49, 'MacBook Pro 13 M2', '1685748104.jpg', 30990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;MacBook Pro 13 M2 10GPU 8GB 256GB Silver</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/collections/macbook-pro-m2\" target=\"_blank\">MacBook Pro M2</a>&nbsp;l&agrave; một trong những d&ograve;ng sản phẩm laptop văn ph&ograve;ng với thiết kế sang trọng v&agrave; v&ocirc; c&ugrave;ng mỏng nhẹ với hiệu năng đỉnh cao.&nbsp;MacBook Pro M2 256GB Silver phi&ecirc;n bản được n&acirc;ng cấp về thiết kế cũng như chip xử l&yacute; M2 gi&uacute;p người d&ugrave;ng c&oacute; thể cảm nhận thấy hiệu năng hoạt động xử l&yacute; c&ocirc;ng việc vượt trội,&nbsp;mức ti&ecirc;u thụ điện thấp,...</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-23 05:06:10', '2023-06-02 16:21:44', 20),
(50, 'Laptop gaming MSI GF63', '1685748196.jpg', 14990000, 0, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming MSI GF63 Thin 11SC 664VN</strong></h2>\r\n\r\n<p>MSI, một c&aacute;i t&ecirc;n kh&ocirc;ng c&ograve;n qu&aacute; xa lạ với game thủ ch&uacute;ng ta. Những sản phẩm từ nh&agrave; rồng chiếm trọn được sự y&ecirc;u th&iacute;ch của người d&ugrave;ng từ thiết kế đến gi&aacute; cả. V&agrave; nay, sẽ l&agrave; chiếc&nbsp;<a href=\"https://gearvn.com/pages/laptop-gaming\">laptop gaming</a>&nbsp;sở hữu những đặc điểm tr&ecirc;n với c&aacute;i t&ecirc;n MSI GF63 Thin 11SC 664VN. H&atilde;y c&ugrave;ng GEARVN t&igrave;m hiểu về chiếc&nbsp;<a href=\"https://gearvn.com/collections/laptop-gaming-gia-tu-20-den-25-trieu\">laptop gaming gi&aacute; rẻ</a>&nbsp;từ MSI sẽ được hội tụ những g&igrave; nh&eacute; !</p>', '12 Tháng', '0', 'Hết Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-23 05:08:21', '2023-06-02 16:23:16', 21),
(51, 'Laptop Gaming MSI Katana 15', '1685748271.jpg', 28990000, 34000000, '<p><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;Laptop Gaming MSI Katana 15 B13VEK 1205VN</strong></p>\r\n\r\n<p><a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">Laptop gaming</a>&nbsp;MSI Katana 15 B13VEK 1205VN&nbsp;đ&aacute;p ứng mọi nhu cầu chơi game của người d&ugrave;ng. Được sản xuất bởi h&atilde;ng MSI với phần trau chuốt kỹ lưỡng về thiết kế cũng như đầu tư từ những linh kiện h&agrave;ng đầu hứa hẹn một sản phẩm tuyệt vời cho c&aacute;c t&iacute;n đồ đam m&ecirc; game tham chiến c&ugrave;ng bạn b&egrave;.&nbsp;</p>', '24 Tháng', '0', 'Còn Hàng', '<p></p>\r\n\r\n<p></p>', '2020-12-23 05:13:41', '2023-06-02 16:24:31', 21),
(52, 'Laptop Lenovo Ideapad gaming 3', '1685748350.jpg', 20490000, 22000000, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Lenovo IdeaPad Gaming 3</strong></h2>\r\n\r\n<p>Laptop&nbsp;<a href=\"https://gearvn.com/collections/laptop-ideapad-gaming\" target=\"_blank\">Lenovo Ideapad gaming 3</a>&nbsp;15IAH7 82S90086VN l&agrave; một trong những&nbsp;<a href=\"http://gearvn.com/pages/laptop-gaming\" target=\"_blank\">laptop chơi game</a>&nbsp;thế hệ mới. G&acirc;y ấn tượng mạnh với d&ograve;ng&nbsp;<a href=\"https://gearvn.com/collections/laptop-cao-cap-mong-nhe\" target=\"_blank\">laptop mỏng nhẹ</a>, Lenovo lại một lần nữa khuấy đảo thị trường laptop gaming với Ideapad gaming 3. Ng&ocirc;n ngữ thiết kế đột ph&aacute;, hiệu năng ấn tượng ch&iacute;nh l&agrave; điểm thu h&uacute;t một khối lượng lớn người d&ugrave;ng.</p>', '24 Tháng', '0', 'Còn Hàng', '<p></p>', '2020-12-23 05:14:42', '2023-06-02 16:25:50', 22),
(53, 'Laptop gaming Lenovo Legion 5', '1685748497.jpg', 25990000, NULL, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Lenovo Legion 5 15ARH7 82RE0035VN</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/collections/laptop-gaming-lenovo\" target=\"_blank\">Lenovo Legion 5</a>&nbsp;l&agrave; một trong d&ograve;ng&nbsp;<a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;đ&igrave;nh đ&aacute;m của nh&agrave; Lenovo. Nếu bạn đang t&igrave;m kiếm một chiếc laptop vừa xử l&yacute; nhanh ch&oacute;ng c&aacute;c t&aacute;c vụ c&ocirc;ng việc hằng ng&agrave;y vừa chiến được mọi tựa game cực căng th&igrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua&nbsp;<strong>Lenovo Legion 5 15ARH7 82RE0035VN</strong>&nbsp;nh&eacute;. Với thiết kế bắt mắt v&agrave; hiệu năng si&ecirc;u khủng, Lenovo Legion 5 hứa hẹn g&acirc;y b&atilde;o cộng đồng game thủ thời gian sắp tới.</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>', '2023-06-02 16:27:43', '2023-06-02 16:28:17', 22),
(54, 'Laptop gaming Dell G15', '1685748629.jpg', 25990000, NULL, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Dell G15 5525 R5H085W11GR3050</strong></h2>\r\n\r\n<p><a href=\"http://gearvn.com/pages/laptop-gaming\" target=\"_blank\">Laptop gaming</a>&nbsp;Dell G15 5525 R5H085W11GR3050&nbsp;l&agrave; sản phẩm nằm trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://gearvn.com/collections/laptop-gaming-gia-tu-25-den-35-trieu\" target=\"_blank\">laptop gaming 25 đến&nbsp;30 triệu</a>&nbsp;v&agrave; l&agrave; thế hệ&nbsp;chơi game tiếp theo của Dell. Vốn nổi tiếng với những chiếc&nbsp;<a href=\"https://gearvn.com/pages/laptop-van-phong\" target=\"_blank\">laptop văn ph&ograve;ng</a>&nbsp;th&igrave; nay Dell mang đến cho game thủ một lựa chọn mới đầy t&iacute;nh năng, cấu h&igrave;nh mạnh mẽ v&agrave; đương đầu với v&ocirc; số tựa game dễ d&agrave;ng.&nbsp;Vậy Dell G15 5525 sẽ được trang bị những g&igrave;? H&atilde;y c&ugrave;ng&nbsp;<a href=\"https://gearvn.com/\" target=\"_blank\">GEARVN</a>&nbsp;t&igrave;m hiểu nh&eacute;!</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>', '2023-06-02 16:30:11', '2023-06-02 16:30:29', 14),
(55, 'Laptop gaming Dell Alienware M15', '1685748721.jpg', 44990000, NULL, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Dell Alienware M15 R6 P109F001CBL</strong></h2>\r\n\r\n<p>Một trong những d&ograve;ng&nbsp;<a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">laptop chơi game</a>&nbsp;cao cấp được y&ecirc;u th&iacute;ch nhất hiện nay với vẻ ngo&agrave;i đặc biệt c&ugrave;ng cấu h&igrave;nh mạnh mẽ, đ&acirc;y cũng l&agrave; đứa con của thương hiệu Dell nổi tiếng với d&ograve;ng&nbsp;<a href=\"https://gearvn.com/pages/laptop-van-phong\" target=\"_blank\">laptop văn ph&ograve;ng</a>, đ&oacute; ch&iacute;nh l&agrave; Alienware. H&ocirc;m nay GEARVN sẽ đem đến cho bạn chiếc laptop&nbsp;<strong>Dell Alienware M15 R6 P109F001CBL</strong>, h&atilde;y c&ugrave;ng xem &ldquo;người ngo&agrave;i h&agrave;nh tinh&rdquo; sẽ được trang bị những g&igrave; cho game thủ ch&uacute;ng ta nh&eacute;!</p>', '12 Tháng', '1', 'Còn Hàng', '<p></p>', '2023-06-02 16:31:34', '2023-06-02 16:32:01', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, '', 'slide-banner-trang-chu-1-cap-nhat.png\r\n\r\n\r\n\r\n', NULL, NULL),
(11, '', 'slider_5.png', NULL, NULL),
(10, '', 'banner3.png', NULL, NULL),
(9, '', 'slider_3.jpg\r\n', NULL, NULL),
(8, '', 'slider_2.jpg\r\n', NULL, NULL),
(12, '', 'slider_6.png', NULL, NULL),
(13, '', 'slider_7.png', NULL, NULL),
(14, '', 'Banner1.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint NOT NULL DEFAULT '0',
  `trangthai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `loaitaikhoan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `trangthai`, `loaitaikhoan`, `diachi`, `dienthoai`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$5l4qUUPTFgj0TdCl9WReJ.6igptAbI6pD.lTDedlBN.FdHGYYgunO', 0, 'active', 'user', 'Q7', '0852925296', NULL, NULL, NULL);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_com_foreign` FOREIGN KEY (`id_com`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_idcat_foreign` FOREIGN KEY (`idcat`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
