-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 22, 2025 at 09:27 AM
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
-- Database: `infotech_students`
--

-- --------------------------------------------------------

--
-- Table structure for table `comscie_student`
--

CREATE TABLE `comscie_student` (
  `User` int(11) NOT NULL,
  `Names` varchar(50) NOT NULL,
  `Id` int(8) NOT NULL,
  `Date_of_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comscie_student`
--

INSERT INTO `comscie_student` (`User`, `Names`, `Id`, `Date_of_entry`) VALUES
(1, 'John Cian Lioc', 23111113, '2025-01-05 18:59:46'),
(4, 'Carl Michaele Lapidez', 231114, '2025-01-05 19:01:33'),
(5, 'Kelly Ann Mae Kean', 2311117, '2025-01-05 19:18:19'),
(6, 'Maricris Ocrisma', 231114, '2025-01-05 19:18:24'),
(7, 'Paul Agra', 23111169, '2025-01-05 19:18:42'),
(8, 'Romcill Aquino', 23111110, '2025-01-05 19:21:53'),
(9, 'Romcill Aquino', 23111110, '2025-01-05 19:22:23'),
(10, 'John Lawrence Cabila', 23111193, '2025-01-22 16:23:44'),
(11, 'John Lawrence Cabila', 23111193, '2025-01-22 16:24:00'),
(12, 'Ebdane Hermohenes', 23111110, '2025-01-22 16:25:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comscie_student`
--
ALTER TABLE `comscie_student`
  ADD PRIMARY KEY (`User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comscie_student`
--
ALTER TABLE `comscie_student`
  MODIFY `User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
