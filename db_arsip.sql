-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Sep 2024 pada 05.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arsip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokouts`
--

CREATE TABLE `dokouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_masuk` varchar(255) NOT NULL,
  `tgl_keluar` varchar(255) NOT NULL,
  `jenis_dokumen` varchar(255) NOT NULL,
  `nama_pembuat` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `dokouts`
--

INSERT INTO `dokouts` (`id`, `no_surat`, `tgl_masuk`, `tgl_keluar`, `jenis_dokumen`, `nama_pembuat`, `penerima`, `created_at`, `updated_at`) VALUES
(1, '12/AK/01/2023', '2024-01-23', '2024-02-23', 'Akte Kelahiran', 'Operator', 'Admin', NULL, NULL),
(3, '112234444', '2024-02-08', '2024-02-08', 'AKTE KELAHIRAN', 'medut', '( Super Admin ) - admin', '2024-02-08 00:24:48', '2024-02-08 00:24:48'),
(4, '2342134dsfsd', '2024-02-08', '2024-02-08', 'KK', 'MANG dudung', '( Super Admin ) - admin', '2024-02-08 00:25:55', '2024-02-08 00:25:55'),
(5, '2342134dsfsd', '2024-02-07', '2024-07-07', 'KK', 'SUPARNO', '( Super Admin ) - admin', '2024-07-06 23:00:17', '2024-07-06 23:00:17'),
(7, '1003/KTP/Kec/Rubah', '2024-07-08', '2024-07-28', 'KTP', 'Ayla', 'Ikfar Pradianto - ( admin )', '2024-07-28 04:59:52', '2024-07-28 04:59:52'),
(8, '1001/KTP/Kec/Reg', '2024-06-19', '2024-07-28', 'KTP', 'Febriansyah', 'Ikfar Pradianto - ( admin )', '2024-07-28 04:59:56', '2024-07-28 04:59:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_17_060654_create_m_indoks_table', 1),
(6, '2024_01_17_072609_create_petugas_table', 1),
(7, '2024_02_04_111336_create_dokouts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_indoks`
--

CREATE TABLE `m_indoks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_masuk` varchar(255) NOT NULL,
  `jenis_dokumen` varchar(255) NOT NULL,
  `nama_pembuat` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `m_indoks`
--

INSERT INTO `m_indoks` (`id`, `no_surat`, `tgl_masuk`, `jenis_dokumen`, `nama_pembuat`, `penerima`, `created_at`, `updated_at`) VALUES
(7, '2004/KK/Kec/Reg', '2024-07-01', 'KK', 'Turyatno Wibowo', 'Mia Hildayanti - ( petugas )', '2024-07-06 22:59:11', '2024-07-06 22:59:11'),
(8, '3001/Akte/Kec/Reg', '2024-07-04', 'AKTE KELAHIRAN', 'Dwi Astuti Dewi', 'Mia Hildayanti - ( petugas )', '2024-07-06 23:00:06', '2024-07-06 23:00:06'),
(9, '1005/KK/Kec/Rubah', '2024-07-02', 'KK', 'Ujang Subarna', 'Viktoria S.Sos - ( operator )', '2024-07-06 23:01:56', '2024-07-06 23:01:56'),
(10, '1005/Kec/KTP/Reg/Rekam', '2024-07-05', 'KTP', 'Tri Novi Adiningsih', 'Viktoria S.Sos - ( operator )', '2024-07-06 23:02:41', '2024-07-28 05:03:48'),
(11, '30012/Akte/Kec/Reg', '2024-07-08', 'AKTE KELAHIRAN', 'Eni Nuraeni', 'Fenia Yulianti - ( operator )', '2024-07-08 04:55:59', '2024-07-08 04:57:01'),
(14, '2015/KK/Reg/Rubah', '2024-07-29', 'KK', 'Bunyamin', 'Mia Hildayanti - ( petugas )', '2024-07-28 04:59:45', '2024-07-28 04:59:45'),
(15, '1010/Kec/KTP/Reg/Rekam', '2024-07-18', 'KTP', 'Muhammad Qianzi', 'Yayan Riyan - ( operator )', '2024-07-28 05:03:09', '2024-07-28 05:03:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `nip`, `nama`, `alamat`, `jenis_kelamin`, `jabatan`, `created_at`, `updated_at`, `user_id`) VALUES
(5, '2000123845510', 'Mia Hildayanti S.Sos', 'Kp Babakan Seke Rt 02 Rw 03 Ds Bojong Kec Majalaya', 'perempuan', 'petugas', '2024-02-08 23:20:10', '2024-07-08 04:35:52', 4),
(6, '1920113860002', 'Viktoria S.Sos', 'Kp Cidawolong Rt 03 Rw 07 Ds Padaulun Kec Majalaya', 'laki-laki', 'petugas', '2024-02-08 23:59:33', '2024-07-08 04:37:00', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','operator','petugas') NOT NULL DEFAULT 'operator',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Mia Hildayanti', 'miahilda@gmail.com', NULL, '$2y$12$xbnMLyVZygVW2RuvOvQixe3nf9UYsR0c00zNiYgBJ59VZ98NNwtHu', 'petugas', NULL, '2024-02-08 23:20:09', '2024-07-28 04:57:44'),
(5, 'Viktoria S.Sos', 'viktoria@gmail.com', NULL, '$2y$12$aJ1TkIJMdvDA6SkPsSXP4.Q6zJV/m7cL2GpjUUiJ.n3kKQoyG.igu', 'petugas', NULL, '2024-02-08 23:59:33', '2024-07-08 04:37:00'),
(6, 'Ikfar Pradianto', 'ikfarpradianto@gmail.com', NULL, '$2y$12$fU9D0rPxbNcDrih/8K74We4nNTazsKb6YPsaZITUvfanZJi1A.iN.', 'admin', NULL, '2024-07-06 22:31:27', '2024-07-06 22:31:27'),
(7, 'Fenia Yulianti', 'feniayulianti@gmail.com', NULL, '$2y$12$xoFXSXLNpHwEAQmX9yAfN.NqpXhqp5rbmT9VZpTkv8HlYOCkoJsQu', 'operator', NULL, '2024-07-06 22:53:23', '2024-07-06 22:53:23'),
(8, 'Yayan Riyan', 'yayan@gmail.com', NULL, '$2y$12$5yOZyf5UaS8bnmHsFFM5dufTVtJqlaS0vojFtWCO2ncIUcFzDTkz.', 'operator', NULL, '2024-07-28 05:01:42', '2024-07-28 05:01:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokouts`
--
ALTER TABLE `dokouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `m_indoks`
--
ALTER TABLE `m_indoks`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `petugas_nip_unique` (`nip`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokouts`
--
ALTER TABLE `dokouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `m_indoks`
--
ALTER TABLE `m_indoks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
