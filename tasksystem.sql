-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 11:03 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `type`) VALUES
(1, 'dina', 'dina@gmail.com', '1234567890', '2021-09-17 22:45:05', 0),
(2, 'dinadina', 'knowledgadnmin@admin.com', '$2y$10$VN6MtXlIMBWZrS5FbN49te4.h6T2fxPwOyr478hpytJf4iS.GXkfe', '2021-10-01 23:28:26', 0),
(3, 'dinazuriq', 'knowledgvc@admin.com', '$2y$10$jkLGmJ2e8/Ko9VelF.8Ym.5TyvnWsScOwGpR9EFwguDlnMjzZ9Vou', '2021-10-01 23:38:23', 1),
(4, 'ahmad', 'ahmad@gmail.com', '123456', '2021-10-02 21:23:34', 0),
(5, 'sara', 'sara@admin.com', '$2y$10$Q.AF4PYVI7LAe1yQTgw7E.WBN23ysuxl71nqtymak4CkvEESyu.ja', '2021-10-03 09:22:17', 1),
(6, 'dina1', 'dina1@admin.com', '$2y$10$WTBWjlERpENPmfsT8tKYvOF6lJvxc0LMWjsU.Q4ts3ilHBig.uEvu', '2021-10-03 09:31:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `body`, `status`, `user_id`, `created_at`) VALUES
(1, 'tsk1', 'ttle id id djkjdb lkslas sas ksasss asjiwnwq', 1, 4, '2021-09-22 14:40:04'),
(2, 'task1', 'qswswdwd', 0, 2, '2021-09-22 21:52:32'),
(3, 'taskt', 'mkjnhbgvfcd', 1, 9, '2021-09-23 15:57:27'),
(5, '', '                        \r\n                    saxd', 1, 0, '2021-10-01 09:08:48'),
(6, '', '                        \r\n                    vbnnm,,,', 1, 0, '2021-10-01 09:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`) VALUES
(1, 'ali', 'ali@gmail.com', '12345678', 1, '2021-09-23 21:03:30'),
(2, 'ahmad', 'ahmad@gmail.com', '123456789', 0, '2021-09-23 21:42:00'),
(42, 'dina', 'knowledgmmm@admin.com', '$2y$10$JrZS6mWL.VuJEoQCwZ6ON.L23eF0N90oJi11cv6MDCChBuPNr/soy', 0, '2021-09-25 13:34:43'),
(43, 'knowledg@admin.com', '', '$2y$10$vFzcKaYqKQaAS6cO3ksjZON.kARqx.0x1uaOcmTf5Le7KfIX/g4Ia', 0, '2021-09-25 13:47:09'),
(50, 'dina ', 'knowledgKJH@admin.com', '$2y$10$R27X/3NkBHXtJ2EGzKbbouSDm8DWQjUGNrmQoO4HUkztn3vIhcy36', 0, '2021-09-26 09:11:42'),
(53, 'dina ', 'knowledg@admin.com', '$2y$10$Zhot7QUfagaMscTwqB81g.JfmxyhuY09DXw79ts8g4BKb9pIgNMgO', 0, '2021-09-26 13:44:53'),
(54, 'dina ', 'knowledgcc@admin.com', '$2y$10$fis192.UfoLKyc7LnZka6OaOXJItPRDz1ebiWXGCd/8yj15XWnlj6', 0, '2021-10-01 09:04:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
