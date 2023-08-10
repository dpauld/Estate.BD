-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2017 at 08:19 AM
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
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT 'Bangladesh',
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `fullAddress` varchar(80) DEFAULT NULL,
  `location` varchar(200) NOT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `park` int(11) NOT NULL DEFAULT '0',
  `beds` decimal(10,0) DEFAULT NULL,
  `baths` decimal(10,0) DEFAULT NULL,
  `rooms` decimal(10,0) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `img` text,
  `postDate` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'apartment'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `owner_id`, `property_condition`, `price`, `available_from`, `country`, `district`, `area`, `fullAddress`, `location`, `postal_code`, `size`, `floor`, `lifts`, `park`, `beds`, `baths`, `rooms`, `details`, `img`, `postDate`, `type`) VALUES
(1, 1, NULL, '5000', NULL, 'Bangladesh', 'Dhaka', 'Adabor', 'House 80, Road No. 8A, Mirza Golam Hafiz Road, Dhanmondi, Dhaka 1209, Bangladesh', '23.779533, 90.410668', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', NULL, '', 'apartment'),
(2, 1, NULL, '10000', NULL, 'Bangladesh', 'Dhaka', 'Dhanmondi', 'House No. 56, Road No. 4/A, Satmasjid Road, Dhaka 1209, Bangladesh', '23.777098, 90.412116', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '4400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', NULL, '', 'apartment'),
(3, 1, NULL, '50000', NULL, 'Bangladesh', 'Dhaka', 'Dhanmondi', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', NULL, '', 'apartment'),
(4, 1, NULL, '20000', NULL, 'Bangladesh', 'Mymensingh', 'Gaffargaon', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '1400 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', NULL, '', 'apartment'),
(5, 1, NULL, '45000', NULL, 'Bangladesh', 'Mymensingh', 'Mymensingh Sadar', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '4000 sq-ft.,3 Bedroom Apartment for Rent in Dhanmondi 27 opposite of meena bazar and besides of nandoos. This apartment is located in Dhanmondi 27, Dhaka\r\nThe property is located in buzzing hub of Dha', NULL, '', 'apartment'),
(14, 11, 'rent', '40000', '2017-08-31', 'Bangladesh', 'Dhaka', 'Dhanmondi', '46/2/p,Shankar,Dhanmondi,Dhaka', '23.82430424337967, 90.42566824704409', NULL, '1300', '4', NULL, 1, '3', '2', '4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales quam ut lorem condimentum, eu elementum nunc fermentum. Aliquam non ante ex. In consectetur nisi diam, et vulputate nisl ullamc', ', post_741-1_resize.jpg, post_741-2_resize.jpg, post_681-5_resize.jpg', '08-26-2017', 'apartment');

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
  `country` varchar(15) DEFAULT 'Bangladesh',
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `house_no` varchar(15) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `beds` decimal(15,0) DEFAULT NULL,
  `baths` decimal(15,0) DEFAULT NULL,
  `park` int(11) NOT NULL DEFAULT '0',
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `postDate` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'house'
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
  `country` varchar(15) DEFAULT 'Bangladesh',
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
  `available_from` varchar(50) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `postDate` varchar(15) NOT NULL,
  `img` text NOT NULL,
  `location` text NOT NULL,
  `fullAddress` text NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'office'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `owner_id`, `property_condition`, `country`, `district`, `area`, `postal_code`, `house_no`, `size`, `floor`, `lifts`, `rooms`, `baths`, `price`, `available_from`, `details`, `postDate`, `img`, `location`, `fullAddress`, `type`) VALUES
(2, 1, 'rent', 'Bangladesh', 'Dhaka', 'Baridhara ', NULL, NULL, '4500', '5', '1', '4', '1', '45000', '9 September, 2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales quam ut lorem condimentum, eu elementum nunc fermentum. Aliquam non ante ex. In consectetur nisi diam, et vulputate nisl ullamc', '2017-08-28', 'post_640-1.jpg, post_640-2.jpg', '23.814234671328283, 90.40244400501251', '178 Road No 02, DOHS Bypass, Baridhara Dhaka 1206 Bangladesh', 'office'),
(3, 1, 'rent', 'Bangladesh', 'Dhaka', 'Kawran Bazar', NULL, NULL, '5500', '0', '2', '5', '1', '48000', '31 August, 2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales quam ut lorem condimentum, eu elementum nunc fermentum. Aliquam non ante ex. In consectetur nisi diam, et vulputate nisl ullamc', '2017-08-28', 'post_681-1_resize.jpg, post_681-4_resize.jpg, post_681-6_resize.jpg', '23.75084132625932, 90.39329767227173', 'BDBL Building (Old BSRS) 12 Kawran Bazar C/A Dhaka 1215 Bangladesh', 'office');

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
  `country` varchar(15) DEFAULT 'Bangladesh',
  `district` varchar(15) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `shop_no` varchar(15) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(50) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `postDate` varchar(15) NOT NULL,
  `img` text NOT NULL,
  `fullAddress` text NOT NULL,
  `location` text NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'shop'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `owner_id`, `property_condition`, `country`, `district`, `area`, `postal_code`, `shop_no`, `size`, `floor`, `lifts`, `price`, `available_from`, `details`, `postDate`, `img`, `fullAddress`, `location`, `type`) VALUES
(3, 1, 'rent', 'Bangladesh', 'Dhaka', 'Pragati Ave', NULL, NULL, '4000', '4', NULL, '50000', '21 September, 2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales quam ut lorem condimentum, eu elementum nunc fermentum. Aliquam non ante ex. In consectetur nisi diam, et vulputate nisl ullamc', '2017-08-28', 'garlicNginger.jpg, the-great-kabab-factory.jpg, Phone-Exchange.jpg', '244 ka 193 Pragati Ave Dhaka 1229 Bangladesh', '23.813616301146908, 90.42426109313965', 'shop');

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
  `role` int(11) NOT NULL DEFAULT '0',
  `date_joined` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_type`, `fname`, `lname`, `country`, `district`, `area`, `postal_code`, `house_no`, `dob`, `gender`, `contact`, `mail`, `pass`, `img`, `role`, `date_joined`) VALUES
(1, NULL, 'nazir', 'ahmmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01687288554', 'good@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'img/uploads/nazir_159_8584217216.gif', 1, NULL),
(10, NULL, 'uub', 'buu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'buu@g.com', '452ae46e84f26d6bc20c073458ecee1b', '', 0, '16/08/20'),
(11, NULL, 'Dipto', 'Paul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01829037067', 'idpaulyd@gmail.com', '6c00cfc3234afdff2dd1da737c9ae917', 'img/uploads/DPaul.gif', 0, '25/08/20'),
(12, NULL, 'LLALA', 'asnasna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'idp@gmail.com', 'b8587a67b3ca75e71f73425f4d58fe62', 'img/uploads/599f4ee3c02ed1.72575518.jpg', 0, '25/08/20'),
(13, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'd41d8cd98f00b204e9800998ecf8427e', '', 0, '25/08/20');

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
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
