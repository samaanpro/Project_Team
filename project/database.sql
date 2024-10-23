-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 12:00 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_platform`
--
CREATE DATABASE IF NOT EXISTS `course_platform` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `course_platform`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `num_lessons` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `St_c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `user_id`, `title`, `photo`, `description`, `price`, `num_lessons`, `created_at`, `St_c`) VALUES
(1, 6, 'html', 'https://www.hostinger.com/tutorials/wp-content/uploads/sites/2/2018/11/what-is-html-3.webp', 'html.....', '500.00', NULL, '2024-10-23 16:05:41', 1),
(6, 6, 'Css', 'uploads/user.png', ' b\r\n', '200.00', NULL, '2024-10-23 18:39:21', 1),
(7, 6, 'js', 'uploads/Leonardo_Phoenix_I_want_an_image_of_a_school_with_young_men_re_0.jpg', '121', '150.00', NULL, '2024-10-23 21:56:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`login_id`, `user_id`, `login_time`, `success`) VALUES
(1, 7, '2024-10-23 16:18:19', 1),
(2, 7, '2024-10-23 16:19:23', 1),
(3, 6, '2024-10-23 16:19:45', 1),
(4, 7, '2024-10-23 16:25:05', 1),
(5, 7, '2024-10-23 16:27:25', 1),
(6, 7, '2024-10-23 16:27:54', 1),
(7, 7, '2024-10-23 16:29:09', 1),
(8, 7, '2024-10-23 16:30:49', 1),
(9, 7, '2024-10-23 16:38:57', 1),
(10, 6, '2024-10-23 16:46:37', 1),
(11, 6, '2024-10-23 16:48:33', 1),
(12, 7, '2024-10-23 20:06:13', 1),
(13, 6, '2024-10-23 20:12:30', 1),
(14, 7, '2024-10-23 20:31:22', 1),
(15, 7, '2024-10-23 20:35:07', 1),
(16, 7, '2024-10-23 21:44:48', 1),
(17, 7, '2024-10-23 21:45:51', 1),
(18, 7, '2024-10-23 21:46:30', 1),
(19, 6, '2024-10-23 21:47:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `mid` int(11) NOT NULL,
  `material` text NOT NULL,
  `inname` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`mid`, `material`, `inname`, `number`, `course_id`) VALUES
(1, 'https://www.youtube.com/embed/Dv39fDYei9A?si=hd3fjqlFdh3G7cOz', '??????', 1, 1),
(2, ' https://www.youtube.com/embed/Dv39fDYei9A?si=hd3fjqlFdh3G7cOz', 'Ø§Ù„Ø­Ù„Ù‚Ø©', 1, 1),
(3, ' https://www.youtube.com/embed/Dv39fDYei9A?si=hd3fjqlFdh3G7cOz', 'Ø§Ù„Ø­Ù„Ù‚Ø©', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `progress_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_number` int(11) NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`progress_id`, `course_id`, `user_id`, `lesson_number`, `completed_at`) VALUES
(1, 1, 7, 0, '2024-10-23 20:52:23'),
(3, 6, 7, 0, '2024-10-23 21:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `role` enum('teacher','student') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `full_username`, `password`, `email`, `phone`, `role`, `created_at`) VALUES
(6, 'Abanoub', 'Abanoub', 'Abanoub123', 'Abanoub@gmail.com', '01012345678', 'teacher', '2024-10-13 20:17:54'),
(7, 'Marco', 'Marco', 'Marco', 'Marco', '01321216546', 'student', '2024-10-13 21:33:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `progress_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
