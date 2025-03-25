-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 01:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('aminbug34@gmail.com|127.0.0.1', 'i:1;', 1729855354),
('aminbug34@gmail.com|127.0.0.1:timer', 'i:1729855354;', 1729855354),
('sabtoua18@gmail.com|127.0.0.1', 'i:1;', 1742901468),
('sabtoua18@gmail.com|127.0.0.1:timer', 'i:1742901468;', 1742901468),
('touamat@gmail.com|127.0.0.1', 'i:1;', 1729855362),
('touamat@gmail.com|127.0.0.1:timer', 'i:1729855362;', 1729855362),
('touamat332@gmail.com|127.0.0.1', 'i:2;', 1729855181),
('touamat332@gmail.com|127.0.0.1:timer', 'i:1729855181;', 1729855181);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `quantity`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(140, 7, 5, 19, '2025-01-13 18:18:36', '2025-01-13 18:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `catigories`
--

CREATE TABLE `catigories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catigories`
--

INSERT INTO `catigories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'electromenage', 'televesion frigou............', '2024-09-08 16:37:12', '2024-09-09 16:45:49'),
(5, 'electronic', 'comme les pc les telephone #electrone', '2024-09-09 11:27:39', '2024-09-09 11:27:39'),
(6, 'food', 'all we use in kitchen', '2024-09-09 11:28:02', '2024-09-09 11:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"8db1a868-b1eb-4b11-aa6b-abb78925aed8\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726506934, 1726506934),
(2, 'default', '{\"uuid\":\"ee724fb5-dcc1-4e16-98b2-eb148269514a\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726507000, 1726507000),
(3, 'default', '{\"uuid\":\"a53296d0-4d20-49c4-ba49-e82f1f85fc7a\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726507175, 1726507175),
(4, 'default', '{\"uuid\":\"304403f7-d48b-4546-87b9-c54f9c1dff1f\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726507211, 1726507211),
(5, 'default', '{\"uuid\":\"6926bcf8-f4d3-4509-9efb-6c8c63a15c1b\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726508309, 1726508309),
(6, 'default', '{\"uuid\":\"98cf44dc-4515-4b6e-9a48-6d6ffcb5f691\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726508343, 1726508343),
(7, 'default', '{\"uuid\":\"3acd93d0-0824-4626-a25e-0e2715e23083\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726508623, 1726508623),
(8, 'default', '{\"uuid\":\"d2ec2f28-72a7-4220-a923-c16b46964b45\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726508679, 1726508679),
(9, 'default', '{\"uuid\":\"955853a0-0efa-4c47-9c15-844e37bd056d\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726560060, 1726560060),
(10, 'default', '{\"uuid\":\"76ba1ba1-1b0b-4534-8646-7bfbb0e13021\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726562392, 1726562392),
(11, 'default', '{\"uuid\":\"816d374f-8365-458a-843a-ff6334319a10\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726562557, 1726562557),
(12, 'default', '{\"uuid\":\"58fa28cf-15ab-47c9-a4d6-595e8872bf2d\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726562708, 1726562708),
(13, 'default', '{\"uuid\":\"bea37957-6718-4814-9bb7-d07441eea4bf\",\"displayName\":\"App\\\\Events\\\\ShippingStatusUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:32:\\\"App\\\\Events\\\\ShippingStatusUpdated\\\":1:{s:8:\\\"shipping\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Shipping\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1726567274, 1726567274);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(8, '2024_09_08_141327_create_products_table', 2),
(9, '2024_09_08_161534_create_catigories_table', 2),
(10, '2024_09_08_164008_add_catigory_id_to_products_table', 3),
(11, '2024_09_08_182720_create_orders_table', 4),
(12, '2024_09_09_052006_add_role_to_users_table', 5),
(13, '2024_09_09_052404_add_email_to_users_table', 6),
(14, '2024_09_09_074332_create_cards_table', 7),
(15, '2024_09_09_111843_create_order_items_table', 8),
(16, '2024_09_09_150437_create_payments_table', 9),
(17, '2024_09_09_155053_create_reviews_table', 10),
(18, '2024_09_11_112820_create_webhooks_table', 11),
(19, '2024_09_13_101434_add_four_columns_to_payments_table', 11),
(20, '2024_09_13_134006_create_shippings_table', 12),
(21, '2024_09_16_085823_create_notifications_table', 13),
(22, '2024_09_16_092412_add_notified_column_to_users_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(8,2) DEFAULT 0.00,
  `status` enum('pending','processing','paid','cancelled') NOT NULL DEFAULT 'processing',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 999999.99, 'pending', '2024-09-09 12:25:16', '2024-09-09 12:25:16'),
(3, 1, 999999.99, 'pending', '2024-09-09 12:26:35', '2024-09-09 12:26:35'),
(4, 1, 999999.99, 'pending', '2024-09-09 12:30:50', '2024-09-09 12:30:50'),
(5, 1, 601210.00, 'pending', '2024-09-09 12:43:30', '2024-09-09 12:43:30'),
(6, 1, 601210.00, 'pending', '2024-09-09 12:44:51', '2024-09-09 12:44:51'),
(7, 1, 0.00, 'pending', '2024-09-09 15:45:23', '2024-09-09 15:45:23'),
(8, 1, 0.00, 'pending', '2024-09-09 15:45:25', '2024-09-09 15:45:25'),
(9, 1, 0.00, 'pending', '2024-09-09 15:47:48', '2024-09-09 15:47:48'),
(10, 1, 0.00, 'pending', '2024-09-10 13:27:30', '2024-09-10 13:27:30'),
(11, 1, 0.00, 'pending', '2024-09-10 13:29:35', '2024-09-10 13:29:35'),
(12, 1, 0.00, 'pending', '2024-09-10 13:30:15', '2024-09-10 13:30:15'),
(13, 1, 0.00, 'pending', '2024-09-10 13:30:31', '2024-09-10 13:30:31'),
(14, 1, 0.00, 'pending', '2024-09-10 13:36:38', '2024-09-10 13:36:38'),
(15, 1, 0.00, 'pending', '2024-09-10 13:37:18', '2024-09-10 13:37:18'),
(16, 1, 0.00, 'pending', '2024-09-10 13:48:45', '2024-09-10 13:48:45'),
(17, 1, 0.00, 'pending', '2024-09-10 13:48:57', '2024-09-10 13:48:57'),
(18, 1, 0.00, 'pending', '2024-09-10 13:49:43', '2024-09-10 13:49:43'),
(19, 1, 0.00, 'pending', '2024-09-10 13:50:54', '2024-09-10 13:50:54'),
(31, 1, 0.00, 'pending', '2024-09-10 15:50:54', '2024-09-10 15:50:54'),
(32, 1, 0.00, 'pending', '2024-09-10 16:39:38', '2024-09-10 16:39:38'),
(33, 1, 999999.99, 'pending', '2024-09-10 16:47:13', '2024-09-10 16:47:13'),
(34, 1, 34760.00, 'pending', '2024-09-10 16:52:56', '2024-09-10 16:52:56'),
(35, 1, 61105.00, 'pending', '2024-09-10 17:53:13', '2024-09-10 17:53:13'),
(36, 1, 22.00, 'pending', '2024-09-10 17:54:47', '2024-09-10 17:54:47'),
(37, 1, 22.00, 'pending', '2024-09-10 17:55:16', '2024-09-10 17:55:16'),
(38, 1, 1210.00, 'pending', '2024-09-10 18:04:46', '2024-09-10 18:04:46'),
(39, 1, 165.00, 'pending', '2024-09-10 18:14:10', '2024-09-10 18:14:10'),
(40, 1, 0.00, 'pending', '2024-09-10 18:15:47', '2024-09-10 18:15:47'),
(41, 1, 0.00, 'pending', '2024-09-10 18:19:50', '2024-09-10 18:19:50'),
(42, 1, 76210.00, 'pending', '2024-09-10 18:23:41', '2024-09-10 18:23:41'),
(43, 1, 0.00, 'pending', '2024-09-10 18:26:53', '2024-09-10 18:26:53'),
(44, 1, 826210.00, 'pending', '2024-09-10 18:27:16', '2024-09-10 18:27:16'),
(45, 1, 0.00, 'pending', '2024-09-10 18:28:16', '2024-09-10 18:28:16'),
(46, 1, 0.00, 'pending', '2024-09-10 18:29:19', '2024-09-10 18:29:19'),
(47, 1, 527420.00, 'pending', '2024-09-10 18:35:06', '2024-09-10 18:35:06'),
(48, 1, 1210.00, 'pending', '2024-09-10 18:37:02', '2024-09-10 18:37:02'),
(49, 1, 220.00, 'pending', '2024-09-10 18:42:53', '2024-09-10 18:42:53'),
(50, 1, 385.00, 'pending', '2024-09-10 18:57:25', '2024-09-10 18:57:25'),
(51, 1, 1870.00, 'pending', '2024-09-10 19:03:37', '2024-09-10 19:03:37'),
(52, 1, 660.00, 'pending', '2024-09-10 19:12:37', '2024-09-10 19:12:37'),
(53, 1, 999999.99, 'pending', '2024-09-10 19:17:18', '2024-09-10 19:17:18'),
(54, 1, 377420.00, 'pending', '2024-09-11 04:33:53', '2024-09-11 04:33:53'),
(55, 1, 165.00, 'pending', '2024-09-11 04:38:04', '2024-09-11 04:38:04'),
(56, 1, 660.00, 'pending', '2024-09-11 04:58:15', '2024-09-11 04:58:15'),
(57, 1, 0.00, 'pending', '2024-09-11 04:59:15', '2024-09-11 04:59:15'),
(58, 1, 605.00, 'pending', '2024-09-11 05:28:15', '2024-09-11 05:28:15'),
(59, 1, 0.00, 'pending', '2024-09-11 05:28:49', '2024-09-11 05:28:49'),
(60, 1, 605.00, 'pending', '2024-09-11 05:30:15', '2024-09-11 05:30:15'),
(61, 1, 605.00, 'pending', '2024-09-11 05:31:52', '2024-09-11 05:31:52'),
(62, 1, 165.00, 'pending', '2024-09-11 07:27:42', '2024-09-11 07:27:42'),
(63, 1, 605.00, 'pending', '2024-09-11 07:29:25', '2024-09-11 07:29:25'),
(64, 1, 660.00, 'pending', '2024-09-11 07:37:05', '2024-09-11 07:37:05'),
(65, 1, 605.00, 'pending', '2024-09-11 07:41:16', '2024-09-11 07:41:16'),
(66, 1, 605.00, 'pending', '2024-09-11 07:43:33', '2024-09-11 07:43:33'),
(67, 1, 110.00, 'pending', '2024-09-11 07:45:15', '2024-09-11 07:45:15'),
(68, 1, 110.00, 'pending', '2024-09-11 07:46:57', '2024-09-11 07:46:57'),
(69, 1, 220.00, 'pending', '2024-09-11 07:51:10', '2024-09-11 07:51:10'),
(70, 1, 660.00, 'pending', '2024-09-11 07:53:03', '2024-09-11 07:53:03'),
(71, 1, 605.00, 'pending', '2024-09-11 07:56:39', '2024-09-11 07:56:39'),
(72, 1, 605.00, 'paid', '2024-09-11 08:30:23', '2024-09-11 08:31:04'),
(73, 1, 220.00, 'paid', '2024-09-11 08:56:54', '2024-09-11 08:59:03'),
(74, 1, 660.00, 'paid', '2024-09-11 08:59:26', '2024-09-11 08:59:48'),
(75, 1, 660.00, 'paid', '2024-09-11 15:44:23', '2024-09-11 15:44:57'),
(76, 1, 165.00, 'paid', '2024-09-11 15:47:52', '2024-09-11 15:48:14'),
(77, 1, 165.00, 'paid', '2024-09-11 15:49:49', '2024-09-11 15:50:07'),
(78, 1, 110.00, 'paid', '2024-09-11 15:52:36', '2024-09-11 15:53:00'),
(79, 1, 110.00, 'paid', '2024-09-11 15:53:56', '2024-09-11 15:54:16'),
(80, 1, 605.00, 'paid', '2024-09-11 16:14:06', '2024-09-11 16:14:45'),
(81, 1, 110.00, 'pending', '2024-09-11 16:15:26', '2024-09-11 16:15:26'),
(82, 1, 0.00, 'pending', '2024-09-11 16:17:43', '2024-09-11 16:17:43'),
(83, 1, 165.00, 'paid', '2024-09-11 16:17:56', '2024-09-11 16:18:18'),
(84, 1, 55.00, 'paid', '2024-09-11 16:45:06', '2024-09-11 16:46:13'),
(85, 1, 55.00, 'paid', '2024-09-11 16:47:40', '2024-09-11 16:48:09'),
(86, 1, 605.00, 'pending', '2024-09-11 19:21:08', '2024-09-11 19:21:08'),
(87, 1, 275.00, 'paid', '2024-09-12 05:25:24', '2024-09-12 05:26:05'),
(88, 1, 165.00, 'paid', '2024-09-12 06:36:38', '2024-09-12 06:37:05'),
(89, 1, 2706.00, 'paid', '2024-09-12 06:53:21', '2024-09-12 06:54:04'),
(90, 1, 492.00, 'paid', '2024-09-12 07:02:03', '2024-09-12 07:02:27'),
(91, 1, 246.00, 'paid', '2024-09-12 07:05:42', '2024-09-12 07:06:03'),
(92, 1, 1353.00, 'paid', '2024-09-12 07:10:01', '2024-09-12 07:10:21'),
(93, 1, 1353.00, 'paid', '2024-09-12 07:33:18', '2024-09-12 07:34:10'),
(94, 1, 1353.00, 'pending', '2024-09-12 08:18:20', '2024-09-12 08:18:20'),
(95, 1, 1476.00, 'pending', '2024-09-12 09:32:52', '2024-09-12 09:32:52'),
(96, 1, 2829.00, 'pending', '2024-09-12 09:42:01', '2024-09-12 09:42:01'),
(97, 1, 3198.00, 'pending', '2024-09-12 09:47:24', '2024-09-12 09:47:24'),
(98, 1, 3198.00, 'pending', '2024-09-12 10:14:37', '2024-09-12 10:14:37'),
(99, 1, 7257.00, 'pending', '2024-09-12 10:18:38', '2024-09-12 10:18:38'),
(100, 1, 8118.00, 'pending', '2024-09-12 10:19:33', '2024-09-12 10:19:33'),
(101, 1, 8778.00, 'pending', '2024-09-12 10:22:41', '2024-09-12 10:22:41'),
(102, 1, 5412.00, 'paid', '2024-09-12 10:30:19', '2024-09-12 10:31:36'),
(103, 1, 55.00, 'paid', '2024-09-12 11:32:20', '2024-09-12 11:32:49'),
(104, 1, 660.00, 'paid', '2024-09-12 12:39:15', '2024-09-12 12:39:58'),
(105, 1, 660.00, 'paid', '2024-09-12 12:50:25', '2024-09-12 12:51:29'),
(106, 1, 605.00, 'paid', '2024-09-12 17:07:05', '2024-09-12 17:08:54'),
(107, 1, 1265.00, 'paid', '2024-09-12 18:02:57', '2024-09-12 18:03:43'),
(108, 1, 275.00, 'paid', '2024-09-12 18:05:20', '2024-09-12 18:05:56'),
(109, 1, 220.00, 'paid', '2024-09-12 19:25:42', '2024-09-12 19:26:22'),
(110, 1, 0.00, 'pending', '2024-09-12 19:27:27', '2024-09-12 19:27:27'),
(111, 1, 660.00, 'pending', '2024-09-12 19:27:42', '2024-09-12 19:27:42'),
(112, 1, 880.00, 'pending', '2024-09-12 19:31:12', '2024-09-12 19:31:12'),
(113, 1, 1540.00, 'pending', '2024-09-12 19:34:07', '2024-09-12 19:34:07'),
(114, 1, 2032.00, 'pending', '2024-09-13 08:13:16', '2024-09-13 08:13:16'),
(115, 1, 2857.00, 'paid', '2024-09-13 08:26:50', '2024-09-13 08:27:23'),
(116, 1, 220.00, 'pending', '2024-09-13 09:20:05', '2024-09-13 09:20:05'),
(117, 1, 825.00, 'paid', '2024-09-13 10:16:09', '2024-09-13 10:24:59'),
(118, 1, 1476.00, 'paid', '2024-09-13 10:28:15', '2024-09-13 10:29:05'),
(119, 1, 605.00, 'paid', '2024-09-13 10:34:55', '2024-09-13 10:35:25'),
(120, 1, 246.00, 'paid', '2024-09-13 12:05:00', '2024-09-13 12:05:35'),
(121, 1, 110.00, 'paid', '2024-09-13 19:04:06', '2024-09-13 19:09:42'),
(122, 1, 670.00, 'paid', '2024-09-14 07:15:38', '2024-09-14 07:29:27'),
(123, 1, 110.00, 'paid', '2024-09-14 07:44:44', '2024-09-14 07:45:14'),
(124, 1, 660.00, 'paid', '2024-09-14 08:34:28', '2024-09-14 08:34:57'),
(125, 1, 2400.00, 'paid', '2024-09-14 13:00:39', '2024-09-14 13:01:07'),
(126, 1, 400.00, 'paid', '2024-09-14 14:02:15', '2024-09-14 14:03:06'),
(127, 1, 2200.00, 'paid', '2024-09-14 16:41:00', '2024-09-14 16:42:26'),
(128, 1, 400.00, 'pending', '2024-09-14 16:44:43', '2024-09-14 16:44:43'),
(129, 2, 1723.00, 'paid', '2024-09-15 14:11:01', '2024-09-15 14:11:40'),
(130, 1, 3840.00, 'paid', '2024-09-16 14:05:10', '2024-09-16 14:05:40'),
(131, 1, 2200.00, 'paid', '2024-09-16 14:46:59', '2024-09-16 14:47:47'),
(132, 1, 11100.00, 'paid', '2024-09-16 16:13:18', '2024-09-16 16:14:04'),
(133, 1, 3500.00, 'paid', '2024-09-16 16:36:47', '2024-09-16 16:37:43'),
(134, 1, 960.00, 'pending', '2024-09-16 17:55:50', '2024-09-16 17:55:50'),
(135, 1, 960.00, 'pending', '2024-09-16 18:38:21', '2024-09-16 18:38:21'),
(136, 1, 960.00, 'pending', '2024-09-16 18:41:21', '2024-09-16 18:41:21'),
(137, 1, 2160.00, 'paid', '2024-09-16 18:47:45', '2024-09-16 19:07:18'),
(138, 1, 12300.00, 'paid', '2024-09-16 19:24:55', '2024-09-16 19:25:44'),
(139, 1, 2200.00, 'paid', '2024-09-17 06:41:32', '2024-09-17 06:42:12'),
(140, 1, 100.00, 'pending', '2024-09-17 07:40:22', '2024-09-17 07:40:22'),
(141, 1, 200.00, 'paid', '2024-09-17 07:43:38', '2024-09-17 07:44:03'),
(142, 5, 990.00, 'paid', '2024-10-25 12:53:02', '2024-10-25 12:54:12'),
(143, 5, 350.00, 'paid', '2024-10-26 10:01:57', '2024-10-26 10:03:05'),
(144, 5, 310450.00, 'paid', '2024-10-26 10:24:42', '2024-10-26 10:25:20'),
(145, 5, 350.00, 'pending', '2024-10-26 10:27:16', '2024-10-26 10:27:16'),
(146, 6, 150000.00, 'pending', '2024-11-27 07:36:12', '2024-11-27 07:36:12'),
(147, 6, 150720.00, 'pending', '2024-11-27 18:17:29', '2024-11-27 18:17:29'),
(148, 6, 40.00, 'paid', '2024-12-05 08:23:10', '2024-12-05 08:23:49'),
(149, 6, 19998.00, 'paid', '2024-12-05 10:52:34', '2024-12-05 11:10:40'),
(150, 5, 69993.00, 'pending', '2025-01-13 18:18:58', '2025-01-13 18:18:58'),
(151, 6, 0.00, 'pending', '2025-03-25 10:21:37', '2025-03-25 10:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(156, 148, 16, 5, 8.00, '2024-12-05 08:23:10', '2024-12-05 08:23:10'),
(157, 149, 19, 2, 9999.00, '2024-12-05 10:52:34', '2024-12-05 10:52:34'),
(158, 150, 19, 7, 9999.00, '2025-01-13 18:18:58', '2025-01-13 18:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('sabtoua18@gmail.com', '$2y$12$ECljSEY/eIJL/cjX0Ca6UeRrdrfyklbxCBzocFVyhVAX4laCFaotu', '2024-10-25 10:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT 0.00,
  `payment_status` enum('pending','succeeded','failed') DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_payment_id` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `stripe_intent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method`, `amount`, `payment_status`, `transaction_id`, `created_at`, `updated_at`, `stripe_payment_id`, `stripe_customer_id`, `stripe_intent_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '2024-09-10 14:21:36', '2024-09-10 14:21:36', '', '', ''),
(2, 31, NULL, NULL, NULL, NULL, '2024-09-10 15:55:40', '2024-09-10 15:55:40', '', '', ''),
(3, 32, NULL, NULL, NULL, NULL, '2024-09-10 16:40:14', '2024-09-10 16:40:14', '', '', ''),
(4, 33, NULL, NULL, NULL, NULL, '2024-09-10 16:48:34', '2024-09-10 16:48:34', '', '', ''),
(5, 46, NULL, NULL, NULL, NULL, '2024-09-10 18:31:17', '2024-09-10 18:31:17', '', '', ''),
(6, 47, NULL, NULL, NULL, NULL, '2024-09-10 18:35:57', '2024-09-10 18:35:57', '', '', ''),
(7, 48, NULL, NULL, NULL, NULL, '2024-09-10 18:41:26', '2024-09-10 18:41:26', '', '', ''),
(8, 49, NULL, 22.22, NULL, NULL, '2024-09-10 18:43:53', '2024-09-10 18:43:53', '', '', ''),
(9, 50, NULL, 385.00, NULL, NULL, '2024-09-10 18:58:10', '2024-09-10 18:58:10', '', '', ''),
(10, 51, NULL, 1870.00, NULL, NULL, '2024-09-10 19:04:00', '2024-09-10 19:04:00', '', '', ''),
(11, 51, NULL, 1870.00, NULL, NULL, '2024-09-10 19:05:15', '2024-09-10 19:05:15', '', '', ''),
(12, NULL, NULL, NULL, NULL, NULL, '2024-09-11 05:28:49', '2024-09-11 05:28:49', '', '', ''),
(13, NULL, NULL, NULL, NULL, NULL, '2024-09-11 05:30:42', '2024-09-11 05:30:42', '', '', ''),
(14, NULL, NULL, NULL, NULL, NULL, '2024-09-11 05:32:15', '2024-09-11 05:32:15', '', '', ''),
(15, 64, NULL, NULL, NULL, NULL, '2024-09-11 07:37:37', '2024-09-11 07:37:37', '', '', ''),
(16, 65, NULL, 605.00, NULL, NULL, '2024-09-11 07:41:40', '2024-09-11 07:41:40', '', '', ''),
(17, 66, NULL, 605.00, NULL, NULL, '2024-09-11 07:44:03', '2024-09-11 07:44:03', '', '', ''),
(18, 67, NULL, 110.00, NULL, NULL, '2024-09-11 07:45:46', '2024-09-11 07:45:46', '', '', ''),
(19, 68, NULL, 110.00, NULL, NULL, '2024-09-11 07:47:20', '2024-09-11 07:47:20', '', '', ''),
(20, 71, 'card_1PxnIHAJIxJv7OXDBOxv3cHD', 605.00, 'succeeded', 'ch_3PxnIIAJIxJv7OXD2cXvksoF', '2024-09-11 07:57:03', '2024-09-11 07:57:03', '', '', ''),
(21, 72, 'card_1Pxnp9AJIxJv7OXDTUr5guMm', 605.00, 'succeeded', 'ch_3PxnpBAJIxJv7OXD3M9zfRup', '2024-09-11 08:31:04', '2024-09-11 08:31:04', '', '', ''),
(22, 73, 'card_1PxoEcAJIxJv7OXDADhdraGT', 220.00, 'succeeded', 'ch_3PxoGEAJIxJv7OXD2i4q20JM', '2024-09-11 08:59:03', '2024-09-11 08:59:03', '', '', ''),
(23, 74, 'card_1PxoGxAJIxJv7OXDX5BdRC2l', 660.00, 'succeeded', 'ch_3PxoGzAJIxJv7OXD07wcnbu2', '2024-09-11 08:59:48', '2024-09-11 08:59:48', '', '', ''),
(24, 75, 'card_1PxuaxAJIxJv7OXDaphFSvXU', 660.00, 'succeeded', 'ch_3Pxub0AJIxJv7OXD1svxlYCd', '2024-09-11 15:44:57', '2024-09-11 15:44:57', '', '', ''),
(25, 76, 'card_1PxueFAJIxJv7OXDxhIMtc43', 165.00, 'succeeded', 'ch_3PxueHAJIxJv7OXD3aCNA3dw', '2024-09-11 15:48:14', '2024-09-11 15:48:14', '', '', ''),
(26, 77, 'card_1Pxug3AJIxJv7OXDPwQUv0YN', 165.00, 'succeeded', 'ch_3Pxug5AJIxJv7OXD1RIrVmJI', '2024-09-11 15:50:07', '2024-09-11 15:50:07', '', '', ''),
(27, 78, 'card_1PxuiqAJIxJv7OXDrPKPuZOI', 110.00, 'succeeded', 'ch_3PxuisAJIxJv7OXD1kFSpyE8', '2024-09-11 15:53:00', '2024-09-11 15:53:00', '', '', ''),
(28, 79, 'card_1Pxuk3AJIxJv7OXD0GDjd01o', 110.00, 'succeeded', 'ch_3Pxuk7AJIxJv7OXD3V2uvihz', '2024-09-11 15:54:16', '2024-09-11 15:54:16', '', '', ''),
(29, 80, 'card_1Pxv3sAJIxJv7OXDpbM7xgYQ', 605.00, 'succeeded', 'ch_3Pxv3vAJIxJv7OXD3hRWjSqg', '2024-09-11 16:14:45', '2024-09-11 16:14:45', '', '', ''),
(30, 83, 'card_1Pxv7LAJIxJv7OXDDsRn0EQM', 165.00, 'succeeded', 'ch_3Pxv7NAJIxJv7OXD3KzDyLu7', '2024-09-11 16:18:18', '2024-09-11 16:18:18', '', '', ''),
(31, 84, 'card_1PxvXkAJIxJv7OXDse3AuLNN', 55.00, 'succeeded', 'ch_3PxvYMAJIxJv7OXD1m4BVpQo', '2024-09-11 16:46:13', '2024-09-11 16:46:13', '', '', ''),
(32, 85, 'card_1PxvaBAJIxJv7OXD6JSDR3mP', 55.00, 'succeeded', 'ch_3PxvaDAJIxJv7OXD2MhP1rtr', '2024-09-11 16:48:09', '2024-09-11 16:48:09', '', '', ''),
(33, 87, 'card_1Py7PaAJIxJv7OXDqSucpCX4', 275.00, 'succeeded', 'ch_3Py7PdAJIxJv7OXD3OYCIIkS', '2024-09-12 05:26:05', '2024-09-12 05:26:05', '', '', ''),
(34, 88, 'card_1Py8WOAJIxJv7OXDhcPfv7Yk', 165.00, 'succeeded', 'ch_3Py8WQAJIxJv7OXD3Mo7kDks', '2024-09-12 06:37:05', '2024-09-12 06:37:05', '', '', ''),
(35, 89, 'card_1Py8mpAJIxJv7OXDWUcPrhV6', 2706.00, 'succeeded', 'ch_3Py8mrAJIxJv7OXD0DwYCAyV', '2024-09-12 06:54:04', '2024-09-12 06:54:04', '', '', ''),
(36, 90, 'card_1Py8uvAJIxJv7OXDoU5eGUkd', 492.00, 'succeeded', 'ch_3Py8uyAJIxJv7OXD1ga0w3Y7', '2024-09-12 07:02:27', '2024-09-12 07:02:27', '', '', ''),
(37, 91, 'card_1Py8yRAJIxJv7OXDnfy2R1Jg', 246.00, 'succeeded', 'ch_3Py8yTAJIxJv7OXD02097HEU', '2024-09-12 07:06:03', '2024-09-12 07:06:03', '', '', ''),
(38, 92, 'card_1Py92aAJIxJv7OXDb7LE9PcM', 1353.00, 'succeeded', 'ch_3Py92cAJIxJv7OXD1KfecSFk', '2024-09-12 07:10:21', '2024-09-12 07:10:21', '', '', ''),
(39, 93, 'card_1Py9PeAJIxJv7OXDeM2aF9Cl', 1353.00, 'succeeded', 'ch_3Py9PgAJIxJv7OXD27rN0yLD', '2024-09-12 07:34:10', '2024-09-12 07:34:10', '', '', ''),
(40, 102, 'card', 5412.00, 'succeeded', 'pi_3PyCBKAJIxJv7OXD2MPk7TtO', '2024-09-12 10:31:36', '2024-09-12 10:31:36', '', '', ''),
(41, 103, 'card', 55.00, 'succeeded', 'pi_3PyD8ZAJIxJv7OXD1VCoZk58', '2024-09-12 11:32:49', '2024-09-12 11:32:49', '', '', ''),
(42, 104, 'card', 660.00, 'succeeded', 'pi_3PyEBXAJIxJv7OXD0sK5THyR', '2024-09-12 12:39:58', '2024-09-12 12:39:58', '', '', ''),
(43, 104, 'card', 660.00, 'succeeded', 'pi_3PyEBXAJIxJv7OXD0sK5THyR', '2024-09-12 12:49:42', '2024-09-12 12:49:42', '', '', ''),
(44, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:51:29', '2024-09-12 12:51:29', '', '', ''),
(45, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:52:21', '2024-09-12 12:52:21', '', '', ''),
(46, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:52:25', '2024-09-12 12:52:25', '', '', ''),
(47, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:52:27', '2024-09-12 12:52:27', '', '', ''),
(48, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:52:30', '2024-09-12 12:52:30', '', '', ''),
(49, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:52:55', '2024-09-12 12:52:55', '', '', ''),
(50, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:25', '2024-09-12 12:54:25', '', '', ''),
(51, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:43', '2024-09-12 12:54:43', '', '', ''),
(52, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:46', '2024-09-12 12:54:46', '', '', ''),
(53, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:49', '2024-09-12 12:54:49', '', '', ''),
(54, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:52', '2024-09-12 12:54:52', '', '', ''),
(55, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:54', '2024-09-12 12:54:54', '', '', ''),
(56, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:56', '2024-09-12 12:54:56', '', '', ''),
(57, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:54:59', '2024-09-12 12:54:59', '', '', ''),
(58, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:02', '2024-09-12 12:55:02', '', '', ''),
(59, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:04', '2024-09-12 12:55:04', '', '', ''),
(60, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:07', '2024-09-12 12:55:07', '', '', ''),
(61, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:11', '2024-09-12 12:55:11', '', '', ''),
(62, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:14', '2024-09-12 12:55:14', '', '', ''),
(63, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:17', '2024-09-12 12:55:17', '', '', ''),
(64, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:20', '2024-09-12 12:55:20', '', '', ''),
(65, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:23', '2024-09-12 12:55:23', '', '', ''),
(66, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:25', '2024-09-12 12:55:25', '', '', ''),
(67, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:28', '2024-09-12 12:55:28', '', '', ''),
(68, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:30', '2024-09-12 12:55:30', '', '', ''),
(69, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:33', '2024-09-12 12:55:33', '', '', ''),
(70, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:36', '2024-09-12 12:55:36', '', '', ''),
(71, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 12:55:38', '2024-09-12 12:55:38', '', '', ''),
(72, 105, 'card', 660.00, 'succeeded', 'pi_3PyEMbAJIxJv7OXD2bWolu5G', '2024-09-12 13:24:33', '2024-09-12 13:24:33', '', '', ''),
(73, 106, 'card', 605.00, 'succeeded', 'pi_3PyINnAJIxJv7OXD0XItTe6o', '2024-09-12 17:08:54', '2024-09-12 17:08:54', '', '', ''),
(74, 106, 'card', 605.00, 'succeeded', 'pi_3PyINnAJIxJv7OXD0XItTe6o', '2024-09-12 17:58:46', '2024-09-12 17:58:46', '', '', ''),
(75, 107, 'card', 1265.00, 'succeeded', 'pi_3PyJEpAJIxJv7OXD3Y4xxafq', '2024-09-12 18:03:43', '2024-09-12 18:03:43', '', '', ''),
(76, 108, 'card', 275.00, 'succeeded', 'pi_3PyJGzAJIxJv7OXD21uWOjIj', '2024-09-12 18:05:56', '2024-09-12 18:05:56', '', '', ''),
(77, 109, 'card', 220.00, 'succeeded', 'pi_3PyJanAJIxJv7OXD3OvveSNg', '2024-09-12 19:26:22', '2024-09-12 19:26:22', '', '', ''),
(78, 115, 'card', 2857.00, 'succeeded', 'pi_3PyVmaAJIxJv7OXD0OaFftnr', '2024-09-13 08:27:23', '2024-09-13 08:27:23', '', '', ''),
(79, 117, 'card', 825.00, 'succeeded', 'cs_test_b14pYGNpXAMxdHEIov6pGLvULQ92zAfgt0g9FHE4JabmRGjYTmTFtrnhLL', '2024-09-13 10:24:59', '2024-09-13 10:24:59', NULL, NULL, NULL),
(80, 118, 'card', 1476.00, 'succeeded', 'cs_test_a1BBVfHNzbDy7vsIuEvq7FkWrkb7eNQhtspIBh3cWXpop9f0DBxBGd9lFt', '2024-09-13 10:29:05', '2024-09-13 10:29:05', NULL, NULL, NULL),
(81, 118, 'card', 1476.00, 'succeeded', 'cs_test_a1BBVfHNzbDy7vsIuEvq7FkWrkb7eNQhtspIBh3cWXpop9f0DBxBGd9lFt', '2024-09-13 10:31:17', '2024-09-13 10:31:17', NULL, NULL, NULL),
(82, 119, 'card', 605.00, 'succeeded', 'cs_test_a1vxNwbC7eCXTBd8O76XToaBh9RFG4yomXP3sqOy4YfvBdw0XHDMXa1mOx', '2024-09-13 10:35:25', '2024-09-13 10:35:25', NULL, NULL, NULL),
(83, 120, 'card', 246.00, 'succeeded', 'cs_test_a12nN5tGOnG4MqX0jls8ob1wSM7BPwiX70ITFQAvy1OG5Cwh5rQAQUW24Z', '2024-09-13 12:05:35', '2024-09-13 12:05:35', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK', 'cus_QqFgW5iwTjmxxk', NULL),
(84, 120, 'card', 246.00, 'succeeded', 'cs_test_a12nN5tGOnG4MqX0jls8ob1wSM7BPwiX70ITFQAvy1OG5Cwh5rQAQUW24Z', '2024-09-13 12:08:35', '2024-09-13 12:08:35', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK', 'cus_QqFgW5iwTjmxxk', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK'),
(85, 120, 'card', 246.00, 'succeeded', 'cs_test_a12nN5tGOnG4MqX0jls8ob1wSM7BPwiX70ITFQAvy1OG5Cwh5rQAQUW24Z', '2024-09-13 12:09:11', '2024-09-13 12:09:11', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK', 'cus_QqFgW5iwTjmxxk', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK'),
(86, 120, 'card', 246.00, 'succeeded', 'cs_test_a12nN5tGOnG4MqX0jls8ob1wSM7BPwiX70ITFQAvy1OG5Cwh5rQAQUW24Z', '2024-09-13 13:27:35', '2024-09-13 13:27:35', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK', 'cus_QqFgW5iwTjmxxk', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK'),
(87, 120, 'card', 246.00, 'succeeded', 'cs_test_a12nN5tGOnG4MqX0jls8ob1wSM7BPwiX70ITFQAvy1OG5Cwh5rQAQUW24Z', '2024-09-13 14:06:01', '2024-09-13 14:06:01', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK', 'cus_QqFgW5iwTjmxxk', 'pi_3PyZBiAJIxJv7OXD0rq2U2HK'),
(88, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:09:42', '2024-09-13 19:09:42', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(89, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:10:40', '2024-09-13 19:10:40', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(90, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:11:09', '2024-09-13 19:11:09', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(91, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:11:25', '2024-09-13 19:11:25', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(92, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:13:46', '2024-09-13 19:13:46', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(93, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:14:28', '2024-09-13 19:14:28', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(94, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:14:52', '2024-09-13 19:14:52', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(95, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:16:12', '2024-09-13 19:16:12', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(96, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:16:14', '2024-09-13 19:16:14', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(97, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:16:17', '2024-09-13 19:16:17', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(98, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:16:19', '2024-09-13 19:16:19', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(99, 121, 'card', 110.00, 'succeeded', 'cs_test_a12CHjAHIccXRInbcQThMfvrz6yLoujOvLkL9qWNXxTicQW2z0ToGq93bg', '2024-09-13 19:16:24', '2024-09-13 19:16:24', 'pi_3PyfoBAJIxJv7OXD2ej36cft', 'cus_QqMRKREE8s04aI', 'pi_3PyfoBAJIxJv7OXD2ej36cft'),
(100, 122, 'card', 670.00, 'succeeded', 'cs_test_b1bGjYohauinq2nMRLCyzH48HuIviAhumeMbbDWOltfMXT6Gxb7WvFX52a', '2024-09-14 07:29:27', '2024-09-14 07:29:27', 'pi_3PyrLyAJIxJv7OXD0BXCjAi7', 'cus_QqYFou9QXK7V7a', 'pi_3PyrLyAJIxJv7OXD0BXCjAi7'),
(101, 123, 'card', 110.00, 'succeeded', 'cs_test_a1xZYRH7lhWeO6r3raOVqitF3qQS1kmKlcyfLxo5JKG2krWMdoTGeCaswS', '2024-09-14 07:45:14', '2024-09-14 07:45:14', 'pi_3PyrbLAJIxJv7OXD0twLs6LP', 'cus_QqYiIcvm5SF3Hi', 'pi_3PyrbLAJIxJv7OXD0twLs6LP'),
(102, 124, 'card', 660.00, 'succeeded', 'cs_test_a1wjcr2b3QmhnZqpV7CIWOU8ycwzthsqY5wSFJxRCZrV3VtxiVyJS06r8g', '2024-09-14 08:34:57', '2024-09-14 08:34:57', 'pi_3PysNRAJIxJv7OXD0jGmsOVM', 'cus_QqZWIkqmEoMUDe', 'pi_3PysNRAJIxJv7OXD0jGmsOVM'),
(103, 125, 'card', 2400.00, 'succeeded', 'cs_test_a1IelfJXwpfYcGXbcHtX3LksOgoHY7pj5ELYeRd30QlCr1U58KPS9QXiVn', '2024-09-14 13:01:07', '2024-09-14 13:01:07', 'pi_3PywX1AJIxJv7OXD3rxp2mz0', 'cus_QqdolIk6m3vDPn', 'pi_3PywX1AJIxJv7OXD3rxp2mz0'),
(104, 126, 'card', 400.00, 'succeeded', 'cs_test_a1rHX9R3T3HTNGd9jizN6dLlGu2ZTo4lAQDFMZvm1liiKO4vszMiI91Nm8', '2024-09-14 14:03:06', '2024-09-14 14:03:06', 'pi_3PyxUwAJIxJv7OXD3FuqEmWD', 'cus_QqenmogT8GAFCY', 'pi_3PyxUwAJIxJv7OXD3FuqEmWD'),
(105, 127, 'card', 2200.00, 'succeeded', 'cs_test_a1rCtJwGAd1PZnPsYW2gWl0UHraSyWlaA8hY1AocYmlsJQFuGFG1p09AYn', '2024-09-14 16:42:26', '2024-09-14 16:42:26', 'pi_3PyzzCAJIxJv7OXD27IvFofg', 'cus_QqhM4PKFjDDjk5', 'pi_3PyzzCAJIxJv7OXD27IvFofg'),
(106, 129, 'card', 1723.00, 'succeeded', 'cs_test_b1d9vDXWG5KYNyuS9KbQzJ8laxLpzABM3DnI1YziadN1CjHbkvE1oHHQzT', '2024-09-15 14:11:40', '2024-09-15 14:11:40', 'pi_3PzK6tAJIxJv7OXD2RulzbL7', 'cus_Qr2Afff8LudAdD', 'pi_3PzK6tAJIxJv7OXD2RulzbL7'),
(107, 129, 'card', 1723.00, 'succeeded', 'cs_test_b1d9vDXWG5KYNyuS9KbQzJ8laxLpzABM3DnI1YziadN1CjHbkvE1oHHQzT', '2024-09-15 14:12:29', '2024-09-15 14:12:29', 'pi_3PzK6tAJIxJv7OXD2RulzbL7', 'cus_Qr2Afff8LudAdD', 'pi_3PzK6tAJIxJv7OXD2RulzbL7'),
(108, 130, 'card', 3840.00, 'succeeded', 'cs_test_b1vaVJ3IQ0B7BLJub1gv268nmnjnQ31uE0BVLJzQfWINpbFbAH0rp3Keg3', '2024-09-16 14:05:40', '2024-09-16 14:05:40', 'pi_3PzgUbAJIxJv7OXD0wmr6v3y', 'cus_QrPIyQvb7XK7cx', 'pi_3PzgUbAJIxJv7OXD0wmr6v3y'),
(109, 131, 'card', 2200.00, 'succeeded', 'cs_test_b1l3zuXJXaMHyOMZGhFT8s7ePgt5etU3ouMAS6kptkfwupPoYGme09OJzd', '2024-09-16 14:47:47', '2024-09-16 14:47:47', 'pi_3Pzh9KAJIxJv7OXD3gI9i4ss', 'cus_QrPywfvaOSt1wv', 'pi_3Pzh9KAJIxJv7OXD3gI9i4ss'),
(110, 132, 'card', 11100.00, 'succeeded', 'cs_test_a1Mjaim17EMfOFhhewiOW9tpQfYcuMH4baH1V7xjwMkN0C29XtWTdqqhq4', '2024-09-16 16:14:04', '2024-09-16 16:14:04', 'pi_3PziUpAJIxJv7OXD0r2Lzby2', 'cus_QrRNmfacvc2Z2f', 'pi_3PziUpAJIxJv7OXD0r2Lzby2'),
(111, 133, 'card', 3500.00, 'succeeded', 'cs_test_a1ekjQa4n2ydA30ByKp6JaaUyDADPNcpIXK76DfaqvIshTiGKUP5cXECTP', '2024-09-16 16:37:43', '2024-09-16 16:37:43', 'pi_3PzirjAJIxJv7OXD2eEPvnYD', 'cus_QrRkUEkaGVTSF3', 'pi_3PzirjAJIxJv7OXD2eEPvnYD'),
(112, 137, 'card', 2160.00, 'succeeded', 'cs_test_b1YXvAQGp4ldO7bCNrLJyvmmknb2c0uI5WeJ9n6UkKVG2KlUXrke9y2BaZ', '2024-09-16 19:07:18', '2024-09-16 19:07:18', 'pi_3PzlAxAJIxJv7OXD3zcsWczO', 'cus_QrU0qC6QBA6LP8', 'pi_3PzlAxAJIxJv7OXD3zcsWczO'),
(113, 138, 'card', 12300.00, 'succeeded', 'cs_test_a1tV8wHFRkAz5XotFtBzoWUa5uypLNakfxrHOr6dIXdF3dm0V1cOrDjPJD', '2024-09-16 19:25:44', '2024-09-16 19:25:44', 'pi_3PzlULAJIxJv7OXD3eESiC7v', 'cus_QrUSFzdkxl6nGp', 'pi_3PzlULAJIxJv7OXD3eESiC7v'),
(114, 139, 'card', 2200.00, 'succeeded', 'cs_test_a1pHTy4IuasRrpTpjysSHyAUupmygjRWSnl4hcPtLt3lKucklX7mIA5xsr', '2024-09-17 06:42:12', '2024-09-17 06:42:12', 'pi_3Pzwz5AJIxJv7OXD3076nExz', 'cus_QrgLQsA27CSZGT', 'pi_3Pzwz5AJIxJv7OXD3076nExz'),
(115, 141, 'card', 200.00, 'succeeded', 'cs_test_b1LCoaXirGIkxGxHRWzbtUOwRqFt0hQ6RAofxB8fNrAbmv2E8B3JZdIZyz', '2024-09-17 07:44:03', '2024-09-17 07:44:03', 'pi_3PzxwxAJIxJv7OXD24ZKPsbJ', 'cus_QrhLEHeq7bcvIq', 'pi_3PzxwxAJIxJv7OXD24ZKPsbJ'),
(116, 142, 'card', 990.00, 'succeeded', 'cs_test_a1Uo0wJwj7gpdmcLO80z7QukzR1lJ5CSHkzlTAtuGXhMXbSLPUvTBUOeYt', '2024-10-25 12:54:12', '2024-10-25 12:54:12', 'pi_3QDnxoAJIxJv7OXD3BCsLVFw', 'cus_R5zwmlT94T8YwR', 'pi_3QDnxoAJIxJv7OXD3BCsLVFw'),
(117, 143, 'card', 350.00, 'succeeded', 'cs_test_a1DRFd4WA948glf1KKHl3X54JuYRfHVlEMPeuDZqfEuXu9tKoDLOuLdkbh', '2024-10-26 10:03:05', '2024-10-26 10:03:05', 'pi_3QE7lmAJIxJv7OXD1P7tADeR', 'cus_R6KPvHxepus2Rg', 'pi_3QE7lmAJIxJv7OXD1P7tADeR'),
(118, 144, 'card', 310450.00, 'succeeded', 'cs_test_a1Z3SdKjWoQjaRutWoZvaVZ7KJIPI6lEx3isDOVMDx9C2VWeSZhEA3Xhlk', '2024-10-26 10:25:20', '2024-10-26 10:25:20', 'pi_3QE87IAJIxJv7OXD0ZjVlbXV', 'cus_R6Km2OxJKbt5Co', 'pi_3QE87IAJIxJv7OXD0ZjVlbXV'),
(119, 148, 'card', 40.00, 'succeeded', 'cs_test_a16CaNGptQeRLzzFKGBoMBsqJNt6lxZ46gGZwNwjh6Kk2Y2abUAepV6ijG', '2024-12-05 08:23:49', '2024-12-05 08:23:49', 'pi_3QSbHfAJIxJv7OXD0bvzsW85', 'cus_RLHqTsHNWobBUR', 'pi_3QSbHfAJIxJv7OXD0bvzsW85'),
(120, 149, 'card', 19998.00, 'succeeded', 'cs_test_a1gmhnHkGHMIO8r3nidkLnoIUBQEfrOGBvpm3JiJ2lnIRCwOD3PoDGLKC9', '2024-12-05 11:10:40', '2024-12-05 11:10:40', 'pi_3QSdt9AJIxJv7OXD3AKJf6AS', 'cus_RLKGeoZxDHy7AB', 'pi_3QSdt9AJIxJv7OXD3AKJf6AS');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `catigory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `stock`, `image_url`, `created_at`, `updated_at`, `catigory_id`) VALUES
(16, 'tn4', 10.00, 'grais khfif', 3, 'images/brTdHPWB18O6S3I9eE0MtSdRFVAofAUFxWOE80Lo.jpg', '2024-11-28 10:22:12', '2025-01-13 19:37:50', 3),
(17, 'air max', 5000.00, 'kuguygiyg', 8, 'images/pza12RezkSE6XQQqEhG1BD6kAtv1Uho0yVGsVjih.jpg', '2024-11-28 10:34:01', '2024-12-05 10:17:35', 5),
(18, 'tn', 300.00, '///////////////////////', 2, 'images/7PvXG8Eij8qPN2quf2wZPwOWhCJOzuIKAb489VsX.avif', '2024-11-28 11:09:09', '2024-11-28 11:09:09', 6),
(19, 'tn', 9999.00, 'uyuyti7tiut7iuy', 768, 'images/AnoJoQWJtLwQDGGbnMOopmklwOrWtotQkbLHkLGl.avif', '2024-12-05 10:51:44', '2025-01-13 18:18:58', 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, NULL, NULL, '2024-12-05 08:51:13', '2024-12-05 08:51:13'),
(5, NULL, NULL, 3, NULL, '2024-12-05 09:07:55', '2024-12-05 09:07:55'),
(6, 17, 6, 3, NULL, '2024-12-05 09:09:03', '2024-12-05 09:09:03'),
(7, 17, 6, 3, NULL, '2024-12-05 10:19:47', '2024-12-05 10:19:47'),
(8, 18, 6, 5, NULL, '2024-12-05 10:19:55', '2024-12-05 10:19:55'),
(9, 17, 6, 4, NULL, '2024-12-05 10:23:27', '2024-12-05 10:23:27'),
(10, 18, 6, 1, NULL, '2024-12-05 10:23:35', '2024-12-05 10:23:35'),
(11, 17, 6, 2, NULL, '2024-12-05 10:43:03', '2024-12-05 10:43:03'),
(12, 18, 5, 1, NULL, '2025-01-13 18:18:14', '2025-01-13 18:18:14'),
(13, 18, 5, 1, NULL, '2025-01-13 18:18:16', '2025-01-13 18:18:16'),
(14, 17, 6, 4, NULL, '2025-03-25 10:20:31', '2025-03-25 10:20:31'),
(15, 17, 6, 2, NULL, '2025-03-25 10:20:32', '2025-03-25 10:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1KftWL6FHWv0ah6h5kRe1Y6VpiTeBNoimvJyvIY6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0RMUGdqeW90VTZva2lFREpWQ1MwaWp6UnByZWF6TFFrbEdZcnc0MCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE2Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902473),
('1MtwsOWTMbBWTXQyLlhPDc30PE8DrrXx2KESo94G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDBXUldKQUFFc05sYVFEOGJKQ1F2dDRPaFlKV0dWWXRXUDZpUzBjcyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE5Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742901557),
('2Rd4NNukaqiggKvkkC6BQrVLjV3pUjbp8eRiSAze', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0dmeTQ2UWdTR0dDU0t2OGYxVkx6bUhNb3lmSnVLenBqajhRRzRjMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOCI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOCI7fX0=', 1742902469),
('3phDDPeJzwBJpi02Mpu85KV3LdtFrkgS0YOLojvO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTGVva3ZKcDhSVFRSQnhBalJwcnB3SlpRYkRCTXJVb2hpZGxEdG93NCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902470),
('4eiPTxZxFFmlket6V8G3gQ4R2d8ReNuk8p0msPbd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVdvSlFQVmZoOWZSWWpZYTdzYmx5MGhEYjJlSmh0R00xSVZaM2FYOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE3Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742901839),
('aFHLeUnvGn22c04NiKr7SEy7Rnw3OqBRDVyLxVkQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblFzTmp1VzVDbmJnRGZwZVBxbzZ0T1V6eDJXSnNVeGVPU3lmTXdFMyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902476),
('Bx3Uga7CNENm6cyX6kCZdAttwnw32Y5b3olZ49BW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUW5mQTEyczdydHo1czMxanlUN2k4ZFJuWm5tRnhyUTdZN3VKVnh0ZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE3Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902474),
('cn1MALPAp28fF17cXfezEhyJhb57pk1g7IXbEqdv', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicXRCS3FlTjJTM0tQZ21CNm5wbUZnMDV6bEg4U0ZrOEVpNERZeUZsViI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRkX3Byb2R1Y3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1742903691),
('CYWWPjudEuoCiAuHQyFKolehHZPVorrotoQE0Fdd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2ZYZEJqNlRsU0hNS2FvcFJMaGlYQUhkNmREYjJUSDR4dVZuMDZROCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE5Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902477),
('nvf5sUaT0eI3RMST08YzIP2ZXrlH6weqnsDpdyti', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUxrbVJ2WVIyUUI3VlExYkl0TUFlWGRqVmJSYmd0NXZaVkROc2dpNCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE3Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902476),
('PtSzu0c7CZWrRmhyRL8tax0jLeLUH91KDJ85KAeX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ21vWERBZzdmZXMzd042MUlsZ3BYWVVHaU92WEFtTjR6c09QeTlGWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE2Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902474),
('QEUXAz3UAaDZnatKOdWZ575wauUJU69h40XHOIot', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRW1UYW9yaUo2U3VWTVpiVlljT2JybkM1Q0JMcHlqNGpMV0F5VkJOcCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE3Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902475),
('QVcnQMbrMAnW5Fx8eRkZZhJ0p2EV9sMbPAfxQHTm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUFB2djU3djNGUU5DSVA1aTJqbHNFVmtvVnhQdTk4VFpwQ0tGZ053UCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902476),
('RvEsuKCBAdl4ANA4knfQug5wDqQryKCWLoeadm9T', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXlkNDRxaG1MUXNwM0hYMjNVcEg5SEM0bFNGMEE2S2t2NU5oUlk5TSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE2Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902472),
('vQjP1sS9ynoV4LMIe78ea1p76ObGqq8dLphoKtne', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm1SS2RQcWZ0bVNoeWhhV3BxUFFiT0piSmQyMDl4aXZkeXRmSnJ2YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902474),
('WX4DdIJykdTxu9FAmOtbr70aDLQnHCSUwPXlVeHA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM0FiWFR3WmEyMVlvWG8wdlJRcGp2eWRLdkxHVWhWYzY5M0VKcHo2OSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902477),
('XopxvEUZgOItOReKxPFcCKnWE7krWFLwbRhyeu4U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZHRaMTlRbHV2TVg0ZGVlcVB5TktVRVpMRUxiWXljaHlzSlExMEFBbSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3Qtc3RhdHVzLzE2Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LXN0YXR1cy8xNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742902473);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `shipping_type` enum('standard','express') DEFAULT NULL,
  `shipping_status` enum('pending','delivered','shipped') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `address`, `city`, `state`, `country`, `postal_code`, `shipping_type`, `shipping_status`, `created_at`, `updated_at`) VALUES
(4, 121, 'algeria', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-13 19:16:17', '2024-09-16 16:20:06'),
(5, 121, 'algeria', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-13 19:16:19', '2024-09-14 15:29:07'),
(6, 121, 'algeria', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-13 19:16:25', '2024-09-14 06:47:39'),
(7, 122, 'algeria', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-14 07:29:28', '2024-09-16 16:43:35'),
(8, 123, 'algeria', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-14 07:45:15', '2024-09-14 07:59:44'),
(9, 124, 'algeria', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-14 08:34:57', '2024-09-14 09:01:35'),
(10, 125, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-14 13:01:07', '2024-09-14 15:24:09'),
(11, 126, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-14 14:03:06', '2024-09-14 15:10:12'),
(12, 127, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-14 16:42:26', '2024-09-14 16:42:26'),
(13, 129, 'alger', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-15 14:12:30', '2024-09-15 16:32:10'),
(14, 130, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-16 14:05:40', '2024-09-16 14:17:26'),
(15, 131, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-16 14:47:48', '2024-09-16 14:49:40'),
(16, 132, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-16 16:14:05', '2024-09-16 16:14:05'),
(17, 133, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-16 16:37:44', '2024-09-16 16:37:44'),
(18, 137, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-16 19:07:18', '2024-09-16 19:07:18'),
(19, 138, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-16 19:25:45', '2024-09-17 07:00:48'),
(20, 139, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'shipped', '2024-09-17 06:42:13', '2024-09-17 07:39:46'),
(21, 141, 'bourdj bou areredj', NULL, NULL, NULL, NULL, NULL, 'delivered', '2024-09-17 07:44:03', '2024-09-17 09:01:11'),
(22, 142, 'touama', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-25 12:54:12', '2024-10-25 12:54:12'),
(23, 143, 'touama', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-26 10:03:06', '2024-10-26 10:03:06'),
(24, 144, 'touama', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-26 10:25:20', '2024-10-26 10:25:20'),
(25, 148, 'touma', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-12-05 08:23:49', '2024-12-05 08:23:49'),
(26, 149, 'touma', NULL, NULL, NULL, NULL, NULL, 'pending', '2024-12-05 11:10:41', '2024-12-05 11:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('costumer','admin') NOT NULL DEFAULT 'costumer',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `notified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `phone`, `address`, `notified`) VALUES
(1, 'touama', 'sabtoua18@gmail.com', NULL, '$2y$12$8fYfrtEvKVkPyc.GzRhnnOvyNAkav7SbG6x5lkAUo9mJDUlSYukN6', NULL, '2024-09-08 11:44:37', '2024-09-16 09:09:19', 'admin', '0675518700', 'bourdj bou areredj', 1),
(2, 'saber', 'touamat332@gmail.com', NULL, '$2y$12$3fVY.so98Kylx6J1974JhONR0UJwp3tATAK.w8CvuKmlYF7e3RdPK', NULL, '2024-09-15 14:09:46', '2024-09-15 14:09:46', 'admin', NULL, 'alger', 0),
(4, 'saber', 'sanfourasanfou11@gmail.com', NULL, '$2y$12$QzeEU0b5dPeAHm3cBBvU6uMig/wmVyCHgpBZoPryYrh0A/BsQlVA2', NULL, '2024-09-15 17:21:41', '2024-09-15 17:21:41', 'costumer', '0600000000', 'africa', 0),
(5, 'saber', 'a@gmail.com', NULL, '$2y$12$IBKjl.PK5bhJdzS76WS4yeRU9KMfGIF45l/aVU9gAmM0S9NBuInoK', NULL, '2024-10-25 12:52:34', '2024-10-25 12:52:34', 'admin', '0675518700', 'touama', 1),
(6, 'saber', 'sa@gmail.com', NULL, '$2y$12$ImSwYRtc0rGHQIpVvARsOOc26JQtshgePAM5OSplZNsEY90wNneZ.', NULL, '2024-11-27 07:32:22', '2024-11-27 07:32:22', 'admin', '0675518700', 'touma', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webhooks`
--

CREATE TABLE `webhooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_product_id_foreign` (`product_id`),
  ADD KEY `cards_user_id_foreign` (`user_id`);

--
-- Indexes for table `catigories`
--
ALTER TABLE `catigories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catigory_id` (`catigory_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webhooks`
--
ALTER TABLE `webhooks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `catigories`
--
ALTER TABLE `catigories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `webhooks`
--
ALTER TABLE `webhooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_catigory_id_foreign` FOREIGN KEY (`catigory_id`) REFERENCES `catigories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catigory_id`) REFERENCES `catigories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
