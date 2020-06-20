-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2020 pada 04.34
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `train_station`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_18_002716_create_stations_table', 1),
(5, '2020_06_19_013141_create_trains_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL,
  `code` char(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `provinci` varchar(100) NOT NULL,
  `daop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stations`
--

INSERT INTO `stations` (`id`, `code`, `name`, `city`, `provinci`, `daop`) VALUES
(1, 'BD', 'Bandung', 'Bandung', 'Jawa Barat', 'Daop II Bandung'),
(2, 'CN', 'Cirebon', 'Cirebon', 'Jawa Barat', 'Daop III Cirebon'),
(3, 'GMR', 'Gambir', 'Jakarta', 'DKI Jakarta', 'Daop I Jakarta'),
(4, 'MN', 'Madiun', 'Madiun', 'Jawa Timur', 'Daop VII Madiun'),
(5, 'PSE', 'Pasar Senen', 'Jakarta', 'DKI Jakarta', 'Daop I Jakarta'),
(6, 'PWT', 'Purwokerto', 'Purwokerto', 'Jawa Tengah', 'Daop V Purwokerto'),
(7, 'SMT', 'Semarang Tawang', 'Semarang Tawang', 'Jawa Tengah', 'Daop IV Semarang'),
(8, 'SLO', 'Solo Balapan', 'Solo', 'Jawa Tengah', 'Daop VI Yogyakarta'),
(9, 'SGU', 'Surabaya Gubeng', 'Surabaya', 'Jawa Timur', 'Daop VIII Surabaya'),
(10, 'YK', 'Yogyakarta', 'Yogyakarta', 'Daerah Istimewa Yogyakarta', 'Daop VI Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trains`
--

CREATE TABLE `trains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_station_id` int(11) NOT NULL,
  `arrival_station_id` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `duration` time NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `trains`
--

INSERT INTO `trains` (`id`, `name`, `departure_station_id`, `arrival_station_id`, `departure_time`, `arrival_time`, `duration`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Argo Parahyangan Excellence', 1, 3, '13:30:00', '16:40:00', '03:10:00', 250000.00, NULL, NULL),
(2, 'Argo Parahyangan Excellence', 1, 3, '15:00:00', '18:20:00', '03:20:00', 275000.00, NULL, NULL),
(3, 'Argo Parahyangan Excellence', 3, 1, '13:30:00', '16:40:00', '03:10:00', 250000.00, NULL, NULL),
(4, 'Argo Parahyangan Excellence', 3, 1, '15:00:00', '18:20:00', '03:20:00', 275000.00, NULL, NULL),
(5, 'Mutiara Selatan', 3, 1, '20:45:00', '23:40:00', '02:55:00', 250000.00, NULL, NULL),
(6, 'Mutiara Selatan', 3, 1, '21:05:00', '23:55:00', '02:50:00', 225000.00, NULL, NULL),
(7, 'Mutiara Selatan', 1, 3, '20:45:00', '23:40:00', '02:55:00', 250000.00, NULL, NULL),
(8, 'Mutiara Selatan', 1, 3, '21:05:00', '23:55:00', '02:50:00', 225000.00, NULL, NULL),
(9, 'Mutiara Selatan', 10, 9, '20:45:00', '23:40:00', '02:55:00', 250000.00, NULL, NULL),
(10, 'Mutiara Selatan', 10, 9, '21:05:00', '23:55:00', '02:50:00', 225000.00, NULL, NULL),
(11, 'Mutiara Selatan', 9, 10, '20:45:00', '23:40:00', '02:55:00', 250000.00, NULL, NULL),
(12, 'Mutiara Selatan', 9, 10, '21:05:00', '23:55:00', '02:50:00', 225000.00, NULL, NULL),
(13, 'Mutiara Selatan', 8, 4, '20:45:00', '23:40:00', '02:55:00', 250000.00, NULL, NULL),
(14, 'Mutiara Selatan', 8, 4, '21:05:00', '23:55:00', '02:50:00', 225000.00, NULL, NULL),
(15, 'Mutiara Selatan', 4, 8, '20:45:00', '23:40:00', '02:55:00', 250000.00, NULL, NULL),
(16, 'Mutiara Selatan', 4, 8, '21:05:00', '23:55:00', '02:50:00', 225000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departure_train_station` (`departure_station_id`),
  ADD KEY `arrival_train_station` (`arrival_station_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `trains`
--
ALTER TABLE `trains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `arrival_train_station` FOREIGN KEY (`arrival_station_id`) REFERENCES `stations` (`id`),
  ADD CONSTRAINT `departure_train_station` FOREIGN KEY (`departure_station_id`) REFERENCES `stations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
