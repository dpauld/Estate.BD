-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 10:49 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estatebd`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `id` int(15) NOT NULL,
  `owner_id` int(15) DEFAULT NULL,
  `property_condition` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `full_addr` varchar(80) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `beds` decimal(10,0) DEFAULT NULL,
  `baths` decimal(10,0) DEFAULT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `owner_id`, `property_condition`, `country`, `district`, `area`, `postal_code`, `full_addr`, `size`, `floor`, `lifts`, `beds`, `baths`, `price`, `available_from`, `details`, `location`) VALUES
(1, 1, NULL, 'Bangladesh', 'Dhaka', 'Adabor', NULL, 'House 80, Road No. 8A, Mirza Golam Hafiz Road, Dhanmondi, Dhaka 1209, Bangladesh', NULL, NULL, NULL, NULL, NULL, '5000', NULL, '400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', '23.779533, 90.410668'),
(2, 1, NULL, 'Bangladesh', 'Dhaka', 'Dhanmondi', NULL, 'House No. 56, Road No. 4/A, Satmasjid Road, Dhaka 1209, Bangladesh', NULL, NULL, NULL, NULL, NULL, '10000', NULL, '4400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', '23.777098, 90.412116'),
(3, 1, NULL, 'Bangladesh', 'Dhaka', 'Dhanmondi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50000', NULL, '2400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', ''),
(4, 1, NULL, 'Bangladesh', 'Mymensingh', 'Gaffargaon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20000', NULL, '1400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', ''),
(5, 1, NULL, 'Bangladesh', 'Mymensingh', 'Mymensingh Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45000', NULL, '4000 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', '');

-- --------------------------------------------------------

--
-- Table structure for table `apart_transaction`
--

CREATE TABLE `apart_transaction` (
  `apartment_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `transaction_date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` int(15) NOT NULL,
  `owner_id` int(15) DEFAULT NULL,
  `property_condition` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `house_no` varchar(15) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `beds` decimal(15,0) DEFAULT NULL,
  `baths` decimal(15,0) DEFAULT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house_transaction`
--

CREATE TABLE `house_transaction` (
  `house_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `transaction_date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(15) NOT NULL,
  `owner_id` int(15) DEFAULT NULL,
  `property_condition` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `house_no` varchar(15) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `rooms` decimal(15,0) DEFAULT NULL,
  `baths` decimal(15,0) DEFAULT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office_transaction`
--

CREATE TABLE `office_transaction` (
  `office_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `transaction_date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(15) NOT NULL,
  `owner_id` int(15) DEFAULT NULL,
  `property_condition` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `shop_no` varchar(15) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `owner_id`, `property_condition`, `country`, `district`, `area`, `postal_code`, `shop_no`, `size`, `floor`, `lifts`, `price`, `available_from`, `details`) VALUES
(1, 1, NULL, 'Bangladesh', 'Dhaka', 'Adabor', NULL, NULL, NULL, NULL, NULL, '15000', NULL, '1400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha');

-- --------------------------------------------------------

--
-- Table structure for table `shop_transaction`
--

CREATE TABLE `shop_transaction` (
  `shop_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `transaction_date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(15) NOT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  `fname` varchar(15) DEFAULT NULL,
  `lname` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `house_no` varchar(15) DEFAULT NULL,
  `dob` varchar(15) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `pass` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `date_joined` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_type`, `fname`, `lname`, `country`, `district`, `area`, `postal_code`, `house_no`, `dob`, `gender`, `contact`, `mail`, `pass`, `img`, `date_joined`) VALUES
(1, NULL, 'nazir', 'ahmmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'goodvubo@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'img/uploads/nazir_159_8584217216.jpg', NULL),
(10, NULL, 'uub', 'buu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'buu@g.com', '452ae46e84f26d6bc20c073458ecee1b', '', '16/08/20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `apart_transaction`
--
ALTER TABLE `apart_transaction`
  ADD PRIMARY KEY (`apartment_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `house_transaction`
--
ALTER TABLE `house_transaction`
  ADD PRIMARY KEY (`house_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `office_transaction`
--
ALTER TABLE `office_transaction`
  ADD PRIMARY KEY (`office_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `shop_transaction`
--
ALTER TABLE `shop_transaction`
  ADD PRIMARY KEY (`shop_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartment`
--
ALTER TABLE `apartment`
  ADD CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `apart_transaction`
--
ALTER TABLE `apart_transaction`
  ADD CONSTRAINT `apart_transaction_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `apart_transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `house_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `house_transaction`
--
ALTER TABLE `house_transaction`
  ADD CONSTRAINT `house_transaction_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `house` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `house_transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `office`
--
ALTER TABLE `office`
  ADD CONSTRAINT `office_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `office_transaction`
--
ALTER TABLE `office_transaction`
  ADD CONSTRAINT `office_transaction_ibfk_1` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `office_transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_transaction`
--
ALTER TABLE `shop_transaction`
  ADD CONSTRAINT `shop_transaction_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
