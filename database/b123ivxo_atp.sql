-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2024 at 02:49 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b123ivxo_atp`
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_master`
--

CREATE TABLE `form_master` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `form_master`
--

INSERT INTO `form_master` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Form1', 1, '2024-03-06', '2024-03-06'),
(2, 'Form2', 1, '2024-03-06', '2024-03-06'),
(3, 'Form3', 1, '2024-03-06', '2024-03-06'),
(4, 'Form4', 1, '2024-03-06', '2024-03-06'),
(5, 'Form5', 1, '2024-03-06', '2024-03-06'),
(6, 'Form6', 1, '2024-03-06', '2024-03-06');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privillege_master`
--

CREATE TABLE `privillege_master` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privillege_master`
--

INSERT INTO `privillege_master` (`id`, `title`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Form Read', 'form_read', 1, '2024-03-06', '2024-03-06'),
(2, 'Form Write', 'form_write', 1, '2024-03-06', '2024-03-06'),
(3, 'Form Edit', 'form_edit', 1, '2024-03-06', '2024-03-06'),
(4, 'Form Pdf', 'form_pdf', 1, '2024-03-06', '2024-03-06'),
(5, 'User Manage', 'user_manage', 1, '2024-03-06', '2024-03-06'),
(6, 'Subadmin Manage\r\n', 'subadmin_manage', 1, '2024-03-06', '2024-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `role_access`
--

CREATE TABLE `role_access` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `privillege_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_access`
--

INSERT INTO `role_access` (`id`, `role_id`, `privillege_id`, `form_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, 1, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(15, 1, 2, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(16, 1, 3, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(17, 1, 4, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(18, 1, 4, 1, 'form', NULL, '2024-03-06', '2024-03-06'),
(19, 1, 4, 2, 'form', NULL, '2024-03-06', '2024-03-06'),
(20, 1, 4, 3, 'form', NULL, '2024-03-06', '2024-03-06'),
(21, 1, 4, 4, 'form', NULL, '2024-03-06', '2024-03-06'),
(22, 2, 1, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(23, 2, 2, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(24, 2, 3, NULL, 'privillege', NULL, '2024-03-06', '2024-03-06'),
(31, 2, NULL, 1, 'form', NULL, '2024-03-06', '2024-03-06'),
(32, 2, NULL, 2, 'form', NULL, '2024-03-06', '2024-03-06'),
(33, 2, NULL, 3, 'form', NULL, '2024-03-06', '2024-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`id`, `title`, `admin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sub Admin', '1', NULL, '2024-03-06', '2024-03-06'),
(2, 'IT Supervisor', '0', NULL, '2024-03-06', '2024-03-06');

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
  `admin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `admin`, `role_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ATP Admin', 'admin@atptour.com', NULL, '$2y$12$gkle/bUTQtjcgmHdgY/6zOrtV0UakYSepjd9EuBwoGLvZJFq9WuJe', NULL, '0', 0, 'super_admin', '1', '2024-03-05 01:41:37', '2024-03-05 01:41:37'),
(3, 'Sub Admin', 'admin@mail.com', NULL, '$2y$12$gkle/bUTQtjcgmHdgY/6zOrtV0UakYSepjd9EuBwoGLvZJFq9WuJe', NULL, '1', 1, NULL, '1', NULL, NULL),
(5, 'Vineetha', 'vineetha@gmail.com', NULL, '$2y$10$TyN7rbiaL8IPsqhdMYrPTunW3QEkPyi1Yigr7oeAoG9WQFYF.CZgK', NULL, '0', 2, NULL, '1', NULL, NULL),
(6, 'Paul', 'paulosebose@gmail.com', NULL, '$2y$12$gkle/bUTQtjcgmHdgY/6zOrtV0UakYSepjd9EuBwoGLvZJFq9WuJe', NULL, '0', 2, NULL, '1', NULL, NULL),
(7, 'Asha', 'test@gmail.com', NULL, '$2y$10$W6R98nishWF.ok3gz358G.CBSKEXu2YPRJ9MeeN0VQeLyeK/Uvxxi', NULL, '0', 2, NULL, '1', NULL, NULL),
(8, 'Krishna', 'test@example.com', NULL, '$2y$10$89GiSVkFVnuhMeJvyHz8WuMh09xInIutG9qiuDQXkfAwYC1IdKWAS', NULL, '1', 1, NULL, '1', NULL, NULL),
(9, 'Rahul', 'test4@gmail.com', NULL, '$2y$10$q9eDRNeC7cuRCIyzdSUoJ.6mBrZQQwFHy1ZlaekZ7Buj4EttA5I1.', NULL, '1', 1, NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `privillege_id` int(11) DEFAULT NULL,
  `tournament_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`id`, `user_id`, `privillege_id`, `tournament_id`, `type`, `created_at`, `updated_at`) VALUES
(9, 3, 1, NULL, 'privillege', '2024-03-06', '2024-03-06'),
(10, 3, 2, NULL, 'privillege', '2024-03-06', '2024-03-06'),
(11, 3, 3, NULL, 'privillege', '2024-03-06', '2024-03-06'),
(12, 3, 4, NULL, 'privillege', '2024-03-06', '2024-03-06'),
(20, 5, 1, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(21, 5, 2, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(22, 7, 1, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(23, 7, 2, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(24, 7, 3, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(29, 8, 1, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(30, 8, 4, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(36, 9, 1, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(37, 6, 5, NULL, 'privillege', '2024-03-07', '2024-03-07'),
(38, 6, 6, NULL, 'privillege', '2024-03-07', '2024-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `user_id`, `form_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 3, 1, '1', '2024-03-06', '2024-03-06'),
(10, 3, 4, '1', '2024-03-06', '2024-03-06'),
(23, 5, 1, '1', '2024-03-07', '2024-03-07'),
(24, 5, 2, '1', '2024-03-07', '2024-03-07'),
(25, 7, 1, '1', '2024-03-07', '2024-03-07'),
(26, 7, 2, '1', '2024-03-07', '2024-03-07'),
(27, 7, 3, '1', '2024-03-07', '2024-03-07'),
(32, 8, 1, '1', '2024-03-07', '2024-03-07'),
(33, 8, 3, '1', '2024-03-07', '2024-03-07'),
(34, 8, 4, '1', '2024-03-07', '2024-03-07'),
(47, 9, 1, '1', '2024-03-07', '2024-03-07'),
(48, 6, 1, '1', '2024-03-07', '2024-03-07'),
(49, 6, 2, '1', '2024-03-07', '2024-03-07');

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
-- Indexes for table `form_master`
--
ALTER TABLE `form_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privillege_master`
--
ALTER TABLE `privillege_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_access`
--
ALTER TABLE `role_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
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
-- AUTO_INCREMENT for table `form_master`
--
ALTER TABLE `form_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privillege_master`
--
ALTER TABLE `privillege_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_access`
--
ALTER TABLE `role_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
