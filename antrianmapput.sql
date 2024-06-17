-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 17 Jun 2024 pada 05.12
-- Versi server: 10.11.4-MariaDB
-- Versi PHP: 8.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrianmapput`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `harga` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `charge` int(10) UNSIGNED NOT NULL,
  `total_harga` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_orders`
--

INSERT INTO `detail_orders` (`id`, `order_id`, `product_id`, `user_id`, `harga`, `jumlah`, `charge`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 5000, 2, 150000, 160000, '2024-06-12 23:01:47', '2024-06-12 23:01:47'),
(2, 2, 2, 0, 5000, 80, 100000, 4100000000, '2024-06-12 23:01:47', '2024-06-12 23:01:47'),
(3, 4, 4, 0, 321, 4, 150000, 151284, '2024-06-13 18:52:56', '2024-06-13 18:52:56'),
(4, 4, 4, 0, 321, 100, 0, 32100, '2024-06-13 18:58:10', '2024-06-13 18:58:10'),
(5, 4, 4, 0, 321, 10, 150000, 153210, '2024-06-13 19:07:34', '2024-06-13 19:07:34'),
(6, 4, 4, 0, 321, 15, 150000, 154815, '2024-06-13 19:09:11', '2024-06-13 19:09:11'),
(7, 4, 4, 0, 321, 90, 100000, 128890, '2024-06-13 19:09:45', '2024-06-13 19:09:45'),
(8, 4, 4, 9, 321, 80, 100000, 125680, '2024-06-13 19:18:53', '2024-06-13 19:18:53'),
(9, 4, 4, 9, 321, 10, 150000, 153210, '2024-06-13 19:33:39', '2024-06-13 19:33:39'),
(10, 4, 4, 9, 321, 10, 150000, 153210, '2024-06-14 21:35:17', '2024-06-14 21:35:17'),
(11, 4, 4, 9, 321, 100, 0, 32100, '2024-06-14 21:35:39', '2024-06-14 21:35:39'),
(12, 4, 4, 9, 321, 5, 150000, 151605, '2024-06-14 21:36:17', '2024-06-14 21:36:17'),
(13, 3, 3, 10, 50000, 100, 0, 5000000, '2024-06-14 23:37:00', '2024-06-14 23:37:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_13_025119_create_permission_tables', 1),
(6, '2024_06_13_054337_order', 1),
(7, '2024_06_13_054425_create_detail_orders_table', 1),
(8, '2024_06_13_054531_create_products_table', 1),
(16, '2024_06_13_054733_create_transactions_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `harga` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_order` date NOT NULL,
  `status_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `harga`, `user_id`, `tanggal_order`, `status_order`, `created_at`, `updated_at`) VALUES
(1, 1, 5000000, 1, '2024-06-06', 1, '2024-06-12 23:01:59', '2024-06-12 23:01:59'),
(2, 2, 5000000, 2, '2024-06-06', 1, '2024-06-12 23:01:59', '2024-06-12 23:01:59'),
(3, 4, 321, 9, '2024-06-14', 1, '2024-06-12 23:18:55', '2024-06-12 23:18:55'),
(4, 4, 321, 9, '2024-06-14', 1, '2024-06-13 18:52:32', '2024-06-13 18:52:32'),
(5, 3, 50000, 10, '2024-06-15', 1, '2024-06-14 23:36:46', '2024-06-14 23:36:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`, `created_at`, `updated_at`) VALUES
(1, 'Baju', 'Baju berwarna merah', 100000, 'baju.jpg', '2024-06-12 23:02:17', '2024-06-12 23:02:17'),
(2, 'Celana', 'Celana berwarna biru', 150000, 'celana.jpg', '2024-06-12 23:02:17', '2024-06-12 23:02:17'),
(3, 'Topi', 'Topi berwarna hitam', 50000, 'topi.jpg', '2024-06-12 23:02:17', '2024-06-12 23:02:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-06-12 23:12:10', '2024-06-12 23:12:10'),
(2, 'user', 'web', '2024-06-12 23:12:10', '2024-06-12 23:12:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `harga` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `bayar` varchar(255) NOT NULL,
  `sisa_bayar` varchar(255) NOT NULL,
  `tanggal_transaksi` varchar(255) NOT NULL,
  `tanggal_selesai` varchar(255) NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL,
  `status_produksi` varchar(255) NOT NULL,
  `status_transaksi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `product_id`, `harga`, `jumlah`, `charge`, `total_harga`, `bayar`, `sisa_bayar`, `tanggal_transaksi`, `tanggal_selesai`, `bukti_bayar`, `status_produksi`, `status_transaksi`, `created_at`, `updated_at`) VALUES
(5, 9, 5, '1605', '205', '550000', '551605', '100000', '451605', '2024-06-15', '2024-06-29', 'transakrip_nilai_haris_handiyana.jpg', 'Selesai diproses', 'Belum Lunas', '2024-06-14 23:01:54', '2024-06-14 23:01:54'),
(6, 9, 5, '1605', '205', '550000', '551605', '39', '551566', '1979-06-03', '1979-06-17', 'transakrip_nilai_haris_handiyana.jpg', 'Selesai Diproduksi', 'Belum Lunas', '2024-06-14 23:18:17', '2024-06-14 23:18:17'),
(7, 9, 5, '1605', '205', '550000', '551605', '52', '551553', '2016-06-26', '2016-07-10', 'Pas Foto Haris Handiyana.jpg', 'Selesai Diproduksi', 'Belum Lunas', '2024-06-14 23:30:31', '2024-06-14 23:30:31'),
(8, 10, 1, '50000', '100', '0', '50000', '10000', '40000', '2024-06-15', '2024-06-29', 'uml annisa nur arafah.drawio.png', 'Selesai Diproduksi', 'Lunas', '2024-06-14 23:37:45', '2024-06-15 00:01:48');

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
  `role_id` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Noah Klocko II', 'bradtke.gina@example.org', '2024-06-12 23:05:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '45vSW9Jk1T', '2024-06-12 23:05:15', '2024-06-12 23:05:15'),
(2, 'Clay Beatty', 'emory.hoppe@example.com', '2024-06-12 23:05:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'rOSx8SCbh5', '2024-06-12 23:05:15', '2024-06-12 23:05:15'),
(3, 'Lulu Boehm', 'turner80@example.org', '2024-06-12 23:05:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'geTNvWOMii', '2024-06-12 23:05:15', '2024-06-12 23:05:15'),
(4, 'Frank Padberg', 'blick.ephraim@example.com', '2024-06-12 23:05:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'zoIK5HRGBp', '2024-06-12 23:05:15', '2024-06-12 23:05:15'),
(5, 'Mrs. Marguerite Larson', 'elliott81@example.org', '2024-06-12 23:05:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'LC8quKoN5S', '2024-06-12 23:05:15', '2024-06-12 23:05:15'),
(6, 'Admin', 'admin@gmail.com', NULL, '$2y$10$VdGjvi7DCfUqYfUP8HSRDuU.WwjZmxUFDMenHMu9MsJc5oFmu8h1m', 'admin', NULL, '2024-06-12 23:05:15', '2024-06-12 23:05:15'),
(8, 'Putri', 'putri@gmail.com', NULL, '$2y$10$GzNlqHMsF6L/1Rj9z8NCQuR7bdDckrsMMGHdf22PeyeQ0Ps.NdMZ6', 'user', NULL, '2024-06-12 23:05:15', '2024-06-16 19:40:45'),
(9, 'Coba', 'coba@gmail.com', NULL, '$2y$10$GBUD51JZdcyoclmjKaz4s.WMi3ZRdSmi/Kj8M4.Y5Uy1og6FIFHRe', 'admin', NULL, '2024-06-12 23:06:27', '2024-06-12 23:06:27'),
(10, 'Haris Handiyana', 'haris@gmail.com', NULL, '$2y$10$r/7EaHHAm/1m8kni7JfL0e0LCPbhhgHe7BULLJuRFla2Ah5rx4RAO', 'user', NULL, '2024-06-14 23:36:06', '2024-06-14 23:36:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
