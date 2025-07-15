-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2025 at 10:05 AM
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
-- Database: `paginationtestdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `paginationtable`
--

CREATE TABLE `paginationtable` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paginationtable`
--

INSERT INTO `paginationtable` (`id`, `title`, `content`, `author`, `created_at`) VALUES
(1, 'Welcome Post', 'This is the first post on our site!', 'admin', '2025-07-01 10:00:00'),
(2, 'Tips & Tricks', 'Here are some handy tricks to improve productivity.', 'jamie', '2025-07-01 11:00:00'),
(3, 'Feature Update', 'We just rolled out a new feature.', 'alex', '2025-07-01 12:00:00'),
(4, 'Community Spotlight', 'Shoutout to our most active users!', 'sam', '2025-07-02 09:30:00'),
(5, 'Behind the Scenes', 'A look at how we build this site.', 'admin', '2025-07-02 14:15:00'),
(6, 'Fun Friday', 'Let’s kick off the weekend with memes.', 'chris', '2025-07-03 08:00:00'),
(7, 'Security Tips', 'How to keep your account safe.', 'jamie', '2025-07-03 09:00:00'),
(8, 'Sneak Peek', 'Upcoming features you’ll love.', 'alex', '2025-07-03 10:00:00'),
(9, 'User Feedback', 'We’re listening to your suggestions.', 'sam', '2025-07-03 11:30:00'),
(10, 'Design Refresh', 'A new look for a better feel.', 'admin', '2025-07-03 15:45:00'),
(11, 'July Giveaway', 'Enter now to win cool merch!', 'chris', '2025-07-04 10:00:00'),
(12, 'How-To Guide', 'Learn how to navigate the dashboard.', 'jamie', '2025-07-04 11:15:00'),
(13, 'Bug Fixes', 'We squashed some pesky bugs.', 'alex', '2025-07-04 13:30:00'),
(14, 'Motivation Monday', 'Start your week strong!', 'sam', '2025-07-07 07:45:00'),
(15, 'Tech Talk', 'Discussing the future of AI.', 'admin', '2025-07-07 12:00:00'),
(16, 'Throwback Thursday', 'A look at our site’s early days.', 'chris', '2025-07-10 09:00:00'),
(17, 'FAQ Update', 'New answers to popular questions.', 'jamie', '2025-07-10 10:30:00'),
(18, 'Code Snippets', 'Useful bits for devs.', 'alex', '2025-07-10 13:00:00'),
(19, 'User Story', 'Read how the site helped Jane.', 'sam', '2025-07-10 15:45:00'),
(20, 'Weekend Poll', 'Tell us what you want next!', 'admin', '2025-07-11 08:00:00'),
(21, 'Team Shoutout', 'Celebrating our awesome dev team!', 'chris', '2025-07-11 11:00:00'),
(22, 'Quick Tips', 'Small things with big impact.', 'jamie', '2025-07-11 14:00:00'),
(23, 'New Themes', 'Customize your experience.', 'alex', '2025-07-11 16:30:00'),
(24, 'Launch Recap', 'How our launch went down.', 'sam', '2025-07-12 09:00:00'),
(25, 'Daily Boost', 'Get inspired with quotes.', 'admin', '2025-07-12 10:15:00'),
(26, 'Behind Code', 'Stories from the dev room.', 'chris', '2025-07-12 11:45:00'),
(27, 'Feedback Loop', 'Here’s what we learned.', 'jamie', '2025-07-12 13:30:00'),
(28, 'Data Dive', 'Analytics from last month.', 'alex', '2025-07-12 15:00:00'),
(29, 'User Milestone', 'We just hit 10,000 users!', 'sam', '2025-07-12 16:45:00'),
(30, 'Wrap-Up', 'Thanks for being here!', 'admin', '2025-07-12 18:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginationtable`
--
ALTER TABLE `paginationtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginationtable`
--
ALTER TABLE `paginationtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
