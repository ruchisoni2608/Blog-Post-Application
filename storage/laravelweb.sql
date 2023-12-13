-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2023 at 06:02 PM
-- Server version: 8.0.35-0ubuntu0.23.04.1
-- PHP Version: 8.1.12-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 1, 'new comment', NULL, '2023-12-07 08:29:05', '2023-12-07 08:29:05', NULL),
(2, 6, 1, 'sss', NULL, '2023-12-07 08:32:44', '2023-12-07 08:32:44', NULL),
(3, 2, 1, 'aa', NULL, '2023-12-07 23:19:33', '2023-12-07 23:19:33', NULL),
(4, 2, 5, 'new comment', NULL, '2023-12-07 23:56:15', '2023-12-07 23:56:15', NULL),
(5, 2, 5, 'nice one', NULL, '2023-12-07 23:58:09', '2023-12-07 23:58:09', NULL),
(6, 6, 5, 'nice idea', 4, '2023-12-08 00:06:52', '2023-12-08 00:06:52', NULL),
(7, 6, 5, 'good', 5, '2023-12-08 00:07:03', '2023-12-08 00:07:03', NULL),
(8, 2, 5, 'good', 6, '2023-12-08 00:07:18', '2023-12-08 00:07:18', NULL),
(9, 6, 5, 'thank you', 8, '2023-12-08 00:07:35', '2023-12-08 00:07:35', NULL),
(10, 2, 5, 'nice one @user3', NULL, '2023-12-08 01:10:48', '2023-12-08 01:10:48', NULL),
(11, 2, 5, 'nice one @user3', NULL, '2023-12-08 01:11:20', '2023-12-08 01:11:20', NULL),
(12, 6, 5, 'thanks @User', 10, '2023-12-08 01:11:58', '2023-12-08 01:11:58', NULL),
(13, 2, 5, 'nice approach @User 3', NULL, '2023-12-08 01:23:14', '2023-12-08 01:23:14', NULL),
(14, 6, 6, 'good @user1', NULL, '2023-12-08 01:24:31', '2023-12-08 01:24:31', NULL),
(15, 3, 7, 'new one @user1', NULL, '2023-12-08 01:35:42', '2023-12-08 01:35:42', NULL),
(16, 3, 7, 'new one @user1', NULL, '2023-12-08 01:40:44', '2023-12-08 01:40:44', NULL),
(17, 6, 5, 'new one @user1', NULL, '2023-12-08 01:42:32', '2023-12-08 01:42:32', NULL),
(18, 6, 5, '@user1 neeeeeeeeeeeeeeeee@user1', NULL, '2023-12-08 01:43:54', '2023-12-08 05:21:37', '2023-12-08 05:21:37'),
(19, 6, 6, '@user1 new@user1', NULL, '2023-12-08 01:49:02', '2023-12-08 01:49:02', NULL),
(20, 6, 6, '@user1 new @user1', NULL, '2023-12-08 01:55:41', '2023-12-08 01:55:41', NULL),
(21, 3, 6, 'thank you @User 3', NULL, '2023-12-08 01:56:31', '2023-12-08 01:56:31', NULL),
(22, 3, 6, 'Thanks @User3', NULL, '2023-12-08 01:57:39', '2023-12-08 01:57:39', NULL),
(23, 6, 6, 'hey @user1', NULL, '2023-12-08 02:08:49', '2023-12-08 02:08:49', NULL),
(24, 3, 6, 'Follow for more @user1', NULL, '2023-12-08 02:12:15', '2023-12-08 02:12:15', NULL),
(25, 3, 6, 'yes @User3', 23, '2023-12-08 02:13:11', '2023-12-08 02:13:11', NULL),
(26, 3, 6, 'hello @User3', 25, '2023-12-08 02:13:45', '2023-12-08 02:13:45', NULL),
(27, 3, 6, 'this is new @User3', NULL, '2023-12-08 02:24:51', '2023-12-08 02:24:51', NULL),
(28, 6, 6, 'new', NULL, '2023-12-08 02:28:43', '2023-12-08 02:28:43', NULL),
(29, 3, 8, 'new Comment', NULL, '2023-12-08 02:44:07', '2023-12-08 02:44:07', NULL),
(30, 3, 8, 'new', 29, '2023-12-08 02:44:19', '2023-12-08 02:44:19', NULL),
(31, 3, 8, 'New one @USer3', NULL, '2023-12-08 02:44:56', '2023-12-08 02:44:56', NULL),
(32, 3, 8, 'NJew on e@User1', NULL, '2023-12-08 02:45:13', '2023-12-08 02:45:13', NULL),
(33, 3, 8, 'NJew on e@User3', NULL, '2023-12-08 02:45:17', '2023-12-08 02:45:17', NULL),
(34, 6, 8, 'Thanks @User1', 33, '2023-12-08 02:46:06', '2023-12-08 02:46:06', NULL),
(35, 4, 8, 'new one comment @user2', NULL, '2023-12-08 02:49:17', '2023-12-08 02:49:17', NULL),
(36, 4, 8, 'hello @User3', NULL, '2023-12-08 02:49:51', '2023-12-08 02:49:51', NULL),
(37, 4, 5, 'hello123', NULL, '2023-12-08 04:36:59', '2023-12-08 04:44:27', '2023-12-08 04:44:27'),
(38, 4, 5, 'This is New one', NULL, '2023-12-08 04:44:35', '2023-12-08 05:20:21', '2023-12-08 05:20:21'),
(39, 4, 8, 'ki', NULL, '2023-12-08 05:09:02', '2023-12-08 05:09:24', '2023-12-08 05:09:24'),
(40, 4, 5, 'ss', NULL, '2023-12-08 05:20:34', '2023-12-08 07:35:04', '2023-12-08 07:35:04'),
(41, 6, 5, 'yes sure @user2', 10, '2023-12-08 05:21:53', '2023-12-08 05:21:53', NULL),
(42, 6, 5, 'hi @user2', 40, '2023-12-08 05:48:15', '2023-12-08 05:48:15', NULL),
(43, 6, 5, 'hiee @user2', 17, '2023-12-08 05:51:28', '2023-12-08 05:51:28', NULL),
(44, 4, 5, 'hi @user2 33344', NULL, '2023-12-08 05:56:19', '2023-12-08 07:35:14', NULL),
(45, 4, 5, 'yes @user3', 40, '2023-12-08 06:03:16', '2023-12-08 06:03:16', NULL),
(46, 4, 5, '@user2 12', 12, '2023-12-08 06:03:48', '2023-12-08 07:32:29', '2023-12-08 07:32:29'),
(47, 6, 5, 'hi @user2', 7, '2023-12-08 06:06:54', '2023-12-08 06:06:54', NULL),
(48, 4, 5, 'ddd', 40, '2023-12-08 07:34:41', '2023-12-08 07:34:41', NULL),
(49, 4, 5, 'aa', 44, '2023-12-08 07:35:42', '2023-12-08 07:35:42', NULL),
(50, 4, 5, 'ss', 44, '2023-12-08 07:37:18', '2023-12-08 07:37:18', NULL),
(51, 4, 5, 'sss', 50, '2023-12-08 07:37:27', '2023-12-08 07:37:39', NULL),
(52, 2, 5, 'vvrrr', 6, '2023-12-08 07:51:29', '2023-12-08 07:51:44', '2023-12-08 07:51:44'),
(53, 2, 5, 'gg', 9, '2023-12-08 07:52:01', '2023-12-08 07:52:09', '2023-12-08 07:52:09'),
(54, 2, 16, 'This is my new post', NULL, '2023-12-10 23:53:48', '2023-12-10 23:53:48', NULL),
(55, 2, 16, 'Hello @user2', NULL, '2023-12-10 23:54:07', '2023-12-10 23:54:07', NULL),
(56, 4, 16, 'hii @User', 55, '2023-12-10 23:54:53', '2023-12-10 23:54:53', NULL),
(57, 2, 16, 'Good morning @user2', 56, '2023-12-10 23:55:44', '2023-12-10 23:59:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `mentions`
--

CREATE TABLE `mentions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `mentioned_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mentions`
--

INSERT INTO `mentions` (`id`, `user_id`, `post_id`, `comment_id`, `mentioned_user_id`, `created_at`, `updated_at`) VALUES
(1, 6, 5, 12, 2, '2023-12-08 01:11:58', '2023-12-08 01:11:58'),
(2, 2, 5, 13, 2, '2023-12-08 01:23:14', '2023-12-08 01:23:14'),
(3, 6, 6, 14, 3, '2023-12-08 01:24:31', '2023-12-08 01:24:31'),
(4, 3, 7, 15, 3, '2023-12-08 01:35:42', '2023-12-08 01:35:42'),
(5, 3, 7, 16, 3, '2023-12-08 01:40:44', '2023-12-08 01:40:44'),
(6, 6, 5, 17, 3, '2023-12-08 01:42:32', '2023-12-08 01:42:32'),
(7, 6, 5, 18, 3, '2023-12-08 01:43:54', '2023-12-08 01:43:54'),
(8, 6, 6, 19, 3, '2023-12-08 01:49:02', '2023-12-08 01:49:02'),
(9, 6, 6, 20, 3, '2023-12-08 01:55:41', '2023-12-08 01:55:41'),
(10, 3, 6, 21, 2, '2023-12-08 01:56:31', '2023-12-08 01:56:31'),
(11, 3, 6, 22, 6, '2023-12-08 01:57:39', '2023-12-08 01:57:39'),
(12, 6, 6, 23, 3, '2023-12-08 02:08:49', '2023-12-08 02:08:49'),
(13, 3, 6, 24, 3, '2023-12-08 02:12:15', '2023-12-08 02:12:15'),
(14, 3, 6, 25, 6, '2023-12-08 02:13:11', '2023-12-08 02:13:11'),
(15, 3, 6, 26, 6, '2023-12-08 02:13:45', '2023-12-08 02:13:45'),
(16, 3, 6, 27, 6, '2023-12-08 02:24:51', '2023-12-08 02:24:51'),
(17, 3, 8, 31, 6, '2023-12-08 02:44:56', '2023-12-08 02:44:56'),
(18, 3, 8, 32, 3, '2023-12-08 02:45:13', '2023-12-08 02:45:13'),
(19, 3, 8, 33, 6, '2023-12-08 02:45:17', '2023-12-08 02:45:17'),
(20, 6, 8, 34, 3, '2023-12-08 02:46:06', '2023-12-08 02:46:06'),
(21, 4, 8, 35, 4, '2023-12-08 02:49:17', '2023-12-08 02:49:17'),
(22, 4, 8, 36, 6, '2023-12-08 02:49:51', '2023-12-08 02:49:51'),
(23, 6, 5, 41, 4, '2023-12-08 05:21:53', '2023-12-08 05:21:53'),
(24, 6, 5, 42, 4, '2023-12-08 05:48:15', '2023-12-08 05:48:15'),
(25, 6, 5, 43, 4, '2023-12-08 05:51:28', '2023-12-08 05:51:28'),
(26, 4, 5, 44, 4, '2023-12-08 05:56:19', '2023-12-08 05:56:19'),
(27, 4, 5, 45, 6, '2023-12-08 06:03:16', '2023-12-08 06:03:16'),
(28, 4, 5, 46, 4, '2023-12-08 06:03:48', '2023-12-08 06:03:48'),
(29, 6, 5, 47, 4, '2023-12-08 06:06:54', '2023-12-08 06:06:54'),
(30, 2, 16, 55, 4, '2023-12-10 23:54:07', '2023-12-10 23:54:07'),
(31, 4, 16, 56, 2, '2023-12-10 23:54:53', '2023-12-10 23:54:53'),
(32, 2, 16, 57, 4, '2023-12-10 23:55:44', '2023-12-10 23:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2023_12_07_062732_add_lastname_to_users_table', 2),
(7, '2023_12_07_120717_create_posts_table', 3),
(8, '2023_12_07_122743_create_posts_table', 4),
(9, '2023_12_07_135013_create_tags_table', 5),
(10, '2023_12_07_135019_create_comments_table', 5),
(11, '2023_12_08_050529_add_parent_id_to_comments_tabel', 6),
(12, '2023_12_08_060143_create_mentions_table', 7),
(13, '2023_12_08_064755_create_notifications_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0ec46ce3-6469-415c-8e34-cf8715d72064', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"user2 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":46}', '2023-12-08 06:06:29', '2023-12-08 06:03:51', '2023-12-08 06:06:29'),
('1c8a7cdc-b240-49c4-b131-ce136d74779b', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"user2 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":45}', NULL, '2023-12-08 06:03:19', '2023-12-08 06:03:19'),
('24a77731-f481-417a-bec0-66c43345c117', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"User1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/8\",\"postId\":\"8\",\"commentId\":31}', '2023-12-08 02:45:34', '2023-12-08 02:45:00', '2023-12-08 02:45:34'),
('3b35413f-2234-4df5-9fb8-395231143249', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":43}', '2023-12-08 05:52:39', '2023-12-08 05:51:32', '2023-12-08 05:52:39'),
('3f0d8f91-2e9e-4f38-ab10-f70b9c242c92', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 3, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/8\",\"postId\":\"8\",\"commentId\":34}', '2023-12-08 02:46:32', '2023-12-08 02:46:09', '2023-12-08 02:46:32'),
('3f9af49d-ea81-4356-99ba-6a4f5e41f099', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"user2 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/8\",\"postId\":\"8\",\"commentId\":36}', '2023-12-08 02:50:23', '2023-12-08 02:49:56', '2023-12-08 02:50:23'),
('422580da-8c66-47e0-92f2-8e582fc00541', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"User mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/16\",\"postId\":\"16\",\"commentId\":55}', '2023-12-10 23:54:28', '2023-12-10 23:54:11', '2023-12-10 23:54:28'),
('4c15e598-6386-4c6b-b9fa-c4f6e7486c17', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 3, '{\"message\":\"user1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":24}', '2023-12-08 02:12:36', '2023-12-08 02:12:19', '2023-12-08 02:12:36'),
('618c6b09-26e8-4163-8b2d-a90cf32ba58a', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 2, '{\"message\":\"User mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":21}', '2023-12-10 23:44:57', '2023-12-08 01:56:35', '2023-12-10 23:44:57'),
('630cfb63-321c-45eb-a0bd-a2992d081927', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"user1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":25}', '2023-12-08 02:14:07', '2023-12-08 02:13:14', '2023-12-08 02:14:07'),
('6ad07265-71b9-4828-9db6-34017d8e6282', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"User mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/16\",\"postId\":\"16\",\"commentId\":57}', '2023-12-11 00:00:09', '2023-12-10 23:55:47', '2023-12-11 00:00:09'),
('6c8ba844-4e55-4b6b-90f2-e8c5a3ba3b41', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 2, '{\"message\":\"user2 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/16\",\"postId\":\"16\",\"commentId\":56}', '2023-12-10 23:55:17', '2023-12-10 23:54:57', '2023-12-10 23:55:17'),
('886b8adf-8744-485e-a955-dcec6a1c473f', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"user1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":26}', '2023-12-08 02:14:07', '2023-12-08 02:13:48', '2023-12-08 02:14:07'),
('8a6603d1-ea5c-4bcc-920b-17230d66f720', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 3, '{\"message\":\"user1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":20}', '2023-12-08 01:56:02', '2023-12-08 01:55:44', '2023-12-08 01:56:02'),
('90f18291-a078-4323-8cbd-4d8a3da81aa0', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":22}', '2023-12-08 01:57:47', '2023-12-08 01:57:43', '2023-12-08 01:57:47'),
('915e462d-a7b4-4aa1-bad0-0001c60fee09', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"user2 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/8\",\"postId\":\"8\",\"commentId\":35}', '2023-12-08 02:49:31', '2023-12-08 02:49:21', '2023-12-08 02:49:31'),
('9f5e0465-d88f-4cee-b959-8392b2790d06', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"User1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/8\",\"postId\":\"8\",\"commentId\":33}', '2023-12-08 02:45:34', '2023-12-08 02:45:21', '2023-12-08 02:45:34'),
('b9b891a7-cd15-4b32-a0ee-aaa65d8d27b8', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 3, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":23}', '2023-12-08 02:11:13', '2023-12-08 02:08:52', '2023-12-08 02:11:13'),
('c7053fbd-f83d-4275-9ed9-911f00c75831', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 6, '{\"message\":\"user1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/6\",\"postId\":\"6\",\"commentId\":27}', '2023-12-08 02:25:19', '2023-12-08 02:24:54', '2023-12-08 02:25:19'),
('d37b589c-bcec-412a-8ef0-ec2ff6c9f815', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":41}', '2023-12-08 05:47:21', '2023-12-08 05:21:57', '2023-12-08 05:47:21'),
('d3e8c5d3-6468-4682-858f-231098c7e176', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 3, '{\"message\":\"User1 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/8\",\"postId\":\"8\",\"commentId\":32}', '2023-12-08 02:46:32', '2023-12-08 02:45:17', '2023-12-08 02:46:32'),
('e226759c-da03-408b-b151-8046e41deb40', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":47}', '2023-12-08 07:00:28', '2023-12-08 06:06:58', '2023-12-08 07:00:28'),
('eeee7ecc-a9ba-485d-9b39-f52c9c4e2f90', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"User3 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":42}', '2023-12-08 05:48:40', '2023-12-08 05:48:19', '2023-12-08 05:48:40'),
('fa2c151f-69ad-4b66-a66f-5fce2e50fc60', 'App\\Notifications\\MentionNotification', 'App\\Models\\User', 4, '{\"message\":\"user2 mentioned you in a post comment.\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/posts\\/5\",\"postId\":\"5\",\"commentId\":44}', '2023-12-08 06:01:01', '2023-12-08 05:56:22', '2023-12-08 06:01:01');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'admin@gmail.com', '$2y$12$nFZ6oQfYcgImbzA1//nKrOih9bVWgYVjurqKzHZ5.WWagmJ/2w7Ei', '2023-12-06 04:23:05'),
(4, 'user@gmail.com', '$2y$12$W7w7vyoD2uCwAe30eM0V2O7si7qp9se9sNuYMu24nA0tm/weVBKoO', '2023-12-06 04:23:23'),
(39, 'richasoheliya@gmail.com', 'iudJbJfyQyjLeh63KdVq4m8dCEGnIIHoctEKTcvuRQTVDbLxoLaSqfq4neprhLaB', '2023-12-06 07:38:26'),
(40, 'richasoheliya@gmail.com', 'UoXKGUGWT1rlZWr2X5bizsyUyMktqK5vHllQiXAoRg69u46oWTbPSd7OCvcWczZB', '2023-12-06 07:38:41'),
(41, 'richasoheliya@gmail.com', '0buu57ICAMcD9Eg4wvq7NH7S2a1Btkqaif2Co758PBFXySQlKWCZWqF0hHZlfA6A', '2023-12-06 07:39:54'),
(42, 'richasoheliya@gmail.com', 'hakFITWNua4oLUhkXmQrjy1Bs83hh0sbIPn77d4StccUIkEsBBtMKwqJiz1igLiG', '2023-12-06 07:40:45'),
(43, 'richasoheliya@gmail.com', '2EHPBNFA77KY5aAKQo62KkIrmShpekaoxEBJ2nI3wFK7EviYJWHZOHIkisaHu2IF', '2023-12-06 07:42:31'),
(47, 'richasoheliya@gmail.com', '8zwNXXmXk38lcSWvFxgZP59sd3gp1isf1t5I7oVmJzLX6nk8AV0ONTm5cSzYgCqM', '2023-12-06 07:56:40'),
(49, 'richasoheliya@gmail.com', 'qCJAEYBvqLlLx7XuB9VS3EBAeg14XDYeNJMaH8CJKVDQEoIS8xkuHjY5ssQZludE', '2023-12-06 07:59:29'),
(57, 'kadecharuchi@gmail.com', 'icMVD2ov4TbCJuMdTzcm8U4Qbd5yLviW7tOY7rfyajzyGUPYi9ptRMbZuhJkUdIF', '2023-12-06 23:56:46'),
(58, 'kadecharuchi@gmail.com', 'gSmf0pS8x7Eg0wudbfVX2uOF6x6jkfBsaqvagedrXbvJ2Q3sVpsgxsBNH8XG12Qu', '2023-12-07 06:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'New Post', '<p>Post 111</p>', '1701955569.png', '2023-12-07 07:32:11', '2023-12-07 07:56:34', '0000-00-00 00:00:00'),
(3, 6, 'ss', '<p>sss ddd </p>', '1701955944.png', '2023-12-07 08:02:24', '2023-12-07 08:08:40', '0000-00-00 00:00:00'),
(4, 6, 's', '<p>s eddd   dffff</p>', '1701956065.jpeg', '2023-12-07 08:04:25', '2023-12-07 08:08:48', '0000-00-00 00:00:00'),
(5, 2, 'New Post on Dev', '<p>Many developer probes for a good package for comment and reply system, but now we are going to engender it without any packages. I will engender very simple comment system where you can integrate post and then you can leave a comment and can make a replication to any concrete post.</p>', '1702013140.png', '2023-12-07 23:55:40', '2023-12-08 00:08:45', NULL),
(6, 2, 'new 2', '<p>ww</p>', '1702013155.jpeg', '2023-12-07 23:55:55', '2023-12-08 02:43:42', '2023-12-08 02:43:42'),
(7, 3, 'rrrrr', '<p>On the other hand, we denounce with righteous indignation</p>', '1702019125.jpg', '2023-12-08 01:35:25', '2023-12-08 01:35:25', NULL),
(8, 3, 'mital1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est labo</p>', '1702023206.jpg', '2023-12-08 02:43:26', '2023-12-08 02:43:37', NULL),
(9, 4, 's', '<p>d</p>', '1702032388.jpeg', '2023-12-08 05:16:28', '2023-12-08 05:16:40', '2023-12-08 05:16:40'),
(10, 4, 's', '<p>s</p>', '1702032411.jpeg', '2023-12-08 05:16:51', '2023-12-08 05:17:05', '2023-12-08 05:17:05'),
(11, 4, 'New Post', '<p>Many developer probes for a good package for comment and reply system, but now we are going to engender it without any packages. I will engender very simple comment system where you can integrate post and then you can leave a comment and can make a replication to any concrete post.</p>', '1702036781.png', '2023-12-08 06:29:41', '2023-12-08 06:29:41', NULL),
(12, 4, 'new1', '<p>Many developer probes for a good package for comment and reply system, but now we are going to engender it without any packages. I will engender very simple comment system where you can integrate post and then you can leave a comment and can make a replication to any concrete post.</p>', '1702036862.jpeg', '2023-12-08 06:31:02', '2023-12-08 06:31:02', NULL),
(13, 4, 'new2', '<p>Many developer probes for a good package for comment and reply system, but now we are going to engender it without any packages. I will engender very simple comment system where you can integrate post and then you can leave a comment and can make a replication to any concrete post.</p>', '1702036968.jpeg', '2023-12-08 06:32:48', '2023-12-08 06:32:48', NULL),
(14, 4, 'new34', '<p>Many developer probes for a good package for comment and reply system, but now we are going to engender it without any packages. I will engender very simple comment system where you can integrate post and then you can leave a comment and can make a replication to any concrete post.</p>', '1702037135.jpeg', '2023-12-08 06:35:35', '2023-12-08 06:35:35', NULL),
(15, 4, 'new33', '<p>Many developer probes for a good package for comment and reply system, but now we are going to engender it without any packages. I will engender very simple comment system where you can integrate post and then you can leave a comment and can make a replication to any concrete post.</p>', '1702037162.jpg', '2023-12-08 06:36:02', '2023-12-08 06:36:02', NULL),
(16, 2, 'New post 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1702272061.jpg', '2023-12-10 23:51:01', '2023-12-11 00:17:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `Address`, `City`, `zipcode`, `bio`, `image`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'User', 'admin@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,', 'rajkot', '123', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'image/1702276859.jpg', NULL, 1, '$2y$12$bYjfcZh7BvHeMb2MAUnRk.dRX4QCl.oJHMfwWCIgxmR6xjQbu9Ex6', NULL, '2023-12-06 04:20:42', '2023-12-11 01:10:59'),
(2, 'User', 'A', 'user@gmail.com', 'new addres', 'rajkot', '123', 'I am user . On the other hand, we denounce with righteous indignation', 'image/1701944624.jpeg', NULL, 0, '$2y$12$jXIZ8DaBaYhIkPbyLS1XTO.B9UHDd3/WzinrypRHhd.kzjOeuu0fW', NULL, '2023-12-06 04:20:42', '2023-12-07 04:53:44'),
(3, 'User1', 'Lu', '1kadecharuchi@gmail.com', 'new addres', 'rsjkot', '123', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est labo', 'image/1702023095.jpeg', NULL, 0, '$2y$12$jXIZ8DaBaYhIkPbyLS1XTO.B9UHDd3/WzinrypRHhd.kzjOeuu0fW', NULL, '2023-12-06 04:54:56', '2023-12-08 02:41:35'),
(4, 'user2', 'A', 'richasoheliya@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore', 'Mubai', '123', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'image/1702031151.jpg', NULL, 0, '$2y$12$9NSVT16mOIqEtTBPrx0yUeTpkcDvX/o6DKkCNWDkF8ixq08kT6maq', NULL, '2023-12-06 05:25:39', '2023-12-08 04:55:51'),
(5, 'ruchi', '', 'ruchi@gmail.com', '', '', '', '', '', NULL, 0, '$2y$12$XF8i9PIsyA/9ZzKoVCtC2OeLX.gMhlvQvEhgpoJ2A2/8SorQgXjju', NULL, '2023-12-06 08:11:28', '2023-12-06 08:11:28'),
(6, 'User3', 'Lu', 'kadecharuchi@gmail.com', 'new addres', 'rsjkot', '123', 'i am user 3', 'image/1702013423.jpg', NULL, 0, '$2y$12$UOIYK2qV7xdzwMpgMSCkY.w73BzQcGNoeXSANp66nLX4DdWQHTJo6', NULL, '2023-12-06 08:14:31', '2023-12-08 00:00:23'),
(7, 'User4', '', '1kadecharuchi@gmail.com', '', '', '', '', '', NULL, 0, '$2y$12$EQNn2F/jHfn4j6MgSzerz.eXOONGcINQ9Y2RQ5APdoe/mXh5dyh/K', NULL, '2023-12-06 23:41:34', '2023-12-06 23:43:26'),
(8, 'Super', 'Admin', 'superadmin@gmail.com', 'Addresssssss', 'rajkot', '1', 'I am super Admin', 'image/1701936889.png', NULL, 2, '$2y$12$mE7vrUtP2JArbMtfSf2xOuyhMPHWYZFOk/pj.FuPDABNj4IErwDfS', NULL, '2023-12-07 00:35:03', '2023-12-07 02:44:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mentions`
--
ALTER TABLE `mentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mentions_user_id_foreign` (`user_id`),
  ADD KEY `mentions_post_id_foreign` (`post_id`),
  ADD KEY `mentions_comment_id_foreign` (`comment_id`),
  ADD KEY `mentions_mentioned_user_id_foreign` (`mentioned_user_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentions`
--
ALTER TABLE `mentions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mentions`
--
ALTER TABLE `mentions`
  ADD CONSTRAINT `mentions_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `mentions_mentioned_user_id_foreign` FOREIGN KEY (`mentioned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `mentions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `mentions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
