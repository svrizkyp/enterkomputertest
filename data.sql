-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 07:43 AM
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
-- Database: `enterkomputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_03_132842_create_printer_station', 1),
(6, '2024_08_03_133024_create_table', 1),
(7, '2024_08_03_133138_create_product_variant', 1),
(8, '2024_08_03_133204_create_product', 1),
(9, '2024_08_03_133523_create_variant', 1),
(10, '2024_08_03_133602_create_order', 1),
(11, '2024_08_03_133758_create_product_promo', 1),
(12, '2024_08_03_134402_create_order_detail', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `product_promo_id` int(20) NOT NULL,
  `product_promo_qty` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `table_id`, `total_price`, `product_promo_id`, `product_promo_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 20000, 0, 0, '2024-08-05 00:51:25', '2024-08-05 00:51:25'),
(2, 1, 20000, 0, 0, '2024-08-04 18:16:58', '2024-08-04 18:16:58'),
(3, 2, 25000, 0, 0, '2024-08-04 18:17:24', '2024-08-04 18:17:24'),
(4, 2, 25000, 0, 0, '2024-08-04 18:18:16', '2024-08-04 18:18:16'),
(5, 2, 25000, 0, 0, '2024-08-04 18:19:23', '2024-08-04 18:19:23'),
(6, 2, 25000, 0, 0, '2024-08-04 18:20:00', '2024-08-04 18:20:00'),
(7, 2, 25000, 0, 0, '2024-08-04 18:44:16', '2024-08-04 18:44:16'),
(8, 2, 25000, 0, 0, '2024-08-04 18:44:28', '2024-08-04 18:44:28'),
(9, 2, 25000, 0, 0, '2024-08-04 18:45:33', '2024-08-04 18:45:33'),
(10, 2, 25000, 0, 0, '2024-08-04 18:47:17', '2024-08-04 18:47:17'),
(11, 2, 25000, 0, 0, '2024-08-04 18:54:58', '2024-08-04 18:54:58'),
(12, 2, 25000, 0, 0, '2024-08-04 18:55:13', '2024-08-04 18:55:13'),
(13, 2, 25000, 0, 0, '2024-08-04 19:02:04', '2024-08-04 19:02:04'),
(14, 2, 25000, 0, 0, '2024-08-04 19:02:20', '2024-08-04 19:02:20'),
(15, 2, 25000, 0, 0, '2024-08-04 19:07:27', '2024-08-04 19:07:27'),
(16, 2, 25000, 0, 0, '2024-08-04 19:08:14', '2024-08-04 19:08:14'),
(17, 2, 25000, 0, 0, '2024-08-04 19:08:36', '2024-08-04 19:08:36'),
(18, 2, 25000, 0, 0, '2024-08-04 19:09:00', '2024-08-04 19:09:00'),
(19, 2, 25000, 0, 0, '2024-08-04 19:09:27', '2024-08-04 19:09:27'),
(20, 2, 25000, 0, 0, '2024-08-04 19:10:34', '2024-08-04 19:10:34'),
(21, 2, 25000, 0, 0, '2024-08-04 19:10:44', '2024-08-04 19:10:44'),
(22, 2, 25000, 0, 0, '2024-08-04 19:11:12', '2024-08-04 19:11:12'),
(23, 2, 25000, 0, 0, '2024-08-04 19:11:36', '2024-08-04 19:11:36'),
(24, 2, 25000, 0, 0, '2024-08-04 19:11:59', '2024-08-04 19:11:59'),
(25, 2, 25000, 0, 0, '2024-08-04 19:13:46', '2024-08-04 19:13:46'),
(26, 2, 25000, 0, 0, '2024-08-04 19:14:24', '2024-08-04 19:14:24'),
(27, 2, 25000, 0, 0, '2024-08-04 19:14:51', '2024-08-04 19:14:51'),
(28, 2, 25000, 0, 0, '2024-08-04 19:15:04', '2024-08-04 19:15:04'),
(29, 2, 25000, 0, 0, '2024-08-04 19:15:13', '2024-08-04 19:15:13'),
(30, 2, 25000, 0, 0, '2024-08-04 19:20:42', '2024-08-04 19:20:42'),
(31, 2, 25000, 0, 0, '2024-08-04 19:21:23', '2024-08-04 19:21:23'),
(32, 2, 25000, 0, 0, '2024-08-04 19:21:44', '2024-08-04 19:21:44'),
(33, 2, 25000, 0, 0, '2024-08-04 19:21:58', '2024-08-04 19:21:58'),
(34, 2, 25000, 0, 0, '2024-08-04 19:22:41', '2024-08-04 19:22:41'),
(35, 2, 25000, 0, 0, '2024-08-04 19:22:47', '2024-08-04 19:22:47'),
(36, 2, 25000, 0, 0, '2024-08-04 19:23:14', '2024-08-04 19:23:14'),
(37, 2, 25000, 0, 0, '2024-08-04 19:25:17', '2024-08-04 19:25:17'),
(38, 2, 25000, 0, 0, '2024-08-04 19:25:51', '2024-08-04 19:25:51'),
(39, 2, 25000, 0, 0, '2024-08-04 19:26:10', '2024-08-04 19:26:10'),
(40, 2, 25000, 0, 0, '2024-08-04 19:26:18', '2024-08-04 19:26:18'),
(41, 2, 25000, 0, 0, '2024-08-04 19:26:28', '2024-08-04 19:26:28'),
(42, 2, 25000, 0, 0, '2024-08-04 19:26:40', '2024-08-04 19:26:40'),
(43, 2, 25000, 0, 0, '2024-08-04 19:26:52', '2024-08-04 19:26:52'),
(44, 2, 25000, 0, 0, '2024-08-04 19:27:04', '2024-08-04 19:27:04'),
(45, 2, 25000, 0, 0, '2024-08-04 19:29:17', '2024-08-04 19:29:17'),
(46, 2, 25000, 0, 0, '2024-08-04 19:29:54', '2024-08-04 19:29:54'),
(47, 2, 25000, 0, 0, '2024-08-04 19:30:54', '2024-08-04 19:30:54'),
(48, 2, 25000, 0, 0, '2024-08-04 19:31:16', '2024-08-04 19:31:16'),
(49, 2, 25000, 0, 0, '2024-08-04 19:31:24', '2024-08-04 19:31:24'),
(50, 2, 25000, 0, 0, '2024-08-04 19:36:36', '2024-08-04 19:36:36'),
(51, 2, 25000, 0, 0, '2024-08-04 19:36:53', '2024-08-04 19:36:53'),
(52, 2, 25000, 0, 0, '2024-08-04 19:37:05', '2024-08-04 19:37:05'),
(53, 2, 25000, 0, 0, '2024-08-04 19:38:13', '2024-08-04 19:38:13'),
(54, 2, 25000, 0, 0, '2024-08-04 19:38:34', '2024-08-04 19:38:34'),
(55, 2, 25000, 0, 0, '2024-08-04 19:38:40', '2024-08-04 19:38:40'),
(56, 2, 25000, 0, 0, '2024-08-04 19:38:51', '2024-08-04 19:38:51'),
(57, 2, 25000, 0, 0, '2024-08-04 19:39:14', '2024-08-04 19:39:14'),
(58, 2, 25000, 0, 0, '2024-08-04 19:39:26', '2024-08-04 19:39:26'),
(59, 2, 25000, 0, 0, '2024-08-04 19:39:37', '2024-08-04 19:39:37'),
(60, 2, 25000, 0, 0, '2024-08-04 19:40:27', '2024-08-04 19:40:27'),
(61, 2, 25000, 0, 0, '2024-08-04 19:40:41', '2024-08-04 19:40:41'),
(62, 2, 25000, 0, 0, '2024-08-04 19:41:08', '2024-08-04 19:41:08'),
(63, 2, 25000, 0, 0, '2024-08-04 19:41:20', '2024-08-04 19:41:20'),
(64, 2, 25000, 0, 0, '2024-08-04 19:45:31', '2024-08-04 19:45:31'),
(65, 2, 25000, 0, 0, '2024-08-04 20:53:52', '2024-08-04 20:53:52'),
(66, 1, 95000, 1, 2, '2024-08-04 21:15:02', '2024-08-04 21:15:02'),
(67, 1, 95000, 1, 2, '2024-08-04 22:42:22', '2024-08-04 22:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_variant_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 20000, NULL, NULL),
(2, 1, 2, 0, 25000, NULL, NULL),
(3, 1, 1, 0, 20000, NULL, NULL),
(4, 1, 2, 0, 25000, NULL, NULL),
(5, 9, 1, 0, 20000, NULL, NULL),
(6, 9, 2, 0, 25000, NULL, NULL),
(7, 10, 1, 0, 20000, NULL, NULL),
(8, 10, 2, 0, 25000, NULL, NULL),
(9, 11, 1, 0, 20000, NULL, NULL),
(10, 11, 2, 0, 25000, NULL, NULL),
(11, 12, 1, 0, 20000, NULL, NULL),
(12, 12, 2, 0, 25000, NULL, NULL),
(13, 13, 1, 0, 20000, NULL, NULL),
(14, 13, 2, 0, 25000, NULL, NULL),
(15, 14, 1, 0, 20000, NULL, NULL),
(16, 14, 2, 0, 25000, NULL, NULL),
(17, 15, 1, 0, 20000, NULL, NULL),
(18, 15, 2, 0, 25000, NULL, NULL),
(19, 57, 1, 0, 20000, NULL, NULL),
(20, 57, 2, 0, 25000, NULL, NULL),
(21, 58, 1, 0, 20000, NULL, NULL),
(22, 58, 2, 0, 25000, NULL, NULL),
(23, 59, 8, 0, 20000, NULL, NULL),
(24, 59, 2, 0, 25000, NULL, NULL),
(25, 60, 8, 0, 20000, NULL, NULL),
(26, 60, 2, 0, 25000, NULL, NULL),
(27, 61, 1, 0, 20000, NULL, NULL),
(28, 61, 2, 0, 25000, NULL, NULL),
(29, 62, 8, 0, 20000, NULL, NULL),
(30, 62, 2, 0, 25000, NULL, NULL),
(31, 63, 8, 0, 20000, NULL, NULL),
(32, 63, 2, 0, 25000, NULL, NULL),
(33, 64, 8, 0, 20000, NULL, NULL),
(34, 64, 2, 0, 25000, NULL, NULL),
(35, 65, 8, 2, 40000, NULL, NULL),
(36, 65, 2, 2, 50000, NULL, NULL),
(37, 66, 1, 3, 36000, NULL, NULL),
(38, 66, 6, 1, 6000, NULL, NULL),
(39, 66, 10, 2, 30000, NULL, NULL),
(40, 66, 3, 1, 8000, NULL, NULL),
(41, 66, 8, 1, 15000, NULL, NULL),
(42, 67, 1, 3, 36000, NULL, NULL),
(43, 67, 6, 1, 6000, NULL, NULL),
(44, 67, 10, 2, 30000, NULL, NULL),
(45, 67, 3, 1, 8000, NULL, NULL),
(46, 67, 8, 1, 15000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printer_stations`
--

CREATE TABLE `printer_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printer_stations`
--

INSERT INTO `printer_stations` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Printer Kasir', '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(2, 'B', 'Printer Dapur (Makanan)', '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(3, 'C', 'Printer Bar (Minuman)', '2024-08-03 14:04:47', '2024-08-03 14:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Jeruk', 'minuman', '2024-08-03 13:59:01', '2024-08-02 17:00:00'),
(2, 'Teh', 'minuman', '2024-08-03 13:59:42', '2024-08-02 17:00:00'),
(3, 'Kopi', 'minuman', '2024-08-03 13:59:55', '2024-08-03 13:59:55'),
(4, 'Es Batu', 'minuman', '2024-08-03 13:59:55', '2024-08-03 13:59:55'),
(5, 'Mie', 'makanan', '2024-08-03 14:00:40', '2024-08-03 14:00:40'),
(6, 'Nasi Goreng', 'makanan', '2024-08-03 14:00:40', '2024-08-03 14:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_promos`
--

CREATE TABLE `product_promos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_variant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_promos`
--

INSERT INTO `product_promos` (`id`, `name`, `product_variant_id`, `promo_price`, `created_at`, `updated_at`) VALUES
(1, 'Promo NASI GORENG + JERUK DINGIN', '10,1', 4000, '2024-08-03 14:18:55', '2024-08-03 14:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 12000, '2024-08-03 14:04:02', '2024-08-03 14:04:02'),
(2, 1, 2, 10000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(3, 2, 3, 8000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(4, 2, 4, 5000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(5, 3, 1, 8000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(6, 3, 2, 6000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(7, 4, 7, 2000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(8, 5, 5, 15000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(9, 5, 6, 15000, '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(10, 6, 7, 15000, '2024-08-03 14:04:47', '2024-08-03 14:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Table 1', '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(2, 'Table 2', '2024-08-03 14:04:47', '2024-08-03 14:04:47'),
(3, 'Table 3', '2024-08-03 14:04:47', '2024-08-03 14:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dingin', '2024-08-03 14:02:56', '2024-08-03 14:02:56'),
(2, 'Panas', '2024-08-03 14:02:56', '2024-08-03 14:02:56'),
(3, 'Manis', '2024-08-03 14:02:56', '2024-08-03 14:02:56'),
(4, 'Tawar', '2024-08-03 14:02:56', '2024-08-03 14:02:56'),
(5, 'Goreng', '2024-08-03 14:02:56', '2024-08-03 14:02:56'),
(6, 'Kuah', '2024-08-03 14:02:56', '2024-08-03 14:02:56'),
(7, 'None', '2024-08-03 14:02:56', '2024-08-03 14:02:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `printer_stations`
--
ALTER TABLE `printer_stations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `printer_station_code_unique` (`code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_promos`
--
ALTER TABLE `product_promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printer_stations`
--
ALTER TABLE `printer_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_promos`
--
ALTER TABLE `product_promos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
