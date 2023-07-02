-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 05:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbill_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_list`
--

CREATE TABLE `billing_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `bill_date` date NOT NULL,
  `pay_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amount` float(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing_list`
--

INSERT INTO `billing_list` (`id`, `client_id`, `bill_date`, `pay_date`, `due_date`, `amount`, `status`) VALUES
(541, 10, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(542, 11, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Unpaid'),
(543, 12, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(544, 13, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(545, 14, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(548, 10, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(549, 11, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Unpaid'),
(550, 12, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(551, 13, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(552, 14, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(555, 10, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Unpaid'),
(556, 11, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Unpaid'),
(557, 12, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(558, 13, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(559, 14, '2023-06-20', '2023-07-15', '2023-07-18', 180.00, 'Paid'),
(560, 12, '2023-06-29', '2023-07-15', '2023-07-18', 180.00, 'Unpaid'),
(561, 13, '2023-06-29', '2023-07-15', '2023-07-18', 180.00, 'Unpaid'),
(562, 16, '2023-06-29', '2023-07-15', '2023-07-18', 180.00, 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `reading_start` date NOT NULL,
  `reading_end` date NOT NULL,
  `bill_amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `unpaidbal` decimal(10,2) DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `cnum` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `fname`, `lname`, `cnum`, `address`) VALUES
(1, 'Dong', 'Miral', '09771912700', 'Bucal Sampaloc V'),
(4, 'Khyrsean Kane ', 'Miral', '09089461990', 'New Era Dasma'),
(5, 'Dimakul', 'Bornok', '09123456789', 'gedli');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `code`, `firstname`, `lastname`, `contact`, `address`, `status`) VALUES
(10, '202306200003', 'Kane', 'Miral', '09089461990', 'New Era', 'Connected'),
(11, '202306200004', 'Annie Flor ', 'Dumali', '09500901305', 'New Era', 'Disconnected'),
(12, '202306200005', 'Diana Lyn ', 'Pimentel', '09272906155', 'Bucal II', 'Connected'),
(13, '202306200006', 'Kenn Cedrick', 'Cadenilla', '09996821938', 'Pooc 1 Silang', 'Connected'),
(14, '202306200007', 'Paul Vincent', 'Sasa', '09358079064', 'Paliparan III', 'Connected'),
(16, '202306210009', 'Khyrsean Kyle', 'Dumali', '09098083199', ' New Era', 'Connected');

-- --------------------------------------------------------

--
-- Table structure for table `disconnected_clients`
--

CREATE TABLE `disconnected_clients` (
  `id` int(11) NOT NULL,
  `rec_amount` varchar(20) DEFAULT NULL,
  `reconnection_date` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `r_amount` float(12,2) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `bill_id`, `r_amount`, `payment_date`) VALUES
(171, 558, 180.00, '2023-06-28'),
(172, 544, 180.00, '2023-06-28'),
(173, 551, 180.00, '2023-06-28'),
(174, 543, 180.00, '2023-06-28'),
(175, 550, 180.00, '2023-06-28'),
(176, 557, 180.00, '2023-06-28'),
(177, 541, 180.00, '2023-06-29'),
(178, 548, 180.00, '2023-06-29'),
(179, 552, 180.00, '2023-06-29'),
(180, 545, 180.00, '2023-06-29'),
(181, 559, 180.00, '2023-06-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_list`
--
ALTER TABLE `billing_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_fk_bl` (`client_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`client_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disconnected_clients`
--
ALTER TABLE `disconnected_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_id` (`bill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_list`
--
ALTER TABLE `billing_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `disconnected_clients`
--
ALTER TABLE `disconnected_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing_list`
--
ALTER TABLE `billing_list`
  ADD CONSTRAINT `client_id_fk_bl` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disconnected_clients`
--
ALTER TABLE `disconnected_clients`
  ADD CONSTRAINT `disconnected_clients_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `billing_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
