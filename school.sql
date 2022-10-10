-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 10 2022 г., 16:58
-- Версия сервера: 5.7.24
-- Версия PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `school`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'App\\Models\\Role model has been created', 'App\\Models\\Role', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 07:13:33', '2022-10-08 07:13:33'),
(2, 'default', 'App\\Models\\Role model has been created', 'App\\Models\\Role', 2, 'App\\Models\\User', 1, '[]', '2022-10-08 07:15:37', '2022-10-08 07:15:37'),
(3, 'default', 'App\\Models\\Role model has been created', 'App\\Models\\Role', 3, 'App\\Models\\User', 1, '[]', '2022-10-08 07:16:45', '2022-10-08 07:16:45'),
(4, 'default', 'App\\Models\\Role model has been created', 'App\\Models\\Role', 4, 'App\\Models\\User', 1, '[]', '2022-10-08 07:17:25', '2022-10-08 07:17:25'),
(5, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 07:39:24', '2022-10-08 07:39:24'),
(6, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 2, 'App\\Models\\User', 1, '[]', '2022-10-08 07:40:28', '2022-10-08 07:40:28'),
(7, 'default', 'App\\Models\\Subject model has been updated', 'App\\Models\\Subject', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 07:41:06', '2022-10-08 07:41:06'),
(8, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 07:45:52', '2022-10-08 07:45:52'),
(9, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 10:03:09', '2022-10-08 10:03:09'),
(10, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 2, 'App\\Models\\User', 1, '[]', '2022-10-08 10:03:23', '2022-10-08 10:03:23'),
(11, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 2, 'App\\Models\\User', 1, '[]', '2022-10-08 11:14:49', '2022-10-08 11:14:49'),
(12, 'default', 'App\\Models\\Group model has been updated', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 11:15:01', '2022-10-08 11:15:01'),
(13, 'default', 'App\\Models\\Group model has been updated', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 11:15:12', '2022-10-08 11:15:12'),
(14, 'default', 'App\\Models\\Group model has been updated', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2022-10-08 11:15:16', '2022-10-08 11:15:16'),
(15, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 3, 'App\\Models\\User', 1, '[]', '2022-10-08 11:19:31', '2022-10-08 11:19:31'),
(16, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 4, 'App\\Models\\User', 1, '[]', '2022-10-08 11:19:40', '2022-10-08 11:19:40'),
(17, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 3, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(18, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 4, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(19, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 5, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(20, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 6, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(21, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 7, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(22, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 8, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(23, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 9, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(24, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 10, NULL, NULL, '[]', '2022-10-08 13:52:35', '2022-10-08 13:52:35'),
(25, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 11, NULL, NULL, '[]', '2022-10-08 13:54:24', '2022-10-08 13:54:24'),
(26, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 12, NULL, NULL, '[]', '2022-10-08 13:54:24', '2022-10-08 13:54:24'),
(27, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 13, NULL, NULL, '[]', '2022-10-08 13:55:18', '2022-10-08 13:55:18'),
(28, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 14, NULL, NULL, '[]', '2022-10-08 13:55:18', '2022-10-08 13:55:18'),
(29, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 15, NULL, NULL, '[]', '2022-10-08 13:55:41', '2022-10-08 13:55:41'),
(30, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 16, NULL, NULL, '[]', '2022-10-08 13:55:41', '2022-10-08 13:55:41'),
(31, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 17, NULL, NULL, '[]', '2022-10-08 13:55:41', '2022-10-08 13:55:41'),
(32, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 18, NULL, NULL, '[]', '2022-10-08 13:55:41', '2022-10-08 13:55:41'),
(33, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 19, NULL, NULL, '[]', '2022-10-08 13:55:41', '2022-10-08 13:55:41'),
(34, 'default', 'App\\Models\\Group model has been created', 'App\\Models\\Group', 20, NULL, NULL, '[]', '2022-10-08 13:55:41', '2022-10-08 13:55:41'),
(35, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 3, NULL, NULL, '[]', '2022-10-08 13:59:33', '2022-10-08 13:59:33'),
(36, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 4, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(37, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 5, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(38, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 6, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(39, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 7, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(40, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 8, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(41, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 9, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(42, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 10, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(43, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 11, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(44, 'default', 'App\\Models\\Subject model has been created', 'App\\Models\\Subject', 12, NULL, NULL, '[]', '2022-10-08 14:00:03', '2022-10-08 14:00:03'),
(45, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 12, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:23', '2022-10-08 15:33:23'),
(46, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 11, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:26', '2022-10-08 15:33:26'),
(47, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 10, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:29', '2022-10-08 15:33:29'),
(48, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 9, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:32', '2022-10-08 15:33:32'),
(49, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 8, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:35', '2022-10-08 15:33:35'),
(50, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 7, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:38', '2022-10-08 15:33:38'),
(51, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 6, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:41', '2022-10-08 15:33:41'),
(52, 'default', 'App\\Models\\Subject model has been deleted', 'App\\Models\\Subject', 5, 'App\\Models\\User', 1, '[]', '2022-10-08 15:33:45', '2022-10-08 15:33:45'),
(53, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 1, 'App\\Models\\User', 3, '[]', '2022-10-09 05:38:47', '2022-10-09 05:38:47'),
(54, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 2, 'App\\Models\\User', 3, '[]', '2022-10-09 05:49:21', '2022-10-09 05:49:21'),
(55, 'default', 'App\\Models\\Subject model has been updated', 'App\\Models\\Subject', 4, 'App\\Models\\User', 3, '[]', '2022-10-09 06:42:34', '2022-10-09 06:42:34'),
(56, 'default', 'App\\Models\\Subject model has been updated', 'App\\Models\\Subject', 3, 'App\\Models\\User', 3, '[]', '2022-10-09 06:42:49', '2022-10-09 06:42:49'),
(57, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 3, 'App\\Models\\User', 3, '[]', '2022-10-09 06:46:55', '2022-10-09 06:46:55'),
(58, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 4, 'App\\Models\\User', 3, '[]', '2022-10-09 07:53:22', '2022-10-09 07:53:22'),
(59, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 4, 'App\\Models\\User', 3, '[]', '2022-10-09 07:54:50', '2022-10-09 07:54:50'),
(60, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 3, 'App\\Models\\User', 3, '[]', '2022-10-09 07:55:07', '2022-10-09 07:55:07'),
(61, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 2, 'App\\Models\\User', 3, '[]', '2022-10-09 07:55:27', '2022-10-09 07:55:27'),
(62, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 1, 'App\\Models\\User', 3, '[]', '2022-10-09 07:55:43', '2022-10-09 07:55:43'),
(63, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 5, 'App\\Models\\User', 3, '[]', '2022-10-09 08:00:22', '2022-10-09 08:00:22'),
(64, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 4, 'App\\Models\\User', 3, '[]', '2022-10-09 08:01:12', '2022-10-09 08:01:12'),
(65, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 2, 'App\\Models\\User', 3, '[]', '2022-10-09 08:01:17', '2022-10-09 08:01:17'),
(66, 'default', 'App\\Models\\Permission model has been updated', 'App\\Models\\Permission', 1, 'App\\Models\\User', 3, '[]', '2022-10-09 08:01:21', '2022-10-09 08:01:21'),
(67, 'default', 'App\\Models\\Role model has been updated', 'App\\Models\\Role', 1, 'App\\Models\\User', 3, '[]', '2022-10-09 08:03:31', '2022-10-09 08:03:31'),
(68, 'default', 'App\\Models\\Role model has been updated', 'App\\Models\\Role', 2, 'App\\Models\\User', 3, '[]', '2022-10-09 08:03:48', '2022-10-09 08:03:48'),
(69, 'default', 'App\\Models\\Role model has been updated', 'App\\Models\\Role', 3, 'App\\Models\\User', 3, '[]', '2022-10-09 08:04:01', '2022-10-09 08:04:01'),
(70, 'default', 'App\\Models\\Role model has been updated', 'App\\Models\\Role', 4, 'App\\Models\\User', 3, '[]', '2022-10-09 08:04:19', '2022-10-09 08:04:19'),
(71, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 6, 'App\\Models\\User', 3, '[]', '2022-10-09 15:09:14', '2022-10-09 15:09:14'),
(72, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 7, 'App\\Models\\User', 3, '[]', '2022-10-09 15:12:04', '2022-10-09 15:12:04'),
(73, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 8, 'App\\Models\\User', 3, '[]', '2022-10-09 15:14:31', '2022-10-09 15:14:31'),
(74, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 9, 'App\\Models\\User', 3, '[]', '2022-10-09 15:14:53', '2022-10-09 15:14:53'),
(75, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 10, 'App\\Models\\User', 3, '[]', '2022-10-09 15:15:24', '2022-10-09 15:15:24'),
(76, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 11, 'App\\Models\\User', 3, '[]', '2022-10-09 15:18:52', '2022-10-09 15:18:52'),
(77, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 4, 'App\\Models\\User', 3, '[]', '2022-10-09 15:27:00', '2022-10-09 15:27:00'),
(78, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 5, 'App\\Models\\User', 3, '[]', '2022-10-09 15:27:10', '2022-10-09 15:27:10'),
(79, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 6, 'App\\Models\\User', 3, '[]', '2022-10-09 15:27:19', '2022-10-09 15:27:19'),
(80, 'default', 'App\\Models\\Group model has been updated', 'App\\Models\\Group', 13, 'App\\Models\\User', 3, '[]', '2022-10-09 15:45:24', '2022-10-09 15:45:24'),
(81, 'default', 'App\\Models\\Group model has been updated', 'App\\Models\\Group', 14, 'App\\Models\\User', 3, '[]', '2022-10-09 15:46:12', '2022-10-09 15:46:12'),
(82, 'default', 'App\\Models\\Rating model has been created', 'App\\Models\\Rating', 7, 'App\\Models\\User', 3, '[]', '2022-10-10 05:23:27', '2022-10-10 05:23:27'),
(83, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 12, 'App\\Models\\User', 1, '[]', '2022-10-10 06:19:56', '2022-10-10 06:19:56'),
(84, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 13, 'App\\Models\\User', 1, '[]', '2022-10-10 06:20:15', '2022-10-10 06:20:15'),
(85, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 14, 'App\\Models\\User', 1, '[]', '2022-10-10 06:20:34', '2022-10-10 06:20:34'),
(86, 'default', 'App\\Models\\Permission model has been created', 'App\\Models\\Permission', 15, 'App\\Models\\User', 1, '[]', '2022-10-10 06:20:53', '2022-10-10 06:20:53'),
(87, 'default', 'App\\Models\\Subject model has been updated', 'App\\Models\\Subject', 1, 'App\\Models\\User', 30, '[]', '2022-10-10 06:36:52', '2022-10-10 06:36:52'),
(88, 'default', 'App\\Models\\Subject model has been updated', 'App\\Models\\Subject', 1, 'App\\Models\\User', 30, '[]', '2022-10-10 06:37:01', '2022-10-10 06:37:01');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `teacher_id`) VALUES
(13, '2022-10-08 13:55:17', '2022-10-09 15:45:24', NULL, 'Авиационная группа', 'Авиационная группа — тактическое формирование корабельной авиации, базирующееся на конкретном авианесущем плавсредстве.', 30),
(14, '2022-10-08 13:55:18', '2022-10-09 15:46:12', NULL, 'Группа мотомехаников', 'Doloremque voluptatem iusto minus sed tempora. Nisi debitis inventore omnis expedita quibusdam sit dolor.', 5),
(15, '2022-10-08 13:55:41', '2022-10-08 13:55:41', NULL, 'Benefits Specialist', 'Aut eos animi ipsum aliquid. Cumque ut aspernatur quasi. Placeat eum voluptate inventore.', 33),
(16, '2022-10-08 13:55:41', '2022-10-08 13:55:41', NULL, 'Precision Dyer', 'Repellendus assumenda quia qui. Odit autem occaecati qui asperiores qui similique. Beatae facilis culpa nisi delectus.', 4),
(17, '2022-10-08 13:55:41', '2022-10-08 13:55:41', NULL, 'Driver-Sales Worker', 'Repellat dolorem eius eos. Itaque enim expedita corporis laudantium ut. Sed porro error eos quam.', 29),
(18, '2022-10-08 13:55:41', '2022-10-08 13:55:41', NULL, 'Pipe Fitter', 'Dolores consequuntur facilis aut magnam qui dolorem aliquid. Totam non explicabo neque dolores quia consequatur rerum.', 4),
(19, '2022-10-08 13:55:41', '2022-10-08 13:55:41', NULL, 'Music Composer', 'Sit nam maiores et quod non. Deserunt animi tenetur at ut.', 30),
(20, '2022-10-08 13:55:41', '2022-10-08 13:55:41', NULL, 'Entertainer and Performer', 'Iure velit commodi quos recusandae eum blanditiis eum. Ducimus non molestiae sed pariatur quod dolores sit et.', 31);

-- --------------------------------------------------------

--
-- Структура таблицы `group_students`
--

CREATE TABLE `group_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `group_students`
--

INSERT INTO `group_students` (`id`, `group_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 13, 2, NULL, NULL),
(2, 13, 6, NULL, NULL),
(5, 13, 8, NULL, NULL),
(6, 14, 10, NULL, NULL),
(7, 14, 22, NULL, NULL),
(8, 14, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_01_193651_create_roles_permissions_tables', 2),
(6, '2018_08_01_183154_create_pages_table', 2),
(7, '2018_08_04_122319_create_settings_table', 2),
(8, '2022_10_08_120500_create_activity_log_table', 2),
(9, '2022_10_08_123759_create_subjects_table', 3),
(10, '2022_10_08_124416_create_groups_table', 4),
(11, '2022_10_08_173442_group_students_table', 5),
(13, '2022_10_08_204520_create_ratings_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'groups', 'Группы', '2022-10-08 10:03:09', '2022-10-09 08:01:21'),
(2, 'roles', 'Роли', '2022-10-08 10:03:23', '2022-10-09 08:01:17'),
(3, 'users', 'Пользователи', '2022-10-08 11:19:31', '2022-10-09 07:55:07'),
(4, 'subjects', 'Предмет', '2022-10-08 11:19:40', '2022-10-09 08:01:12'),
(5, 'permissions', 'Разрешения', '2022-10-09 08:00:22', '2022-10-09 08:00:22'),
(6, 'add_student_to_group', 'Добавить ученика в группу', '2022-10-09 15:09:13', '2022-10-09 15:09:13'),
(7, 'evaluate_a_student', 'Оценить студента', '2022-10-09 15:12:04', '2022-10-09 15:12:04'),
(8, 'add_group', 'Добавить группу', '2022-10-09 15:14:31', '2022-10-09 15:14:31'),
(9, 'edit_group', 'Редактировать группу', '2022-10-09 15:14:53', '2022-10-09 15:14:53'),
(10, 'delete_group', 'Удалить группу', '2022-10-09 15:15:24', '2022-10-09 15:15:24'),
(11, 'ratings', 'Оценки', '2022-10-09 15:18:52', '2022-10-09 15:18:52'),
(12, 'add_subject', 'Добавить предмет', '2022-10-10 06:19:56', '2022-10-10 06:19:56'),
(13, 'delete_subject', 'Удалить предмет', '2022-10-10 06:20:15', '2022-10-10 06:20:15'),
(14, 'edit_subject', 'Изменить предмет', '2022-10-10 06:20:34', '2022-10-10 06:20:34'),
(15, 'show_subject', 'Просмотр предмет', '2022-10-10 06:20:53', '2022-10-10 06:20:53');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(1, 4),
(4, 4),
(7, 4),
(15, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ratings`
--

INSERT INTO `ratings` (`id`, `created_at`, `updated_at`, `deleted_at`, `group_id`, `subject_id`, `grade`, `student_id`, `date`) VALUES
(1, '2022-10-09 05:38:47', '2022-10-09 05:38:47', NULL, 13, 2, 4, 2, '2022-10-09'),
(2, '2022-10-09 05:49:21', '2022-10-09 05:49:21', NULL, 13, 2, 3, 2, '2022-10-12'),
(3, '2022-10-09 06:46:55', '2022-10-09 06:46:55', NULL, 13, 4, 5, 8, '2022-10-13'),
(4, '2022-10-09 15:27:00', '2022-10-09 15:27:00', NULL, 14, 1, 4, 10, '2022-10-10'),
(5, '2022-10-09 15:27:10', '2022-10-09 15:27:10', NULL, 14, 2, 5, 10, '2022-10-10'),
(6, '2022-10-09 15:27:19', '2022-10-09 15:27:19', NULL, 14, 4, 5, 22, '2022-10-10'),
(7, '2022-10-10 05:23:27', '2022-10-10 05:23:27', NULL, 13, 2, 5, 6, '2022-10-10');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Админ', '2022-10-08 07:13:33', '2022-10-09 08:03:31'),
(2, 'student', 'Студент', '2022-10-08 07:15:37', '2022-10-09 08:03:48'),
(3, 'director', 'Директор', '2022-10-08 07:16:45', '2022-10-09 08:04:01'),
(4, 'teacher', 'Учитель', '2022-10-08 07:17:25', '2022-10-09 08:04:19');

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`) VALUES
(1, '2022-10-08 07:39:24', '2022-10-10 06:37:01', NULL, 'Английский', 'Школьные предметы | Словарь общего английского языка'),
(2, '2022-10-08 07:40:28', '2022-10-08 07:40:28', NULL, 'История', 'Предмет и методы исторической науки.'),
(3, '2022-10-08 13:59:33', '2022-10-09 06:42:49', NULL, 'Чтения', 'Earum similique asperiores beatae ipsa repellat qui pariatur enim. Veritatis laudantium vel sed.'),
(4, '2022-10-08 14:00:03', '2022-10-09 06:42:34', NULL, 'Физика', 'Sed ut autem quo laboriosam inventore aut suscipit voluptates. Quas occaecati sunt porro consequatur tempora.'),
(5, '2022-10-08 14:00:03', '2022-10-08 15:33:45', '2022-10-08 15:33:45', 'In perspiciatis laborum neque pariatur aliquid.', 'Magni itaque cumque et et tempora eum. Minus optio est ipsum illum et soluta commodi. Qui soluta impedit reprehenderit.'),
(6, '2022-10-08 14:00:03', '2022-10-08 15:33:41', '2022-10-08 15:33:41', 'Dolores nisi perspiciatis consequuntur.', 'Nam sit corrupti ab. Sit autem ullam ut maxime.'),
(7, '2022-10-08 14:00:03', '2022-10-08 15:33:38', '2022-10-08 15:33:38', 'Repellendus temporibus iusto harum porro.', 'Dolor quo voluptatem quibusdam cupiditate. Aut inventore omnis consequatur quam ea cum. Minima et commodi dolorum.'),
(8, '2022-10-08 14:00:03', '2022-10-08 15:33:35', '2022-10-08 15:33:35', 'Id debitis fugiat incidunt sed maxime veritatis incidunt.', 'Odio enim a enim eum. Repellendus ut quis distinctio rerum praesentium ut. Rerum cupiditate exercitationem eos ut.'),
(9, '2022-10-08 14:00:03', '2022-10-08 15:33:32', '2022-10-08 15:33:32', 'Alias voluptas et eveniet voluptates facere aut.', 'Molestiae asperiores enim et minus. Beatae laboriosam enim a perspiciatis commodi ut soluta.'),
(10, '2022-10-08 14:00:03', '2022-10-08 15:33:29', '2022-10-08 15:33:29', 'Suscipit est aut quidem.', 'Dolor enim exercitationem unde minus expedita voluptate. Maxime enim eligendi et error eveniet id qui.'),
(11, '2022-10-08 14:00:03', '2022-10-08 15:33:26', '2022-10-08 15:33:26', 'Officiis aperiam maxime repudiandae odit dolore quia.', 'Qui est dicta inventore et. Ipsam excepturi ea nulla. Eius nostrum fugiat ex quas iusto dolor rerum.'),
(12, '2022-10-08 14:00:03', '2022-10-08 15:33:23', '2022-10-08 15:33:23', 'Officia qui voluptatum sit dicta incidunt.', 'Illum hic voluptatem in libero. Aut quasi non eum excepturi quasi magni sed.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$T3N3rDw3pHJ1.8hMMOCHQenDeVEtlpOvNgK6g3fdH.S2F60CGbyf.', NULL, '2022-10-08 07:06:05', '2022-10-09 08:04:55'),
(2, 'Student1', 'student1@gmail.com', NULL, '$2y$10$3cR5r6o7oTfq//p0lADY1u1OVVs7LceH0VWNA9RrBG1MOdNrTUabO', NULL, '2022-10-08 07:16:00', '2022-10-08 07:16:00'),
(3, 'Director', 'director@gmail.com', NULL, '$2y$10$4d9p3vdTOoJoZySlWAmN.uDSV1L0nQV967hAE5TsKzrw3JDGk9Ca2', NULL, '2022-10-08 07:17:10', '2022-10-08 07:17:10'),
(4, 'Teacher Azam', 'teacher@gmail.com', NULL, '$2y$10$bflykGBcVVU42Or0EWhCfukGDB6E8EJgDJP0X5tD2wTfdHRup4xr6', NULL, '2022-10-08 07:17:48', '2022-10-10 06:12:01'),
(5, 'Teacher Jhon', 'jhon@gmail.com', NULL, '$2y$10$v66kAHYrgt.Gy.Yn92E92uczo2ySQoFzQzhdgCHyveSyGxmmAWJCO', NULL, '2022-10-08 11:14:40', '2022-10-08 11:39:13'),
(6, 'Student Axmed', 'axmed@gmail.com', NULL, '$2y$10$mZPV17oqnywGaDTmrw7wpeNylAyZIABzK27KN9nwsZcBXkQXllAsO', NULL, '2022-10-08 13:02:48', '2022-10-08 13:02:48'),
(7, 'Marco Deckow Jr.', 'bledner@example.net', '2022-10-08 13:22:35', '$2y$10$4woz/cENpmrGrcYX.KfuDucv/Wfqn89ICZcZsSLryYd9eO6I.iJdC', 'Aznuzemr7A', '2022-10-08 13:22:35', '2022-10-08 13:22:35'),
(8, 'Annabel Aufderhar', 'tracy90@example.com', '2022-10-08 13:23:05', '$2y$10$2Ons3LPNGkghczysIu25DeIv5sji0MSrPgNErY6mf86HL92EAFC7O', 'rSKctJANfs', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(9, 'Ida Sawayn', 'hill.bertram@example.org', '2022-10-08 13:23:05', '$2y$10$2qwagwR4zlxuT7xvf1FTvuxOeiYfQcpPfxa0qS66MaVb3JMglDooO', 'K9K8zrdCWm', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(10, 'Sid Conroy', 'mcummings@example.net', '2022-10-08 13:23:05', '$2y$10$ZovTPhRPbU30u0A6Ur3i7eKei5X1gm8iBafDkJ9zD31w31I2YHXzm', 'GyFlQMpsTc', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(11, 'Jackie Flatley', 'dmohr@example.net', '2022-10-08 13:23:05', '$2y$10$dp6VGRbrCW09jv15n/Bfbejq7e39WSA1atUlANlBO.pYoKVzd1mky', 'z7at3FO5Ww', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(12, 'Kayley Abernathy', 'emilia.metz@example.com', '2022-10-08 13:23:05', '$2y$10$DUO.j.yo77waAtmo8WW3COFSudGANleielPzY6tsz5IstDR.NMRfq', 'vWTbqYrfdD', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(13, 'Baby Ernser', 'kennith.lynch@example.net', '2022-10-08 13:23:05', '$2y$10$XPp1ZFWmrwd.xu5TUQD6EuyN6kWYSNzUT62ATGQyAKcx/DX869EAu', 'QWloKFAqN3', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(14, 'Maymie Gulgowski', 'mitchell.berniece@example.org', '2022-10-08 13:23:05', '$2y$10$JjIaqvGU7JJcX2lp5sas3u5wHaqTV9kpyGCUuluXrlOdX3tjvVdW2', '0g1lZYNZPu', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(15, 'Gerry Herzog', 'gbartoletti@example.com', '2022-10-08 13:23:05', '$2y$10$e1cFboCsv3QHChjyUIWI8e4J.kRzmPIlQuIqz00QtoPz/HKc0p6u.', 'CjGOS744BO', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(16, 'Mrs. Stella Quigley DVM', 'monica40@example.net', '2022-10-08 13:23:05', '$2y$10$7wf1vutOvv2gk5Ur0AGy9ecSqjavImJwZSuBPr2DmVDsYa4FAJ7.m', 'KXyCTW5bGc', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(17, 'Elmore Blanda', 'sammy94@example.com', '2022-10-08 13:23:05', '$2y$10$07oaTzWQnD0kanIaPw7e6eZ08RRLEIir7Os6uPjT8PWbZczLohwWu', 'pvGhfy8NuX', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(18, 'Mr. Armando Little', 'afarrell@example.net', '2022-10-08 13:23:05', '$2y$10$eixF3ZbWDF3laR5GtSE8deae1EyHZcLdW0F3kxCqSPtKnseD5BPyS', 'soIQO4apYk', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(19, 'Ilene Jaskolski', 'blair.bartell@example.org', '2022-10-08 13:23:06', '$2y$10$dh7bfBVkDUhSQgyncPxlRuazQi32kBaImz5VmpwSdHdsWBU9SmKzi', 'Iti2rUhlq7', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(20, 'Dr. Nicole Green II', 'estefania79@example.net', '2022-10-08 13:23:06', '$2y$10$YwY.F0THLn52FT7CR2DdRu5Ntzy1xy1JzEXqeFe.kPzV0zxIKzRBu', 'kCXDL9dWqp', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(21, 'Dr. Cleve Kling', 'linda81@example.com', '2022-10-08 13:23:06', '$2y$10$0f9ldCOPND3hD53DXTBhd./gtsQ7GJ2nB7TFlICLB0EJErtwIBA8W', 'G8EcVaksqO', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(22, 'Felicia Jacobi', 'seffertz@example.org', '2022-10-08 13:23:06', '$2y$10$xoN0/RRymnLSfnq44HQYRuj0Z2PCjpU7IqvoKjqkdhOGDLCWyJqm.', 'M2lnf71gDv', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(23, 'Miss Hassie Mitchell', 'gdickinson@example.com', '2022-10-08 13:23:06', '$2y$10$qWSi9VhfIMHv0j1rmxoZ6OiYWiIVnXMB3cr2zfEQ4Qe/lF1QPAk3O', 'pJnoBsUshg', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(24, 'Cielo Stracke', 'west.alf@example.com', '2022-10-08 13:23:06', '$2y$10$tOMetZjLvIKC3kVlKl1ZE.qZLy2ddBuVvs9/xPWM/DJ8SdnqXobEy', 'IThkr4vZ0Z', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(25, 'Jaquan Ondricka', 'hauck.rozella@example.net', '2022-10-08 13:23:06', '$2y$10$q1aG7R0dF4/HsVUOK.BnE.XXMsWFVr0UIoJoiSJcjQ5VKhguI8naK', 'WmkEjjGZUW', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(26, 'Gretchen Donnelly', 'mledner@example.org', '2022-10-08 13:23:06', '$2y$10$Ta7Q1YsFrotlGSLgeWaWjOelRE0VPOGsc867zF/jxhKW838IWz/x2', '9AXPxrEEgy', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(27, 'Ethyl Barton', 'vgottlieb@example.net', '2022-10-08 13:23:06', '$2y$10$n.hlaiv5ltN5WI4Brzz9Q.BbsnYlXWcbPHMguHadSue1YmBezW30W', 'XlVPIAZyX1', '2022-10-08 13:23:06', '2022-10-08 13:23:06'),
(28, 'Mrs. Ima Armstrong II', 'aglae.johns@example.org', '2022-10-08 13:35:45', '$2y$10$QXBxl9Pz/.Ef/BOq/qNVi.35DuXuFfKP8Pw.Gqdy0m9QcgPTcb4w.', 'FYyCPfGcJX', '2022-10-08 13:35:45', '2022-10-08 13:35:45'),
(29, 'Courtney Anderson', 'warren.erdman@example.org', '2022-10-08 13:35:45', '$2y$10$we8X8Xhs8/3Aq/gYOMFMaOCUp4aQxzf0k52RoJSvlAcGvb6MkUIQ6', 'KgpsRUZIVV', '2022-10-08 13:35:45', '2022-10-08 13:35:45'),
(30, 'Lexie Kessler PhD', 'teacher@example.org', '2022-10-08 13:35:45', '$2y$10$NEeWFwMMaWlg0Fj1NO6Eve9bO1g94jdMhW8lNLnrkfaHoCTxjEHQO', 'VrHc25Tt4OSDhWZi5auITWEbTWjz46oXddlH7yW87gGqliwTZOPiHr5iDxkM', '2022-10-08 13:35:45', '2022-10-10 06:17:51'),
(31, 'Ransom Kunze', 'sierra70@example.org', '2022-10-08 13:35:45', '$2y$10$GLlFGtjsXyzU/b4bqqFNTehYDrJwQrq.5M.5KsZt8sok1KDzyYYgq', 'uEiUSkGnr5', '2022-10-08 13:35:45', '2022-10-08 13:35:45'),
(32, 'Javier Oberbrunner', 'ettie22@example.com', '2022-10-08 13:35:45', '$2y$10$/TLvW/26ebWrv588VlKp.O24dLPgNof.b95MBeSfHOLdGW/nLHeP2', 'lK0F5nxrMg', '2022-10-08 13:35:45', '2022-10-08 13:35:45'),
(33, 'Lucy Rosenbaum', 'oda.dicki@example.org', '2022-10-08 13:35:45', '$2y$10$10TqBx3zNuccKnRj4cMUluu0QzCGICpjOm59bIZOy8BEvWzHV9fli', 'jizIR3H93f', '2022-10-08 13:35:45', '2022-10-08 13:35:45'),
(34, 'Jedediah Stokes', 'matilde57@example.com', '2022-10-08 13:35:45', '$2y$10$oh6W674sKtsS9KdijpRmcuwDdQsdeUx6mWy55PrbAlVNu3byqIi2e', 'bylpdYnJpk', '2022-10-08 13:35:45', '2022-10-08 13:35:45'),
(35, 'Abagail Weber DDS', 'alysson.stamm@example.com', '2022-10-08 13:35:45', '$2y$10$bsZYCLKlhXMT1.ecZLs8z.iISyyXzBbH/IShdM1QtI.22SyAfWzQq', 'hCo6iEJrss', '2022-10-08 13:35:45', '2022-10-08 13:35:45');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group_students`
--
ALTER TABLE `group_students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `group_students`
--
ALTER TABLE `group_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
