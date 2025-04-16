-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2025 at 07:44 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siera`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'asset_website/img/defaultLogo.png',
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_full` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `verification` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `company_id`, `role_id`, `name`, `email`, `image`, `mobile`, `intro`, `mobile_full`, `password`, `pwd`, `package_id`, `verification`, `code`, `status`, `logo`, `created_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, 'Mohamed Sabri Al ijla', 'm@gmail.com', NULL, '0597472790', NULL, NULL, '$2y$12$WWpQqLR7DGGLsW90Bev.6OwI.T/eTINcj1sBEe/Y7Vnq1wDOd42am', NULL, NULL, '0', '', 'active', NULL, 0, 'wSOYefSKP8LLUncfsLAR6CohEpkDOGOAQbzZLSiM2OYkd7gloPFV8wDWzuxU', NULL, '2025-01-05 08:16:56', NULL),
(30, 1, 6, 'salem slman', 'salem@gmail.com', 'asset_website/img/defaultLogo.png', '966555521144', NULL, NULL, '$2y$12$pCN0D9oyNzIfsKrS/hrwrecaQfCYXyZbwRIPTc0c43ozMY9X5.E9y', '123456', NULL, '0', NULL, 'active', 'uploads/admin/677bc63a1ef3a.png', 1, NULL, '2025-01-06 10:02:02', '2025-01-06 10:02:02', NULL),
(31, 1, 6, 'khaed slman', 'khaled@gmail.com', 'asset_website/img/defaultLogo.png', '966665421555', NULL, NULL, '$2y$12$g.QkogTi3zgVoE0e2H97gudUUovuZmhEosNsxDMW3NOUDhWyJTGgS', '123456', NULL, '0', NULL, 'active', 'uploads/admin/677bc6a1c2d6a.png', 1, NULL, '2025-01-06 10:03:45', '2025-01-06 10:03:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`email`, `token`, `created_at`) VALUES
('m@gmail.com', '$2y$10$1hT.tT7mwAOnTD/eNxeSqOXeyc6WWEk7ihSiWo37dLx8R4m.PCUi.', '2018-05-22 13:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 18, 'jdfbkjsdfjkd sdghlsdg \n isdgksdg dvad', '2025-02-05 09:44:02', '2025-02-05 09:44:02'),
(2, 18, 'asasf adfasg adgag afadgqe', '2025-02-05 09:46:19', '2025-02-05 09:46:19'),
(3, 18, 'asad aad adasgg', '2025-02-05 09:46:53', '2025-02-05 09:46:53'),
(4, 18, 'aasvasdb adgae', '2025-02-05 09:48:33', '2025-02-05 09:48:33'),
(5, 18, 'vdkasjadk', '2025-02-05 09:49:20', '2025-02-05 09:49:20'),
(6, 18, 'gjfjg uuoip', '2025-02-09 17:39:41', '2025-02-09 17:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `company_id`, `code`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '0012', 1, 'active', '2024-10-28 10:09:01', '2024-10-28 10:09:01', NULL),
(2, 1, 'asc', 1, 'active', '2024-10-28 10:31:34', '2024-10-28 11:01:01', '2024-10-28 11:01:01'),
(3, 1, '0013', 1, 'active', '2024-10-28 10:49:43', '2024-10-28 10:49:43', NULL),
(4, 1, '5645', 1, 'active', '2024-10-28 12:28:43', '2024-10-28 12:28:43', NULL),
(5, 1, '0047', 1, 'active', '2024-10-28 12:28:53', '2024-10-28 12:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_translations`
--

DROP TABLE IF EXISTS `department_translations`;
CREATE TABLE IF NOT EXISTS `department_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `department_translations`
--

INSERT INTO `department_translations` (`id`, `department_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Quality', 'Quality', '2024-10-28 10:09:01', '2024-10-28 10:09:01', NULL),
(2, 1, 'ar', 'الجودة', 'الجودة', '2024-10-28 10:09:01', '2024-10-28 10:09:01', NULL),
(3, 2, 'en', 'ascas', 'asv', '2024-10-28 10:31:34', '2024-10-28 10:31:34', NULL),
(4, 2, 'ar', 'ascsac', 'asvasv', '2024-10-28 10:31:34', '2024-10-28 10:31:34', NULL),
(5, 3, 'en', 'ascas', 'asv', '2024-10-28 10:49:43', '2024-10-28 10:49:43', NULL),
(6, 3, 'ar', 'ascsac', 'asvasv', '2024-10-28 10:49:43', '2024-10-28 10:49:43', NULL),
(7, 4, 'en', 'dfsdgsd', 'lklkl', '2024-10-28 12:28:43', '2024-10-28 12:28:43', NULL),
(8, 4, 'ar', 'hjlh', 'l;kj;k', '2024-10-28 12:28:43', '2024-10-28 12:28:43', NULL),
(9, 5, 'en', 'dfsdgsd', 'lklkl', '2024-10-28 12:28:53', '2024-10-28 12:28:53', NULL),
(10, 5, 'ar', 'hjlh', 'l;kj;k', '2024-10-28 12:28:53', '2024-10-28 12:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `position_id` int DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `position_id`, `code`, `first_name`, `middle_name`, `last_name`, `full_name`, `mobile`, `logo`, `id_number`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '5646', 'Mohamed', 'Sabri', 'Al ijla', 'Mohamed Sabri Al ijla', '966666666666', 'uploads/employee/6720c3a8cb48f.jpg', '56456456', 'active', 1, '2024-10-29 08:50:29', '2024-10-29 11:56:30', NULL),
(2, 1, 2, '0002', 'Document', '.', 'Controller', 'Document . Controller', '989864313321', 'uploads/employee/67502c9f8cf41.png', '665656566', 'active', 1, '2024-12-04 08:19:11', '2024-12-16 13:50:07', '2024-12-16 13:50:07'),
(3, 1, 5, '0003', 'Operation', '.', 'Manager', 'Operation . Manager', '0567315935', 'uploads/employee/6751dccd67c48.png', '5654556', 'active', 1, '2024-12-05 15:03:09', '2024-12-16 13:49:58', '2024-12-16 13:49:58'),
(4, 1, 4, '0004', 'Surveyor', '.', 'Surveyor', 'Surveyor . Surveyor', '45645646655', 'uploads/employee/675346379b01b.png', '5654557', 'active', 1, '2024-12-06 16:45:11', '2024-12-16 13:49:53', '2024-12-16 13:49:53'),
(5, 1, 1, '0005', 'Admin', '.', 'Admin', 'Admin . Admin', '4545454544', 'uploads/employee/6753489551a44.png', '45555', 'active', 1, '2024-12-06 16:55:01', '2024-12-16 13:50:15', '2024-12-16 13:50:15'),
(6, 1, 3, '0006', 'Site', '.', 'Engineer', 'Site . Engineer', '4511111111111', 'uploads/employee/67534a7c311f3.png', '4554455454', 'active', 1, '2024-12-06 17:03:24', '2024-12-16 13:49:39', '2024-12-16 13:49:39'),
(7, 1, 6, '0007', 'Planner', '.', 'Planner', 'Planner . Planner', '5445555454', 'uploads/employee/67535242132c4.png', '5645645556', 'active', 1, '2024-12-06 17:36:34', '2024-12-16 13:49:44', '2024-12-16 13:49:44'),
(8, 1, 2, '0002', 'abed', 'arhman', 'al 3nezy', 'abed arhman al 3nezy', '0567355935', 'uploads/employee/67606a7a45aa8.png', '5654557', 'active', 1, '2024-12-16 15:59:22', '2024-12-16 15:59:22', NULL),
(9, 1, 7, '0004', 'Suliman', 'Suliman', 'Suliman', 'Suliman Suliman Suliman', '0567344935', 'uploads/employee/67606b00f2109.png', '455465', 'active', 1, '2024-12-16 16:01:37', '2024-12-16 16:01:37', NULL),
(10, 1, 8, '0005', 'fahd', 'fahd', 'fahd', 'fahd fahd fahd', '0517315935', 'uploads/employee/67606c530947b.png', '5654556', 'active', 1, '2024-12-16 16:07:15', '2024-12-16 16:07:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
CREATE TABLE IF NOT EXISTS `employee_positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `position_id` int NOT NULL,
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee_positions`
--

INSERT INTO `employee_positions` (`id`, `company_id`, `employee_id`, `position_id`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 3, 'active', 1, '2024-10-29 11:45:15', '2024-10-29 11:50:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_categories`
--

DROP TABLE IF EXISTS `items_categories`;
CREATE TABLE IF NOT EXISTS `items_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `type_id` int NOT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `youtube_url` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_categories`
--

INSERT INTO `items_categories` (`id`, `company_id`, `category_id`, `type_id`, `home`, `youtube_url`, `logo`, `rate`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 0, NULL, NULL, NULL, 1, 'active', '2025-01-06 11:40:37', '2025-01-06 12:22:43', NULL),
(2, 1, NULL, 2, 0, NULL, NULL, NULL, 1, 'active', '2025-01-06 11:43:33', '2025-03-08 06:40:49', NULL),
(3, 1, NULL, 2, 1, NULL, NULL, NULL, 1, 'active', '2025-01-06 11:43:54', '2025-03-08 06:40:49', NULL),
(4, 1, NULL, 3, 0, NULL, NULL, NULL, 1, 'active', '2025-01-06 11:45:24', '2025-01-06 12:22:11', NULL),
(5, 1, NULL, 3, 0, NULL, NULL, NULL, 1, 'active', '2025-01-06 11:50:16', '2025-01-06 12:22:11', NULL),
(6, 1, NULL, 3, 0, NULL, NULL, NULL, 1, 'active', '2025-01-06 12:13:37', '2025-01-06 12:22:11', NULL),
(7, 1, 2, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 10:29:33', '2025-02-03 14:50:33', NULL),
(8, 1, 2, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 10:36:23', '2025-02-03 10:36:23', NULL),
(9, 1, 2, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:29:33', '2025-02-03 12:50:33', NULL),
(10, 1, 2, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(11, 1, 3, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(12, 1, 3, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(13, 1, 3, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(14, 1, 3, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(15, 1, 4, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(16, 1, 4, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(17, 1, 4, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(18, 1, 4, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(19, 1, 5, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(20, 1, 5, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(21, 1, 5, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(22, 1, 5, 22, 0, NULL, NULL, NULL, 1, 'active', '2025-02-03 08:36:23', '2025-02-03 08:36:23', NULL),
(23, 1, NULL, 2, 1, NULL, NULL, NULL, 1, 'active', '2025-02-07 18:27:54', '2025-03-08 06:40:49', NULL),
(24, 1, NULL, 2, 1, NULL, NULL, NULL, 1, 'active', '2025-02-07 18:28:35', '2025-03-08 06:40:49', NULL),
(25, 1, NULL, 2, 1, NULL, NULL, NULL, 1, 'active', '2025-02-08 14:43:54', '2025-03-08 06:40:49', NULL),
(26, 1, NULL, 23, NULL, 'https://www.youtube.com/watch?v=lof6aXpWXME', NULL, NULL, 1, 'active', '2025-03-08 07:13:37', '2025-03-08 07:24:25', NULL),
(27, 1, NULL, 23, NULL, 'https://www.youtube.com/watch?v=lof6aXpWXME', NULL, NULL, 1, 'active', '2025-03-08 07:14:20', '2025-03-08 07:24:17', NULL),
(28, 1, NULL, 23, NULL, 'https://www.youtube.com/watch?v=lof6aXpWXME', NULL, NULL, 1, 'active', '2025-03-08 07:14:50', '2025-03-08 07:24:09', NULL),
(29, 1, NULL, 24, 0, 'undefined', 'uploads/customer/67dda421b42d0.jpg', '4.5', 1, 'active', '2025-03-21 15:38:41', '2025-03-21 15:38:41', NULL),
(30, 1, NULL, 25, 0, 'undefined', 'uploads/customer/67dda7a66163c.png', NULL, 1, 'active', '2025-03-21 15:53:42', '2025-03-21 15:53:42', NULL),
(31, 1, NULL, 25, 0, 'undefined', 'uploads/customer/67dda7f260af3.png', NULL, 1, 'active', '2025-03-21 15:54:58', '2025-03-21 15:54:58', NULL),
(32, 1, NULL, 25, 0, 'undefined', 'uploads/customer/67dda8005c643.png', NULL, 1, 'active', '2025-03-21 15:55:12', '2025-03-21 15:55:12', NULL),
(33, 1, NULL, 25, 0, 'undefined', 'uploads/customer/67dda80d9d514.png', NULL, 1, 'active', '2025-03-21 15:55:25', '2025-03-21 15:55:25', NULL),
(34, 1, NULL, 25, 0, 'undefined', 'uploads/customer/67dda819e89e9.png', NULL, 1, 'active', '2025-03-21 15:55:37', '2025-03-21 15:55:37', NULL),
(35, 1, NULL, 24, 0, 'undefined', 'uploads/customer/67dda88f88fab.jpg', '5', 1, 'active', '2025-03-21 15:57:35', '2025-03-21 15:57:35', NULL),
(36, 1, NULL, 24, 0, 'undefined', 'uploads/customer/67dda8cb24a6b.jpg', '4', 1, 'active', '2025-03-21 15:58:35', '2025-03-21 15:58:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_categories_translations`
--

DROP TABLE IF EXISTS `items_categories_translations`;
CREATE TABLE IF NOT EXISTS `items_categories_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `items_categories_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `position` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `items_categories_translations`
--

INSERT INTO `items_categories_translations` (`id`, `items_categories_id`, `locale`, `name`, `description`, `position`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Visa', 'Visa', NULL, '2025-01-06 11:40:37', '2025-01-06 11:40:37', NULL),
(2, 1, 'ar', 'فيزا', 'فيزا', NULL, '2025-01-06 11:40:37', '2025-01-06 11:40:37', NULL),
(3, 2, 'en', 'Education', 'Education', NULL, '2025-01-06 11:43:33', '2025-01-06 11:43:33', NULL),
(4, 2, 'ar', 'تعليمي', 'تعليمي', NULL, '2025-01-06 11:43:33', '2025-01-06 11:43:33', NULL),
(5, 3, 'en', 'Mehani', 'Mehani', NULL, '2025-01-06 11:43:54', '2025-01-06 11:43:54', NULL),
(6, 3, 'ar', 'مهني', 'مهني', NULL, '2025-01-06 11:43:54', '2025-01-06 11:43:54', NULL),
(7, 4, 'en', 'culture', 'culture', NULL, '2025-01-06 11:45:24', '2025-01-06 11:45:24', NULL),
(8, 4, 'ar', 'ثقافة', 'ثقافة', NULL, '2025-01-06 11:45:24', '2025-01-06 11:45:24', NULL),
(9, 5, 'en', 'Social', 'Social', NULL, '2025-01-06 11:50:16', '2025-01-06 11:50:16', NULL),
(10, 5, 'ar', 'اجتماعي', 'اجتماعي', NULL, '2025-01-06 11:50:16', '2025-01-06 11:50:16', NULL),
(11, 6, 'en', 'Information Technology', 'Information Technology', NULL, '2025-01-06 12:13:37', '2025-01-06 12:13:37', NULL),
(12, 6, 'ar', 'تكنولوجيا المعلومات', 'تكنولوجيا المعلومات', NULL, '2025-01-06 12:13:37', '2025-01-06 12:13:37', NULL),
(13, 7, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 10:29:33', '2025-02-03 10:29:33', NULL),
(14, 7, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 10:29:33', '2025-02-03 10:29:33', NULL),
(15, 8, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 10:36:24', '2025-02-03 10:36:24', NULL),
(16, 8, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 10:36:24', '2025-02-03 10:36:24', NULL),
(17, 9, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(18, 9, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(19, 10, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(20, 10, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(21, 11, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(22, 11, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(23, 12, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(24, 12, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(25, 13, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(26, 13, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(27, 14, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(28, 14, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(29, 15, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(30, 15, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(31, 16, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(32, 16, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(33, 17, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(34, 17, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(35, 18, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(36, 18, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(37, 19, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(38, 19, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(39, 20, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(40, 20, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(41, 20, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(42, 20, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(43, 21, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(44, 21, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:36:24', '2025-02-03 08:36:24', NULL),
(45, 22, 'en', 'How does it work?', 'First, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words as per minute and your writing skills are sharp.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(46, 22, 'ar', 'كيف يعمل ؟', 'أولاً، إخلاء مسؤولية - إن عملية كتابة منشور مدونة بأكملها غالبًا ما تستغرق أكثر من بضع ساعات، حتى لو كان بإمكانك كتابة ثمانين كلمة في الدقيقة وكانت مهاراتك في الكتابة حادة.', NULL, '2025-02-03 08:29:33', '2025-02-03 08:29:33', NULL),
(47, 23, 'en', 'Marketing', 'Marketing & Report', NULL, '2025-02-07 18:27:54', '2025-02-07 18:27:54', NULL),
(48, 23, 'ar', 'Marketing', 'Marketing & Report', NULL, '2025-02-07 18:27:54', '2025-02-07 18:27:54', NULL),
(49, 24, 'en', 'Programming', 'Programming with AI', NULL, '2025-02-07 18:28:35', '2025-02-07 18:28:35', NULL),
(50, 24, 'ar', 'Programming', 'Programming with AI', NULL, '2025-02-07 18:28:35', '2025-02-07 18:28:35', NULL),
(51, 25, 'en', 'security', 'security & policy', NULL, '2025-02-08 14:43:54', '2025-02-08 14:43:54', NULL),
(52, 25, 'ar', 'security', 'security & policy', NULL, '2025-02-08 14:43:54', '2025-02-08 14:43:54', NULL),
(53, 26, 'en', 'Admin Panel - How To Started the Dashboard Tutorial', 'We’ve been focused on making a the from also not been afraid to and step away been focused create eye', NULL, '2025-03-08 07:13:37', '2025-03-08 07:13:37', NULL),
(54, 26, 'ar', 'Admin Panel - How To Started the Dashboard Tutorial', 'We’ve been focused on making a the from also not been afraid to and step away been focused create eye', NULL, '2025-03-08 07:13:37', '2025-03-08 07:13:37', NULL),
(55, 27, 'en', 'Admin Panel - How To Started the Dashboard Tutorial', 'We’ve been focused on making a the from also not been afraid to and step away been focused create eye', NULL, '2025-03-08 07:14:20', '2025-03-08 07:14:20', NULL),
(56, 27, 'ar', 'Admin Panel - How To Started the Dashboard Tutorial', 'We’ve been focused on making a the from also not been afraid to and step away been focused create eye', NULL, '2025-03-08 07:14:20', '2025-03-08 07:14:20', NULL),
(57, 28, 'en', 'Admin Panel - How To Started the Dashboard Tutorial', 'We’ve been focused on making a the from also not been afraid to and step away been focused create eye', NULL, '2025-03-08 07:14:50', '2025-03-08 07:14:50', NULL),
(58, 28, 'ar', 'Admin Panel - How To Started the Dashboard Tutorial', 'We’ve been focused on making a the from also not been afraid to and step away been focused create eye', NULL, '2025-03-08 07:14:50', '2025-03-08 07:14:50', NULL),
(59, 29, 'en', 'Abdallah Mussallem', 'صراحة الموقع سهل علي كثير أنشأت سيرتي الذاتية في دقايق وكانت جاهزة للتحميل بدون أي تعقيد', 'Bank employee', '2025-03-21 15:38:41', '2025-03-21 15:38:41', NULL),
(60, 29, 'ar', 'عبدالله المسلم', 'صراحة الموقع سهل علي كثير أنشأت سيرتي الذاتية في دقايق وكانت جاهزة للتحميل بدون أي تعقيد', 'موظف بنك', '2025-03-21 15:38:41', '2025-03-21 15:38:41', NULL),
(61, 30, 'en', 'first', 'undefined', 'undefined', '2025-03-21 15:53:42', '2025-03-21 15:53:42', NULL),
(62, 30, 'ar', 'first', 'undefined', 'undefined', '2025-03-21 15:53:42', '2025-03-21 15:53:42', NULL),
(63, 31, 'en', 'asf', 'undefined', 'undefined', '2025-03-21 15:54:58', '2025-03-21 15:54:58', NULL),
(64, 31, 'ar', 'afd', 'undefined', 'undefined', '2025-03-21 15:54:58', '2025-03-21 15:54:58', NULL),
(65, 32, 'en', 'ds', 'undefined', 'undefined', '2025-03-21 15:55:12', '2025-03-21 15:55:12', NULL),
(66, 32, 'ar', 'da', 'undefined', 'undefined', '2025-03-21 15:55:12', '2025-03-21 15:55:12', NULL),
(67, 33, 'en', 'v', 'undefined', 'undefined', '2025-03-21 15:55:25', '2025-03-21 15:55:25', NULL),
(68, 33, 'ar', 'adfg', 'undefined', 'undefined', '2025-03-21 15:55:25', '2025-03-21 15:55:25', NULL),
(69, 34, 'en', 'sdvd', 'undefined', 'undefined', '2025-03-21 15:55:37', '2025-03-21 15:55:37', NULL),
(70, 34, 'ar', 'sdg', 'undefined', 'undefined', '2025-03-21 15:55:37', '2025-03-21 15:55:37', NULL),
(71, 35, 'en', 'Abdallah Mussallem', 'Bank employee Bank employee Bank employee Bank employee Bank employee Bank employee', 'Bank employee', '2025-03-21 15:57:35', '2025-03-21 15:57:35', NULL),
(72, 35, 'ar', 'عبد الله مسلم', 'صراحة الموقع سهل علي كثير أنشأت سيرتي الذاتية في دقايق وكانت جاهزة للتحميل بدون أي', 'موظف بنك', '2025-03-21 15:57:35', '2025-03-21 15:57:35', NULL),
(73, 36, 'en', 'Abdallah Mussallem', 'Bank employee Bank employee Bank employee Bank employee Bank employee Bank employee', 'Bank employee', '2025-03-21 15:58:35', '2025-03-21 15:58:35', NULL),
(74, 36, 'ar', 'عبد الله مسلم', 'راحة الموقع سهل علي كثير أنشأت سيرتي الذاتية في دقايق وكانت جاهزة للتحميل بدون أي تعقيد', 'موظف بنك', '2025-03-21 15:58:35', '2025-03-21 15:58:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_models_resource_translations`
--

DROP TABLE IF EXISTS `items_models_resource_translations`;
CREATE TABLE IF NOT EXISTS `items_models_resource_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `items_models_resource_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `items_models_resource_translations`
--

INSERT INTO `items_models_resource_translations` (`id`, `items_models_resource_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'First Model Materials', 'First Model Materials', '2024-11-06 11:35:41', '2024-11-06 11:35:41', NULL),
(2, 1, 'ar', 'First Model Materials', 'First Model Materials', '2024-11-06 11:35:41', '2024-11-06 11:35:41', NULL),
(3, 2, 'en', 'Second Model Materials', 'Second Model Materials', '2024-11-07 07:19:35', '2024-11-07 07:19:35', NULL),
(4, 2, 'ar', 'Second Model Materials', 'Second Model Materials', '2024-11-07 07:19:35', '2024-11-07 07:19:35', NULL),
(5, 3, 'en', 'First Model Equipment', 'First Model Equipment', '2024-11-14 15:27:32', '2024-11-14 15:27:32', NULL),
(6, 3, 'ar', 'First Model Equipment', 'First Model Equipment', '2024-11-14 15:27:32', '2024-11-14 15:27:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_objects`
--

DROP TABLE IF EXISTS `items_objects`;
CREATE TABLE IF NOT EXISTS `items_objects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `type_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_objects`
--

INSERT INTO `items_objects` (`id`, `company_id`, `category_id`, `type_id`, `code`, `link`, `logo`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 8, '0001', 'https://keenthemes.com/metronic', 'uploads/objects/3/6722835191637.png', 1, 'active', '2024-10-30 16:50:02', '2024-10-31 07:58:42', NULL),
(2, 1, 2, 9, '0001', 'http://127.0.0.1:8000/ar', 'uploads/objects/2/672359b52dc9b.pdf', 1, 'active', '2024-10-31 08:19:23', '2024-10-31 08:19:33', NULL),
(3, 1, NULL, 11, '0001', 'null', NULL, 1, 'active', '2024-10-31 14:50:52', '2024-10-31 14:59:26', NULL),
(4, 1, NULL, 11, '0002', 'null', NULL, 1, 'active', '2024-10-31 15:00:00', '2024-10-31 15:00:07', NULL),
(5, 1, NULL, 10, '0001', 'null', NULL, 1, 'active', '2024-10-31 15:09:30', '2024-10-31 15:10:14', NULL),
(6, 1, NULL, 12, '0001', 'null', NULL, 1, 'active', '2024-10-31 15:13:47', '2024-10-31 15:13:53', NULL),
(7, 1, NULL, 13, '0001', 'null', NULL, 1, 'active', '2024-10-31 15:14:21', '2024-10-31 15:14:28', NULL),
(8, 1, 5, 8, '0002', NULL, 'uploads/objects/5/6723bcfe49286.docx', 1, 'active', '2024-10-31 15:23:10', '2024-10-31 15:27:41', '2024-10-31 15:27:41'),
(9, 1, 5, 8, '0002', NULL, NULL, 1, 'active', '2024-10-31 15:32:32', '2024-10-31 15:32:32', NULL),
(12, 1, NULL, 14, '0001', NULL, NULL, 1, 'active', '2024-11-05 14:05:11', '2024-11-05 14:05:11', NULL),
(13, 1, NULL, 14, '0002', NULL, NULL, 1, 'active', '2024-11-05 14:05:29', '2024-11-05 14:05:29', NULL),
(14, 1, NULL, 21, '0001', NULL, NULL, 1, 'active', '2024-11-19 06:59:19', '2024-11-19 06:59:19', NULL),
(15, 1, NULL, 21, '0002', NULL, NULL, 1, 'active', '2024-11-19 06:59:30', '2024-11-19 06:59:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_objects_translations`
--

DROP TABLE IF EXISTS `items_objects_translations`;
CREATE TABLE IF NOT EXISTS `items_objects_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `items_objects_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `items_objects_translations`
--

INSERT INTO `items_objects_translations` (`id`, `items_objects_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'First Standard Test', 'First Standard Test', '2024-10-30 16:50:02', '2024-10-30 16:50:02', NULL),
(2, 1, 'ar', 'First Standard Test', 'First Standard Test', '2024-10-30 16:50:02', '2024-10-30 16:50:02', NULL),
(3, 2, 'en', 'First Drawings Test', 'First Drawings Test', '2024-10-31 08:19:23', '2024-10-31 08:19:23', NULL),
(4, 2, 'ar', 'First Drawings Test', 'First Drawings Test', '2024-10-31 08:19:23', '2024-10-31 08:19:23', NULL),
(5, 3, 'en', 'First Manufacture', 'First Manufacture', '2024-10-31 14:50:52', '2024-10-31 14:59:26', NULL),
(6, 3, 'ar', 'First Manufacture', 'First Manufacture', '2024-10-31 14:50:52', '2024-10-31 14:59:26', NULL),
(7, 4, 'en', 'Second Manufacture', 'Second Manufacture', '2024-10-31 15:00:00', '2024-10-31 15:00:00', NULL),
(8, 4, 'ar', 'Second Manufacture', 'Second Manufacture', '2024-10-31 15:00:00', '2024-10-31 15:00:00', NULL),
(9, 5, 'en', 'First Unit Of Measurement', 'First Unit Of Measurement', '2024-10-31 15:09:30', '2024-10-31 15:09:30', NULL),
(10, 5, 'ar', 'First Unit Of Measurement', 'First Unit Of Measurement', '2024-10-31 15:09:30', '2024-10-31 15:09:30', NULL),
(11, 6, 'en', 'Saudi', 'Saudi', '2024-10-31 15:13:47', '2024-10-31 15:13:47', NULL),
(12, 6, 'ar', 'Saudi', 'Saudi', '2024-10-31 15:13:47', '2024-10-31 15:13:47', NULL),
(13, 7, 'en', 'First Zones', 'null', '2024-10-31 15:14:21', '2024-10-31 15:14:28', NULL),
(14, 7, 'ar', 'First Zones', 'null', '2024-10-31 15:14:21', '2024-10-31 15:14:28', NULL),
(15, 8, 'en', 'Second Standard', 'Second Standard', '2024-10-31 15:23:10', '2024-10-31 15:23:10', NULL),
(16, 8, 'ar', 'Second Standard', 'Second Standard', '2024-10-31 15:23:10', '2024-10-31 15:23:10', NULL),
(17, 9, 'en', 'Second Standard', 'Second Standard', '2024-10-31 15:32:32', '2024-10-31 15:32:54', NULL),
(18, 9, 'ar', 'Second Standard', 'Second Standard', '2024-10-31 15:32:32', '2024-10-31 15:32:54', NULL),
(19, 10, 'en', 'First Class Materials', 'First Class Materials', '2024-11-03 08:13:40', '2024-11-03 08:13:40', NULL),
(20, 10, 'ar', 'First Class Materials', 'First Class Materials', '2024-11-03 08:13:40', '2024-11-03 08:13:40', NULL),
(21, 11, 'en', 'adgad', 'adgadg', '2024-11-03 09:20:56', '2024-11-03 09:20:56', NULL),
(22, 11, 'ar', 'adadg', 'adgadgad', '2024-11-03 09:20:56', '2024-11-03 09:20:56', NULL),
(23, 12, 'en', 'First Vendor', 'First Vendor', '2024-11-05 14:05:11', '2024-11-05 14:05:11', NULL),
(24, 12, 'ar', 'First Vendor', 'First Vendor', '2024-11-05 14:05:11', '2024-11-05 14:05:11', NULL),
(25, 13, 'en', 'Second Vendor', 'Second Vendor', '2024-11-05 14:05:29', '2024-11-05 14:05:29', NULL),
(26, 13, 'ar', 'Second Vendor', 'Second Vendor', '2024-11-05 14:05:29', '2024-11-05 14:05:29', NULL),
(27, 14, 'en', 'GCC First Client', 'GCC First Client', '2024-11-19 06:59:19', '2024-11-19 06:59:19', NULL),
(28, 14, 'ar', 'GCC First Client', 'GCC First Client', '2024-11-19 06:59:19', '2024-11-19 06:59:19', NULL),
(29, 15, 'en', 'Out gcc Second Client', 'Out gcc Second Client', '2024-11-19 06:59:30', '2024-11-19 07:00:01', NULL),
(30, 15, 'ar', 'Out gcc Second Client', 'Out gcc Second Client', '2024-11-19 06:59:30', '2024-11-19 07:00:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_types`
--

DROP TABLE IF EXISTS `items_types`;
CREATE TABLE IF NOT EXISTS `items_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `object_data_master` int NOT NULL DEFAULT '0',
  `type_list` varchar(255) DEFAULT NULL,
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items_types`
--

INSERT INTO `items_types` (`id`, `name`, `category`, `object_data_master`, `type_list`, `status`, `created_at`, `updated_at`) VALUES
(1, 'payments', 0, 1, '[\"object\"]', 'active', '2024-10-29 16:55:56', NULL),
(2, 'category', 0, 1, '[\"object\"]', 'active', '2024-10-29 16:56:08', NULL),
(3, 'tag', 0, 1, '[\"object\"]', 'active', '2024-10-29 16:57:03', NULL),
(22, 'faq', 0, 1, '[\"object\"]', 'active', '2025-02-03 12:29:07', NULL),
(23, 'video', 0, 1, '[\"object\"]', 'active', '2025-03-08 08:49:29', NULL),
(24, 'customer', 0, 1, '[\"object\"]', 'active', '2025-03-21 16:58:50', NULL),
(25, 'company', 0, 1, '[\"object\"]', 'active', '2025-03-21 17:46:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

DROP TABLE IF EXISTS `job_history`;
CREATE TABLE IF NOT EXISTS `job_history` (
  `id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `employment_type` enum('full','part') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'full',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `flag` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `flag`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', '/assets/media/flags/united-states.svg', 'active', '2017-10-18 10:36:27', '0000-00-00 00:00:00', NULL),
(2, 'ar', '/assets/media/flags/saudi-arabia.svg', 'active', '2017-10-18 10:36:38', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_translations`
--

DROP TABLE IF EXISTS `language_translations`;
CREATE TABLE IF NOT EXISTS `language_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `language_translations`
--

INSERT INTO `language_translations` (`id`, `language_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'English', '2017-10-19 08:04:44', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'إنجليزي', '2017-10-19 08:04:44', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'Arabic', '2017-10-19 08:05:27', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'عربي', '2017-10-19 08:05:27', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_17_115455_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\Model\\Position', 1, '2024-12-08 16:31:05', NULL),
(28, 'App\\Model\\Position', 7, '2024-12-16 17:47:34', NULL),
(29, 'App\\Model\\Position', 8, '2024-12-16 17:48:06', NULL),
(31, 'App\\Model\\Position', 10, '2024-12-16 17:49:15', NULL),
(30, 'App\\Model\\Position', 9, '2024-12-16 17:48:45', NULL),
(23, 'App\\Model\\Position', 6, '2024-12-08 11:50:10', NULL),
(24, 'App\\Model\\Position', 5, '2024-12-08 12:09:37', NULL),
(26, 'App\\Model\\Position', 4, '2024-12-08 11:50:40', NULL),
(14, 'App\\Model\\Position', 3, '2024-12-08 11:50:58', NULL),
(27, 'App\\Model\\Position', 2, '2024-12-16 14:41:58', NULL),
(6, 'App\\Model\\Admin', 30, '2025-01-06 12:02:02', NULL),
(6, 'App\\Model\\Admin', 31, '2025-01-06 12:03:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image`, `view`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, NULL, 0, '2025-01-25 18:10:34', '2025-02-05 13:06:14', '2025-02-05 13:06:14'),
(4, NULL, 0, '2025-01-25 18:14:17', '2025-01-25 18:14:17', NULL),
(5, NULL, 0, '2025-01-25 18:44:18', '2025-01-25 18:50:26', '2025-01-25 18:50:26'),
(6, NULL, 0, '2025-01-26 07:54:32', '2025-01-26 08:01:03', '2025-01-26 08:01:03'),
(7, NULL, 0, '2025-01-26 07:57:14', '2025-01-26 07:57:22', '2025-01-26 07:57:22'),
(8, NULL, 0, '2025-01-26 07:58:07', '2025-01-26 08:00:58', '2025-01-26 08:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
CREATE TABLE IF NOT EXISTS `page_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `locale` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `key_words` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `slug`, `description`, `key_words`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'en', 'Terms', 'terms', '<p>scasvasv</p>', 'terms', '2025-01-25 18:10:34', '2025-01-25 18:10:34', NULL),
(2, 3, 'ar', 'Terms', 'terms', '<p>scasvsdvsd</p>', 'terms', '2025-01-25 18:10:34', '2025-01-25 18:10:34', NULL),
(3, 4, 'en', 'Policy', 'policy', '<p><strong>policy test</strong></p>', 'policy', '2025-01-25 18:14:17', '2025-01-27 12:39:24', NULL),
(4, 4, 'ar', 'Policy', 'policy', '<p>policy sdsdjkjhgjhgj_________________jhjhjjh</p>', 'policy', '2025-01-25 18:14:17', '2025-01-26 09:39:52', NULL),
(5, 5, 'en', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-25 18:44:18', '2025-01-25 18:44:18', NULL),
(6, 5, 'ar', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-25 18:44:18', '2025-01-25 18:44:18', NULL),
(7, 6, 'en', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-26 07:54:32', '2025-01-26 07:54:32', NULL),
(8, 6, 'ar', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-26 07:54:32', '2025-01-26 07:54:32', NULL),
(9, 7, 'en', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-26 07:57:14', '2025-01-26 07:57:14', NULL),
(10, 7, 'ar', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-26 07:57:14', '2025-01-26 07:57:14', NULL),
(11, 8, 'en', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-26 07:58:07', '2025-01-26 07:58:07', NULL),
(12, 8, 'ar', 'Policy', 'Policy', '<p>policy</p>', 'policy', '2025-01-26 07:58:07', '2025-01-26 07:58:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `descriptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `company_id`, `name`, `guard_name`, `display_name`, `parent_id`, `descriptions`, `admin`, `created_at`, `updated_at`) VALUES
(1, NULL, 'role', 'admin', 'ادوار النظام', NULL, NULL, 0, NULL, NULL),
(2, NULL, 'create-role', 'admin', 'اضافة', 1, NULL, 0, NULL, NULL),
(3, NULL, 'edit-role', 'admin', 'تعديل', 1, NULL, 0, NULL, NULL),
(4, NULL, 'delete-role', 'admin', 'حذف', 1, NULL, 0, NULL, NULL),
(5, NULL, 'change-role', 'admin', 'تغيير الحالة', 1, NULL, 0, NULL, NULL),
(12, NULL, 'admin', 'admin', 'مدراء اللوحة', NULL, NULL, 0, NULL, NULL),
(13, NULL, 'create-admin', 'admin', 'اضافة', 12, NULL, 0, NULL, NULL),
(14, NULL, 'edit-admin', 'admin', 'تعديل', 12, NULL, 0, NULL, NULL),
(15, NULL, 'delete-admin', 'admin', 'حذف', 12, NULL, 0, NULL, NULL),
(16, NULL, 'change-admin', 'admin', 'تغيير الحالة', 12, NULL, 0, NULL, NULL),
(17, NULL, 'settings', 'admin', 'الاعدادات العامة', NULL, NULL, 0, NULL, NULL),
(67, NULL, 'subadmin', 'admin', 'المستخدمين', NULL, NULL, 0, NULL, NULL),
(68, NULL, 'create-subadmin', 'admin', 'اضافة', 67, NULL, 0, NULL, NULL),
(71, NULL, 'change-subadmin', 'admin', 'تغيير الحالة', 67, NULL, 0, NULL, NULL),
(69, NULL, 'edit-subadmin', 'admin', 'تعديل', 67, NULL, 0, NULL, NULL),
(70, NULL, 'delete-subadmin', 'admin', 'حذف', 67, NULL, 0, NULL, NULL),
(52, NULL, 'department', 'admin', 'الأقسام', NULL, NULL, 0, NULL, NULL),
(53, NULL, 'create-department', 'admin', 'اضافة', 52, NULL, 0, NULL, NULL),
(54, NULL, 'edit-department', 'admin', 'تعديل', 52, NULL, 0, NULL, NULL),
(55, NULL, 'delete-department', 'admin', 'حذف', 52, NULL, 0, NULL, NULL),
(56, NULL, 'change-department', 'admin', 'تغيير الحالة', 52, NULL, 0, NULL, NULL),
(57, NULL, 'aspect', 'Admin', 'aspect', NULL, NULL, 0, NULL, NULL),
(58, NULL, 'create-aspect', 'admin', 'اضافة', 57, NULL, 0, NULL, NULL),
(59, NULL, 'edit-aspect', 'admin', 'تعديل', 57, NULL, 0, NULL, NULL),
(60, NULL, 'delete-aspect', 'admin', 'حذف', 57, NULL, 0, NULL, NULL),
(61, NULL, 'change-aspect', 'admin', 'تغيير الحالة', 57, NULL, 0, NULL, NULL),
(62, NULL, 'question', 'Admin', 'اسئلة', NULL, NULL, 0, NULL, NULL),
(63, NULL, 'create-question', 'admin', 'اضافة', 62, NULL, 0, NULL, NULL),
(64, NULL, 'edit-question', 'admin', 'تعديل', 62, NULL, 0, NULL, NULL),
(65, NULL, 'delete-question', 'admin', 'حذف', 62, NULL, 0, NULL, NULL),
(66, NULL, 'change-question', 'admin', 'تغيير الحالة', 62, NULL, 0, NULL, NULL),
(72, NULL, 'section', 'admin', 'سيكشن', NULL, NULL, 0, NULL, NULL),
(73, NULL, 'create-section', 'admin', 'اضافة', 72, NULL, 0, NULL, NULL),
(74, NULL, 'edit-section', 'admin', 'تعديل', 72, NULL, 0, NULL, NULL),
(75, NULL, 'delete-section', 'admin', 'حذف', 72, NULL, 0, NULL, NULL),
(76, NULL, 'change-section', 'admin', 'تغيير الحالة', 72, NULL, 0, NULL, NULL),
(77, NULL, 'position', 'admin', 'مسميات وظيفية', NULL, NULL, 0, NULL, NULL),
(78, NULL, 'create-position', 'admin', 'اضافة', 77, NULL, 0, NULL, NULL),
(79, NULL, 'edit-position', 'admin', 'تعديل', 77, NULL, 0, NULL, NULL),
(80, NULL, 'delete-position', 'admin', 'حذف', 77, NULL, 0, NULL, NULL),
(81, NULL, 'change-position', 'admin', 'تغيير حالة', 77, NULL, 0, NULL, NULL),
(82, NULL, 'employee', 'admin', 'الموظفين', NULL, NULL, 0, NULL, NULL),
(83, NULL, 'create-employee', 'admin', 'اضافة', 82, NULL, 0, NULL, NULL),
(84, NULL, 'edit-employee', 'admin', 'تعديل', 82, NULL, 0, NULL, NULL),
(85, NULL, 'delete-employee', 'admin', 'حذف', 82, NULL, 0, NULL, NULL),
(86, NULL, 'change-employee', 'admin', 'تغيير حالة', 82, NULL, 0, NULL, NULL),
(87, NULL, 'form', 'admin', 'Forms', NULL, NULL, 0, NULL, NULL),
(88, NULL, 'create-form', 'admin', 'اضافة', 87, NULL, 0, NULL, NULL),
(89, NULL, 'edit-form', 'admin', 'تعديل', 87, NULL, 0, NULL, NULL),
(90, NULL, 'delete-form', 'admin', 'حذف', 87, NULL, 0, NULL, NULL),
(91, NULL, 'change-form', 'admin', 'تغيير الحالة', 87, NULL, 0, NULL, NULL),
(92, NULL, 'appraisal', 'admin', 'appraisal', NULL, NULL, 0, NULL, NULL),
(93, NULL, 'create-appraisal', 'admin', 'اضافة', 92, NULL, 0, NULL, NULL),
(94, NULL, 'edit-appraisal', 'admin', 'تعديل', 92, NULL, 0, NULL, NULL),
(95, NULL, 'delete-appraisal', 'admin', 'حذف', 92, NULL, 0, NULL, NULL),
(96, NULL, 'change-appraisal', 'admin', 'تغيير الحالة', 92, NULL, 0, NULL, NULL),
(97, NULL, 'evaluate', 'admin', 'التقييم', NULL, NULL, 0, NULL, NULL),
(98, NULL, 'create-evaluate', 'admin', 'اضافة', 97, NULL, 0, NULL, NULL),
(99, NULL, 'edit-evaluate', 'admin', 'تعديل', 97, NULL, 0, NULL, NULL),
(100, NULL, 'delete-evaluate', 'admin', 'حذف', 97, NULL, 0, NULL, NULL),
(101, NULL, 'change-evaluate', 'admin', 'تغيير الحالة', 97, NULL, 0, NULL, NULL),
(102, NULL, 'year', 'admin', 'السنوات', NULL, NULL, 0, NULL, NULL),
(103, NULL, 'create-year', 'admin', 'اضافة', 102, NULL, 0, NULL, NULL),
(107, NULL, 'interval', 'admin', 'فترات التقييم', NULL, NULL, 0, NULL, NULL),
(105, NULL, 'delete-year', 'admin', 'حذف', 102, NULL, 0, NULL, NULL),
(108, NULL, 'create-interval', 'admin', 'اضافة', 107, NULL, 0, NULL, NULL),
(109, NULL, 'edit-interval', 'admin', 'تعديل', 107, NULL, 0, NULL, NULL),
(110, NULL, 'delete-interval', 'admin', 'حذف', 107, NULL, 0, NULL, NULL),
(111, NULL, 'change-interval', 'admin', 'تغيير الحالة', 107, NULL, 0, NULL, NULL),
(112, NULL, 'apprisal_years', 'admin', 'سنوات التقييم', 92, NULL, 0, NULL, NULL),
(113, NULL, 'apprisal_intervals', 'admin', 'فترات التقييم', 92, NULL, 0, NULL, NULL),
(114, NULL, 'resulte', 'admin', 'نتائج التقييم', NULL, NULL, 0, NULL, NULL),
(115, NULL, 'report', 'admin', 'التقارير', 114, NULL, 0, NULL, NULL),
(116, NULL, 'show-resulte', 'admin', 'مشاهدة اجوبة النموذج', 114, NULL, 0, NULL, NULL),
(117, NULL, 'change-subadmin-password', 'admin', 'تغيير الباسوورد', 67, NULL, 0, NULL, NULL),
(118, NULL, 'packages', 'admin', 'packages', NULL, NULL, 0, NULL, NULL),
(119, NULL, 'subscribe-packages', 'admin', 'subscribe', 1, NULL, 0, NULL, NULL),
(120, NULL, 'payment-packages', 'admin', 'payment packages', NULL, NULL, 0, NULL, NULL),
(121, NULL, 'subscribes', 'admin', 'subscribes', NULL, NULL, 0, NULL, NULL),
(122, NULL, 'show-subscribe', 'admin', 'Show Subscribes', 121, NULL, 0, NULL, NULL),
(123, NULL, 'training', 'admin', 'Training', NULL, NULL, 0, NULL, NULL),
(124, NULL, 'create-training', 'admin', 'Add', 123, NULL, 0, NULL, NULL),
(125, NULL, 'edit-training', 'admin', 'Edit', 123, NULL, 0, NULL, NULL),
(126, NULL, 'delete-training', 'admin', 'Delete', 123, NULL, 0, NULL, NULL),
(127, NULL, 'change-training', 'admin', 'Change Status', 123, NULL, 0, NULL, NULL),
(128, NULL, 'event', 'admin', 'أحداث', NULL, NULL, 0, NULL, NULL),
(129, NULL, 'create-event', 'admin', 'اضافة', 128, NULL, 0, NULL, NULL),
(130, NULL, 'edit-event', 'admin', 'تعديل', 128, NULL, 0, NULL, NULL),
(131, NULL, 'delete-event', 'admin', 'حذف', 128, NULL, 0, NULL, NULL),
(132, 1, 'change-event', 'user', 'تغيير الحالة', 128, 'zcs', 0, NULL, '2025-01-05 09:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '7e69355e240bef40e946c3b1f25af5b03b2acacc21dce66ade2611faee63f1a5', '[\"*\"]', NULL, NULL, '2024-10-20 13:36:16', '2024-10-20 13:36:16'),
(2, 'App\\Models\\User', 1, 'auth_token', '47a860535a44a45d762b487ede2e42cbc7b3065dd6aa6e87aa2d5794471f60ce', '[\"*\"]', NULL, NULL, '2024-10-20 13:41:35', '2024-10-20 13:41:35'),
(3, 'App\\Models\\User', 1, 'auth_token', 'd26441db198df76658342df2761af91440af4d493ce0e0b920c131664adb5826', '[\"*\"]', NULL, NULL, '2024-10-20 14:23:11', '2024-10-20 14:23:11'),
(4, 'App\\Models\\User', 1, 'auth_token', 'fc824f1546bf4edd7d91a63e0a46cad41e162675bdd213cd0df1c37698aa68a2', '[\"*\"]', NULL, NULL, '2024-10-20 14:27:49', '2024-10-20 14:27:49'),
(5, 'App\\Models\\User', 1, 'auth_token', 'fadcab371ca2977d8eaa8cf79dbe57f39acb4c16aab134afd0c08c870b42aa31', '[\"*\"]', NULL, NULL, '2024-10-20 14:32:25', '2024-10-20 14:32:25'),
(6, 'App\\Models\\User', 1, 'auth_token', '3469b3d44f0912693cd7141111fd38af7d257a26e781406314712cf7d17e7cb8', '[\"*\"]', NULL, NULL, '2024-10-20 14:35:02', '2024-10-20 14:35:02'),
(7, 'App\\Models\\User', 1, 'auth_token', '13103768350602af83392e2176aa499ea9975f12b559bd630e099bd91fbcd219', '[\"*\"]', NULL, NULL, '2024-10-20 14:36:07', '2024-10-20 14:36:07'),
(8, 'App\\Models\\User', 1, 'auth_token', '91519524998d90f8c70459041ef45062a3a23becfdf34d3adf183f8d48339e7d', '[\"*\"]', NULL, NULL, '2024-10-20 14:43:31', '2024-10-20 14:43:31'),
(9, 'App\\Models\\User', 1, 'auth_token', '9bd1f31deedfbdf8e90e6717f677106980720d42ae6b866b717f8acd851ab2e2', '[\"*\"]', NULL, NULL, '2024-10-20 14:46:00', '2024-10-20 14:46:00'),
(10, 'App\\Models\\User', 1, 'auth_token', '9a7588dfdb3e5fd366033af33c1eededf87f24b8000c38cd28ab9c6a24b73a20', '[\"*\"]', NULL, NULL, '2024-10-20 14:57:30', '2024-10-20 14:57:30'),
(11, 'App\\Models\\User', 1, 'auth_token', 'e7c6448d69158228bcce27d18b1a8fc0f4ade2d60816fc7ceb70edf89b8acef8', '[\"*\"]', NULL, NULL, '2024-10-20 14:58:11', '2024-10-20 14:58:11'),
(12, 'App\\Models\\User', 1, 'auth_token', '84e1109106cfe2788ec9886662ed5d64f84957d76868de1f4f4e73ba42681d68', '[\"*\"]', NULL, NULL, '2024-10-20 14:59:40', '2024-10-20 14:59:40'),
(13, 'App\\Models\\User', 1, 'auth_token', '75ba38f2843ea4293b916556f2af8d2efeab9a4497786340123d704ecd0a363a', '[\"*\"]', NULL, NULL, '2024-10-20 15:03:42', '2024-10-20 15:03:42'),
(14, 'App\\Models\\User', 1, 'auth_token', '9d279a04321548336fa7bc330a19adbdf8f07cf852aaa4488fc79f623fd7f5e2', '[\"*\"]', NULL, NULL, '2024-10-20 17:19:31', '2024-10-20 17:19:31'),
(15, 'App\\Models\\User', 1, 'auth_token', 'de1b8d1d5db6db226026c93c5eb34026c80a87b68af3edec562be764239bdac5', '[\"*\"]', NULL, NULL, '2024-10-20 17:55:35', '2024-10-20 17:55:35'),
(16, 'App\\Models\\User', 1, 'auth_token', '7a6b18826213d979b45e03501dbab10d11d3c2d6de4bd53808933a233f732c11', '[\"*\"]', NULL, NULL, '2024-10-20 17:57:43', '2024-10-20 17:57:43'),
(17, 'App\\Models\\User', 1, 'auth_token', '07c8a5e39af591b665d7084b1cec81c919158fbf1f29f8f48ab9b79867b74577', '[\"*\"]', NULL, NULL, '2024-10-20 17:58:38', '2024-10-20 17:58:38'),
(18, 'App\\Models\\User', 1, 'auth_token', '50565ea2d13ce90f88a016ea7691d80ffb908af7c45084edcfd6b0a2b9769bb9', '[\"*\"]', NULL, NULL, '2024-10-20 17:59:11', '2024-10-20 17:59:11'),
(19, 'App\\Models\\User', 1, 'auth_token', 'c1b8c83f6aa0f270ed648265393df3fd1482395843445daca91b7b58c6f0dbad', '[\"*\"]', NULL, NULL, '2024-10-20 17:59:45', '2024-10-20 17:59:45'),
(20, 'App\\Models\\User', 1, 'auth_token', 'd3574a12de93bcde8094148a48c2e2053be72126492df884756b91101f780e57', '[\"*\"]', NULL, NULL, '2024-10-20 17:59:57', '2024-10-20 17:59:57'),
(21, 'App\\Models\\User', 1, 'auth_token', 'dd548ca36264018cea97a557553291f28630f0ceae7c48d50d33c60f5d03692c', '[\"*\"]', NULL, NULL, '2024-10-20 18:03:04', '2024-10-20 18:03:04'),
(22, 'App\\Models\\User', 1, 'auth_token', '41ddf8a957bfb5c2beec401554f951b4c7f0cae54775ab07b3a9989b21fca227', '[\"*\"]', NULL, NULL, '2024-10-20 18:07:32', '2024-10-20 18:07:32'),
(23, 'App\\Models\\User', 1, 'auth_token', 'a91f7637b4bbef898bd185d7ae078c19bf15ad059d23f81f36c894a990366122', '[\"*\"]', NULL, NULL, '2024-10-20 18:32:01', '2024-10-20 18:32:01'),
(24, 'App\\Models\\User', 1, 'auth_token', '9cfa052753355e26504d8703e153bcd2bb30db15a0ea3438c839c1b303dfa2ca', '[\"*\"]', NULL, NULL, '2024-10-21 07:06:49', '2024-10-21 07:06:49'),
(25, 'App\\Models\\User', 1, 'auth_token', 'cf0bec8657ea01b527aac0057b47d5eb2fc0382b8e833544bf33837e002e81d7', '[\"*\"]', NULL, NULL, '2024-10-21 07:07:00', '2024-10-21 07:07:00'),
(26, 'App\\Models\\User', 1, 'auth_token', '0d80a6a7c0fe6562d4adcf70200829c695a440ada37329ada6043181927f26f9', '[\"*\"]', NULL, NULL, '2024-10-21 07:22:12', '2024-10-21 07:22:12'),
(27, 'App\\Models\\User', 1, 'auth_token', 'c1f858de333d75d35822f3b5088c5303205d687ac1e0b98fd47af5e253f99d75', '[\"*\"]', NULL, NULL, '2024-10-21 13:04:53', '2024-10-21 13:04:53'),
(28, 'App\\Models\\User', 1, 'auth_token', 'ec3af88ec27034fb178f89f6455d75413247376aec055d83dd9e88168dee3faf', '[\"*\"]', NULL, NULL, '2024-10-21 14:10:42', '2024-10-21 14:10:42'),
(29, 'App\\Models\\User', 1, 'auth_token', 'e8def3a3dac317776619615b831352d6010fe095d6ce67ca084bf806e540b9c4', '[\"*\"]', NULL, NULL, '2024-10-21 14:33:16', '2024-10-21 14:33:16'),
(30, 'App\\Models\\User', 1, 'auth_token', '27d6317bbef2673b538ef735eed245f8bb872e64bfa797b0afe2afab57304d36', '[\"*\"]', NULL, NULL, '2024-10-21 15:43:23', '2024-10-21 15:43:23'),
(31, 'App\\Models\\User', 1, 'auth_token', '62796c84dabd805df66fb4c8ef8f977381c483208bbfa0d1c28a53d0448805de', '[\"*\"]', NULL, NULL, '2024-10-22 06:04:02', '2024-10-22 06:04:02'),
(32, 'App\\Models\\User', 1, 'auth_token', 'f8b859df34b1cbbf7f91f3ca5f4eeb2339cbc2b488aca23bd7dc1912f03367c3', '[\"*\"]', NULL, NULL, '2024-10-22 10:24:51', '2024-10-22 10:24:51'),
(33, 'App\\Models\\User', 1, 'auth_token', '93c9dbbb556d16d489002a8247f9f56f25311bfa626d3609ad20cff7916e6bf1', '[\"*\"]', NULL, NULL, '2024-10-22 10:26:20', '2024-10-22 10:26:20'),
(34, 'App\\Models\\User', 1, 'auth_token', '68469483622e2857577afa324a5cc101919cb377cbb0b1280ab5e32da5a01acf', '[\"*\"]', NULL, NULL, '2024-10-22 10:27:35', '2024-10-22 10:27:35'),
(35, 'App\\Models\\User', 1, 'auth_token', '9e80045b76777fe54fc7fd706eb1943c6019d31a0c55561b92e222cd3dcc6f11', '[\"*\"]', NULL, NULL, '2024-10-22 10:50:32', '2024-10-22 10:50:32'),
(36, 'App\\Models\\User', 1, 'auth_token', '0c79dd19645ca27c85defc95ab2029a01997a19ea3b8b39deb8220b07713fbdd', '[\"*\"]', NULL, NULL, '2024-10-22 10:51:14', '2024-10-22 10:51:14'),
(37, 'App\\Models\\User', 1, 'auth_token', 'df23920b3a9c99c2bce9d1cdf9a19c0ee6412f46088028ddcfdfcc0d15c87c7b', '[\"*\"]', NULL, NULL, '2024-10-22 10:51:54', '2024-10-22 10:51:54'),
(38, 'App\\Models\\User', 1, 'auth_token', '3383c205346cc6b8a2cf156274fdfc69e77629aa757508247b5698a3a9b10ace', '[\"*\"]', NULL, NULL, '2024-10-22 11:04:20', '2024-10-22 11:04:20'),
(39, 'App\\Models\\User', 1, 'auth_token', 'd8490c011ac3c31ef564bcb8c2f597a9248397e0ba18bb2ae775c59728408896', '[\"*\"]', NULL, NULL, '2024-10-22 11:04:36', '2024-10-22 11:04:36'),
(40, 'App\\Models\\User', 1, 'auth_token', '507c3ee7ded26f95ffd7a325272bb84d678d9dbdba36b55d602b31783ab4ed95', '[\"*\"]', NULL, NULL, '2024-10-22 11:05:34', '2024-10-22 11:05:34'),
(41, 'App\\Models\\User', 1, 'auth_token', '3b9090e334796e5f9da5fa0fce254fde3bdf54f81edb066723d5dab1252740b7', '[\"*\"]', NULL, NULL, '2024-10-22 11:06:10', '2024-10-22 11:06:10'),
(42, 'App\\Models\\User', 1, 'auth_token', 'ff6a6f4b268ff7afd48cb096c0a330c658b5cca7560f580ae41ab520ae9fe30d', '[\"*\"]', NULL, NULL, '2024-10-22 11:06:55', '2024-10-22 11:06:55'),
(43, 'App\\Models\\User', 1, 'auth_token', '5fee402b6afe70b776cfc6ffc979026ded1d5e83f095792fe6009379d96c2913', '[\"*\"]', NULL, NULL, '2024-10-22 11:17:26', '2024-10-22 11:17:26'),
(44, 'App\\Models\\User', 1, 'auth_token', 'd19f2d128ebfcf63d4d9b5b1077e486cea1cc7ed19037a1e37a38637916e0740', '[\"*\"]', NULL, NULL, '2024-10-22 11:17:41', '2024-10-22 11:17:41'),
(45, 'App\\Models\\User', 1, 'auth_token', 'cee7d5b952c981b93feb038295add65fa7d9a6a0839a217d23b5493be7a9d3fc', '[\"*\"]', NULL, NULL, '2024-10-22 11:17:46', '2024-10-22 11:17:46'),
(46, 'App\\Models\\User', 1, 'auth_token', '3772c45a98740e52a39e34ecab5819c08a6b615e71089ee28dfc3ec6d0a09117', '[\"*\"]', NULL, NULL, '2024-10-23 13:54:43', '2024-10-23 13:54:43'),
(47, 'App\\Models\\User', 7, 'auth_token', 'd151da6bce77ee86661d5f9b78d002c56a9703b2ddf129abc65cc74050ea7b9e', '[\"*\"]', NULL, NULL, '2024-10-24 06:34:48', '2024-10-24 06:34:48'),
(48, 'App\\Models\\User', 7, 'auth_token', '61c285df00dc9c9328b2767351a2b6d0c06a1125c67e3da478c9d7f3c0c86653', '[\"*\"]', NULL, NULL, '2024-10-24 09:43:16', '2024-10-24 09:43:16'),
(49, 'App\\Models\\User', 1, 'auth_token', 'ef7ca9461ec46651eef59fb2f9fd6f3a904f761cc3872b47830a2e3bfa026bdc', '[\"*\"]', NULL, NULL, '2024-10-24 13:24:22', '2024-10-24 13:24:22'),
(50, 'App\\Models\\User', 1, 'auth_token', '95b568298382ba3c0ae2ced76c2f314589da194ab043628a9959d9cf20b05b3e', '[\"*\"]', NULL, NULL, '2024-10-25 07:36:32', '2024-10-25 07:36:32'),
(51, 'App\\Models\\User', 1, 'auth_token', '6cffc90f55fef1189be10f4aa25e71a1d25871e144681bcf3506a0cd34f5b60f', '[\"*\"]', NULL, NULL, '2024-10-25 09:03:28', '2024-10-25 09:03:28'),
(52, 'App\\Models\\User', 1, 'auth_token', 'b000dbbdab8b8f6e266c34844fcfcfb3696321295d0d0a1dbc4dd2010148c6a1', '[\"*\"]', NULL, NULL, '2024-10-25 14:53:58', '2024-10-25 14:53:58'),
(53, 'App\\Models\\User', 1, 'auth_token', 'b0736eefd46c20e8b22d6fca8bc9dc5c496ae0a376f7b103f3b88d7e5aee775e', '[\"*\"]', NULL, NULL, '2024-10-26 06:23:51', '2024-10-26 06:23:51'),
(54, 'App\\Models\\User', 1, 'auth_token', '9530271ad7d2f1b5e3526080227c27210b355af95d8b636a2084dd34c575d084', '[\"*\"]', NULL, NULL, '2024-10-26 11:19:12', '2024-10-26 11:19:12'),
(55, 'App\\Models\\User', 1, 'auth_token', 'c09c08628948028eb397f300d8f2024f89d05ee3bac256d91b4bcffff689caed', '[\"*\"]', NULL, NULL, '2024-10-26 11:19:25', '2024-10-26 11:19:25'),
(56, 'App\\Models\\User', 1, 'auth_token', '4ef46dd453ca6ecaf2384ac66739b7fa65e6ce62bae1c4f69b3a1ed89e02c2e9', '[\"*\"]', NULL, NULL, '2024-10-26 11:22:10', '2024-10-26 11:22:10'),
(57, 'App\\Models\\User', 1, 'auth_token', 'a9748187ee15dab3e30330b9f441ff2e1e8facca3a5cbdd667869dcf6df5d0de', '[\"*\"]', NULL, NULL, '2024-10-26 14:02:22', '2024-10-26 14:02:22'),
(58, 'App\\Models\\User', 1, 'auth_token', 'bdb0d77092402050f7ec345810729a02967a09201b111e95718209b4b9932bd6', '[\"*\"]', NULL, NULL, '2024-10-27 09:27:44', '2024-10-27 09:27:44'),
(59, 'App\\Models\\User', 1, 'auth_token', 'c796d5a1f5c5cddb6048a4b70a966b022f9a7fcc66336022ca60227a8fcdd8b9', '[\"*\"]', NULL, NULL, '2024-10-27 14:43:03', '2024-10-27 14:43:03'),
(60, 'App\\Models\\User', 1, 'auth_token', '8497e3241c48c0e2a2e56ae7a5f7a344dc83f0bbefba2ab8c8fd2ca7db7949d3', '[\"*\"]', NULL, NULL, '2024-10-28 09:50:03', '2024-10-28 09:50:03'),
(61, 'App\\Models\\User', 1, 'auth_token', '2971d1684960a6e36a295839d4109fcf11c64f11ada87d9403cc56c5d3b71cb5', '[\"*\"]', NULL, NULL, '2024-10-29 05:35:57', '2024-10-29 05:35:57'),
(62, 'App\\Models\\User', 1, 'auth_token', 'cd41c8dfc05aa8552f166e085f55ef84f133e3b06262fe7c5598e624b67b6a87', '[\"*\"]', NULL, NULL, '2024-10-29 15:40:54', '2024-10-29 15:40:54'),
(63, 'App\\Models\\User', 1, 'auth_token', 'faca6c772266dd88304da5e156cc52080ba87de98d47c72e970ee7872b60644a', '[\"*\"]', NULL, NULL, '2024-10-30 09:32:59', '2024-10-30 09:32:59'),
(64, 'App\\Models\\User', 1, 'auth_token', '5b64148e4a4fbf9d81ce5b134d4a6f5334fd5a4c2307d1a98add19352c571030', '[\"*\"]', NULL, NULL, '2024-10-30 14:01:28', '2024-10-30 14:01:28'),
(65, 'App\\Models\\User', 1, 'auth_token', 'faac6f51160c5ed0b24039094a04cd4e1f5a34252d03f54d7578dc221ffcf1bb', '[\"*\"]', NULL, NULL, '2024-10-31 07:52:29', '2024-10-31 07:52:29'),
(66, 'App\\Models\\User', 1, 'auth_token', '2322250e31791759c1908763539491bdb13421d5654427e0ebcff44281a7f64d', '[\"*\"]', NULL, NULL, '2024-10-31 14:10:49', '2024-10-31 14:10:49'),
(67, 'App\\Models\\User', 1, 'auth_token', 'faa12c6c5c2b52f062249028c586db965b2e54ce6638facec0bf8d47455435a4', '[\"*\"]', NULL, NULL, '2024-11-02 15:45:09', '2024-11-02 15:45:09'),
(68, 'App\\Models\\User', 1, 'auth_token', 'eb824585d3d09749d251579bd00ec2408d8c22d4a04752f77a983187d168837d', '[\"*\"]', NULL, NULL, '2024-11-03 05:24:36', '2024-11-03 05:24:36'),
(69, 'App\\Models\\User', 1, 'auth_token', '02ea2b43ff3c4af7d83c02871242d28fff8521bcde43fe1cd53a6ec28f051a11', '[\"*\"]', NULL, NULL, '2024-11-03 07:17:24', '2024-11-03 07:17:24'),
(70, 'App\\Models\\User', 1, 'auth_token', '30a62db25eedf1e097081e1eed272af704122cd2d6c9208d5cdff35337bc220b', '[\"*\"]', NULL, NULL, '2024-11-03 16:20:16', '2024-11-03 16:20:16'),
(71, 'App\\Models\\User', 1, 'auth_token', '20fdd5d0135acceb77af4119540bba87c8a21d5a1e69d0a4215ed652fe38cc95', '[\"*\"]', NULL, NULL, '2024-11-04 16:02:13', '2024-11-04 16:02:13'),
(72, 'App\\Models\\User', 1, 'auth_token', 'c0e16bf2ee35ae862c87db343a50bedcc14dd53cf21d61b50872b0fe14a962ca', '[\"*\"]', NULL, NULL, '2024-11-04 17:22:05', '2024-11-04 17:22:05'),
(73, 'App\\Models\\User', 1, 'auth_token', 'ea706ae953875f82e38758792f6652d3894fd0b86c4b53a91f3fb1660051634a', '[\"*\"]', NULL, NULL, '2024-11-05 13:21:56', '2024-11-05 13:21:56'),
(74, 'App\\Models\\User', 1, 'auth_token', 'e88744f377b6150cfaa3fc50f9cb44bfc2407eaf6a9de6f1fb2fc766320c079d', '[\"*\"]', NULL, NULL, '2024-11-05 13:22:41', '2024-11-05 13:22:41'),
(75, 'App\\Models\\User', 1, 'auth_token', '69ddfd6312cbfc3437e0a96bf905cdefbb2174c36c5c62dfb3b4ef71884a2447', '[\"*\"]', NULL, NULL, '2024-11-05 13:23:43', '2024-11-05 13:23:43'),
(76, 'App\\Models\\User', 1, 'auth_token', 'ecec0d2eba31f6037f66328201ad01083a47f0a81f4468c2ceb4c21caa83035f', '[\"*\"]', NULL, NULL, '2024-11-05 13:26:53', '2024-11-05 13:26:53'),
(77, 'App\\Models\\User', 1, 'auth_token', '2796bd6e4042fe05ae0f48cae3fc6d60d18b37f508a738060e4de7452873c285', '[\"*\"]', NULL, NULL, '2024-11-06 10:00:06', '2024-11-06 10:00:06'),
(78, 'App\\Models\\User', 1, 'auth_token', 'b12a7dcda99b8d272f5599f64e18766ceb7b657a697c6357a31352d7772d22d8', '[\"*\"]', NULL, NULL, '2024-11-06 16:43:24', '2024-11-06 16:43:24'),
(79, 'App\\Models\\User', 1, 'auth_token', 'b356057b902e1e42fb1c3929ff03c9260b3ee26280e6fb2c6f6c404c8955f2ad', '[\"*\"]', NULL, NULL, '2024-11-07 06:50:36', '2024-11-07 06:50:36'),
(80, 'App\\Models\\User', 1, 'auth_token', 'f98a96ad37432ff688ceddd235b830ad2f86c0b9d03d3df9cc6a93ccbed7cbb1', '[\"*\"]', NULL, NULL, '2024-11-14 11:35:09', '2024-11-14 11:35:09'),
(81, 'App\\Models\\User', 1, 'auth_token', '8f50f3ec64b812164dcd80ded5b92afbdf58e5d93e541c7f9ed3beb90ed8a85f', '[\"*\"]', NULL, NULL, '2024-11-15 14:04:27', '2024-11-15 14:04:27'),
(82, 'App\\Models\\User', 1, 'auth_token', '47548c63f6011040ffffb25c035617cf83cbcc41b096274ddf53914179a93bc1', '[\"*\"]', NULL, NULL, '2024-11-16 14:28:55', '2024-11-16 14:28:55'),
(83, 'App\\Models\\User', 1, 'auth_token', '8397b2e9f1051e108541753795fb59b869a6ecab883d2c7077e78f59221f0623', '[\"*\"]', NULL, NULL, '2024-11-17 15:20:08', '2024-11-17 15:20:08'),
(84, 'App\\Models\\User', 1, 'auth_token', '3aa199a4fe36dfa47a401403161fd23ce67ca79fe57a7587919983272ca69fe5', '[\"*\"]', NULL, NULL, '2024-11-19 04:51:17', '2024-11-19 04:51:17'),
(85, 'App\\Models\\User', 1, 'auth_token', 'ad6525d28259e301e51423b981d286c9e2a502059e4d3913a170a01fb875aa40', '[\"*\"]', NULL, NULL, '2024-11-25 14:35:17', '2024-11-25 14:35:17'),
(86, 'App\\Models\\User', 1, 'auth_token', '4f89eb5aa8ccc698b0b40af896e580fd3ba4e62e86f984ba4bd9d86d480109ae', '[\"*\"]', NULL, NULL, '2024-11-26 02:56:43', '2024-11-26 02:56:43'),
(87, 'App\\Models\\User', 1, 'auth_token', '7d5567ce4610b7924bf65f607cad9fdde385c0e6a94b0b085d03001cf51ac1cf', '[\"*\"]', NULL, NULL, '2024-11-26 09:42:06', '2024-11-26 09:42:06'),
(88, 'App\\Models\\User', 1, 'auth_token', 'c7076e6aaa894c86b42ba28715510637738dafca9e3de376fb76de14e435b33c', '[\"*\"]', NULL, NULL, '2024-11-26 14:47:52', '2024-11-26 14:47:52'),
(89, 'App\\Models\\User', 1, 'auth_token', 'f8e87338bef4a705459efe0f137ab128fcbc9e9f7a190da1abc01521c96800d0', '[\"*\"]', NULL, NULL, '2024-11-27 07:11:28', '2024-11-27 07:11:28'),
(90, 'App\\Models\\User', 1, 'auth_token', '3ea65217867e11137d3910d69dce506ca7409774a5895f62e8a26b2b4a731fc0', '[\"*\"]', NULL, NULL, '2024-11-27 14:40:51', '2024-11-27 14:40:51'),
(91, 'App\\Models\\User', 1, 'auth_token', '48b9f4d1bad4eab3c1e2dd30f0c9f471b12da42259b6ff9fca4ce8b6e4837570', '[\"*\"]', NULL, NULL, '2024-11-28 07:46:06', '2024-11-28 07:46:06'),
(92, 'App\\Models\\User', 1, 'auth_token', '0ee95d784e3e5d0e6449cfa43004a8e7298b0e6efaed313ab5451593f3bc5077', '[\"*\"]', NULL, NULL, '2024-11-28 14:23:26', '2024-11-28 14:23:26'),
(93, 'App\\Models\\User', 1, 'auth_token', '2e15b46fa057cc04bcfca5414e79a0e7866be13051a23ee9703b253434e7d397', '[\"*\"]', NULL, NULL, '2024-11-29 14:34:29', '2024-11-29 14:34:29'),
(94, 'App\\Models\\User', 1, 'auth_token', '5943fe8557134a82b4f29312e14b121941b6b4f3e43d72e9c02aa59cbecf37d6', '[\"*\"]', NULL, NULL, '2024-11-30 07:20:23', '2024-11-30 07:20:23'),
(95, 'App\\Models\\User', 1, 'auth_token', 'a7fd00d6a2fa12f58689a32937cf41c8610e107e1e958ec057cd5242e20729d2', '[\"*\"]', NULL, NULL, '2024-11-30 14:03:40', '2024-11-30 14:03:40'),
(96, 'App\\Models\\User', 1, 'auth_token', 'acc3d801ca107de04035ff87e9be62a92a4d1c2788ba59de5b0b9da5fa5d7d36', '[\"*\"]', NULL, NULL, '2024-12-01 05:55:52', '2024-12-01 05:55:52'),
(97, 'App\\Models\\User', 1, 'auth_token', 'b8f7ab60d45dba0367259beb385e9391d08ef26c72d6e2f84f79b2c784c94a4d', '[\"*\"]', NULL, NULL, '2024-12-01 10:01:19', '2024-12-01 10:01:19'),
(98, 'App\\Models\\User', 1, 'auth_token', 'cd1fb4ab0f0eea21795abca7400279c03e575542135181fa4001f893a4702660', '[\"*\"]', NULL, NULL, '2024-12-01 13:40:20', '2024-12-01 13:40:20'),
(99, 'App\\Models\\User', 1, 'auth_token', 'a93e75b42b4b82755c10b9f5dc191af3b339a7d94f3be45f72c2d176c2329dbf', '[\"*\"]', NULL, NULL, '2024-12-02 03:03:33', '2024-12-02 03:03:33'),
(100, 'App\\Models\\User', 1, 'auth_token', '442b741dc96499c763660e9ed40458a1f7d0f03e8857cc6de0590f68f5cafb62', '[\"*\"]', NULL, NULL, '2024-12-02 10:18:51', '2024-12-02 10:18:51'),
(101, 'App\\Models\\User', 1, 'auth_token', '2424ecd7e45dab6d405590191fe3784bb8e02f049bccaf0a2875a5bdb09d3be4', '[\"*\"]', NULL, NULL, '2024-12-03 06:44:07', '2024-12-03 06:44:07'),
(102, 'App\\Models\\User', 1, 'auth_token', '85f3dc00b660eb88d837cf64bf3d0be575ac1aee961094893d0b6af97814b243', '[\"*\"]', NULL, NULL, '2024-12-03 13:28:35', '2024-12-03 13:28:35'),
(103, 'App\\Models\\User', 1, 'auth_token', 'e7c26e5a504da78aeeb4378dc56fee6abd933acd43004096e17ef659faea0f11', '[\"*\"]', NULL, NULL, '2024-12-03 15:37:43', '2024-12-03 15:37:43'),
(104, 'App\\Models\\User', 1, 'auth_token', 'bf333d4ed6746bd8cddd3590b09ade2b1a0344a82d38047401b7909922ae2e5a', '[\"*\"]', NULL, NULL, '2024-12-03 16:30:49', '2024-12-03 16:30:49'),
(105, 'App\\Models\\User', 9, 'auth_token', 'a9f2824057a744f4053c24e71fcc59f52306500d34efd053f006a1b6b611abc3', '[\"*\"]', NULL, NULL, '2024-12-03 16:34:11', '2024-12-03 16:34:11'),
(106, 'App\\Models\\User', 1, 'auth_token', 'ea2d8db92cf7835687b7236247516f1d49ec9882cee112a0d892ecf46ef2d9ab', '[\"*\"]', NULL, NULL, '2024-12-04 07:52:50', '2024-12-04 07:52:50'),
(107, 'App\\Models\\User', 9, 'auth_token', 'dc612b7ec6868d82d27dc34022490986bab7fe2885fcaa73785b0d08652f9963', '[\"*\"]', NULL, NULL, '2024-12-04 07:54:18', '2024-12-04 07:54:18'),
(108, 'App\\Models\\User', 1, 'auth_token', 'e49525964eb39a533e8b1a239e1ff3e3a376b21372c8c54bda48d94a46adf2fc', '[\"*\"]', NULL, NULL, '2024-12-04 09:26:11', '2024-12-04 09:26:11'),
(109, 'App\\Models\\User', 1, 'auth_token', '549bbad2ed57b10c94f1db3394eda80047d7db687dee0a312fccd785fca50b0d', '[\"*\"]', NULL, NULL, '2024-12-04 09:26:17', '2024-12-04 09:26:17'),
(110, 'App\\Models\\User', 1, 'auth_token', '025a05b983124ae01f4cce06925b9ac7999fa6087ff932b5393bec83ae72e5c3', '[\"*\"]', NULL, NULL, '2024-12-04 09:26:36', '2024-12-04 09:26:36'),
(111, 'App\\Models\\User', 1, 'auth_token', '277cb958eee38fdf9701caf9029c6559340fc27ffa72dadcc3063042af7cbbad', '[\"*\"]', NULL, NULL, '2024-12-04 09:26:46', '2024-12-04 09:26:46'),
(112, 'App\\Models\\User', 1, 'auth_token', '27d33c38fea35c51c68c02ebddab38529ffd7181724d059cd5446f766e6aa57b', '[\"*\"]', NULL, NULL, '2024-12-04 09:26:52', '2024-12-04 09:26:52'),
(113, 'App\\Models\\User', 1, 'auth_token', 'ca8dddee590742174d763dda9bc16a40b289787744ed8817fd419f81dc29f397', '[\"*\"]', NULL, NULL, '2024-12-04 09:27:16', '2024-12-04 09:27:16'),
(114, 'App\\Models\\User', 1, 'auth_token', '39f4c351ad6692a0ce9cf8269a6c992370276cf249b157a34d8f1bfdd228b3b7', '[\"*\"]', NULL, NULL, '2024-12-04 09:27:21', '2024-12-04 09:27:21'),
(115, 'App\\Models\\User', 1, 'auth_token', 'd6485b5e656597b0036d56abaf82fcaf2520fbe1c198ab803d2efbcba500dfb3', '[\"*\"]', NULL, NULL, '2024-12-04 09:27:59', '2024-12-04 09:27:59'),
(116, 'App\\Models\\User', 1, 'auth_token', 'ae9fc1536698ff81b6bbae989b527ebaf6bedd3d6a0788ef068b691fdd1f2425', '[\"*\"]', NULL, NULL, '2024-12-04 09:28:17', '2024-12-04 09:28:17'),
(117, 'App\\Models\\User', 1, 'auth_token', '8b4f6a6bbf5402e61bb8e37e273eda452098c46a00fa3a4776b2236f4259ad8c', '[\"*\"]', NULL, NULL, '2024-12-04 09:28:53', '2024-12-04 09:28:53'),
(118, 'App\\Models\\User', 1, 'auth_token', '84f3ffd46e8ce99375e705fd17f79713b04ac0d8bc91471565a68f4bbb533fa7', '[\"*\"]', NULL, NULL, '2024-12-04 09:29:09', '2024-12-04 09:29:09'),
(119, 'App\\Models\\User', 1, 'auth_token', 'e8695e084d37872fb3eab0da5b1ceb8dc78d1bb7dab7f040ae515f7e737498d7', '[\"*\"]', NULL, NULL, '2024-12-04 09:29:38', '2024-12-04 09:29:38'),
(120, 'App\\Models\\User', 1, 'auth_token', '6ca632c5f4d0bf4410964efb179f66f636e7c7b4b953a404cb252e9c267da3a4', '[\"*\"]', NULL, NULL, '2024-12-04 10:02:32', '2024-12-04 10:02:32'),
(121, 'App\\Models\\User', 1, 'auth_token', '4393060593f90f76e994169d4d7c31d15b266a4ca080b8abfaa43a65c93429fd', '[\"*\"]', NULL, NULL, '2024-12-04 10:02:40', '2024-12-04 10:02:40'),
(122, 'App\\Models\\User', 1, 'auth_token', '2204bace950ac21a14b08282392ebc417b86bee88e0ba0b76c20de5a34c3befa', '[\"*\"]', NULL, NULL, '2024-12-04 10:03:33', '2024-12-04 10:03:33'),
(123, 'App\\Models\\User', 9, 'auth_token', 'df0b72a239ce6754bb5cb98e7fdb6ffa37972323e5f7ca87597de05d340b2aa9', '[\"*\"]', NULL, NULL, '2024-12-04 10:04:29', '2024-12-04 10:04:29'),
(124, 'App\\Models\\User', 1, 'auth_token', '569f3bd23f28d1cea14ceeeddb1a4f9bfaa47b8c940bf5331493c33bde9edc58', '[\"*\"]', NULL, NULL, '2024-12-04 14:35:17', '2024-12-04 14:35:17'),
(125, 'App\\Models\\User', 9, 'auth_token', '03d6162bba81535ac8e2c7fb2c7271f01372b4ccd12c3e357fd058b754bffcd3', '[\"*\"]', NULL, NULL, '2024-12-04 15:30:43', '2024-12-04 15:30:43'),
(126, 'App\\Models\\User', 9, 'auth_token', '60d383e5071fc0a624df5453b5256c3c57be6bab1946eb8f52334ed87055e442', '[\"*\"]', NULL, NULL, '2024-12-04 15:33:52', '2024-12-04 15:33:52'),
(127, 'App\\Models\\User', 1, 'auth_token', '78602b5fe6e281f3f162330c5ba8e4fa3948bf91b405a3a86c8da09599328d97', '[\"*\"]', NULL, NULL, '2024-12-04 15:43:06', '2024-12-04 15:43:06'),
(128, 'App\\Models\\User', 1, 'auth_token', '09686484e1400ca78ecc8033476ecaa35e7ecadc44a368047aac5f5f9a93f443', '[\"*\"]', NULL, NULL, '2024-12-04 15:50:55', '2024-12-04 15:50:55'),
(129, 'App\\Models\\User', 1, 'auth_token', '6fd59358aeac8391a6037da46fd332ae9963e957311a51c4ca4f68298fa92a09', '[\"*\"]', NULL, NULL, '2024-12-04 15:50:57', '2024-12-04 15:50:57'),
(130, 'App\\Models\\User', 9, 'auth_token', '92189923c5642d6ee8172b58d2743dbe322865de2ded70bc4c84cf18d4d8070f', '[\"*\"]', NULL, NULL, '2024-12-04 15:51:20', '2024-12-04 15:51:20'),
(131, 'App\\Models\\User', 1, 'auth_token', '14a67497a99b6f3d467cc2208340ab0c3e5d508be780c6281a461fea9b641abc', '[\"*\"]', NULL, NULL, '2024-12-04 15:57:43', '2024-12-04 15:57:43'),
(132, 'App\\Models\\User', 9, 'auth_token', '014becdc2c6cb14748fc912ca3a02eca9b71a9e7b21f698fb0aea57087f71851', '[\"*\"]', NULL, NULL, '2024-12-04 15:57:59', '2024-12-04 15:57:59'),
(133, 'App\\Models\\User', 9, 'auth_token', 'f25752196379119abab7d0a14d2dd219829008e4ed4c0beddc406fdb5fc17b5b', '[\"*\"]', NULL, NULL, '2024-12-05 11:26:29', '2024-12-05 11:26:29'),
(134, 'App\\Models\\User', 9, 'auth_token', '2126b95e20f36d88629d156ec66c580306867b8a97e692ddf0e396cb09b569fd', '[\"*\"]', NULL, NULL, '2024-12-05 11:47:07', '2024-12-05 11:47:07'),
(135, 'App\\Models\\User', 9, 'auth_token', 'fc9a8d13964bae094fdd8b3826b1922ef4013440a8711b641ad967ba9509517d', '[\"*\"]', NULL, NULL, '2024-12-05 11:54:15', '2024-12-05 11:54:15'),
(136, 'App\\Models\\User', 9, 'auth_token', '9fca4c2a27898c9dbcfc4cadf0adc325aae826bfa94c747dc1df9b133d4b538a', '[\"*\"]', NULL, NULL, '2024-12-05 11:54:36', '2024-12-05 11:54:36'),
(137, 'App\\Models\\User', 9, 'auth_token', 'd54fea6aaa3194209f40ccaf361e23bdaf13f53792d7a14344e9de4dc46aaef5', '[\"*\"]', NULL, NULL, '2024-12-05 11:59:12', '2024-12-05 11:59:12'),
(138, 'App\\Models\\User', 9, 'auth_token', '0a48150d02614f45bf89fa286322d34c89167b43107cfd00127d926a662cc082', '[\"*\"]', NULL, NULL, '2024-12-05 12:01:21', '2024-12-05 12:01:21'),
(139, 'App\\Models\\User', 9, 'auth_token', 'bc8b1b039cfcb97f02f5c57b66f73fad42de489f63b6168c83a4bac7e37c4674', '[\"*\"]', NULL, NULL, '2024-12-05 13:24:51', '2024-12-05 13:24:51'),
(140, 'App\\Models\\User', 1, 'auth_token', '1087a841a34f07e7b1988899867d143d54ddeefb31489cb5f64ad0818b7b3c87', '[\"*\"]', NULL, NULL, '2024-12-05 15:01:04', '2024-12-05 15:01:04'),
(141, 'App\\Models\\User', 10, 'auth_token', '079901b6bafa7bd9170da8f599d52823a2c99c3905a7d6a7c6208ec15280aa3f', '[\"*\"]', NULL, NULL, '2024-12-05 15:08:09', '2024-12-05 15:08:09'),
(142, 'App\\Models\\User', 10, 'auth_token', '8a6b544d63ba35e5421ac190e9bde52d6ac54ef8ebc79e0c27a2a94519962a5c', '[\"*\"]', NULL, NULL, '2024-12-05 15:26:23', '2024-12-05 15:26:23'),
(143, 'App\\Models\\User', 9, 'auth_token', 'c8fe0a14a7d7eff4622f8cd461a7971e789686d46b7dfdcf5ee08f41d73f0814', '[\"*\"]', NULL, NULL, '2024-12-05 15:39:11', '2024-12-05 15:39:11'),
(144, 'App\\Models\\User', 10, 'auth_token', '151804dd74087637d75e2b089c0a4f554fdbbfa782a598903c70a6ff4aee731a', '[\"*\"]', NULL, NULL, '2024-12-05 15:51:25', '2024-12-05 15:51:25'),
(145, 'App\\Models\\User', 10, 'auth_token', '0632a8fc6bb5925163e2d7b42e010fbb045d86017a903c7313cbeed1ad36f44f', '[\"*\"]', NULL, NULL, '2024-12-06 09:45:02', '2024-12-06 09:45:02'),
(146, 'App\\Models\\User', 9, 'auth_token', 'b4949ccb8ae55366476f55b1bf82225d09df5c02776df09821d96d19ebf52f3e', '[\"*\"]', NULL, NULL, '2024-12-06 09:52:08', '2024-12-06 09:52:08'),
(147, 'App\\Models\\User', 10, 'auth_token', 'c9b455b45bf127e749765cbf7f9ee989ecc543eab3f7866f2bfd195b45e44a54', '[\"*\"]', NULL, NULL, '2024-12-06 09:52:31', '2024-12-06 09:52:31'),
(148, 'App\\Models\\User', 10, 'auth_token', '3fe2ba093d2d4113468308434f0c35eb7f881a90a446daa9459c60bddc082543', '[\"*\"]', NULL, NULL, '2024-12-06 09:57:11', '2024-12-06 09:57:11'),
(149, 'App\\Models\\User', 9, 'auth_token', 'f1a4e670306cb9e5ffbbf6e070b49c38cabd67a5336972319206a939d605834b', '[\"*\"]', NULL, NULL, '2024-12-06 09:58:42', '2024-12-06 09:58:42'),
(150, 'App\\Models\\User', 10, 'auth_token', '3f3562a8888d19e90855ba028115b2ef11b390a93c5332a6668049ab7234c1ec', '[\"*\"]', NULL, NULL, '2024-12-06 09:59:10', '2024-12-06 09:59:10'),
(151, 'App\\Models\\User', 10, 'auth_token', '1227bf118f04084cf3c8e5cbb2ecdbdb098ec56676a1a5d73d0b089d40078080', '[\"*\"]', NULL, NULL, '2024-12-06 10:48:12', '2024-12-06 10:48:12'),
(152, 'App\\Models\\User', 10, 'auth_token', 'c09c4e78e2af6da800ee3feef02a395f2ddda4fdbf050740ca4ed7bed4cb6538', '[\"*\"]', NULL, NULL, '2024-12-06 13:53:49', '2024-12-06 13:53:49'),
(153, 'App\\Models\\User', 1, 'auth_token', '630e8f0769517e3c300ae1f91aa2cfee04f337cdb093820fcb45f69104f7edcb', '[\"*\"]', NULL, NULL, '2024-12-06 16:38:33', '2024-12-06 16:38:33'),
(154, 'App\\Models\\User', 10, 'auth_token', 'aafccc7d321ebba8b2979a362a9329b3e6280f22417ce6e6ea4ca08c00cdeeca', '[\"*\"]', NULL, NULL, '2024-12-06 17:06:40', '2024-12-06 17:06:40'),
(155, 'App\\Models\\User', 1, 'auth_token', '79aae7e7c0cf9c1b0cc99d220a964b44a01679df2d6f3f99a992bcc9d9d796c9', '[\"*\"]', NULL, NULL, '2024-12-06 17:29:57', '2024-12-06 17:29:57'),
(156, 'App\\Models\\User', 10, 'auth_token', 'c55a4bb5c00740dc17e205ab5131c44d0fc3532f901e21477d64860797caa55c', '[\"*\"]', NULL, NULL, '2024-12-06 17:36:52', '2024-12-06 17:36:52'),
(157, 'App\\Models\\User', 1, 'auth_token', '2aa1caacb14c984502e8c40641c4c3e9c9bd53688c0403d86886493200382170', '[\"*\"]', NULL, NULL, '2024-12-06 17:38:09', '2024-12-06 17:38:09'),
(158, 'App\\Models\\User', 1, 'auth_token', '828a820f7c595ed023a1496478e4d49aeccf43b8b7a260c9d96ee8a180ce72a9', '[\"*\"]', NULL, NULL, '2024-12-06 17:43:58', '2024-12-06 17:43:58'),
(159, 'App\\Models\\User', 10, 'auth_token', '70e48d4ae8a8da2ae13821618bb5a4e2d6d468b49ee0de9e3ca4deed0e0c318a', '[\"*\"]', NULL, NULL, '2024-12-06 17:44:16', '2024-12-06 17:44:16'),
(160, 'App\\Models\\User', 10, 'auth_token', 'b43e96238e411b126c601ec6698e76a4cb1a6b4f6067109ad772e2257d4bc155', '[\"*\"]', NULL, NULL, '2024-12-07 08:53:35', '2024-12-07 08:53:35'),
(161, 'App\\Models\\User', 10, 'auth_token', '71d4ec5ab1b1a78a67b7637c631da0482f146177c8bf98daa1c597e2da6d6865', '[\"*\"]', NULL, NULL, '2024-12-07 14:41:01', '2024-12-07 14:41:01'),
(162, 'App\\Models\\User', 10, 'auth_token', '2a1d09aa8001727ad17f2f063c8a3d394fdbe3eb1619ffb5cab297db699a2dc3', '[\"*\"]', NULL, NULL, '2024-12-07 16:20:00', '2024-12-07 16:20:00'),
(163, 'App\\Models\\User', 10, 'auth_token', '9a52c32ebdf901fcc9405a6c73d23e7a4ae4032e4bc9a337580d0392c73a0a3d', '[\"*\"]', NULL, NULL, '2024-12-07 19:18:50', '2024-12-07 19:18:50'),
(164, 'App\\Models\\User', 10, 'auth_token', 'a14ecfa2baa5a25da3b362caba66fc86dbaa2a1cdae7aab73f2d7118687ec483', '[\"*\"]', NULL, NULL, '2024-12-08 07:25:22', '2024-12-08 07:25:22'),
(165, 'App\\Models\\User', 1, 'auth_token', 'c3a7e56e73bc85d0b5a6417396c4dc25880323214c7b04150fb43e1c1770b065', '[\"*\"]', NULL, NULL, '2024-12-08 09:35:41', '2024-12-08 09:35:41'),
(166, 'App\\Models\\User', 10, 'auth_token', '1493e3ae48aa157ecdc88627e989d52dbda7466710a6efb0289d37968056f28b', '[\"*\"]', NULL, NULL, '2024-12-08 09:54:30', '2024-12-08 09:54:30'),
(167, 'App\\Models\\User', 1, 'auth_token', 'b70fd684ba09c219d9ede2dab89cb9498e8a92f12f4b11a57fc8bed12cf4be5b', '[\"*\"]', NULL, NULL, '2024-12-08 09:54:44', '2024-12-08 09:54:44'),
(168, 'App\\Models\\User', 1, 'auth_token', 'f86c16ae3756a243474fd2e45f9715c14690de33303f2bab20083c714ebc005c', '[\"*\"]', NULL, NULL, '2024-12-08 09:57:53', '2024-12-08 09:57:53'),
(169, 'App\\Models\\User', 10, 'auth_token', '4c031887b1e5581908de849a60d20a2e17487794e982ac2fe8e0108be46f735b', '[\"*\"]', NULL, NULL, '2024-12-08 09:58:11', '2024-12-08 09:58:11'),
(170, 'App\\Models\\User', 10, 'auth_token', 'def12534045c987572c98ca847f61e0a919d494db352dc6d785fe9245bfa7cdf', '[\"*\"]', NULL, NULL, '2024-12-08 10:03:04', '2024-12-08 10:03:04'),
(171, 'App\\Models\\User', 1, 'auth_token', '9a3b063415cb392c8ce17ccee0356d769b8d9c489868397f8b1e72bb77292ce7', '[\"*\"]', NULL, NULL, '2024-12-08 10:03:20', '2024-12-08 10:03:20'),
(172, 'App\\Models\\User', 1, 'auth_token', '92c77965a7176cc402c37227dd375ac7eee1d1b8763ae98540c92f4d753d75c2', '[\"*\"]', NULL, NULL, '2024-12-08 10:04:43', '2024-12-08 10:04:43'),
(173, 'App\\Models\\User', 10, 'auth_token', '0e620f10709f36972f17231b1a87adaa7976576f6e3d546a207edd5adce2b655', '[\"*\"]', NULL, NULL, '2024-12-08 10:10:18', '2024-12-08 10:10:18'),
(174, 'App\\Models\\User', 9, 'auth_token', 'e6a4f164272317180342c32429fb00f0a013f31bfba486dc710024875ebd05cf', '[\"*\"]', NULL, NULL, '2024-12-08 14:06:27', '2024-12-08 14:06:27'),
(175, 'App\\Models\\User', 1, 'auth_token', '7dbac25c7d9215eb70713a525faef27b3f2715f26b4a109e01162c48c068be96', '[\"*\"]', NULL, NULL, '2024-12-08 14:09:36', '2024-12-08 14:09:36'),
(176, 'App\\Models\\User', 1, 'auth_token', 'aee7263ea99d47ac7c3566121268e293c8dc77fac8549cfbc9306a1da1164805', '[\"*\"]', NULL, NULL, '2024-12-08 14:13:40', '2024-12-08 14:13:40'),
(177, 'App\\Models\\User', 1, 'auth_token', 'df4d27f60577269bf5f189a55f835bbb408fcab3fbd298cf848ba7219e95fd6d', '[\"*\"]', NULL, NULL, '2024-12-08 14:19:03', '2024-12-08 14:19:03'),
(178, 'App\\Models\\User', 1, 'auth_token', '94220b50976a73a63a1cbfab021c73fbcfbf0fd227d39d7c54cbb286372f8eb4', '[\"*\"]', NULL, NULL, '2024-12-08 14:20:28', '2024-12-08 14:20:28'),
(179, 'App\\Models\\User', 1, 'auth_token', '02522bc6b1e8c6bec89cccc449cf6fadb913827f603083a7ac9459454dbe6d52', '[\"*\"]', NULL, NULL, '2024-12-08 14:22:16', '2024-12-08 14:22:16'),
(180, 'App\\Models\\User', 1, 'auth_token', '24d89d723c7eb5f7787626a531dd1608a52c7c20caabf63e72bb00be5d1c3a22', '[\"*\"]', NULL, NULL, '2024-12-08 14:24:29', '2024-12-08 14:24:29'),
(181, 'App\\Models\\User', 1, 'auth_token', '33f3f8c276193bc3cb9e2793f96e796bffd5163b1b11f7c9bf5c7e7789e583be', '[\"*\"]', NULL, NULL, '2024-12-08 14:29:58', '2024-12-08 14:29:58'),
(182, 'App\\Models\\User', 9, 'auth_token', 'febb7514a209986b4ab186e785225d4113ef2f3effa44a59018609ae6a7ddbb3', '[\"*\"]', NULL, NULL, '2024-12-08 14:35:24', '2024-12-08 14:35:24'),
(183, 'App\\Models\\User', 9, 'auth_token', '9845c1ad3d1f4c404fc6740eef2821d9389a45e9ae4c10f1757353e9d8c9f0e8', '[\"*\"]', NULL, NULL, '2024-12-08 17:31:13', '2024-12-08 17:31:13'),
(184, 'App\\Models\\User', 9, 'auth_token', 'c159e930040852970dcefd6f798c1cf09ddd2e06a8b7f28e8903ff54770392c5', '[\"*\"]', NULL, NULL, '2024-12-09 05:28:11', '2024-12-09 05:28:11'),
(185, 'App\\Models\\User', 10, 'auth_token', '018934d38266a4460afc06131264577ba273c7c895218de4428742075836e9de', '[\"*\"]', NULL, NULL, '2024-12-09 06:24:45', '2024-12-09 06:24:45'),
(186, 'App\\Models\\User', 10, 'auth_token', '8a6801bfcfb330fbc0cb4eca86ec3cd609ffad8f1f06a5223130c55af2fc7f7b', '[\"*\"]', NULL, NULL, '2024-12-09 06:28:00', '2024-12-09 06:28:00'),
(187, 'App\\Models\\User', 10, 'auth_token', '3e3de5d60ef6a840f33e619c09481d8fa51fa0153bc23ccd4532f0770419119b', '[\"*\"]', NULL, NULL, '2024-12-09 06:28:15', '2024-12-09 06:28:15'),
(188, 'App\\Models\\User', 10, 'auth_token', 'b2ba54f6fb87dd6d778eefdb307f15af971401227e9fa38930bfffdec6a154b4', '[\"*\"]', NULL, NULL, '2024-12-09 06:31:41', '2024-12-09 06:31:41'),
(189, 'App\\Models\\User', 9, 'auth_token', '89ffe6a6454e63cfcc3c2bced578831ed3d75635e3b5e8e0ca1c206b30b8e6ee', '[\"*\"]', NULL, NULL, '2024-12-09 06:33:23', '2024-12-09 06:33:23'),
(190, 'App\\Models\\User', 1, 'auth_token', '14fba76e4551dcdbbcdb14d80200ddc15b837c46b7ec6689229353f85d6a5c01', '[\"*\"]', NULL, NULL, '2024-12-09 06:35:24', '2024-12-09 06:35:24'),
(191, 'App\\Models\\User', 9, 'auth_token', '939b0356420fb100207b1e346abc5acd44067df4ba9d8f2eec3b2cf41104596e', '[\"*\"]', NULL, NULL, '2024-12-09 06:36:16', '2024-12-09 06:36:16'),
(192, 'App\\Models\\User', 10, 'auth_token', '35048940c30fbe42c8f79d55cb99f5c70012b05068e2d33638d6e3d3930285a5', '[\"*\"]', NULL, NULL, '2024-12-09 08:13:11', '2024-12-09 08:13:11'),
(193, 'App\\Models\\User', 10, 'auth_token', '662bb9daad4875b64c15f6eb545e4009e0d77be992a7be895186335deef46526', '[\"*\"]', NULL, NULL, '2024-12-09 09:58:12', '2024-12-09 09:58:12'),
(194, 'App\\Models\\User', 10, 'auth_token', '0c7b7925e4645f3c567d350ea790adefcd69ed7c61498b6ada6de7ebf217d577', '[\"*\"]', NULL, NULL, '2024-12-09 10:14:14', '2024-12-09 10:14:14'),
(195, 'App\\Models\\User', 10, 'auth_token', '48b85388faf3e943809a099620beeb95296cb29e501a37a1096108be6201fc17', '[\"*\"]', NULL, NULL, '2024-12-09 11:44:18', '2024-12-09 11:44:18'),
(196, 'App\\Models\\User', 10, 'auth_token', 'cec1b4e0040ca8d01821ddf61462abb38b65dc96f0a4ad98c31a55555091aaff', '[\"*\"]', NULL, NULL, '2024-12-09 11:52:58', '2024-12-09 11:52:58'),
(197, 'App\\Models\\User', 14, 'auth_token', '7e23ea34a2f8e24bf39712d90fe41794dce9d760f15dfb5e46a4d6285b20bd01', '[\"*\"]', NULL, NULL, '2024-12-09 11:53:50', '2024-12-09 11:53:50'),
(198, 'App\\Models\\User', 14, 'auth_token', 'fde28091f5721dc6ed9891ec310b6c8f1dce1b14857bd83c3f19469ca1e57998', '[\"*\"]', NULL, NULL, '2024-12-09 14:48:09', '2024-12-09 14:48:09'),
(199, 'App\\Models\\User', 10, 'auth_token', '4e273b457a2d7c27488b95721d8e767bcec12a5b4959f8844df5180ee079498d', '[\"*\"]', NULL, NULL, '2024-12-09 15:44:41', '2024-12-09 15:44:41'),
(200, 'App\\Models\\User', 10, 'auth_token', 'fd393540a69105f9715bb4e80c4299e4ebe7ff74071706c91b05be9d841e874d', '[\"*\"]', NULL, NULL, '2024-12-09 15:49:56', '2024-12-09 15:49:56'),
(201, 'App\\Models\\User', 14, 'auth_token', 'c8ce7b35f9a4c32affdaf091da1f6294181e8185ac0244cbe8cbc2a9c65afc48', '[\"*\"]', NULL, NULL, '2024-12-09 15:51:01', '2024-12-09 15:51:01'),
(202, 'App\\Models\\User', 14, 'auth_token', 'e8803afc4d2850cd5a966e65b0e2a43e4a5c40a0533bda981e03a405fb0f5c1c', '[\"*\"]', NULL, NULL, '2024-12-10 07:48:39', '2024-12-10 07:48:39'),
(203, 'App\\Models\\User', 14, 'auth_token', 'dedc20c7b7743c303d9140e9f3de4914e475be0f464aaa8b8968a583f43f3e89', '[\"*\"]', NULL, NULL, '2024-12-10 14:34:00', '2024-12-10 14:34:00'),
(204, 'App\\Models\\User', 14, 'auth_token', 'd102955b9bc480bead51a74ea51f9a6b91934dec36673a95f74bf9d8744b5e42', '[\"*\"]', NULL, NULL, '2024-12-11 04:17:55', '2024-12-11 04:17:55'),
(205, 'App\\Models\\User', 14, 'auth_token', 'b6c584c44001486133943ab6df6e182d3263cd0b46a83fb289e38e12d6f04467', '[\"*\"]', NULL, NULL, '2024-12-11 08:02:59', '2024-12-11 08:02:59'),
(206, 'App\\Models\\User', 14, 'auth_token', 'ef719e22885f4afc3566af85784ced11990a4b3a3ec5f52be38c78adfd270f71', '[\"*\"]', NULL, NULL, '2024-12-13 10:14:23', '2024-12-13 10:14:23'),
(207, 'App\\Models\\User', 10, 'auth_token', 'bf13ade719e7cbbc4f8a7262592b842d5a598da70fc878b6af477a8058a1843a', '[\"*\"]', NULL, NULL, '2024-12-13 11:14:10', '2024-12-13 11:14:10'),
(208, 'App\\Models\\User', 1, 'auth_token', 'e59b8a73d485e5a87e02e2a05c0c748e29059fc83bb986455fc1dc1860617f5f', '[\"*\"]', NULL, NULL, '2024-12-14 10:10:33', '2024-12-14 10:10:33'),
(209, 'App\\Models\\User', 1, 'auth_token', 'b44c55d7676f1ab0b13f06cb0ff3b7f89a4358f730974379884fdc234e379937', '[\"*\"]', NULL, NULL, '2024-12-14 10:14:37', '2024-12-14 10:14:37'),
(210, 'App\\Models\\User', 9, 'auth_token', '3448c6fa6fe09a949d6d45a440fe3e630556cd6be840a72a55b293ec203c999f', '[\"*\"]', NULL, NULL, '2024-12-14 10:19:25', '2024-12-14 10:19:25'),
(211, 'App\\Models\\User', 14, 'auth_token', 'a873676601e0de4dac211beb36b45fe82eb9c8f5248b0c06336ff3b9264c6e99', '[\"*\"]', NULL, NULL, '2024-12-14 10:21:45', '2024-12-14 10:21:45'),
(212, 'App\\Models\\User', 1, 'auth_token', '16d306907cb6106a789867b662e01f7f8d95cebb1f3028676dca52cd796b1202', '[\"*\"]', NULL, NULL, '2024-12-15 14:11:08', '2024-12-15 14:11:08'),
(213, 'App\\Models\\User', 1, 'auth_token', 'ea69ac0adbf745b9aabe884313560e167366653c926e62da51011885bc4438a7', '[\"*\"]', NULL, NULL, '2024-12-16 09:09:18', '2024-12-16 09:09:18'),
(214, 'App\\Models\\User', 15, 'auth_token', '7ed8b94c23b2cc5036f292eb9d985d572099760da1f6a09832b4246a4c974de8', '[\"*\"]', NULL, NULL, '2024-12-16 16:59:59', '2024-12-16 16:59:59'),
(215, 'App\\Models\\User', 1, 'auth_token', 'b1d4efc161609f191e845d7f4fbabce73a18b33058b5f0d5024fc4dc9213e30a', '[\"*\"]', NULL, NULL, '2024-12-16 17:26:54', '2024-12-16 17:26:54'),
(216, 'App\\Models\\User', 1, 'auth_token', 'adfc4361d8d96ee88913802f5214674a7f8ef9793d7a84f3eeb5a1c76ef470c9', '[\"*\"]', NULL, NULL, '2024-12-16 17:27:21', '2024-12-16 17:27:21'),
(217, 'App\\Models\\User', 1, 'auth_token', '4d87395e014fc3177b29e197e011f7742751010bd4d598cf17a5a6ec1f7f6a3d', '[\"*\"]', NULL, NULL, '2024-12-16 17:27:27', '2024-12-16 17:27:27'),
(218, 'App\\Models\\User', 1, 'auth_token', '810f33ef91f8c2e7671d05795ccec7be74318aecbf521b90837199987930553c', '[\"*\"]', NULL, NULL, '2024-12-16 17:28:46', '2024-12-16 17:28:46'),
(219, 'App\\Models\\User', 1, 'auth_token', '2ee8dad4bef0ab01e1492753b216845e2f4bec3c58545113328930eb95e03d40', '[\"*\"]', NULL, NULL, '2024-12-16 17:29:53', '2024-12-16 17:29:53'),
(220, 'App\\Models\\User', 15, 'auth_token', 'a8acabb2c7811f9fee854b79550bdd4ba2bab5f0c141beba908cf8bd0a538717', '[\"*\"]', NULL, NULL, '2024-12-17 06:28:53', '2024-12-17 06:28:53'),
(221, 'App\\Models\\User', 1, 'auth_token', '4cc58e1dd5d1576f78299539085481d6fcfa6dadd62c2426bf7a7f180a463cd2', '[\"*\"]', NULL, NULL, '2024-12-17 17:00:42', '2024-12-17 17:00:42'),
(222, 'App\\Models\\User', 1, 'auth_token', 'bae819ad5a24238a8cbda272843d85b9c86c0494144d667c40edd5672ada60c2', '[\"*\"]', NULL, NULL, '2024-12-17 17:01:33', '2024-12-17 17:01:33'),
(223, 'App\\Models\\User', 15, 'auth_token', '2f4396d9feca2f1995b9663f256cffee6f945760f54c745134f9b8b1a3153c4d', '[\"*\"]', NULL, NULL, '2024-12-17 17:02:39', '2024-12-17 17:02:39'),
(224, 'App\\Models\\User', 15, 'auth_token', 'a001c01f5cb9dea553e0aa6105bdbfa4da6eb91830083d7cdf3b76ccc76ed172', '[\"*\"]', NULL, NULL, '2024-12-18 08:00:11', '2024-12-18 08:00:11'),
(225, 'App\\Models\\User', 15, 'auth_token', '57bb0e641d4c16d7dda5583ad6a737eddc61d5eba0532962734106877749c64e', '[\"*\"]', NULL, NULL, '2024-12-18 16:41:59', '2024-12-18 16:41:59'),
(226, 'App\\Models\\User', 15, 'auth_token', '6fa378d9a71d2c013638852c8c1f29264eeec3f6e72970cb20a9792ff226d57f', '[\"*\"]', NULL, NULL, '2024-12-19 11:20:06', '2024-12-19 11:20:06'),
(227, 'App\\Models\\User', 15, 'auth_token', '3a743bd29fc75a562c8cd37c490836d32f14a41088c0831dcaacbf8d36c16703', '[\"*\"]', NULL, NULL, '2024-12-19 14:26:37', '2024-12-19 14:26:37'),
(228, 'App\\Models\\User', 15, 'auth_token', 'a7b5539991a2eb791ff9e0da67514c1a5845a6a6a3cdca263ded25fdf30aca22', '[\"*\"]', NULL, NULL, '2024-12-19 15:19:23', '2024-12-19 15:19:23'),
(229, 'App\\Models\\User', 15, 'auth_token', 'bc71ce157e8e8d70c772ffd06b2e41f931c948a37d2a199e6fd50fd3357abaf2', '[\"*\"]', NULL, NULL, '2024-12-20 06:32:09', '2024-12-20 06:32:09'),
(230, 'App\\Models\\User', 15, 'auth_token', '966cfbf17cf8e9df2003b9c197a119f60424e6f104db85976b108eb879c52164', '[\"*\"]', NULL, NULL, '2024-12-20 13:24:11', '2024-12-20 13:24:11'),
(231, 'App\\Models\\User', 1, 'auth_token', '450d5e5a386495c09a77c719c2175958a4dcb5f939e1cab18f8ee966f5742c29', '[\"*\"]', NULL, NULL, '2025-01-05 07:23:25', '2025-01-05 07:23:25'),
(232, 'App\\Models\\User', 1, 'auth_token', 'ff95c9eb66f519a99ef7bd52b73d4e8b59df3a17f8fc248fc877a0c891ebc8ce', '[\"*\"]', NULL, NULL, '2025-01-05 08:16:56', '2025-01-05 08:16:56'),
(233, 'App\\Models\\User', 1, 'auth_token', '0957351dc15ffe9accbda54edce7b4b54967c0fe72f17fba1fbf2d7fd5669c2c', '[\"*\"]', NULL, NULL, '2025-01-05 08:17:25', '2025-01-05 08:17:25'),
(234, 'App\\Models\\User', 1, 'auth_token', '444626b148c34cf0fc63a4f9eacd8e744220df945c94d9b03b71efdaae71084f', '[\"*\"]', NULL, NULL, '2025-01-05 08:19:54', '2025-01-05 08:19:54'),
(235, 'App\\Models\\User', 1, 'auth_token', 'e9c753c67d84d6c21ba928c7622f0c22620ece7f36058a6dd2038dfec5635375', '[\"*\"]', NULL, NULL, '2025-01-05 08:40:44', '2025-01-05 08:40:44'),
(236, 'App\\Models\\Admin', 1, 'auth_token', 'e4d5e6cfeb18103e7d6c1d1a1d46816d26d39a936fbb600be4d4ef85fe696c72', '[\"*\"]', NULL, NULL, '2025-01-06 07:48:22', '2025-01-06 07:48:22'),
(237, 'App\\Models\\Admin', 1, 'auth_token', 'b8118792f048cc7ee2504cc4fb4f15bae99c6633e149b2b837382ac889238a3e', '[\"*\"]', NULL, NULL, '2025-01-06 07:48:46', '2025-01-06 07:48:46'),
(238, 'App\\Models\\Admin', 1, 'auth_token', '63c55946ed70b5d72fcc5bb6467b9dd561b7747477cad36c46ec49a6b6d80251', '[\"*\"]', NULL, NULL, '2025-01-15 11:26:33', '2025-01-15 11:26:33'),
(239, 'App\\Models\\Admin', 1, 'auth_token', '049f9bc0e6cd3270e11b2c40f4ae26a72678dc58a1c2b50b2187fa4f03270ea2', '[\"*\"]', NULL, NULL, '2025-01-15 12:23:05', '2025-01-15 12:23:05'),
(240, 'App\\Models\\Admin', 1, 'auth_token', '185e4effa3d071a7240644548397369454a8c364c2e41920f47dbf432b161064', '[\"*\"]', NULL, NULL, '2025-01-15 12:25:06', '2025-01-15 12:25:06'),
(241, 'App\\Models\\Admin', 1, 'auth_token', '7653744f6d999975052cc4046cfd15669d6d16f9d618b2a7c65453750386ef74', '[\"*\"]', NULL, NULL, '2025-01-15 12:26:56', '2025-01-15 12:26:56'),
(242, 'App\\Models\\Admin', 1, 'auth_token', 'fd405e7f162b9c481df615c7596d717b9c99fe750f35ed3f6ecf8244698078f9', '[\"*\"]', NULL, NULL, '2025-01-15 12:27:44', '2025-01-15 12:27:44'),
(243, 'App\\Models\\Admin', 1, 'auth_token', 'edbcfe75df7a782e6d8ca499f1d62580bfdab9b9a0fc48b471feba491e55dcc0', '[\"*\"]', NULL, NULL, '2025-01-15 12:28:45', '2025-01-15 12:28:45'),
(244, 'App\\Models\\Admin', 1, 'auth_token', '2c0fbeb9faf602ba458bed951b6816dfdf7a6bbf379e87e569dac3646e2a964a', '[\"*\"]', NULL, NULL, '2025-01-15 12:30:01', '2025-01-15 12:30:01'),
(245, 'App\\Models\\Admin', 1, 'auth_token', '3163d0e47fd1cfed9a1336669a06c41804792df1ea3af4b60525f337359f70aa', '[\"*\"]', NULL, NULL, '2025-01-15 12:56:13', '2025-01-15 12:56:13'),
(246, 'App\\Models\\Admin', 1, 'auth_token', 'e3c501293ac48343b3f71be7d698e7d1b26337874e63f3f6922e3bdde5210ffc', '[\"*\"]', '2025-01-16 12:23:32', NULL, '2025-01-15 13:00:05', '2025-01-16 12:23:32'),
(247, 'App\\Models\\Admin', 1, 'auth_token', '15a53fc9be62ffee68b51be65630cbc7ff4ac1a7ec44527afa01c80475aca28d', '[\"*\"]', '2025-01-17 10:51:50', NULL, '2025-01-16 12:24:03', '2025-01-17 10:51:50'),
(248, 'App\\Models\\Admin', 1, 'auth_token', 'f7bfd6ca4caf51382ab951da8ccb425e05b2233d7ec0dc53749382b7ed50578c', '[\"*\"]', '2025-01-18 06:59:01', NULL, '2025-01-17 10:52:53', '2025-01-18 06:59:01'),
(249, 'App\\Models\\Admin', 1, 'auth_token', '280d11fbb60bca1d7a1e12c58e24bcb365c381c32a6650d1686d9c00dcffc7f7', '[\"*\"]', NULL, NULL, '2025-01-18 06:59:23', '2025-01-18 06:59:23'),
(250, 'App\\Models\\Admin', 1, 'auth_token', '5f6e398531834c1eb67518855be2918e6da8ae9a5af943f84441b883558d010f', '[\"*\"]', '2025-01-18 11:35:18', NULL, '2025-01-18 07:06:35', '2025-01-18 11:35:18'),
(251, 'App\\Models\\Admin', 1, 'auth_token', '617c0ff8ad0288ec6051b2f3697c3e92e4e5675adfc42599f7686bccd1c77c07', '[\"*\"]', NULL, NULL, '2025-01-18 11:41:53', '2025-01-18 11:41:53'),
(252, 'App\\Models\\Admin', 1, 'auth_token', '8a4b6463fa3a223424293a37d41a12ad79bbba611ee216e004798d3d39921053', '[\"*\"]', NULL, NULL, '2025-01-19 08:16:19', '2025-01-19 08:16:19'),
(253, 'App\\Models\\Admin', 1, 'auth_token', '84592fedc058eef6a307eed0d86d06ba65dd17533e96e6292f717b88c38912c3', '[\"*\"]', NULL, NULL, '2025-01-23 12:01:24', '2025-01-23 12:01:24'),
(254, 'App\\Models\\Admin', 1, 'auth_token', '9b4e63212b8cc19083a2e8b63df5c995dc68bfa6d9554386382d77b43d52959d', '[\"*\"]', '2025-01-24 11:56:30', NULL, '2025-01-23 17:18:01', '2025-01-24 11:56:30'),
(255, 'App\\Models\\Admin', 1, 'auth_token', '50985dad29037bc12aa02715bcea6cafb539bf5f9edb0bbeb101dc44151b8904', '[\"*\"]', NULL, NULL, '2025-01-24 16:14:40', '2025-01-24 16:14:40'),
(256, 'App\\Models\\Admin', 1, 'auth_token', '8a31df0cdf55c0202d0b900057981b9ad90309d33b1496aa9ab6db7a1c1c0ff9', '[\"*\"]', '2025-01-25 07:20:19', NULL, '2025-01-24 19:02:48', '2025-01-25 07:20:19'),
(257, 'App\\Models\\Admin', 1, 'auth_token', '7925ed16191d6ba99e4adbfae6de40f00315772d7aabf234d827fb6a75b52b0a', '[\"*\"]', NULL, NULL, '2025-01-25 07:21:45', '2025-01-25 07:21:45'),
(258, 'App\\Models\\Admin', 1, 'auth_token', 'b9ab07fdaa876d47e145927a1ab08ba1b76c491fdbe701339f0da1c76aefc522', '[\"*\"]', '2025-01-26 07:57:23', NULL, '2025-01-25 17:06:41', '2025-01-26 07:57:23'),
(259, 'App\\Models\\Admin', 1, 'auth_token', '7fce1169f10982ee7a55db817bf33eb28852b484ad72f3b4d947e16e95e8d73d', '[\"*\"]', NULL, NULL, '2025-01-26 07:57:34', '2025-01-26 07:57:34'),
(260, 'App\\Models\\Admin', 1, 'auth_token', 'bd54ba359414dbbb0ad1e5ee3b57e84e61b08b27798efffb2a8b2bdca5d43f4c', '[\"*\"]', NULL, NULL, '2025-01-27 12:39:01', '2025-01-27 12:39:01'),
(261, 'App\\Models\\Admin', 1, 'auth_token', 'ac5159d9147c66e0c74fe8a6bed56e9c52a27a51da209fd6c92cb0b971861ec9', '[\"*\"]', NULL, NULL, '2025-01-27 13:38:24', '2025-01-27 13:38:24'),
(262, 'App\\Models\\Admin', 1, 'auth_token', '4492f76beecee80f36bf12d1e9712625713c03f93bccfa444a7604d87ac6c73c', '[\"*\"]', NULL, NULL, '2025-01-27 16:21:43', '2025-01-27 16:21:43'),
(263, 'App\\Models\\Admin', 1, 'auth_token', 'cb75df9b49c2431f16f2d88968930dd3001be4510ee9fad766aa1b9955061726', '[\"*\"]', NULL, NULL, '2025-01-27 16:42:57', '2025-01-27 16:42:57'),
(264, 'App\\Models\\Admin', 1, 'auth_token', '095cf0004e07ab7ef9a58cb4457670ceab4f59265650470c610ded2cf3c2ce17', '[\"*\"]', NULL, NULL, '2025-01-27 16:45:43', '2025-01-27 16:45:43'),
(265, 'App\\Models\\Admin', 1, 'auth_token', '22cec82753b3388be35ce370856dd04dfa19ed3d7347fdc03d2b3c3193d47fc4', '[\"*\"]', '2025-01-28 15:02:43', NULL, '2025-01-27 16:47:10', '2025-01-28 15:02:43'),
(266, 'App\\Models\\User', 17, 'auth_token', '6e513151d698d637c64dfb4db00d391dda57245d1c97a5b7d0aa5322a0f58bea', '[\"*\"]', NULL, NULL, '2025-01-28 15:12:07', '2025-01-28 15:12:07'),
(267, 'App\\Models\\Admin', 1, 'auth_token', '8e0e8b4ae9d0585abf77f85ff508aed2978ee1625dac940f3f372095139ed969', '[\"*\"]', NULL, NULL, '2025-01-28 15:36:51', '2025-01-28 15:36:51'),
(268, 'App\\Models\\Admin', 1, 'auth_token', '553686e883e48c11e8242a650025db1aa878ab520178d661dd0d82f56e53cfa5', '[\"*\"]', '2025-01-30 13:23:24', NULL, '2025-01-28 16:51:18', '2025-01-30 13:23:24'),
(269, 'App\\Models\\User', 18, 'auth_token', 'b236b77ee954e8a60165923fe0d7e3dab12c0944370c96fe8308da45fab37494', '[\"*\"]', NULL, NULL, '2025-01-28 17:13:09', '2025-01-28 17:13:09'),
(270, 'App\\Models\\Admin', 1, 'auth_token', '802b9c177e0e8c08a3296f64e280e08bcea0bf630475875970140f8889714d6d', '[\"*\"]', NULL, NULL, '2025-01-30 13:23:30', '2025-01-30 13:23:30'),
(271, 'App\\Models\\Admin', 1, 'auth_token', 'f2112cf0ada21bb59ebedb5df0cad5177383275b55302724e9f48ded6ebba649', '[\"*\"]', '2025-01-31 07:30:48', NULL, '2025-01-30 14:45:45', '2025-01-31 07:30:48'),
(272, 'App\\Models\\User', 18, 'auth_token', 'be73b574cabf47a0925b501478229b3f1f9b51ed298c711b44a6f81e4f55533d', '[\"*\"]', NULL, NULL, '2025-01-31 07:35:06', '2025-01-31 07:35:06'),
(273, 'App\\Models\\User', 18, 'auth_token', 'eb5b8c682fd4897c84b1385fb1322e893cb585d57750153aec344286da2e4e08', '[\"*\"]', NULL, NULL, '2025-02-01 16:57:10', '2025-02-01 16:57:10'),
(274, 'App\\Models\\User', 18, 'auth_token', '759c744ad18f2d77988e3c07850e9ccb4b6e65a62ed7d2080b6fe9df69803676', '[\"*\"]', NULL, NULL, '2025-02-01 17:02:22', '2025-02-01 17:02:22'),
(275, 'App\\Models\\User', 18, 'auth_token', 'b0229be8a1ab611ab3b0990511a3565d5ec12433529b3ad1a8328c452c27482a', '[\"*\"]', NULL, NULL, '2025-02-02 09:59:53', '2025-02-02 09:59:53');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(276, 'App\\Models\\User', 18, 'auth_token', 'd58af3700cea0a4176c0eaee9866e686b8e73052ab74c8a367af999b4819bc22', '[\"*\"]', NULL, NULL, '2025-02-02 14:29:04', '2025-02-02 14:29:04'),
(277, 'App\\Models\\User', 18, 'auth_token', '388fb2fc5b9cf437b387b2cc20af90f604441c0913719bf311bfdf5b4143d015', '[\"*\"]', NULL, NULL, '2025-02-02 15:34:00', '2025-02-02 15:34:00'),
(278, 'App\\Models\\User', 18, 'auth_token', '065a5236bb8185c3cd61ba0823c0f43acd4542779af2b7fc1c38dcc227b98fd9', '[\"*\"]', '2025-02-03 04:44:39', NULL, '2025-02-02 17:02:40', '2025-02-03 04:44:39'),
(279, 'App\\Models\\Admin', 1, 'auth_token', '37642d4c70445f08c69da2278dff277027ae694e5a2f2d72c36dea9bf671dc73', '[\"*\"]', NULL, NULL, '2025-02-03 04:45:03', '2025-02-03 04:45:03'),
(280, 'App\\Models\\Admin', 1, 'auth_token', '441ff01c97d7b62e28e6187774847b0168b14c861a3f1435b1d9072e3369ffef', '[\"*\"]', NULL, NULL, '2025-02-03 05:01:34', '2025-02-03 05:01:34'),
(281, 'App\\Models\\Admin', 1, 'auth_token', 'd66a3b824d18d83fd8164ca7bd3249f1d76764b6c133036d308619fe0dc551aa', '[\"*\"]', NULL, NULL, '2025-02-03 05:16:10', '2025-02-03 05:16:10'),
(282, 'App\\Models\\User', 18, 'auth_token', '1df3284e082652ad07e336c0c9aac25de031b95587a65af44700a0782fca7a2e', '[\"*\"]', NULL, NULL, '2025-02-03 05:16:55', '2025-02-03 05:16:55'),
(283, 'App\\Models\\Admin', 1, 'auth_token', '80ae1846b64d970bd7cf794fddd3d1a87dbe70de9390b619c97c80722b0439b8', '[\"*\"]', NULL, NULL, '2025-02-03 06:12:21', '2025-02-03 06:12:21'),
(284, 'App\\Models\\Admin', 1, 'auth_token', 'ade3893a0924f9f4cc2838cffc7e07b2b4e6f169885c92f1d8a259322db52388', '[\"*\"]', NULL, NULL, '2025-02-03 14:16:58', '2025-02-03 14:16:58'),
(285, 'App\\Models\\Admin', 1, 'auth_token', '43963be0d9ed549e188b9173a54a504d57613d71841dae63773dccc1cc453477', '[\"*\"]', NULL, NULL, '2025-02-03 14:47:20', '2025-02-03 14:47:20'),
(286, 'App\\Models\\Admin', 1, 'auth_token', '62483af2e7cd3bc5fe0b930583d407629bf86d176e590c970d587f77ded61262', '[\"*\"]', NULL, NULL, '2025-02-03 14:48:34', '2025-02-03 14:48:34'),
(287, 'App\\Models\\User', 18, 'auth_token', '104e12f3b29cefc50cf9154de59e7f1906f1e854341ba47bf48b1bde1be21fae', '[\"*\"]', '2025-02-04 16:39:45', NULL, '2025-02-03 15:36:05', '2025-02-04 16:39:45'),
(288, 'App\\Models\\User', 18, 'auth_token', '40c1432cb16aa264dbb7aac19abad4cc96362d8fe11553641cd221d35cf3792f', '[\"*\"]', '2025-02-05 09:18:32', NULL, '2025-02-04 16:41:56', '2025-02-05 09:18:32'),
(289, 'App\\Models\\User', 18, 'auth_token', '6b70f206f1f87ad9527de9891246e12c850912930418977199a7198eb1f0340b', '[\"*\"]', '2025-02-05 12:46:27', NULL, '2025-02-05 09:19:57', '2025-02-05 12:46:27'),
(290, 'App\\Models\\Admin', 1, 'auth_token', 'c540a9671d5b1d21d3dbd37640e3d4569c9ccfd5d4ee56c943996ae2dd64ccd5', '[\"*\"]', NULL, NULL, '2025-02-05 12:53:11', '2025-02-05 12:53:11'),
(291, 'App\\Models\\User', 18, 'auth_token', 'ac1d8cc78d75156764a532535297d84be1ab91cf89148ab6fd981579ccf1ffdf', '[\"*\"]', NULL, NULL, '2025-02-07 09:37:20', '2025-02-07 09:37:20'),
(292, 'App\\Models\\Admin', 1, 'auth_token', '94b62e2e745a548e7fedcccb3666a3cbe905db900693fbe6a0c9a3b9acb0245b', '[\"*\"]', NULL, NULL, '2025-02-07 10:02:48', '2025-02-07 10:02:48'),
(293, 'App\\Models\\User', 18, 'auth_token', '6a995b59b0cf3268b81380ddb48ca934d5d5ca1f98c638eb82b8b831c19ac4dd', '[\"*\"]', NULL, NULL, '2025-02-07 10:51:52', '2025-02-07 10:51:52'),
(294, 'App\\Models\\User', 18, 'auth_token', '9cb1168755a929b8e34ab5a7a9af76273003db086234eac188ccbafe721f98ad', '[\"*\"]', NULL, NULL, '2025-02-07 11:00:51', '2025-02-07 11:00:51'),
(295, 'App\\Models\\User', 18, 'auth_token', '968634b98a88c495ed6d2e076a3b96e51d5e64c3c2fd7948b10ba39320fead16', '[\"*\"]', NULL, NULL, '2025-02-07 11:05:18', '2025-02-07 11:05:18'),
(296, 'App\\Models\\User', 18, 'auth_token', '57b14eaee5753247d3be048f049ac75d6a7a747825d1a14fc2ce68c1fe599d0e', '[\"*\"]', NULL, NULL, '2025-02-07 11:10:00', '2025-02-07 11:10:00'),
(297, 'App\\Models\\User', 18, 'auth_token', '7f2fc138347d967784fc129e16326ca9385d51142946938b9b88abebf97b2e96', '[\"*\"]', '2025-02-07 17:35:35', NULL, '2025-02-07 11:13:29', '2025-02-07 17:35:35'),
(298, 'App\\Models\\User', 18, 'auth_token', '51e4b3017f54185aa7361c3ced63ee77fa1b89b4ef9c5d70c220c6f878cbd53c', '[\"*\"]', NULL, NULL, '2025-02-07 17:47:56', '2025-02-07 17:47:56'),
(299, 'App\\Models\\Admin', 1, 'auth_token', '6bd0c26a1ee7f632c2e761cc1c50e5ecdc770f5663a973538ba25a09f1abb2d3', '[\"*\"]', NULL, NULL, '2025-02-07 18:27:03', '2025-02-07 18:27:03'),
(300, 'App\\Models\\User', 18, 'auth_token', '59a613ee9a8a83ac17e79b2546a3f6df43f2d36293f0cdd44fead9e566bcb81f', '[\"*\"]', '2025-02-08 08:39:25', NULL, '2025-02-07 18:28:56', '2025-02-08 08:39:25'),
(301, 'App\\Models\\User', 18, 'auth_token', 'b6589f3b2fd91291120d75cad668bfb5a6199bced00977058a67d640c233da7b', '[\"*\"]', '2025-02-08 15:10:29', NULL, '2025-02-08 08:40:00', '2025-02-08 15:10:29'),
(302, 'App\\Models\\Admin', 1, 'auth_token', 'ef4d19608b825dbb5fd3560060f8efce83656fbc91e2d14839fe56c1cce99ae8', '[\"*\"]', NULL, NULL, '2025-02-08 14:43:07', '2025-02-08 14:43:07'),
(303, 'App\\Models\\User', 18, 'auth_token', '5f0af8e8632f608746e327cdd088b7b5fe24a759f48bbf5732132dad16cb907d', '[\"*\"]', '2025-02-09 17:42:16', NULL, '2025-02-08 15:12:21', '2025-02-09 17:42:16'),
(304, 'App\\Models\\Admin', 1, 'auth_token', 'b872fd9276a36578c322b791e1334af403be7f71b07467db21cc21dcea083c0a', '[\"*\"]', NULL, NULL, '2025-02-09 17:45:23', '2025-02-09 17:45:23'),
(305, 'App\\Models\\User', 18, 'auth_token', 'afd36ef5726c4ef5d4c8815ef00091584aae64afe22f2c87efab310b1b765636', '[\"*\"]', NULL, NULL, '2025-02-09 17:51:07', '2025-02-09 17:51:07'),
(306, 'App\\Models\\Admin', 1, 'auth_token', '4ce4632d330db31c1401d908e7ba58b2abfc98e0645f6078d1a8bb51887895ea', '[\"*\"]', NULL, NULL, '2025-02-09 18:33:46', '2025-02-09 18:33:46'),
(307, 'App\\Models\\User', 18, 'auth_token', 'f639c1f8a5b65bac958b9a59360d4ef041e22683cac3aa47ac0bdb31e4ecb5c7', '[\"*\"]', '2025-02-10 15:19:22', NULL, '2025-02-09 18:36:56', '2025-02-10 15:19:22'),
(308, 'App\\Models\\User', 18, 'auth_token', 'b63fa9d009d4c35fcb8960884791a972b0fd081bdf4ec127a6c1645f8e1dfe9b', '[\"*\"]', '2025-02-11 15:51:49', NULL, '2025-02-10 15:20:40', '2025-02-11 15:51:49'),
(309, 'App\\Models\\User', 18, 'auth_token', 'f9b5499458861ea5a49920b2e8b33b8bd8419e68fd23a3f82f4feb0dc1ffb84e', '[\"*\"]', '2025-02-12 10:50:26', NULL, '2025-02-11 18:48:45', '2025-02-12 10:50:26'),
(310, 'App\\Models\\Admin', 1, 'auth_token', '49e5b8ce2a71918909a60ef977fda48cde84b4f5af820185dd515732bd79a160', '[\"*\"]', NULL, NULL, '2025-03-08 06:37:20', '2025-03-08 06:37:20'),
(311, 'App\\Models\\User', 18, 'auth_token', '9f19c7a113947f69eace3da63cf2aeb21774fce921853e9b2058e7655a54a36d', '[\"*\"]', '2025-03-08 18:10:41', NULL, '2025-03-08 07:06:33', '2025-03-08 18:10:41'),
(312, 'App\\Models\\User', 18, 'auth_token', '6ce4e7f0561db24950b8f674984824aa789ccc8bdac660d3ec41d34627275218', '[\"*\"]', NULL, NULL, '2025-03-08 12:32:25', '2025-03-08 12:32:25'),
(313, 'App\\Models\\Admin', 1, 'auth_token', '66c8313f7dc620b2bc063b9f9a17c6da71b3814debfdbc2a204b0b9a76a24f6b', '[\"*\"]', NULL, NULL, '2025-03-08 12:42:52', '2025-03-08 12:42:52'),
(314, 'App\\Models\\Admin', 1, 'auth_token', '3b7e15e733a0ec46be2d775fa3fae6ab96c0bc763eed0cfc83d337401f6c0779', '[\"*\"]', NULL, NULL, '2025-03-08 18:11:10', '2025-03-08 18:11:10'),
(315, 'App\\Models\\User', 18, 'auth_token', '676995399e136734b13729b8ea635a006c38c11101eae7802c417066c23d287a', '[\"*\"]', '2025-03-10 18:36:47', NULL, '2025-03-10 18:17:49', '2025-03-10 18:36:47'),
(316, 'App\\Models\\User', 18, 'auth_token', 'e9be812eb41261574529e7c2a71fca64475b0b06919d1ec7456b64b6857bd338', '[\"*\"]', NULL, NULL, '2025-03-10 18:17:51', '2025-03-10 18:17:51'),
(317, 'App\\Models\\User', 18, 'auth_token', 'abab613eb697a1ed4a4b9e0c86f05ecb3b456513cf6c9ef0f0e5024ff59f0f53', '[\"*\"]', '2025-03-11 17:19:54', NULL, '2025-03-11 10:38:32', '2025-03-11 17:19:54'),
(318, 'App\\Models\\Admin', 1, 'auth_token', '9dca82fe7cd7049e35c39b9860a9371a397a78a5303d555b66134bb284b7473c', '[\"*\"]', NULL, NULL, '2025-03-11 10:57:33', '2025-03-11 10:57:33'),
(319, 'App\\Models\\User', 18, 'auth_token', '9863d1dcf13d0b09cd67d60b9acd164f94dd8d1673bb28c738d37709ed6be23e', '[\"*\"]', NULL, NULL, '2025-03-18 17:12:34', '2025-03-18 17:12:34'),
(320, 'App\\Models\\User', 18, 'auth_token', '187ec8a927782a8dcb3bb77428229d040d19837eaed042cc1a638370a3766ae4', '[\"*\"]', NULL, NULL, '2025-03-18 18:01:46', '2025-03-18 18:01:46'),
(321, 'App\\Models\\Admin', 1, 'auth_token', '80d6956cd0da73778aace6104166b6cba22b5887e9ec552ce7fab2075f9b1fb9', '[\"*\"]', NULL, NULL, '2025-03-18 18:02:10', '2025-03-18 18:02:10'),
(322, 'App\\Models\\User', 18, 'auth_token', '7defaba68250937346d4fc142461c52a95928e0a9ba8683bb50da5920d500e42', '[\"*\"]', NULL, NULL, '2025-03-21 08:52:35', '2025-03-21 08:52:35'),
(323, 'App\\Models\\User', 18, 'auth_token', 'b92451d1e4672afde69addbcb8bbcd23c964b6647cb670088526dd62556c7106', '[\"*\"]', NULL, NULL, '2025-03-21 10:03:22', '2025-03-21 10:03:22'),
(324, 'App\\Models\\Admin', 1, 'auth_token', '66d832946357df034af1893c883301108df8584fe0787e8a8b73f1b884294078', '[\"*\"]', NULL, NULL, '2025-03-21 10:51:55', '2025-03-21 10:51:55'),
(325, 'App\\Models\\Admin', 1, 'auth_token', 'b52b8034100c6d8a455391a9e457da86f1dcda8bbb462d9f3593e1e4ae0c5059', '[\"*\"]', NULL, NULL, '2025-03-21 14:50:25', '2025-03-21 14:50:25'),
(326, 'App\\Models\\User', 18, 'auth_token', 'c5a0fe2733c82a14b6a6e424056acfff7a6d84a439292f86a18a15bc60f06173', '[\"*\"]', NULL, NULL, '2025-03-21 19:03:44', '2025-03-21 19:03:44'),
(327, 'App\\Models\\Admin', 1, 'auth_token', '8cd10f4e4237eb64633ded9942e03da2421b2d76c3bb241f9895dbb16b089ba3', '[\"*\"]', NULL, NULL, '2025-03-22 11:10:59', '2025-03-22 11:10:59'),
(328, 'App\\Models\\Admin', 1, 'auth_token', 'a50f6ef31248f9b0a8edee025bf61f3f0d3c72d3db3d5de06380992597de4060', '[\"*\"]', NULL, NULL, '2025-03-22 13:09:28', '2025-03-22 13:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_rate_price` double DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `company_id`, `code`, `unit_rate_price`, `role_id`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '0001', 444, 1, 1, 'active', '2024-10-28 11:33:28', '2024-12-08 09:51:29', NULL),
(2, 1, '0002', 444, 27, 1, 'active', '2024-10-28 11:33:44', '2024-12-16 12:41:57', NULL),
(3, 1, '0003', 444, 14, 1, 'active', '2024-10-28 12:03:34', '2024-12-16 12:42:22', '2024-12-16 12:42:22'),
(4, 1, '0004', 444, 26, 1, 'active', '2024-10-28 12:31:22', '2024-12-16 12:42:31', '2024-12-16 12:42:31'),
(5, 1, '0005', 444, 24, 1, 'active', '2024-10-28 12:31:35', '2024-12-16 12:42:26', '2024-12-16 12:42:26'),
(6, 1, '0006', 5000, 23, 1, 'active', '2024-12-06 17:30:44', '2024-12-16 12:42:16', '2024-12-16 12:42:16'),
(7, 1, '0003', 50000, 28, 1, 'active', '2024-12-16 15:47:34', '2024-12-16 15:47:34', NULL),
(8, 1, '0004', 30000, 29, 1, 'active', '2024-12-16 15:48:05', '2024-12-16 15:48:05', NULL),
(9, 1, '0005', 40000, 30, 1, 'active', '2024-12-16 15:48:45', '2024-12-16 15:48:45', NULL),
(10, 1, '0006', 20000, 31, 1, 'active', '2024-12-16 15:49:15', '2024-12-16 15:49:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `position_translations`
--

DROP TABLE IF EXISTS `position_translations`;
CREATE TABLE IF NOT EXISTS `position_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `position_translations`
--

INSERT INTO `position_translations` (`id`, `position_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Admin', 'Admin', '2024-10-28 11:33:28', '2024-12-08 14:31:04', NULL),
(2, 1, 'ar', 'Admin', 'Admin', '2024-10-28 11:33:28', '2024-12-08 14:31:04', NULL),
(3, 2, 'en', 'First Position', 'First Position', '2024-10-28 11:33:44', '2024-12-16 12:41:57', NULL),
(4, 2, 'ar', 'First Position', 'First Position', '2024-10-28 11:33:44', '2024-12-16 12:41:58', NULL),
(5, 3, 'en', 'Engineer', 'Engineer', '2024-10-28 12:03:34', '2024-10-28 12:03:34', NULL),
(6, 3, 'ar', 'Engineer', 'Engineer', '2024-10-28 12:03:34', '2024-10-28 12:03:34', NULL),
(7, 4, 'en', 'surveoyer', 'surveoyer', '2024-10-28 12:31:22', '2024-10-28 12:31:22', NULL),
(8, 4, 'ar', 'surveoyer', 'surveoyer', '2024-10-28 12:31:22', '2024-10-28 12:31:22', NULL),
(9, 5, 'en', 'Operation Manager', 'Operation Manager', '2024-10-28 12:31:35', '2024-12-08 10:09:37', NULL),
(10, 5, 'ar', 'Operation Manager', 'Operation Manager', '2024-10-28 12:31:35', '2024-12-08 10:09:37', NULL),
(11, 6, 'en', 'Planner', 'Planner', '2024-12-06 17:30:44', '2024-12-06 17:30:44', NULL),
(12, 6, 'ar', 'Planner', 'Planner', '2024-12-06 17:30:44', '2024-12-06 17:30:44', NULL),
(13, 7, 'en', 'Second Position', 'Second Position', '2024-12-16 15:47:34', '2024-12-16 15:47:34', NULL),
(14, 7, 'ar', 'Second Position', 'Second Position', '2024-12-16 15:47:34', '2024-12-16 15:47:34', NULL),
(15, 8, 'en', 'Third Position', 'Third Position', '2024-12-16 15:48:05', '2024-12-16 15:48:05', NULL),
(16, 8, 'ar', 'Third Position', 'Third Position', '2024-12-16 15:48:05', '2024-12-16 15:48:05', NULL),
(17, 9, 'en', 'Fourth Position', 'Fourth Position', '2024-12-16 15:48:45', '2024-12-16 15:48:45', NULL),
(18, 9, 'ar', 'Fourth Position', 'Fourth Position', '2024-12-16 15:48:45', '2024-12-16 15:48:45', NULL),
(19, 10, 'en', 'Five Position', 'Five Position', '2024-12-16 15:49:15', '2024-12-16 15:49:15', NULL),
(20, 10, 'ar', 'Five Position', 'Five Position', '2024-12-16 15:49:15', '2024-12-16 15:49:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `company_id`, `name`, `guard_name`, `display_name`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(5, 1, 'المدير العام', 'admin', 'Super', NULL, 0, '2022-02-12 17:30:55', '2024-03-29 16:33:37'),
(6, 1, 'first-role-cafe', 'user', 'first role cafe', 1, 0, '2022-03-06 19:13:37', '2025-01-05 09:11:31'),
(13, 26, 'test-company', 'admin', 'test company', NULL, 0, '2024-06-19 07:24:10', '2024-06-19 07:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(127, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(126, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(125, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(124, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(123, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(16, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(15, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(14, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(13, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(12, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(119, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(5, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(4, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(3, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(2, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(1, 6, '2025-01-05 09:11:32', '2025-01-05 09:11:32'),
(122, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(121, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(120, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(118, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(116, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(115, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(114, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(111, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(110, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(109, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(108, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(107, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(105, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(103, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(102, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(101, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(100, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(99, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(98, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(97, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(113, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(112, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(96, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(95, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(94, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(93, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(92, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(91, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(90, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(89, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(88, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(87, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(86, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(85, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(84, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(83, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(82, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(81, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(80, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(79, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(78, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(77, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(76, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(75, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(74, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(73, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(72, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(66, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(65, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(64, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(63, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(62, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(61, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(60, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(59, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(58, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(57, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(56, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(55, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(54, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(53, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(52, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(117, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(70, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(69, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(71, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(68, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(67, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(17, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(16, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(15, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(14, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(1, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(2, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(3, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(4, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(5, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(119, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(12, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(13, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(14, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(15, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(16, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(17, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(67, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(68, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(71, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(69, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(70, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(117, 13, '2024-06-19 07:24:10', '2024-06-19 07:24:10'),
(13, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(12, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(5, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(4, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(3, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(2, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(1, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(128, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(129, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(130, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(131, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55'),
(132, 5, '2024-10-08 01:37:55', '2024-10-08 01:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `department_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `company_id`, `department_id`, `code`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'vav', 1, 'active', '2024-10-28 17:38:01', '2024-10-28 17:52:08', NULL),
(2, 1, 3, 'asvas', 1, 'active', '2024-10-28 17:53:38', '2024-10-28 17:53:46', '2024-10-28 17:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `sections_user_resume`
--

DROP TABLE IF EXISTS `sections_user_resume`;
CREATE TABLE IF NOT EXISTS `sections_user_resume` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `user_resume_id` int DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_translations`
--

DROP TABLE IF EXISTS `section_translations`;
CREATE TABLE IF NOT EXISTS `section_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `section_translations`
--

INSERT INTO `section_translations` (`id`, `section_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'sv', 'asvasv', '2024-10-28 17:38:01', '2024-10-28 17:38:01', NULL),
(2, 1, 'ar', 'asvasv', 'asvasv', '2024-10-28 17:38:01', '2024-10-28 17:38:01', NULL),
(3, 2, 'en', 'ascasc', 'asvas', '2024-10-28 17:53:38', '2024-10-28 17:53:38', NULL),
(4, 2, 'ar', 'ascas', 'asvas', '2024-10-28 17:53:38', '2024-10-28 17:53:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vedio` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `url`, `logo`, `email`, `mobile`, `facebook`, `twitter`, `linked_in`, `instagram`, `google_plus`, `vedio`, `created_at`, `updated_at`) VALUES
(1, '', '67cc162a2c102.webp', 'sera@gmail.c', '00966599895357', 'https://www.facebook.com/larven', 'https://www.Twitter.com/larven', 'https://www.facebook.com/larven', 'https://www.instagram.com/larven', 'https://www.google.com/larven', 'https://www.youtube.com/watch?v=_1EyYLiFfRU', NULL, '2025-03-22 11:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

DROP TABLE IF EXISTS `setting_translations`;
CREATE TABLE IF NOT EXISTS `setting_translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `setting_id` int NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_words` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `name`, `address`, `description`, `key_words`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Sera', 'Evaluation', 'At SeraTECH, We Believe That Your CV Is The Key To Your Professional Future. That\'s Why We Have Created An Intelligent Platform Powered By Artificial Intelligence To Help You Create A Professional CV In Minutes. Whether You\'re A Recent Graduate Or An', 'Sera', NULL, '2025-03-22 13:30:29'),
(2, 1, 'ar', 'سيرة', 'Evaluation', 'في سيرتك SeraTECH، نؤمن بأن السيرة الذاتية هي مفتاح مستقبلك المهني، ولهذا قمنا بابتكار منصة ذكية تعتمد على الذكاء الاصطناعي لمساعدتك في إنشاء سيرة ذاتية احترافية في دقائق. سواء كنت خريجًا جديدًا أو محترفًا ذو خبرة، نوفر لك نماذج احترافية مصممة بعناية', 'سيرة', NULL, '2025-03-22 13:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `template_resumes`
--

DROP TABLE IF EXISTS `template_resumes`;
CREATE TABLE IF NOT EXISTS `template_resumes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` varchar(500) DEFAULT NULL,
  `tags_en` varchar(500) DEFAULT NULL,
  `tags_ar` varchar(500) DEFAULT NULL,
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content_css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_premium` int NOT NULL DEFAULT '0',
  `status` enum('active','not_active') NOT NULL DEFAULT 'active',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `template_resumes`
--

INSERT INTO `template_resumes` (`id`, `category_id`, `tags_en`, `tags_ar`, `logo`, `content_html`, `content_css`, `is_premium`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2', 'sddsvsdv,sdvsd', 'سيسي,سيلسيل', NULL, '<div class=\"resume\">\n  <!-- قسم المعلومات الشخصية -->\n  <div class=\"personal-info\">\n\n    <h3>{{ sectionTitles.personalInfo }}</h3>\n\n\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\n    <h2>{{ personalInfo.job_title }}</h2>\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\n    <p>\n      <strong>Address:</strong> {{ personalInfo.address }}, \n      {{ personalInfo.city }}, \n      {{ personalInfo.country }}\n    </p>\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\n  </div>\n\n  <!-- قسم الملخص -->\n  <div class=\"summary\">\n\n    <h3>{{ sectionTitles.summary }}</h3>\n    <p>{{ personalInfo.summary }}</p>\n  </div>\n\n  <!-- قسم الخبرات العملية -->\n  <div class=\"employment-history\">\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\n      <p>City: {{ job.city }}</p>\n      <p>{{ job.descriptions }}</p>\n    </div>\n  </div>\n\n  <!-- قسم التعليم -->\n  <div class=\"education\">\n    <h3>{{ sectionTitles.education }}</h3>\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\n      <p>City: {{ edu.city }}</p>\n      <p>{{ edu.descriptions }}</p>\n    </div>\n  </div>\n\n  <div class=\"websites-social-links\">\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\n    </div>\n  </div>\n\n  <div class=\"skills\">\n    <h3>{{ sectionTitles.skills }}</h3>\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\n    </div>\n  </div>\n\n\n</div>', 'asfasasfv', 0, 'active', 1, '2025-01-23 13:11:29', '2025-01-23 13:24:39', '2025-01-23 13:24:39'),
(2, '2', 'sddsvsdv,sdvsd', 'سيسي,سيلسيل', NULL, '<div class=\"resume\">\n  <!-- قسم المعلومات الشخصية -->\n  <div class=\"personal-info\">\n\n    <h3>{{ sectionTitles.personalInfo }}</h3>\n\n\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\n    <h2>{{ personalInfo.job_title }}</h2>\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\n    <p>\n      <strong>Address:</strong> {{ personalInfo.address }}, \n      {{ personalInfo.city }}, \n      {{ personalInfo.country }}\n    </p>\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\n  </div>\n\n  <!-- قسم الملخص -->\n  <div class=\"summary\">\n\n    <h3>{{ sectionTitles.summary }}</h3>\n    <p>{{ personalInfo.summary }}</p>\n  </div>\n\n  <!-- قسم الخبرات العملية -->\n  <div class=\"employment-history\">\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\n      <p>City: {{ job.city }}</p>\n      <p>{{ job.descriptions }}</p>\n    </div>\n  </div>\n\n  <!-- قسم التعليم -->\n  <div class=\"education\">\n    <h3>{{ sectionTitles.education }}</h3>\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\n      <p>City: {{ edu.city }}</p>\n      <p>{{ edu.descriptions }}</p>\n    </div>\n  </div>\n\n  <div class=\"websites-social-links\">\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\n    </div>\n  </div>\n\n  <div class=\"skills\">\n    <h3>{{ sectionTitles.skills }}</h3>\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\n    </div>\n  </div>\n\n\n</div>', 'asfasasfv', 0, 'active', 1, '2025-01-23 13:12:11', '2025-01-23 14:17:56', '2025-01-23 14:17:56'),
(3, '2', '', '', NULL, '<div class=\"resume\">\r\n  <!-- قسم المعلومات الشخصية -->\r\n  <div class=\"personal-info\">\r\n\r\n    <h3>{{ sectionTitles.personalInfo }}</h3>\r\n\r\n\r\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\r\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\r\n    <h2>{{ personalInfo.job_title }}</h2>\r\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\r\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\r\n    <p>\r\n      <strong>Address:</strong> {{ personalInfo.address }}, \r\n      {{ personalInfo.city }}, \r\n      {{ personalInfo.country }}\r\n    </p>\r\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\r\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\r\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\r\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\r\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\r\n  </div>\r\n\r\n  <!-- قسم الملخص -->\r\n  <div class=\"summary\">\r\n\r\n    <h3>{{ sectionTitles.summary }}</h3>\r\n    <p>{{ personalInfo.summary }}</p>\r\n  </div>\r\n\r\n  <!-- قسم الخبرات العملية -->\r\n  <div class=\"employment-history\">\r\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\r\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\r\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\r\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\r\n      <p>City: {{ job.city }}</p>\r\n      <p>{{ job.descriptions }}</p>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- قسم التعليم -->\r\n  <div class=\"education\">\r\n    <h3>{{ sectionTitles.education }}</h3>\r\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\r\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\r\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\r\n      <p>City: {{ edu.city }}</p>\r\n      <p>{{ edu.descriptions }}</p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"websites-social-links\">\r\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\r\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\r\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"skills\">\r\n    <h3>{{ sectionTitles.skills }}</h3>\r\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\r\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\r\n    </div>\r\n  </div>\r\n\r\n\r\n</div>', 'asfasf', 0, 'active', 1, '2025-01-23 14:10:47', '2025-01-23 14:17:52', '2025-01-23 14:17:52'),
(4, '2', '', '', NULL, '<div class=\"resume\">\n  <!-- قسم المعلومات الشخصية -->\n  <div class=\"personal-info\">\n\n    <h3>{{ sectionTitles.personalInfo }}</h3>\n\n\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\n    <h2>{{ personalInfo.job_title }}</h2>\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\n    <p>\n      <strong>Address:</strong> {{ personalInfo.address }}, \n      {{ personalInfo.city }}, \n      {{ personalInfo.country }}\n    </p>\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\n  </div>\n\n  <!-- قسم الملخص -->\n  <div class=\"summary\">\n\n    <h3>{{ sectionTitles.summary }}</h3>\n    <p>{{ personalInfo.summary }}</p>\n  </div>\n\n  <!-- قسم الخبرات العملية -->\n  <div class=\"employment-history\">\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\n      <p>City: {{ job.city }}</p>\n      <p>{{ job.descriptions }}</p>\n    </div>\n  </div>\n\n  <!-- قسم التعليم -->\n  <div class=\"education\">\n    <h3>{{ sectionTitles.education }}</h3>\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\n      <p>City: {{ edu.city }}</p>\n      <p>{{ edu.descriptions }}</p>\n    </div>\n  </div>\n\n  <div class=\"websites-social-links\">\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\n    </div>\n  </div>\n\n  <div class=\"skills\">\n    <h3>{{ sectionTitles.skills }}</h3>\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\n    </div>\n  </div>\n\n\n</div>', 'asfasf', 0, 'active', 1, '2025-01-23 14:14:32', '2025-01-23 14:17:48', '2025-01-23 14:17:48'),
(5, '2', 'dfsdf,sdfsdf', 'سيسيب,سيبسيبيي', 'uploads/resume/67926d2fb9e41.png', '<div class=\"resume\">\r\n  <!-- قسم المعلومات الشخصية -->\r\n  <div class=\"personal-info\">\r\n\r\n    <h3>{{ sectionTitles.personalInfo }}</h3>\r\n\r\n\r\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\r\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\r\n    <h2>{{ personalInfo.job_title }}</h2>\r\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\r\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\r\n    <p>\r\n      <strong>Address:</strong> {{ personalInfo.address }}, \r\n      {{ personalInfo.city }}, \r\n      {{ personalInfo.country }}\r\n    </p>\r\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\r\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\r\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\r\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\r\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\r\n  </div>\r\n\r\n  <!-- قسم الملخص -->\r\n  <div class=\"summary\">\r\n\r\n    <h3>{{ sectionTitles.summary }}</h3>\r\n    <p>{{ personalInfo.summary }}</p>\r\n  </div>\r\n\r\n  <!-- قسم الخبرات العملية -->\r\n  <div class=\"employment-history\">\r\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\r\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\r\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\r\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\r\n      <p>City: {{ job.city }}</p>\r\n      <p>{{ job.descriptions }}</p>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- قسم التعليم -->\r\n  <div class=\"education\">\r\n    <h3>{{ sectionTitles.education }}</h3>\r\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\r\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\r\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\r\n      <p>City: {{ edu.city }}</p>\r\n      <p>{{ edu.descriptions }}</p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"websites-social-links\">\r\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\r\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\r\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"skills\">\r\n    <h3>{{ sectionTitles.skills }}</h3>\r\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\r\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\r\n    </div>\r\n  </div>\r\n\r\n\r\n</div>', 'dfsdd', 0, 'active', 1, '2025-01-23 14:20:26', '2025-01-23 14:24:15', NULL),
(6, '2', '[{\"value\":\"sdsd\"},{\"value\":\"sdvsd\"},{\"value\":\"sbsd\"},{\"value\":\"sdbsd\"}]', '[{\"value\":\"sdsd\"},{\"value\":\"sdvsd\"},{\"value\":\"sbsd\"},{\"value\":\"sdbsd\"}]', 'uploads/resume/6793e3edc7aea.jpeg', '<div class=\"resume\">\n  <!-- قسم المعلومات الشخصية -->\n  <div class=\"personal-info\">\n\n    <h3>{{ sectionTitles.personalInfo }}</h3>\n\n\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\n    <h2>{{ personalInfo.job_title }}</h2>\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\n    <p>\n      <strong>Address:</strong> {{ personalInfo.address }}, \n      {{ personalInfo.city }}, \n      {{ personalInfo.country }}\n    </p>\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\n  </div>\n\n  <!-- قسم الملخص -->\n  <div class=\"summary\">\n\n    <h3>{{ sectionTitles.summary }}</h3>\n    <p>{{ personalInfo.summary }}</p>\n  </div>\n\n  <!-- قسم الخبرات العملية -->\n  <div class=\"employment-history\">\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\n      <p>City: {{ job.city }}</p>\n      <p>{{ job.descriptions }}</p>\n    </div>\n  </div>\n\n  <!-- قسم التعليم -->\n  <div class=\"education\">\n    <h3>{{ sectionTitles.education }}</h3>\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\n      <p>City: {{ edu.city }}</p>\n      <p>{{ edu.descriptions }}</p>\n    </div>\n  </div>\n\n  <div class=\"websites-social-links\">\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\n    </div>\n  </div>\n\n  <div class=\"skills\">\n    <h3>{{ sectionTitles.skills }}</h3>\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\n    </div>\n  </div>\n\n\n</div>', 'sdsdb', 0, 'active', 1, '2025-01-24 17:03:09', '2025-01-24 17:15:42', '2025-01-24 17:15:42'),
(7, '2', '[{\"value\":\"acas\"},{\"value\":\"asvasv\"}]', '[{\"value\":\"adccas\"},{\"value\":\"avasv\"},{\"value\":\"avas\"},{\"value\":\"dvsdv\"}]', 'uploads/resume/6793e723dbb10.jpeg', '<div class=\"resume\">\r\n  <!-- قسم المعلومات الشخصية -->\r\n  <div class=\"personal-info\">\r\n\r\n    <h3>{{ sectionTitles.personalInfo }}</h3>\r\n\r\n\r\n    <img :src=\"personalInfo.logo || \'https://via.placeholder.com/150\'\" alt=\"Profile Photo\">\r\n    <h1>{{ personalInfo.first_name }} {{ personalInfo.last_name }}</h1>\r\n    <h2>{{ personalInfo.job_title }}</h2>\r\n    <p><strong>Email:</strong> {{ personalInfo.email }}</p>\r\n    <p><strong>Phone:</strong> {{ personalInfo.mobile }}</p>\r\n    <p>\r\n      <strong>Address:</strong> {{ personalInfo.address }}, \r\n      {{ personalInfo.city }}, \r\n      {{ personalInfo.country }}\r\n    </p>\r\n    <p><strong>Postal Code:</strong> {{ personalInfo.postal_code }}</p>\r\n    <p><strong>Driving License:</strong> {{ personalInfo.driving_license }}</p>\r\n    <p><strong>Nationality:</strong> {{ personalInfo.nationality }}</p>\r\n    <p><strong>Place of Birth:</strong> {{ personalInfo.place_of_birth }}</p>\r\n    <p><strong>Date of Birth:</strong> {{ personalInfo.date_of_birth }}</p>\r\n  </div>\r\n\r\n  <!-- قسم الملخص -->\r\n  <div class=\"summary\">\r\n\r\n    <h3>{{ sectionTitles.summary }}</h3>\r\n    <p>{{ personalInfo.summary }}</p>\r\n  </div>\r\n\r\n  <!-- قسم الخبرات العملية -->\r\n  <div class=\"employment-history\">\r\n    <h3>{{ sectionTitles.employmentHistory }}</h3>\r\n    <div v-for=\"job in personalInfo.employmentHistory\" :key=\"job.id\">\r\n      <p>{{ job.job_title }} - {{ job.employer }}</p>\r\n      <p>Dates: {{ job.start_date }} - {{ job.end_date }}</p>\r\n      <p>City: {{ job.city }}</p>\r\n      <p>{{ job.descriptions }}</p>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- قسم التعليم -->\r\n  <div class=\"education\">\r\n    <h3>{{ sectionTitles.education }}</h3>\r\n    <div v-for=\"edu in personalInfo.education\" :key=\"edu.id\">\r\n      <p>{{ edu.degree }} - {{ edu.school }}</p>\r\n      <p>Dates: {{ edu.start_date }} - {{ edu.end_date }}</p>\r\n      <p>City: {{ edu.city }}</p>\r\n      <p>{{ edu.descriptions }}</p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"websites-social-links\">\r\n    <h3>{{ sectionTitles.websitesAndSocialLinks }}</h3>\r\n    <div v-for=\"social in personalInfo.websitesAndSocialLinks\" :key=\"social.id\">\r\n      <p>{{ social.label }}: <a :href=\"social.link\" target=\"_blank\">{{ social.link }}</a></p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"skills\">\r\n    <h3>{{ sectionTitles.skills }}</h3>\r\n    <div v-for=\"skill in personalInfo.skills\" :key=\"skill.id\">\r\n      <p>{{ skill.skill }}: {{ skill.level }}</p>\r\n    </div>\r\n  </div>\r\n\r\n\r\n</div>', 'asvas', 0, 'active', 1, '2025-01-24 17:16:51', '2025-03-21 15:45:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_resume_translations`
--

DROP TABLE IF EXISTS `template_resume_translations`;
CREATE TABLE IF NOT EXISTS `template_resume_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_resume_id` int NOT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `template_resume_translations`
--

INSERT INTO `template_resume_translations` (`id`, `template_resume_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'en', 'sdfsdd', 'asdfafas', '2025-01-23 13:12:11', '2025-01-23 13:12:11', NULL),
(2, 2, 'ar', 'asdsdaas', 'asfasf', '2025-01-23 13:12:11', '2025-01-23 13:12:11', NULL),
(3, 3, 'en', 'asfa', 'asfasd', '2025-01-23 14:10:47', '2025-01-23 14:10:47', NULL),
(4, 3, 'ar', 'afas', 'asfasf', '2025-01-23 14:10:47', '2025-01-23 14:10:47', NULL),
(5, 4, 'en', 'adavaas', 'avasvasv', '2025-01-23 14:14:32', '2025-01-23 14:14:32', NULL),
(6, 4, 'ar', 'avasv', 'avavas', '2025-01-23 14:14:32', '2025-01-23 14:14:32', NULL),
(7, 5, 'en', 'sdfsdfd', 'sdfsdg', '2025-01-23 14:20:26', '2025-01-23 14:20:26', NULL),
(8, 5, 'ar', 'sdgsdg', 'sdgsdgs', '2025-01-23 14:20:26', '2025-01-23 14:20:26', NULL),
(9, 6, 'en', 'sdvsdbsd', 'sdvsdv', '2025-01-24 17:03:09', '2025-01-24 17:03:09', NULL),
(10, 6, 'ar', 'advd', 'sdvsd', '2025-01-24 17:03:09', '2025-01-24 17:03:09', NULL),
(11, 7, 'en', 'avasv', 'asvas', '2025-01-24 17:16:51', '2025-01-24 17:16:51', NULL),
(12, 7, 'ar', 'asvasv', 'asvas', '2025-01-24 17:16:51', '2025-01-24 17:16:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `pwd`, `password`, `remember_token`, `status`, `notes`, `logo`, `code`, `verification`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 'sdv', 'mohamed@gmail.com', '(+888) 888-888-888', '123456789_Ab', '$2y$12$UN.GmFqpXTf5MVQ.z02z9.nSgMTx/5TMWE1nnomX0NWm8iM8v8qTe', NULL, 'active', NULL, NULL, '1111', 0, 17, '2025-01-28 15:12:06', '2025-01-28 16:57:30', NULL),
(18, 'Mohamed', 'moh@gmail.com', '(+444) 444-444-444', '123456789@Aa', '$2y$12$pCN0D9oyNzIfsKrS/hrwrecaQfCYXyZbwRIPTc0c43ozMY9X5.E9y', NULL, 'active', 'asvasvs', 'uploads/user/679fb4378d70d.jpg', '1111', 0, 18, '2025-01-28 17:13:08', '2025-02-02 17:00:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_resumes`
--

DROP TABLE IF EXISTS `user_resumes`;
CREATE TABLE IF NOT EXISTS `user_resumes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `resume_template_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `first_name` varchar(500) DEFAULT NULL,
  `last_name` varchar(500) DEFAULT NULL,
  `job_title` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mobile` varchar(500) DEFAULT NULL,
  `country` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `postal_code` varchar(500) DEFAULT NULL,
  `driving_license` varchar(500) DEFAULT NULL,
  `nationality` varchar(500) DEFAULT NULL,
  `place_of_birth` varchar(500) DEFAULT NULL,
  `date_of_birth` varchar(500) DEFAULT NULL,
  `title_summery` varchar(500) DEFAULT NULL,
  `summary` longtext,
  `logo` varchar(255) DEFAULT NULL,
  `content_data` json DEFAULT NULL,
  `status` enum('draft','complete') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted-at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
