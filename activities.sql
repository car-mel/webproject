-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 01:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(255) NOT NULL,
  `ootd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `name`, `date`, `time`, `location`, `ootd`) VALUES
(1, 'fvbcvbc', '2023-10-07', '04:41:00', 'fgdfg', 'fdgdfg'),
(2, 'abc', '2023-10-07', '00:00:12', 'fgdfg', 'fdgdfg'),
(3, 'cxvxcvx', '2023-10-06', '03:51:00', 'vcv', 'xvbcxb'),
(4, 'sdfsdf', '2023-10-07', '05:24:00', 'fsdf', 'dfsdf'),
(5, 'dfsd', '2023-02-15', '05:24:00', 'fsf', 'fsf'),
(6, 'zxvxv', '2023-10-05', '05:34:00', 'zxvzx', 'zxvxz'),
(7, 'xcvxcbxc', '2023-12-08', '05:33:00', 'xcvxc', 'xcbx'),
(8, ' bbcb', '2023-01-02', '05:34:00', 'cxvxcv', 'xcbxcb'),
(9, 'zczcxz', '2023-10-03', '05:41:00', 'xczxc', 'xzcx'),
(10, 'erwe', '2023-12-16', '06:45:00', 'dqwd', 'wqqw'),
(11, 'xcxzv', '2023-10-05', '05:59:00', 'vxcv', 'vxc'),
(12, 'sadasd', '2023-10-03', '06:04:00', 'sdsad', 'asdas'),
(13, 'vcbvc', '2023-10-05', '06:07:00', 'xxb', 'xbxb'),
(14, 'CXZC', '2023-10-06', '06:11:00', 'ZCXZ', 'XZCXZ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
