-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 11:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkfc`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `menu_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'ordered', '2023-03-12 22:37:22', '2023-03-12 22:38:03'),
(2, 2, 2, 'ordered', '2023-03-12 22:37:25', '2023-03-12 22:38:03'),
(3, 2, 3, 'ordered', '2023-03-12 22:37:28', '2023-03-12 22:38:03'),
(4, 2, 4, 'ordered', '2023-03-12 22:37:30', '2023-03-12 22:38:03'),
(5, 2, 5, 'ordered', '2023-03-12 22:37:32', '2023-03-12 22:38:03'),
(6, 2, 6, 'ordered', '2023-03-12 22:37:35', '2023-03-12 22:38:03'),
(7, 2, 7, 'ordered', '2023-03-12 22:37:39', '2023-03-12 22:38:03'),
(8, 2, 8, 'ordered', '2023-03-12 22:37:42', '2023-03-12 22:38:03'),
(9, 2, 9, 'ordered', '2023-03-12 22:37:44', '2023-03-12 22:38:03'),
(10, 2, 10, 'ordered', '2023-03-12 22:37:46', '2023-03-12 22:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `image_url`, `detail`, `price`, `created_at`, `updated_at`) VALUES
(1, 'ชิคแอนด์แชร์โคเรียนดั๊งวิงซ์ 5 ชิ้น', '05-14-40_menukfc01.png', 'โคเรียน', 109.00, '2023-03-12 22:14:40', '2023-03-12 22:14:40'),
(2, 'โคเรียนดั๊งวิงซ์ ปาร์ตี้', '05-15-21_menukfc02.png', 'โคเรียน', 299.00, '2023-03-12 22:15:21', '2023-03-12 22:15:21'),
(3, 'เดอะบอกซ์โคเรียนดั๊งวิงซ์', '05-16-33_menukfc03.png', 'โคเรียน', 169.00, '2023-03-12 22:16:33', '2023-03-12 22:16:33'),
(4, 'โคเรียนดั๊งวิงซ์ 2 ชิ้น', '05-17-32_menukfc04.png', 'โคเรียน', 49.00, '2023-03-12 22:17:32', '2023-03-12 22:17:32'),
(5, 'ชุดบักเก็ตฟอร์วันพร้อมเป๊ปซี่', '05-19-20_menukfc05.png', 'ชุดบักเก็ตฟอร์วัน', 109.00, '2023-03-12 22:19:20', '2023-03-12 22:19:20'),
(6, 'ชิคแอนด์แชร์ ไก่วิงซ์ซี้ด 5 ชิ้น', '05-20-16_menukfc06.png', 'ไก่วิงซ์ซี้ด', 99.00, '2023-03-12 22:20:16', '2023-03-12 22:20:16'),
(7, 'ไก่วิงซ์ซี้ด 2 ชิ้น', '05-21-55_menukfc07.png', 'ไก่วิงซ์ซี้ด', 45.00, '2023-03-12 22:21:24', '2023-03-12 22:21:55'),
(8, 'อิ่มสุขใจ', '05-23-14_menukfc08.png', 'อิ่มสุขใจ', 415.00, '2023-03-12 22:23:14', '2023-03-12 22:23:14'),
(9, 'เดอะบอกซ์ ไก่เทนเดอร์ สูตรผู้พัน', '05-24-07_menukfc09.png', 'เดอะบอกซ์', 159.00, '2023-03-12 22:24:07', '2023-03-12 22:24:07'),
(10, 'เดอะบอกซ์ซิคเนเจอร์', '05-25-04_menukfc10.png', 'เดอะบอกซ์', 159.00, '2023-03-12 22:25:04', '2023-03-12 22:25:04');

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
(4, '2023_03_01_205542_create_menus_table', 1),
(5, '2023_03_02_050157_create_carts_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, 1, '$2y$10$97qHsQ3k.6XHctlnbbWAReIR7VTxK21BvhrCtnCzcqpZa8FEiVg4i', NULL, '2023-03-12 22:13:06', '2023-03-12 22:13:06'),
(2, 'User', 'user@user.com', NULL, 0, '$2y$10$8AMUQ1.l2/X3aIdTK18hTudHDs2Ew7xHQFUrreQOTsF/tRsK2F3qe', NULL, '2023-03-12 22:13:06', '2023-03-12 22:13:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
