-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 06:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reverse_vending_machine_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `ReverseVendingMachine`
--

CREATE TABLE `reversevendingmachine` (
  `MachineID` int(11) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `CurrentStatus` enum('Active','Inactive','Full') DEFAULT 'Active',
  `LastMaintenanceDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ReverseVendingMachine`
--

INSERT INTO `ReverseVendingMachine` (`MachineID`, `Location`, `Capacity`, `CurrentStatus`, `LastMaintenanceDate`) VALUES
(1, 'City Center', NULL, 'Active', '2024-01-01'),
(2, 'Mall Plaza', NULL, 'Inactive', '2024-01-15'),
(3, 'Downtown', NULL, '', '2023-12-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ReverseVendingMachine`
--
ALTER TABLE `ReverseVendingMachine`
  ADD PRIMARY KEY (`MachineID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ReverseVendingMachine`
--
ALTER TABLE `ReverseVendingMachine`
  MODIFY `MachineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
