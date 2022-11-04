-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 01:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emathsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `video` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `video`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(7, 'Additions', '																								&lt;p&gt;Addition (usually signified by the plus symbol +) is one of the four basic operations of arithmetic, the other three being subtraction, multiplication and division. The addition of two whole numbers results in the total amount or sum of those values combined.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;In this topic, students will learn about additions in mathematics.&lt;/p&gt;																				', 'https://www.youtube.com/watch?v=mjlsSYLLOSE&t=1s', 5, '2022-01-01', '2022-01-31', 1, '7,14,6,10,13,9,17,18,16,20,19,15', '2022-01-04 15:57:59'),
(8, 'Substractions', '																														&lt;p&gt;Subtraction is an arithmetic operation that represents the operation of removing objects from a collection. Subtraction is signified by the minus sign, &minus;. For example, in the adjacent picture, there are 5 &minus; 2 peaches&mdash;meaning 5 peaches with 2 taken away, resulting in a total of 3 peaches.&lt;/p&gt;&lt;p&gt;In this topic, students will learn more about substractions.&lt;/p&gt;&lt;p&gt;											&lt;/p&gt;																									', 'https://www.youtube.com/watch?v=f0HPkXpzKf0', 5, '2022-02-01', '2022-02-28', 1, '7,14,6,10,13,9,17,18,16,20,19,15', '2022-01-04 16:09:36'),
(9, 'Multiplication', '																														&lt;p&gt;Multiplication (often denoted by the cross symbol &times;, by the mid-line dot operator &sdot;, by juxtaposition, or, on computers, by an asterisk *) is one of the four elementary mathematical operations of arithmetic, with the other ones being addition, subtraction, and division.&lt;/p&gt;&lt;p&gt;Students will able to learn more about multiplication in this topic.&lt;/p&gt;&lt;p&gt;											&lt;/p&gt;																									', 'https://www.youtube.com/watch?v=jfWkhkvIH_w', 0, '2022-03-01', '2022-03-31', 1, '7,14,6,10,13,9,17,18,16,20,19,15', '2022-01-04 16:11:38'),
(12, 'Division', 'Division is one of the four basic operations of arithmetic, the ways that numbers are combined to make new numbers. The other operations are addition, subtraction, and multiplication. At an elementary level the division of two natural numbers is, among other possible interpretations, the process of calculating the number of times one number is contained within another.											', 'https://www.youtube.com/watch?v=rGMecZ_aERo', 0, '2022-07-01', '2022-06-30', 1, '7,14,6,10,13,9,17,18,16,20,19,15', '2022-06-17 11:16:01'),
(14, 'asdasd', 'asdadasd', 'https://www.youtube.com/watch?v=rGMecZ_aERo', 0, '2022-06-02', '2022-06-02', 1, '7', '2022-06-23 16:26:17'),
(15, '', '											', '', 0, '0000-00-00', '0000-00-00', 0, '', '2022-06-23 16:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'e-Math', 'b031910417@student.utem.edu.my', '+60195112690', 'FTMK, UTeM', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `video` text NOT NULL,
  `material` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `video`, `material`, `description`, `status`, `date_created`) VALUES
(11, 7, 'Question 1', 'https://www.youtube.com/watch?v=_b0oMzlvERI', '1655438580_Addition Question (task 1).pdf', '								Students, please answer all the questions given in the document.						', 3, '2022-01-04 16:00:46'),
(12, 7, 'Question 2', 'https://www.youtube.com/watch?v=vMkS2zfI1pw', '1655438580_Additions Questions (Task 2).pdf', '								Students, please answer all the questions in the pdf document.						', 3, '2022-01-04 16:01:46'),
(13, 9, 'Question 1', 'https://www.youtube.com/watch?v=GKetIwxaenA', '1655438640_Multiplication Question (task 1).pdf', '								Students please answer all the questions in the pdf document and upload your answer.						', 3, '2022-01-04 16:13:50'),
(14, 9, 'Question 2', 'https://www.youtube.com/watch?v=ua8t-UJaUuM', '1655438640_Multiplication Question (task 2).pdf', '				Students please answer all the questions in the pdf document and upload your answer.										', 2, '2022-01-04 16:14:17'),
(15, 8, 'Question 1', 'https://www.youtube.com/watch?v=KvaW5dI2syg', '1655438580_Substraction Question (task 1).pdf', '												Students please answer all the question in the pdf and submit your answer.									', 3, '2022-01-04 16:15:22'),
(16, 8, 'Question 2', 'https://www.youtube.com/watch?v=83ePrGNcUiw', '1655438640_Substraction Question (Task 2).pdf', '												Students please answer all the question in the pdf and submit your answer.																', 3, '2022-01-04 16:15:51'),
(18, 7, 'Question 3', 'https://www.youtube.com/watch?v=gE4EM95MP4U', '1655438580_Additions Questions (Task 3).pdf', '																								Question about additions																		', 3, '2022-01-10 16:03:17'),
(21, 12, 'Question 1', 'https://www.youtube.com/watch?v=ndfeFjoperg', '1655438700_Division Question (task 1).pdf', 'Students please answer all the questions in the pdf document and upload your answer.							', 1, '2022-06-17 12:05:40'),
(22, 12, 'Question 2', 'https://www.youtube.com/watch?v=ndfeFjoperg', '1655438760_Division Questions (Task 2).pdf', 'Students please answer all the questions in the pdf document and upload your answer.							', 1, '2022-06-17 12:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = teacher, 2 = student',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Cikgu', 'Ahmad', 'cikguahmad@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, '1655452980_4.jpg', '2021-12-07 11:28:09'),
(6, 'Muhammad', 'Firdaus', 'mfar@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655449740_10.jpg', '2021-12-07 11:28:09'),
(7, 'Hafis', 'Suhaimi', 'hafis@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655449440_14.jpg', '2021-12-07 12:11:11'),
(9, 'Muhammad Iqbal', 'Yunus', 'iqbal@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655435280_10.jpg', '2022-01-04 15:55:51'),
(10, 'Muhammad Hafiz', 'Osman', 'hafizosman@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655434020_3.jpg', '2022-01-04 19:14:22'),
(13, 'Muhammad Haikal', 'Izzuddin', 'haikalizz@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655434080_8.jpg', '2022-06-17 10:48:38'),
(14, 'Muhammad Aiman', 'Hakim', 'aiman@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655434140_7.jpg', '2022-06-17 10:49:22'),
(15, 'Nurul Iffah', 'Abdul Rahman', 'nuruliffah@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655435520_5.jpg', '2022-06-17 10:51:00'),
(16, 'Muhammad Muzammil', 'Mahiyuddin', 'muzammil@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655434260_2.jpg', '2022-06-17 10:51:46'),
(17, 'Muhammad Irfan', 'Zamani', 'irfanzamani@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655435340_6.jpg', '2022-06-17 11:09:08'),
(18, 'Muhammad Khairul', 'Azwan', 'khairulazwan@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655435340_11.jpg', '2022-06-17 11:09:38'),
(19, 'Nur Zahirah', 'Abu Bakar', 'zahirah@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655435400_12.jpg', '2022-06-17 11:10:29'),
(20, 'Muhammad Zainul', 'Rosham', 'zainul@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655435460_13.jpg', '2022-06-17 11:11:13'),
(21, 'Ahmad', 'Idham', 'idham@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, '1655450340_15.jpg', '2022-06-17 15:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `submission` text NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `submission`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(15, 7, 18, '														The question is quite hard.												', '', '1655439000_Addition Answers (Task 3).pdf', '2022-01-09', '16:18:00', '22:18:00', 6, 6, '2022-01-04 16:18:45'),
(16, 7, 12, '							All good.						', '', '1655438940_Addition Answers (Task 2).pdf', '2022-01-20', '10:19:00', '17:19:00', 6, 7, '2022-01-04 16:19:15'),
(17, 8, 15, '							Question is okay.						', '', '1655439000_Substraction Answer (Task 1).pdf', '2022-02-02', '10:25:00', '13:19:00', 6, 2.9, '2022-01-04 16:20:09'),
(18, 7, 11, '							I have answered all the questions.						', '', '1655446800_Addition Answers (Task 1).pdf', '2022-01-07', '18:21:00', '22:21:00', 7, 4, '2022-01-04 16:21:31'),
(19, 7, 12, '							Thank you teacher.						', '', '1655446800_Addition Answers (Task 2).pdf', '2022-01-21', '14:21:00', '17:21:00', 7, 3, '2022-01-04 16:22:07'),
(20, 8, 15, '																										', '', '1655446920_Substraction Answer (Task 1).pdf', '2022-02-02', '11:22:00', '13:28:00', 7, 2.1, '2022-01-04 16:22:44'),
(21, 7, 11, '							I have finished all.						', '', '1655446980_Addition Answers (Task 1).pdf', '2022-01-06', '12:29:00', '15:23:00', 9, 2.9, '2022-01-04 16:23:58'),
(22, 7, 12, '																										', '', '1655446980_Addition Answers (Task 2).pdf', '2022-01-23', '09:52:00', '10:46:00', 9, 0.9, '2022-01-04 16:24:26'),
(23, 8, 15, '																										', '', '1655447040_Substraction Answer (Task 1).pdf', '2022-01-03', '12:46:00', '15:14:00', 9, 2.46667, '2022-01-04 16:25:04'),
(25, 7, 11, '														This question is a bit hard												', '', '1655438940_Addition Answers (Task 1).pdf', '2022-01-10', '16:05:00', '17:05:00', 6, 1, '2022-01-10 16:05:36'),
(28, 8, 16, '													', '', '1655439060_Substraction Answer (Task 2).pdf', '2022-02-17', '14:11:00', '15:11:00', 6, 1, '2022-06-17 12:11:20'),
(29, 9, 13, '													', '', '1655439060_Multiplication Answer (task 1).pdf', '2022-03-17', '15:11:00', '15:45:00', 6, 0.566667, '2022-06-17 12:11:58'),
(30, 7, 18, '													', '', '1655446860_Addition Answers (Task 3).pdf', '2022-01-27', '17:21:00', '20:21:00', 7, 3, '2022-06-17 14:21:07'),
(31, 8, 16, '													', '', '1655446920_Substraction Answer (Task 2).pdf', '2022-02-17', '10:22:00', '23:22:00', 7, 13, '2022-06-17 14:22:34'),
(32, 9, 13, '													', '', '1655446980_Multiplication Answer (task 1).pdf', '2022-03-17', '16:23:00', '18:23:00', 7, 2, '2022-06-17 14:23:09'),
(33, 7, 18, '													', '', '1655447040_Addition Answers (Task 3).pdf', '2022-01-27', '17:24:00', '19:24:00', 9, 2, '2022-06-17 14:24:14'),
(34, 8, 16, '													', '', '1655447040_Substraction Answer (Task 2).pdf', '2022-02-17', '15:24:00', '16:24:00', 9, 1, '2022-06-17 14:24:55'),
(35, 9, 13, '													', '', '1655447100_Multiplication Answer (task 1).pdf', '2022-03-09', '16:25:00', '18:25:00', 9, 2, '2022-06-17 14:25:13'),
(36, 7, 11, '													', '', '1655447100_Addition Answers (Task 1).pdf', '2022-01-05', '17:25:00', '18:25:00', 10, 1, '2022-06-17 14:25:46'),
(37, 7, 12, '													', '', '1655447160_Addition Answers (Task 2).pdf', '2022-01-11', '16:26:00', '18:26:00', 10, 2, '2022-06-17 14:26:03'),
(38, 7, 18, '													', '', '1655447160_Addition Answers (Task 3).pdf', '2022-01-20', '16:26:00', '18:26:00', 10, 2, '2022-06-17 14:26:22'),
(39, 8, 15, '													', '', '1655447160_Substraction Answer (Task 1).pdf', '2022-02-04', '15:26:00', '16:26:00', 10, 1, '2022-06-17 14:26:45'),
(40, 8, 16, '													', '', '1655447220_Substraction Answer (Task 2).pdf', '2022-02-15', '16:26:00', '18:27:00', 10, 2.01667, '2022-06-17 14:27:02'),
(41, 9, 13, '													', '', '1655447220_Multiplication Answer (task 1).pdf', '2022-03-09', '16:27:00', '18:27:00', 10, 2, '2022-06-17 14:27:23'),
(42, 7, 11, '													', '', '1655447220_Addition Answers (Task 1).pdf', '2022-01-04', '15:27:00', '17:27:00', 13, 2, '2022-06-17 14:27:49'),
(43, 7, 12, '													', '', '1655447280_Addition Answers (Task 2).pdf', '2022-01-12', '16:28:00', '17:28:00', 13, 1, '2022-06-17 14:28:06'),
(44, 7, 18, '													', '', '1655447280_Addition Answers (Task 3).pdf', '2022-01-24', '16:28:00', '20:28:00', 13, 4, '2022-06-17 14:28:21'),
(45, 8, 15, '													', '', '1655447280_Substraction Answer (Task 1).pdf', '2022-02-01', '16:28:00', '17:28:00', 13, 1, '2022-06-17 14:28:45'),
(46, 8, 16, '													', '', '1655447340_Substraction Answer (Task 2).pdf', '2022-02-17', '17:28:00', '19:28:00', 13, 2, '2022-06-17 14:29:00'),
(47, 9, 13, '													', '', '1655447340_Multiplication Answer (task 1).pdf', '2022-03-16', '16:29:00', '17:29:00', 13, 1, '2022-06-17 14:29:21'),
(48, 7, 11, '													', '', '1655447340_Addition Answers (Task 1).pdf', '2022-01-04', '15:29:00', '16:29:00', 14, 1, '2022-06-17 14:29:54'),
(49, 7, 12, '													', '', '1655447400_Addition Answers (Task 2).pdf', '2022-01-13', '14:30:00', '15:30:00', 14, 1, '2022-06-17 14:30:15'),
(50, 7, 18, '													', '', '1655447400_Addition Answers (Task 3).pdf', '2022-01-25', '14:30:00', '16:30:00', 14, 2, '2022-06-17 14:30:30'),
(51, 8, 15, '													', '', '1655447400_Substraction Answer (Task 1).pdf', '2022-02-03', '14:30:00', '17:30:00', 14, 3, '2022-06-17 14:30:50'),
(52, 8, 16, '													', '', '1655447460_Substraction Answer (Task 2).pdf', '2022-02-08', '15:31:00', '17:31:00', 14, 2, '2022-06-17 14:31:03'),
(53, 9, 13, '													', '', '1655447460_Multiplication Answer (task 1).pdf', '2022-03-08', '16:31:00', '17:31:00', 14, 1, '2022-06-17 14:31:24'),
(54, 7, 11, '													', '', '1655447520_Addition Answers (Task 1).pdf', '2022-01-06', '15:31:00', '17:31:00', 15, 2, '2022-06-17 14:32:00'),
(55, 7, 12, '													', '', '1655447520_Addition Answers (Task 2).pdf', '2022-01-12', '14:32:00', '17:32:00', 15, 3, '2022-06-17 14:32:15'),
(56, 7, 18, '													', '', '1655447520_Addition Answers (Task 3).pdf', '2022-01-26', '14:32:00', '18:32:00', 15, 4, '2022-06-17 14:32:30'),
(57, 8, 15, '													', '', '1655447520_Substraction Answer (Task 1).pdf', '2022-02-03', '15:32:00', '17:32:00', 15, 2, '2022-06-17 14:32:55'),
(58, 8, 16, '													', '', '1655447580_Substraction Answer (Task 2).pdf', '2022-02-08', '15:33:00', '17:33:00', 15, 2, '2022-06-17 14:33:13'),
(59, 9, 13, '													', '', '1655447580_Multiplication Answer (task 1).pdf', '2022-03-02', '14:33:00', '16:33:00', 15, 2, '2022-06-17 14:33:35'),
(60, 7, 11, '													', '', '1655447640_Addition Answers (Task 1).pdf', '2022-01-05', '15:34:00', '16:34:00', 16, 1, '2022-06-17 14:34:04'),
(61, 7, 12, '													', '', '1655447640_Addition Answers (Task 2).pdf', '2022-01-12', '16:34:00', '17:34:00', 16, 1, '2022-06-17 14:34:17'),
(62, 7, 18, '													', '', '1655447640_Addition Answers (Task 3).pdf', '2022-01-26', '15:34:00', '18:34:00', 16, 3, '2022-06-17 14:34:32'),
(63, 8, 15, '													', '', '1655447640_Substraction Answer (Task 1).pdf', '2022-02-03', '15:34:00', '16:34:00', 16, 1, '2022-06-17 14:34:55'),
(64, 8, 16, '													', '', '1655447700_Substraction Answer (Task 2).pdf', '2022-02-15', '15:35:00', '17:35:00', 16, 2, '2022-06-17 14:35:12'),
(65, 9, 13, '													', '', '1655447700_Multiplication Answer (task 1).pdf', '2022-03-09', '15:35:00', '16:35:00', 16, 1, '2022-06-17 14:35:31'),
(66, 7, 11, '													', '', '1655447760_Addition Answers (Task 1).pdf', '2022-01-04', '15:36:00', '16:37:00', 17, 1.01667, '2022-06-17 14:36:03'),
(67, 7, 12, '													', '', '1655447760_Addition Answers (Task 2).pdf', '2022-02-16', '15:36:00', '16:36:00', 17, 1, '2022-06-17 14:36:16'),
(68, 7, 18, '													', '', '1655447760_Addition Answers (Task 3).pdf', '2022-03-30', '15:36:00', '16:36:00', 17, 1, '2022-06-17 14:36:31'),
(69, 8, 15, '													', '', '1655447760_Substraction Answer (Task 1).pdf', '2022-02-09', '15:36:00', '16:36:00', 17, 1, '2022-06-17 14:36:55'),
(70, 8, 16, '													', '', '1655447820_Substraction Answer (Task 2).pdf', '2022-02-15', '15:37:00', '17:37:00', 17, 2, '2022-06-17 14:37:13'),
(71, 9, 13, '													', '', '1655447820_Multiplication Answer (task 1).pdf', '2022-03-09', '15:37:00', '16:37:00', 17, 1, '2022-06-17 14:37:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
