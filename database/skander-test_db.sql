-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 04 2021 г., 00:48
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `skander-test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Balistreri-Blick', 'mccullough.eldora@collins.com', 'img/9dfbe0a90517b2758ed0d2bb132b896e.png', NULL, '2021-05-29 02:12:27', '2021-07-03 09:08:45'),
(2, 'Corwin Ltd', 'hhamill@bernier.com', 'img/4149225863404e1e89e7542d8850086d.png', 'kirlin.com', '2021-06-01 02:50:51', '2021-07-03 09:08:45'),
(3, 'Cronin-Gutkowski', 'daisha15@oreilly.com', 'img/5eb8775a3784245c25f88256b329e2d4.png', NULL, '2021-05-23 01:27:52', '2021-07-03 09:08:45'),
(4, 'Ullrich-Purdy', 'wmcdermott@bernhard.com', 'img/14e7b8f609454f93c6ed1899bf243b0b.png', NULL, '2021-05-19 23:53:48', '2021-07-03 09:08:45'),
(5, 'Streich-Koss', 'breana.cormier@hansen.com', 'img/2ba959d27e5482913d834d9622740338.png', NULL, '2021-05-12 02:12:56', '2021-07-03 09:08:45'),
(6, 'Hodkiewicz PLC', 'alexander90@brown.net', 'img/bf509c71bbb7b15e12df14c1a490c464.png', NULL, '2021-05-14 08:31:48', '2021-07-03 09:08:45'),
(7, 'McKenzie-Kirlin', 'lowe.brigitte@rohan.com', 'img/506f1f9f85e1742f5cd9c0210246fdfe.png', 'bogan.net', '2021-04-23 03:08:33', '2021-07-03 09:08:45'),
(8, 'Labadie, Heaney and Robel', 'kbruen@upton.com', 'img/c98a0a9a5aaefed0c0b874b0f70b7f0d.png', NULL, '2021-06-03 04:38:39', '2021-07-03 09:08:45'),
(9, 'Ferry Inc', 'tanner92@vonrueden.com', 'img/328bdea183e02274b752c693134b2483.png', 'rippin.com', '2021-05-16 08:03:39', '2021-07-03 09:08:46'),
(10, 'Hills-Hamill', 'lisandro.bogisich@rempel.com', 'img/b1e06e80c7a821a1dfcfe82ca4cd4204.png', 'boehm.info', '2021-04-03 17:39:56', '2021-07-03 09:08:46'),
(11, 'Hickle-Keeling', 'dare.skylar@feest.com', 'img/61c6712b97c875d5277a99f295030a29.png', NULL, '2021-05-05 22:43:25', '2021-07-03 09:08:46'),
(12, 'Kris Group', 'richie28@daniel.org', 'img/cb5694078beae84dede261baf29edecc.png', NULL, '2021-05-02 05:31:15', '2021-07-03 09:08:46'),
(13, 'Nicolas-Bergstrom', 'bogisich.hillary@langworth.com', 'img/772776bb299205d9c1f6f5828584352a.png', 'conn.com', '2021-06-10 09:56:45', '2021-07-03 09:08:46'),
(14, 'Robel Ltd', 'jacobs.marlene@becker.biz', 'img/2836996ceb316ccc9d6ee9906785b2f5.png', NULL, '2021-06-09 23:41:24', '2021-07-03 09:08:46'),
(15, 'Von-Littel', 'ygleichner@wintheiser.info', 'img/0501e9cecef44446c6a889c72378a0f3.png', NULL, '2021-06-25 10:54:41', '2021-07-03 09:08:46'),
(16, 'Schoen PLC', 'stark.garnet@davis.com', 'img/b29e1e7f78566269341bcc15d6ab27e1.png', NULL, '2021-06-02 04:00:22', '2021-07-03 09:08:46'),
(17, 'Konopelski-Rutherford', 'rafael.leannon@hodkiewicz.info', 'img/e42d25b40ad846353277479e71cce5db.png', NULL, '2021-06-13 02:37:28', '2021-07-03 09:08:46'),
(18, 'Sporer, Strosin and Schoen', 'ajones@kuhn.com', 'img/f9c937eb722588ab62f3f1583c3c0ac4.png', 'harber.net', '2021-06-05 16:18:10', '2021-07-03 09:08:46'),
(19, 'Schowalter, Purdy and Walsh', 'hhessel@green.com', 'img/ee036fb74f7b82ea114158967e38d39a.png', NULL, '2021-05-27 17:04:33', '2021-07-03 09:08:46'),
(20, 'Purdy-Will', 'nathanael.strosin@kris.org', 'img/3d908275dd658f320671894216098209.png', NULL, '2021-05-08 05:48:37', '2021-07-03 09:08:46'),
(21, 'Wilkinson, Abernathy and Beatty', 'wtrantow@halvorson.com', 'img/dd67a82492e8af23ed76df2a3f7ce4a3.png', 'halvorson.org', '2021-04-07 06:01:15', '2021-07-03 09:08:46'),
(22, 'Witting PLC', 'abe76@bartell.com', 'img/5ec02bcbc7efaf0e4aa4f4f7a16bec6a.png', NULL, '2021-06-25 02:59:40', '2021-07-03 09:08:46'),
(23, 'Howe-Schmitt', 'lolita.abbott@rosenbaum.com', 'img/d9ebd28b6bd332d3997654cf0a6f7714.png', 'lynch.com', '2021-06-15 23:25:38', '2021-07-03 09:08:46'),
(24, 'Shields, Paucek and Hammes', 'estark@osinski.com', 'img/5be8158570f1c77be4252a6bdaf72c5d.png', NULL, '2021-05-26 20:18:16', '2021-07-03 09:08:46'),
(25, 'Fahey, McLaughlin and Rodriguez', 'watsica.earline@fritsch.info', 'img/6fe73b28f5b489e05fc946cb998d4af2.png', NULL, '2021-06-19 22:18:46', '2021-07-03 09:08:46'),
(26, 'Larson PLC', 'demarco.keebler@huels.com', 'img/873ba8ab30078a6d247fa25e489c8864.png', NULL, '2021-05-29 19:04:40', '2021-07-03 09:08:46'),
(27, 'Hettinger, Abshire and Marks', 'maribel.medhurst@corkery.net', 'img/a053101b210c2595afb1328b9d0f61c0.png', NULL, '2021-05-21 02:13:45', '2021-07-03 09:08:46'),
(28, 'Johnson-Maggio', 'durgan.santina@corwin.biz', 'img/d707a94f1d691a7c5a3110b72c8a5a3f.png', NULL, '2021-05-31 13:56:20', '2021-07-03 09:08:46'),
(29, 'Pagac PLC', 'ayden.feil@hickle.net', 'img/4343bada136a8fb572734df44113ad07.png', NULL, '2021-04-13 11:48:16', '2021-07-03 09:08:46'),
(30, 'Hickle Group', 'maci.brekke@mcglynn.biz', 'img/fa0ed188e0994740745383c99e62e703.png', NULL, '2021-06-03 05:00:50', '2021-07-03 09:08:46');

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `email`, `phone`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Roy', 'Gleason', 'theresa96@west.info', '+1-415-433-9780', 25, '2021-05-29 10:25:49', '2021-07-03 09:08:49'),
(2, 'Melissa', 'Koelpin', 'samara.ward@yahoo.com', '928.577.3263', 22, '2021-05-06 10:04:29', '2021-07-03 09:08:50'),
(3, 'Karine', 'McGlynn', 'stephany.collins@hotmail.com', '680-947-8915', 11, '2021-05-03 04:16:42', '2021-07-03 09:08:50'),
(4, 'Winona', 'Collier', 'rfadel@mante.com', '1-956-468-2459', 6, '2021-04-17 20:13:09', '2021-07-03 09:08:50'),
(5, 'Remington', 'Johns', 'kareem.harris@yahoo.com', '501-319-4177', 22, '2021-05-27 03:29:19', '2021-07-03 09:08:50'),
(6, 'Alejandra', 'Block', 'cgreenholt@gmail.com', '+1-425-772-7297', 22, '2021-04-11 17:55:00', '2021-07-03 09:08:50'),
(7, 'Vivien', 'Sanford', 'claire.cormier@gmail.com', '720.348.1911', 24, '2021-04-20 18:49:32', '2021-07-03 09:08:50'),
(8, 'Laverne', 'Fahey', 'rgaylord@heathcote.com', '(231) 701-3951', 25, '2021-05-05 17:57:04', '2021-07-03 09:08:50'),
(9, 'Emmet', 'Schmitt', 'huel.austen@hane.com', '(936) 974-9565', 12, '2021-05-14 12:48:51', '2021-07-03 09:08:50'),
(10, 'Mabel', 'Williamson', 'schuster.erling@bahringer.com', '+13182326370', 10, '2021-05-23 01:20:16', '2021-07-03 09:08:50'),
(11, 'Brett', 'Mayert', 'dhuel@bartell.com', '1-262-523-3156', 24, '2021-05-10 11:38:39', '2021-07-03 09:08:50'),
(12, 'Issac', 'Watsica', 'alejandra.moore@heidenreich.com', '(469) 534-2052', 2, '2021-04-24 22:16:45', '2021-07-03 09:08:50'),
(13, 'Leanne', 'Greenfelder', 'ewell04@dickinson.com', '470.530.1905', 19, '2021-04-12 18:30:44', '2021-07-03 09:08:50'),
(14, 'Leonora', 'Barton', 'demarcus.vonrueden@gmail.com', '+18039407162', 5, '2021-05-16 08:16:24', '2021-07-03 09:08:50'),
(15, 'Lenore', 'Russel', 'serdman@hudson.com', '+1.479.524.7711', 25, '2021-06-01 18:21:22', '2021-07-03 09:08:50'),
(16, 'Larissa', 'Mann', 'henry.bogisich@terry.com', '+1-951-357-3169', 29, '2021-05-27 01:15:02', '2021-07-03 09:08:50'),
(17, 'Leanna', 'Gutkowski', 'trystan.champlin@walsh.com', '225.812.5903', 28, '2021-05-30 16:12:02', '2021-07-03 09:08:50'),
(18, 'America', 'Ritchie', 'myrl13@hotmail.com', '361.924.6438', 19, '2021-04-05 01:42:23', '2021-07-03 09:08:50'),
(19, 'Candida', 'Keeling', 'lucinda.romaguera@champlin.biz', '+1.541.597.2094', 11, '2021-05-14 08:55:23', '2021-07-03 09:08:50'),
(20, 'Xavier', 'Ferry', 'estel.mueller@veum.com', '+1.928.215.8641', 16, '2021-06-19 01:29:42', '2021-07-03 09:08:50'),
(21, 'Carley', 'Eichmann', 'roel.weimann@gmail.com', '+12075789235', 15, '2021-05-28 13:01:09', '2021-07-03 09:08:50'),
(22, 'Erling', 'Ryan', 'misael42@hotmail.com', '847-572-8577', 5, '2021-05-13 07:12:08', '2021-07-03 09:08:50'),
(23, 'Emmet', 'Abbott', 'wade71@stiedemann.info', '(508) 686-2060', 5, '2021-04-20 10:50:41', '2021-07-03 09:08:50'),
(24, 'Florida', 'Walter', 'isabel69@gmail.com', '+1.224.494.0236', 17, '2021-05-06 14:30:50', '2021-07-03 09:08:50'),
(25, 'Nels', 'Ledner', 'clement.pollich@hotmail.com', '+1-385-545-2412', 29, '2021-04-03 20:56:56', '2021-07-03 09:08:50'),
(26, 'Sophie', 'Huels', 'hailie.howe@greenholt.com', '319-907-3710', 23, '2021-04-07 16:09:04', '2021-07-03 09:08:50'),
(27, 'Bridget', 'Mueller', 'pbahringer@adams.com', '1-808-266-6619', 2, '2021-06-10 13:13:25', '2021-07-03 09:08:50'),
(28, 'Evert', 'Stroman', 'stamm.electa@howe.com', '+1-717-431-5476', 12, '2021-05-11 17:25:56', '2021-07-03 09:08:50'),
(29, 'Paula', 'Russel', 'lila.zemlak@gmail.com', '870-598-7350', 26, '2021-06-10 22:43:27', '2021-07-03 09:08:50'),
(30, 'Ward', 'Glover', 'jcassin@gmail.com', '+1-901-705-0649', 28, '2021-04-26 17:36:29', '2021-07-03 09:08:50'),
(31, 'Alec', 'Fahey', 'williamson.erika@gmail.com', '559-637-9986', 15, '2021-05-16 21:40:17', '2021-07-03 09:08:51'),
(32, 'Brittany', 'Block', 'cyril.towne@hotmail.com', '1-678-256-2585', 3, '2021-06-04 16:19:24', '2021-07-03 09:08:51'),
(33, 'Steve', 'Halvorson', 'joe.bahringer@hotmail.com', '540-475-7736', 16, '2021-06-17 17:30:00', '2021-07-03 09:08:51'),
(34, 'Caitlyn', 'Schimmel', 'homenick.demarco@hotmail.com', '(520) 882-1459', 22, '2021-05-19 02:34:04', '2021-07-03 09:08:51'),
(35, 'Ismael', 'Kirlin', 'yherman@lind.com', '(724) 320-1144', 25, '2021-05-22 09:10:00', '2021-07-03 09:08:51'),
(36, 'Alden', 'Mraz', 'bashirian.cierra@murray.info', '1-954-976-7818', 11, '2021-05-02 06:39:44', '2021-07-03 09:08:51'),
(37, 'Etha', 'Hudson', 'kian41@hotmail.com', '626-941-4070', 26, '2021-06-04 21:41:21', '2021-07-03 09:08:51'),
(38, 'Eli', 'Crona', 'ezulauf@hotmail.com', '+1 (731) 433-0305', 14, '2021-04-16 11:18:54', '2021-07-03 09:08:51'),
(39, 'Edwardo', 'Schmeler', 'serena78@hotmail.com', '319-281-9114', 15, '2021-05-27 18:30:23', '2021-07-03 09:08:51'),
(40, 'Vince', 'Kuhic', 'hkshlerin@hotmail.com', '+1 (689) 548-9654', 26, '2021-04-29 00:14:20', '2021-07-03 09:08:51'),
(41, 'Alford', 'Schuster', 'rempel.eloise@fritsch.net', '+1 (956) 609-4738', 12, '2021-06-01 09:24:33', '2021-07-03 09:08:51'),
(42, 'Mackenzie', 'Krajcik', 'rozella56@terry.com', '262-598-2292', 16, '2021-05-18 23:45:11', '2021-07-03 09:08:51'),
(43, 'Janiya', 'Bernhard', 'herzog.dayne@hotmail.com', '530.649.9173', 18, '2021-04-07 14:01:20', '2021-07-03 09:08:51'),
(44, 'Candice', 'Kutch', 'donnell66@barton.com', '878-944-3329', 25, '2021-07-02 07:31:57', '2021-07-03 09:08:51'),
(46, 'Amani', 'Gutmann', 'kessler.jan@gmail.com', '307-415-1432', 28, '2021-06-21 18:13:52', '2021-07-03 09:08:51'),
(47, 'Mohamed', 'Abbott', 'ksporer@yahoo.com', '865-245-5094', 26, '2021-06-15 18:22:11', '2021-07-03 09:08:51'),
(48, 'Suzanne', 'Franecki', 'nwolff@mante.info', '805.574.1512', 12, '2021-04-13 15:07:05', '2021-07-03 09:08:51'),
(49, 'Julia', 'Herzog', 'white.riley@yahoo.com', '1-541-289-6286', 28, '2021-04-03 23:06:29', '2021-07-03 09:08:51'),
(50, 'Sydni', 'Paucek', 'roberta93@gleichner.com', '586.222.5861', 4, '2021-04-20 12:34:22', '2021-07-03 09:08:51');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_07_02_132857_create_companies_table', 1),
(10, '2021_07_02_133008_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$vm8krfl4qzTHyFRuoHFILON3fNTm9WOW2/UmrEhFZXRV9PtKM4faq', '2021-07-03 11:10:26');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$HrKSDMDmG/RiYm7/MYlrput8w.4CKeZGz3I7SGPa7Ci0XIV7Xzvaa', 'MtJ1q3jCP19HX0j9BZbPwYG3Gwq9UjwUaROPl5IxJzy9Be5BqD8ovoSwAeGB', 1, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id_index` (`company_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
