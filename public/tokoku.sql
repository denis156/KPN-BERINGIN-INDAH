-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Jun 2024 pada 18.23
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar`, `created_at`, `updated_at`) VALUES
(11, 'Makanan Ringan', 'Kategori - 1716740400.png', '2024-05-26 09:20:00', '2024-05-26 09:20:00'),
(12, 'Minuman', 'Kategori - 1716740423.png', '2024-05-26 09:20:23', '2024-05-26 09:20:23'),
(13, 'Sembako', 'Kategori - 1716740513.png', '2024-05-26 09:21:53', '2024-05-26 09:21:53'),
(14, 'Alat Tulis Kantor', 'Kategori - 1716740534.png', '2024-05-26 09:22:14', '2024-05-26 09:22:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `email`, `password`, `c_password`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'endeng@kpn.com', '$2y$10$DbhAnXvbHN/9VxiInk0uoe4FHoOs51Yk9KoRLQohQ8xPGw6RyGK1e', NULL, 'M001', 'Abrory Dicky Fernandho', 'Kec. Wongeeduku Ds. Wukusao', '081235478909', NULL, '2024-05-26 18:45:02'),
(2, 'serli@kpn.com', '$2y$10$50H4qvrW.cjUfbo3MRPQguaLPdNMWG3AzDlARvU9FGEylvvvcM2vO', NULL, 'M002', 'Serli', 'Kec. Andowia Ds. Ambake', '081524089375', NULL, '2024-05-26 18:44:35'),
(3, 'aritroya41@gmail.com', '$2y$10$ewgTCpN2o1eqeuouC0DT7eiyIM4eqsV.w81S18fPTPiQ4x6hcCO5G', NULL, '00001', 'DENIS DJODIAN ARDIKA', 'Kec Kendari Andonohu', '081524089375', '2024-05-26 17:46:41', '2024-05-26 17:46:41'),
(4, 'admin@kpn.com', '$2y$10$QThC48W7WdgP2XO73pzszuKIsq2kGZPD2w5xWx3Fk9xF7YN3p3cxe', NULL, '00002', 'Dinda Rahmadani Pratama', 'Kec. Wongeeduku Ds. Wukusao', '08128928765', '2024-05-26 17:50:03', '2024-05-26 18:43:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(30, '2021_03_05_195441_buat_kategori_table', 1),
(31, '2021_03_05_195949_buat_produk_table', 1),
(32, '2021_03_05_200515_buat_member_table', 1),
(33, '2021_03_05_200706_buat_supplier_table', 1),
(34, '2021_03_05_200841_buat_pembelian_table', 1),
(35, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(36, '2021_03_05_200853_buat_penjualan_table', 1),
(37, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(38, '2021_03_05_200904_buat_setting_table', 1),
(39, '2021_03_05_201756_buat_pengeluaran_table', 1),
(40, '2021_03_11_225128_create_sessions_table', 1),
(41, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(42, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1),
(43, '2023_07_02_070651_create_images_table', 1),
(44, '2023_11_11_102124_create_satuans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int UNSIGNED NOT NULL,
  `id_supplier` int NOT NULL,
  `total_item` int NOT NULL,
  `total_harga` int NOT NULL,
  `diskon` tinyint NOT NULL DEFAULT '0',
  `bayar` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(1, 3, 14, 287500, 0, 287500, '2024-05-26 09:52:18', '2024-05-26 09:59:59'),
(2, 2, 2, 70000, 0, 70000, '2024-06-01 07:24:09', '2024-06-01 07:24:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int UNSIGNED NOT NULL,
  `id_pembelian` int NOT NULL,
  `id_produk` int NOT NULL,
  `harga_beli` int NOT NULL,
  `jumlah` int NOT NULL,
  `subtotal` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 164500, 1, 164500, '2024-05-26 09:52:28', '2024-05-26 09:53:15'),
(2, 1, 2, 18000, 3, 54000, '2024-05-26 09:52:32', '2024-05-26 09:52:54'),
(3, 1, 5, 6900, 10, 69000, '2024-05-26 09:52:38', '2024-05-26 09:52:59'),
(4, 2, 6, 35000, 2, 70000, '2024-06-01 07:24:22', '2024-06-01 07:24:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 'Perbaikan Pintu', 300000, '2024-06-01 07:12:00', '2024-06-01 07:12:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int UNSIGNED NOT NULL,
  `id_member` int DEFAULT NULL,
  `total_item` int NOT NULL,
  `total_harga` int NOT NULL,
  `diskon` tinyint NOT NULL DEFAULT '0',
  `bayar` int NOT NULL DEFAULT '0',
  `diterima` int NOT NULL DEFAULT '0',
  `status` enum('Pending','Dibayar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `metode_bayar` enum('cash','kredit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `id_user` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `status`, `metode_bayar`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 'Pending', 'cash', 2, '2024-05-26 09:09:20', '2024-05-26 09:09:20'),
(2, 1, 7, 522500, 5, 496375, 500000, 'Dibayar', 'cash', 2, '2024-05-26 09:47:16', '2024-05-26 09:49:35'),
(3, 1, 1, 15000, 5, 14250, 14250, 'Pending', 'kredit', 2, '2024-05-26 09:50:38', '2024-06-01 07:16:20'),
(4, NULL, 0, 0, 0, 0, 0, 'Pending', 'cash', 2, '2024-05-26 09:59:03', '2024-05-26 09:59:03'),
(5, NULL, 0, 0, 0, 0, 0, 'Pending', 'cash', 1, '2024-05-31 10:26:08', '2024-05-31 10:26:08'),
(6, NULL, 4, 533500, 0, 533500, 550000, 'Dibayar', 'cash', 2, '2024-06-01 07:07:28', '2024-06-01 07:09:59'),
(7, 3, 4, 280500, 5, 266475, 266475, 'Pending', 'kredit', 2, '2024-06-01 07:19:00', '2024-06-01 07:21:06'),
(8, 4, 2, 58500, 5, 55575, 60000, 'Dibayar', 'cash', 4, '2024-06-01 07:44:06', '2024-06-01 07:44:59'),
(9, NULL, 0, 0, 0, 0, 0, 'Pending', 'cash', 4, '2024-06-01 07:46:47', '2024-06-01 07:46:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int UNSIGNED NOT NULL,
  `id_penjualan` int NOT NULL,
  `id_produk` int NOT NULL,
  `harga_jual` int NOT NULL,
  `jumlah` int NOT NULL,
  `diskon` tinyint NOT NULL DEFAULT '0',
  `subtotal` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 165000, 3, 5, 495000, '2024-05-26 09:47:25', '2024-05-26 09:49:35'),
(2, 2, 2, 20000, 1, 5, 20000, '2024-05-26 09:47:29', '2024-05-26 09:49:35'),
(3, 2, 1, 2500, 3, 5, 7500, '2024-05-26 09:47:34', '2024-05-26 09:49:35'),
(4, 3, 3, 15000, 1, 5, 15000, '2024-05-26 09:56:26', '2024-05-26 09:58:18'),
(5, 6, 4, 165000, 3, 0, 495000, '2024-06-01 07:08:30', '2024-06-01 07:08:39'),
(6, 6, 6, 38500, 1, 0, 38500, '2024-06-01 07:08:52', '2024-06-01 07:08:52'),
(7, 7, 4, 165000, 1, 5, 165000, '2024-06-01 07:19:21', '2024-06-01 07:21:06'),
(8, 7, 6, 38500, 3, 5, 115500, '2024-06-01 07:19:27', '2024-06-01 07:21:06'),
(9, 8, 2, 20000, 1, 5, 20000, '2024-06-01 07:44:15', '2024-06-01 07:44:59'),
(10, 8, 6, 38500, 1, 5, 38500, '2024-06-01 07:44:21', '2024-06-01 07:44:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int UNSIGNED NOT NULL,
  `kode_produk` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int NOT NULL,
  `diskon` tinyint NOT NULL DEFAULT '0',
  `harga_jual` int NOT NULL,
  `stok` int NOT NULL,
  `stok_minimal` int NOT NULL,
  `id_kategori` bigint UNSIGNED NOT NULL,
  `satuan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `nama_produk`, `gambar`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `stok_minimal`, `id_kategori`, `satuan`, `created_at`, `updated_at`) VALUES
(1, 'P000001', 'Mie Goreng Cabe Ijo', 'Produk - 1716740741.png', 'INDOMIE', 2100, 0, 2500, 57, 10, 13, 'Pcs', '2024-05-26 09:25:41', '2024-05-26 09:49:35'),
(2, 'P000002', 'Coca Cola 1,8L', 'Produk - 1716740942.png', 'Coca Cola', 18000, 0, 20000, 54, 10, 12, 'Pcs', '2024-05-26 09:29:02', '2024-06-01 07:44:59'),
(3, 'P000003', 'Pensil Warna Faber Castel 12', 'Produk - 1716741275.png', 'Faber Castel', 14000, 0, 15000, 14, 5, 14, 'Pcs', '2024-05-26 09:34:35', '2024-05-26 09:58:18'),
(4, 'P000004', 'Beras Premium 10Kg', 'Produk - 1716741518.jpg', 'Fortune', 164500, 0, 165000, 88, 20, 13, 'Kg', '2024-05-26 09:38:38', '2024-06-01 07:21:06'),
(5, 'P000005', 'Qtela Balado', 'Produk - 1716741646.jpg', 'Qtela', 6900, 0, 8000, 100, 30, 11, 'Pcs', '2024-05-26 09:40:46', '2024-05-26 09:59:59'),
(6, 'P000006', 'Kertas', 'Produk - 1717250667.jpg', 'Sidu', 35000, 0, 38500, 0, 1, 14, 'Dus', '2024-06-01 07:04:27', '2024-06-01 07:44:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int UNSIGNED NOT NULL,
  `nama_satuan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`, `created_at`, `updated_at`) VALUES
(1, 'MAKANAN', NULL, NULL),
(2, 'PACK', NULL, NULL),
(3, 'PCS', NULL, NULL),
(4, 'LITER', NULL, NULL),
(5, 'BUNGKUS', NULL, NULL),
(6, 'KG', NULL, NULL),
(7, 'MINUMAN', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KPtj3lXKilyskcaDtvVjJp5wBafkq8D4gvqritNP', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibnVNRTNYdjlnVjI5MW5DMHR2VUxaYnZMaTJvS1B5d3R6NjIySmdYUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9rcG4tYmVya2FoLWluZGFoLWtvbGFrYS50ZXN0L3RyYW5zYWtzaSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCROZnN5RThjMlNIdVl2TGYwdnNvQUEualdLTnlMbHVnSHh1aGtMLzBLV1IxSGU4ai5rTkI5bSI7czoxMjoiaWRfcGVuanVhbGFuIjtpOjk7fQ==', 1717253211),
('lPVEm16rREL1Gw9QQmEQSqN3OdAS87l5jx0LQuXM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiem9GVkJrVHVmcnpCbDlHRmRvN2FUdkcwU0pheGFFQ3pXcm9kYWZZeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9rcG4tYmVya2FoLWluZGFoLWtvbGFrYS50ZXN0L3Blbmp1YWxhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR0V1hCSm9MSi4xODVwY0ROaFRKWFoucEFHLmNqLy9VcTJ3LzlDRVBlSEN0SS9EYjNoczRuaSI7czoxMjoiaWRfcGVtYmVsaWFuIjtpOjI7czoxMToiaWRfc3VwcGxpZXIiO3M6MToiMiI7fQ==', 1717253125);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint NOT NULL,
  `diskon` smallint NOT NULL DEFAULT '0',
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Kpn Beringin Indah Kolaka', 'Jalan Kendari-Kolaka', '081524089375', 1, 5, '/img/logo-20240526145159.jpeg', '/img/logo-2024-05-27011440.png', NULL, '2024-06-01 07:10:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'Gudang Bulog', 'Kec. Kendari Barat Gudang Bulog Kota', '0812892876552', NULL, '2024-05-26 09:45:09'),
(2, 'Tunas Harapan', 'Kec. Pondidaha Desa Wonua Mandara', '0812768900981', NULL, '2024-05-26 09:45:00'),
(3, 'H. PARDI', 'Kec. Wonggeduku  Desa Wawoone', '0987564357990', '2024-05-26 09:11:46', '2024-05-26 09:11:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint NOT NULL DEFAULT '0',
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Denisa', 'admin@kpn.com', NULL, '$2y$10$tWXBJoLJ.185pcDNhTJXZ.pAG.cj//Uq2w/9CEPeHCtI/Db3hs4ni', '/img/logo-20240526145416.png', 1, NULL, NULL, NULL, NULL, NULL, '2024-05-26 07:46:26', '2024-05-26 07:54:16'),
(2, 'Ory', 'kasir@kpn.com', NULL, '$2y$10$373eiwSKpanGzjiNVtcnm.WzUBLAkPJMyJlUsyXI6QRf5Mg2UVRe2', '/img/logo-20240526164701.jpeg', 2, NULL, NULL, NULL, NULL, NULL, '2024-05-26 07:46:26', '2024-06-01 07:41:22'),
(4, 'Eca', 'kasir2@kpn.com', NULL, '$2y$10$NfsyE8c2SHuYvLf0vsoAA.jWKNyLlugHxuhkL/0KWR1He8j.kNB9m', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2024-06-01 07:42:55', '2024-06-01 07:42:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_email_unique` (`email`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
