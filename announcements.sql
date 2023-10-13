-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 12:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `datetime`) VALUES
(1, 'szdzsf', 'dsfsdf', NULL),
(2, 'dsfgdg', 'dsgfsdgf', '2023-10-13 11:31:41'),
(3, 'zxczx', 'zxczxc', '2023-10-13 11:40:15'),
(4, 'sxczxc', 'xzczxc', '2023-10-13 11:50:50'),
(5, 'sxczxc', 'xzczxc', '2023-10-13 11:50:51'),
(6, 'dfdsf', 'dsfdsf', '2023-10-13 11:52:50'),
(7, 'zczxc', 'zxczxc', '2023-10-13 11:53:39'),
(8, 'xzvfdsf', 'dsfsdf', '2023-10-13 11:54:23'),
(9, 'fdgfh', 'ghfgh', '2023-10-13 11:58:46'),
(10, 'szfsdf', 'fdssdf', '2023-10-13 12:00:54'),
(11, 'fgdf', 'gfdgfg', '2023-10-13 12:02:22'),
(12, 'dzfdf', 'dfd', '2023-10-13 12:02:40'),
(13, 'zxdczsxc', 'zxcxzc', '2023-10-13 12:04:39'),
(14, 'dsfsdf', 'sdfsdf', '2023-10-13 12:09:03'),
(15, 'dsfsdf', 'sdfsdf', '2023-10-13 12:10:14'),
(16, 'dfgdfg', 'fdgdfg', '2023-10-13 12:10:20'),
(17, 'fdgfd', 'gfdgdfg', '2023-10-13 12:10:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
