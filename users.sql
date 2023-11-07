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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `gender`, `role`, `status`) VALUES
(1, 'carmel', 'asdasd@gmail.com', '$2y$10$E2IlreaDtmzULEXxiLrcoO2z7scKfsYHYDINtAoa0JH1b1eTJIelO', 'female', 'user', 'inactive'),
(2, 'mika', 'mika@gmail.com', '$2y$10$DytUZ4ogjSvJN7xSECR0getPS0S8lAbYeGN595DO/tMgYxs0H1W/W', 'female', 'user', 'inactive'),
(3, 'rovie', 'rovie@gmail.com', '$2y$10$1ePCuDsQbP7ggaCGGdYfh.53.cZNL1PCHnNNcg6MObME6vrbxZpl6', 'female', 'user', 'active'),
(4, 'Carmel Mae Sombilon', '22104744@usc.edu.ph', '$2y$10$XVLVrEVWqjYSRHzK0.CmO.KWY/dVgHeFm7Vx9XLy57f.ZRpW.wasS', 'female', 'admin', 'active'),
(5, 'Ralph', 'ralphie@gmail.com', '$2y$10$bracVtv47F.TIWYavnrXTuedpKgZytv0CLkWHwfix5ixLV2KwWWVy', 'male', 'user', 'active'),
(6, 'Johnrey', 'johny@gmail.com', '$2y$10$aSDNJ.6nwzZVfQAEKn5VLOh9/AdNkaFVtlrdpBQGOU4zoASiXRqxK', 'male', 'user', 'active'),
(7, 'Joules', 'joulie@gmail.com', '$2y$10$TF6WRk5C3QDOr0DFGwc8vujITMVMN1WkxEBLeD0JXbIbcLtcivie6', 'other', 'user', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
