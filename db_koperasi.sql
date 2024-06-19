-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2024 at 04:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_13_074147_create_nasabah_table', 2),
(6, '2024_03_16_201217_create_simpanan_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_simpanan` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_pinjaman` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id`, `nama`, `alamat`, `nomor_ktp`, `nomor_hp`, `foto_ktp`, `total_simpanan`, `total_pinjaman`, `created_at`, `updated_at`) VALUES
(2, 'Rambo Mandala Putra', 'jalanin aja', '42142412312312', '082312312', '0eb97b756e2a24dc0ea315b6f0ae296cc33895658fbc37c2724299354099447e.jpeg', 12000.00, 0.00, '2024-03-13 01:51:51', '2024-03-17 10:51:34'),
(3, 'Safira Saragih', 'jalanin aja', '42142412312312', '333333333333333', '918265fe6c0f93231ac547e98b91ae0fe372913edb0d0ec49ab7303ad002d813.png', 5000.00, 0.00, '2024-03-17 08:22:24', '2024-03-17 11:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint NOT NULL,
  `nip` varchar(299) NOT NULL,
  `foto` varchar(299) NOT NULL,
  `nama` varchar(99) NOT NULL,
  `umur` int NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `agama` varchar(299) NOT NULL,
  `status_pernikahan` varchar(299) NOT NULL,
  `jabatan` varchar(99) NOT NULL,
  `alamat` varchar(99) NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `waktu_masuk` date NOT NULL,
  `remember_token` varchar(299) NOT NULL,
  `role` varchar(99) NOT NULL,
  `fotoktp` varchar(233) NOT NULL,
  `fotoakte` varchar(222) NOT NULL,
  `fotokartukeluarga` varchar(222) NOT NULL,
  `fotobpjs` varchar(222) NOT NULL,
  `fotonpwp` varchar(222) NOT NULL,
  `fototaspen` varchar(222) NOT NULL,
  `fotokartupegawai` varchar(222) NOT NULL,
  `fotoijazahsd` varchar(222) NOT NULL,
  `fotoijazahsmp` varchar(222) NOT NULL,
  `fotoijazahsma` varchar(222) NOT NULL,
  `fotoijazahperguruantinggi` varchar(222) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `foto`, `nama`, `umur`, `jenis_kelamin`, `agama`, `status_pernikahan`, `jabatan`, `alamat`, `nomor_telepon`, `waktu_masuk`, `remember_token`, `role`, `fotoktp`, `fotoakte`, `fotokartukeluarga`, `fotobpjs`, `fotonpwp`, `fototaspen`, `fotokartupegawai`, `fotoijazahsd`, `fotoijazahsmp`, `fotoijazahsma`, `fotoijazahperguruantinggi`, `created_at`, `updated_at`) VALUES
(61, '111', '9b8387b33a4c09cc94375c39c6beda393852aa3e9c05ac9fe197b68c54364ed2.jpg', 'adas', 57, 'Perempuan', 'Hindu', 'Nikah', 'ketua', 'afaefaefae', '321123', '2023-06-24', '4eEB1ZU4pi5ZKqsjQGb69LHP8mjTw35vX2752T2P4sKa0cwWisiXdKvi1XIb', 'pegawai', '8e037bbcba704c83a10a7657173314a2c6de5a7db24d0dece6a0301884f4c027.pdf', '', '', '', '', '', '', '', '', '', '', '2023-06-23 13:25:23', '2024-01-02 08:46:26'),
(62, '222', 'ddf49688800ea4ef53e3be8ac533167e4ffa1983fd3ef22698e76bbf3927d3cf.png', 'gelombang cinta', 57, 'Laki-laki', 'Hindu', 'Nikah', 'ketua', 'jgtfutfu', '9679679', '2023-06-24', 'uxIw23ACCYmoLHYyZXZ7r9NqTE4Wd7xgHUYunAUkXISX6DtbNLTmzA68Rdok', 'pegawai', '', '', '', '', '', '', '', '', '', '', '', '2023-06-23 13:25:50', '2023-06-23 13:25:50'),
(63, '12224234324', 'e98fbc11bf4eea523151d2365637816523e187efa31cf656567224b214cabade.png', 'ada', 23, 'Laki-laki', 'Protestan', 'Nikah', 'dokter', 'jgtfutfu', '9679679', '2024-01-31', 'Mn1bzmC93xjhEafQdEOthj1Js6K0WzlqmaaIZVeKxa3gZXizgmOsjoJb06PG', 'pegawai', '', '', '', '', '', '', '', '', '', '', '', '2024-01-02 08:28:52', '2024-01-02 08:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id` bigint UNSIGNED NOT NULL,
  `nasabah_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id`, `nasabah_id`, `status`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 2, 'debit', 12000.00, '2024-03-17 10:51:34', '2024-03-17 10:51:34'),
(3, 3, 'debit', 10000.00, '2024-03-17 10:58:14', '2024-03-17 10:58:14'),
(4, 3, 'kredit', 1000.00, '2024-03-17 11:12:10', '2024-03-17 11:12:10'),
(5, 3, 'kredit', 4000.00, '2024-03-17 11:12:24', '2024-03-17 11:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `nama` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password` varchar(299) NOT NULL,
  `role` varchar(299) NOT NULL,
  `email_verified_at` varchar(99) DEFAULT NULL,
  `remember_token` varchar(99) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$PW4fTL7VsgSeBXBSCIGhF.PTGuoQ5KZJ8OqgssxIVFj3u/fnOX.a2', 'admin', NULL, 'PBY07yx7g00VSt0PPUSKwqQxnFNtPiV2tGx93069JvNW2FrRIWafQi7d3wmq', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$m.NZAFi41.9Zo2LPJg7PP.o3eJq0FKwRLUDLCK0hwX61wH7wOaIcW', NULL, '2022-12-20 14:24:52', '2022-12-20 14:24:52');

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
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simpanan_nasabah_id_foreign` (`nasabah_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nasabah`
--
ALTER TABLE `nasabah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD CONSTRAINT `simpanan_nasabah_id_foreign` FOREIGN KEY (`nasabah_id`) REFERENCES `nasabah` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
