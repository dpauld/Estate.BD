-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2017 at 09:19 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `beds` decimal(10,0) DEFAULT NULL,
  `baths` decimal(10,0) DEFAULT NULL,
  `rooms` decimal(10,0) DEFAULT NULL,
  `details` text,
  `img` text,
  `postDate` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'apartment'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `owner_id`, `property_condition`, `price`, `available_from`, `country`, `district`, `area`, `fullAddress`, `location`, `postal_code`, `size`, `floor`, `lifts`, `beds`, `baths`, `rooms`, `details`, `img`, `postDate`, `type`) VALUES
(16, 11, 'rent', '50000', '', 'Bangladesh', 'Dhaka', 'Gulshan', '455,4/A,Gulshan-2, Dhaka', '23.79482045106145, 90.41434116664277', NULL, '2993', '1', NULL, '4', '4', '6', '3000 sq-ft.,4 Bedroom Apartment for Rent in Gulshan-2. This apartment is offered by Rental Agency Lamudi and is located in Gulshan-2, Dhaka', 'normal (1).jpg, normal (2).jpg, normal (3).jpg, normal.jpg', '2017-09-19', 'apartment'),
(17, 11, 'rent', '25000', '28 September, 2', 'Bangladesh', 'Chittagong', 'West Khulsi', 'West Khulsi, Chittagong', '22.365816708075965, 91.80921211926034', NULL, '2500', '0', NULL, '3', '3', '5', '2500 sq-ft.,3 Bedroom Apartment for Rent in West Khulsi. This apartment is offered by Rental Agency Lamudi and is located in West Khulsi, Chittagong', 'normal (1).jpg, normal (2).jpg, normal.jpg', '2017-09-19', 'apartment'),
(18, 11, 'rent', '12000', '30 September, 2', 'Bangladesh', 'Chittagong', 'Halishahar', 'Halishahar, Chittagong', '22.500398487996435, 91.88249586615711', NULL, '900', '0', NULL, '2', '2', '3', 'Freshly reconstruct, all new title and fittings. Secure and all time water available. Good location for Collagiat high school, govt women high school, city collage, and Islamia collage. Near by market', 'normal (2).jpg', '2017-09-19', 'apartment'),
(19, 11, 'rent', '27000', '', 'Bangladesh', 'Chittagong', 'Pahartali', '5979, Sagarika Tower, Sagarika Road, Custom Academy Pahartali Pahartali, Chittag', '22.355204174100027, 91.77194863732439', NULL, '1400', '0', NULL, '3', '2', '5', 'Suitable for RESIDENTIAL & COMMERCIAL purpose.\nLocated 5 minuted from City Gate and 25 minutes from GEC Circle.\nBrand New 3-bedroom and 2-bathroom apartment, including a balcony.\nHouse includes a l', '?', '2017-09-19', 'apartment'),
(20, 11, 'sale', '9', '3 October, 2017', 'Bangladesh', 'Dhaka', 'Bashundhara', 'Plot No. 506, Road No. 13, Block - G, Bashundhara R/A Bashundhara, Dhaka', '23.79989034564138, 90.42069017712492', NULL, '1520', '0', NULL, '4', '3', '6', 'Project Name: Happy Home\r\nAvailable floors: 2nd, 5th, 6th\r\nKey Points of location : Very close to 100 ft. and 60 ft. main road which are adjacent to 300 ft. Purbachal Road , Close to Viqarunnisa Noon School, Central Mosque, NSU, IUB and other civic amenities.\r\nApartment Size : 1520 sft         \r\nLand Size : 3 Katha\r\nOrientation : North Facing\r\nBuilding Height : 7 Storied\r\nApartment per floor : 1 (One)\r\nArrangements : 3 beds , 2 attached baths and 1 common bath, 3 verandas, living, dining, kitchen, servant toilet, and planter.\r\nCommon Facilities : International standard Lift , Standby Generator, Intercom, Community Room at the Rooftop, Guard Post, Driversâ€™ waiting Area with Toilet.\r\nHandover : Julyâ€™ 2019\r\nMode of payment: 30% down payment and rest of the amount to be paid on installment basis over the period till handover.\r\n*** Price is Negotiable.', 'normal (3).jpg, normal (4).jpg', '2017-09-19', 'apartment'),
(21, 11, 'sale', '1000000', '24 September, 2', 'Bangladesh', 'Dhaka', 'Mirpur', '137/16 & 137/16, B-1 , Mazar Road, Dhaka Mirpur, Dhaka', '23.822914442386892, 90.36313175805844', NULL, '0', '0', NULL, '0', '0', '0', '1445 sq-ft. 3 Bedroom Apartment for Sale in BFL Golden Shower, Mirpur. This apartment is offered by Building For Future Ltd. and is located in Mirpur, Dhaka.\r\n\r\nAvailable apartment sizes are- \r\nType A: 1540 sq-ft, \r\nType B: 1445 sq-ft, \r\nType C: 1435 sq-ft, \r\nType E: 965 sq-ft, \r\nType F: 1210 sq-ft, \r\nType G: 1385 sq-ft. \r\nSimilar size apartments a', 'normal (3).jpg', '2017-09-19', 'apartment');

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
  `fullAddress` text NOT NULL,
  `location` text NOT NULL,
  `postal_code` decimal(15,0) DEFAULT NULL,
  `house_no` varchar(15) DEFAULT NULL,
  `size` decimal(15,0) DEFAULT NULL,
  `floor` decimal(15,0) DEFAULT NULL,
  `lifts` decimal(15,0) DEFAULT NULL,
  `beds` decimal(15,0) DEFAULT NULL,
  `baths` decimal(15,0) DEFAULT NULL,
  `rooms` int(11) NOT NULL,
  `price` decimal(15,0) DEFAULT NULL,
  `available_from` varchar(15) DEFAULT NULL,
  `details` text,
  `postDate` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'house',
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `owner_id`, `property_condition`, `country`, `district`, `area`, `fullAddress`, `location`, `postal_code`, `house_no`, `size`, `floor`, `lifts`, `beds`, `baths`, `rooms`, `price`, `available_from`, `details`, `postDate`, `type`, `img`) VALUES
(1, 11, 'sale', 'Bangladesh', 'Rajshahi', 'Rajshahi Cantto', '-505, Terokhadia North para, P.S: Rajpara, P.O: Cantonment, Rajshahi-6202. (Back side of Rajshahi Krishi Office) Rajshahi Canttonment, Rajshahi Canttonment', '', NULL, NULL, '1500', '0', NULL, '4', '2', 6, '9500000', '', '1500 sq-ft. 4 bedroom house with 5 Katha Land for sale in Rajshahi', '2017-09-19', 'house', 'normal (5).jpg'),
(2, 11, 'sale', 'Bangladesh', 'Dhaka', 'Gulshan', 'Niketon, Dhaka, Bangladesh Niketon, Dhaka', '24.138817272726346, 90.1471707969904', NULL, NULL, '7050', '0', NULL, '8', '6', 12, '210000000', '29 September, 2', 'The house is Four stories tall.The size of the land mass of the building is 5.23 katha and space inside is approx 7050+ Sqft . The exact location is Dhaka-1212, Gulshan-1, Niketon, Road#7, House#11, Block-C. ', '2017-09-19', 'house', '?');

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
  `details` text,
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
(4, 11, 'rent', 'Bangladesh', 'Dhaka', 'Gulshan-1', NULL, NULL, '7500', '0', NULL, '0', '0', '7500', '', '7500 sq-ft.,Commercial Office Space for Rent in Gulshan-1. This commercial property is offered by Rental Agency Lamudi and is located in Gulshan-1, Dhaka\r\nLocated in the prime area of Gulshan-1, it is nearby to the abundance of top class eateries and restaurants that people associate the area with. The shopping mall, markets, retail shops, supermarkets, parks and playgrounds are all in vicinity.', '2017-09-19', 'office1.jpg', '23.792853387328606, 90.40775566943921', 'Gulshan-1, Dhaka', 'office'),
(5, 11, 'sale', 'Bangladesh', 'Dhaka', 'Motijheel', NULL, NULL, '1500', '0', NULL, '0', '0', '8000000', '28 September, 2017', '1500 sq-ft.,Commercial Office Space for Sell in Motijheel. This commercial property is offered by Agency Domino and is located in Motijheel, Dhaka', '2017-09-19', 'office3.jpg', '23.733373361724986, 90.4153168166522', 'dilkusha,motijheel,dhaka', 'office'),
(6, 11, 'sale', 'Bangladesh', 'Dhaka', 'Banani', NULL, NULL, '3800', '0', NULL, '0', '0', '20000000', '10 October, 2017', 'Full Furnished Office Space for Rent in Banani. \r\nFloor Space is 3800 Sq. Ft.\r\nAir Conditions, Office Furniture, Window Blinds, etc.\r\nContact to come and take a look at the space. Thank you.', '2017-09-19', 'office2.jpg, office3.jpg, office4.jpg', '23.794518173383537, 90.40394917086815', 'House:74, Road:7, Block:H, Banani, Dhaka Banani, Dhaka', 'office'),
(7, 11, 'rent', 'Bangladesh', 'Dhaka', 'Motijheel', NULL, NULL, '4211', '0', NULL, '0', '0', '378', '1 October, 2017', 'FLOORS 3RD 8TH 12TH 15TH 16TH\r\n\r\nPrices and Area is per Floor\r\nPREFERABLE COMPANIES : BANK , LEASING , FINANCE , INSURANCE, AIRLINES ', '2017-09-19', 'normal.jpg, office3.jpg, office4.jpg', '23.733089352997094, 90.41849747256492', 'SARA TOWER 11/A TOYENBEE CIRCULAR ROAD , MOTIJHEEL C/A. DHAKA-1000. Motijheel, Dhaka', 'office'),
(8, 11, 'sale', 'Bangladesh', 'Chittagong', 'Pahartali', NULL, NULL, '982', '0', NULL, '0', '0', '0', '20 October, 2017', '982 sq-ft. (Office-5) commercial space available for sale in RFH Shuvra Biswas.RFH Shuvra Biswas has been built by R.F. Holding Ltd. and is located in Chittagong, Chittagong.\r\n\r\nChittagong is the second largest city in Bangladesh. It is the Commercial Capital City of Bangladesh. The surrounding mountains and rivers make the city attractive. Karnaphuli River falls in Chittagong. The largest land port of the country, ï¾“Chittagong Portï¾”, situated in Chittagong. Thatï¾’s why Chittagong is the city for export and import. Most of the large industries of Bangladesh are situated in Chittagong.', '2017-09-19', '?', '22.348362444945437, 91.77556157123036', 'lonkar More Pahartali Chittagong, Chittagong', 'office'),
(9, 11, 'rent', 'Bangladesh', 'Dhaka', 'Uttara', NULL, NULL, '500', '0', NULL, '0', '0', '30000', '30 September, 2017', '500 sq-ft.,Commercial Office Space for Rent in Uttara. This commercial property is offered by Rental Agency Kamuri and is located in Uttara, Dhaka\r\n\r\nThe property is located in the peaceful suburb of Uttara. The suburb is well-served by a proliferation of shopping complexes, shops, and schools & colleges. An array of food outlets are nearby to cater to the residents.2 months advance required.', '2017-09-19', 'office2.jpg', '23.875815624631688, 90.37944450930809', 'Uttara, Dhaka', 'office'),
(10, 11, 'rent', 'Bangladesh', 'Sylhet', 'Katuwaliï¾ ', NULL, NULL, '4700', '0', NULL, '0', '0', '125', '', 'Rahman Tower, Heart of sylhet, Very attractive location with basement car parking, 24 hour security on site, two entrances to the building, currently ground floor is occupied by AirTel as there customer service office. Place is next to Osmani Museum. Perfect space for bank, financial/leasing office, insurance company, corporate/regional office, showroom for clothing, electronic, etc.\r\n', '2017-09-19', '?', '24.907178155533312, 91.8603622878436', 'A/2 Bongobir Road, Naiorpool Katuwaliï¾ , Sylhet', 'office');

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
  `details` text,
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
(4, 11, 'rent', 'Bangladesh', 'Chittagong', 'Halishahar', NULL, NULL, '200', '0', NULL, '12000', '3 October, 2017', '', '2017-09-19', 'shp1.jpg', 'Halishahar, Chittagong', '22.500398487996435, 91.88249586615711', 'shop'),
(5, 11, 'rent', 'Bangladesh', 'Dhaka', 'Farmgate', NULL, NULL, '148', '0', NULL, '7', '5 October, 2017', 'VERY SUITABLE PLACE, BESIDES FARMGATE BUS STAND, LIFT AVAILABLE, ADVANCE TAKA 50,000.', '2017-09-19', 'shp3.jpg', '87 Green Road, Dhaka, Dhaka Division, Bangladesh Farmgate, Dhaka', '23.75656471730191, 90.38792878302047', 'shop'),
(6, 11, 'sale', 'Bangladesh', 'Sylhet', 'Zindabizar', NULL, NULL, '3100', '13', NULL, '13', '2 October, 2017', '13-story commercial building in, Sylhet. The name of the building is\r\nâ€œ Barbhuiya Siddique Plazaâ€\r\nZindabizar, Sylhet \r\nEach floor has approximately 3100 sq. ft. \r\nPer sq.ft. Tk. 4,500/-	\r\n4th 5th 7th 8th 12th & 13th floor sale.', '2017-09-19', 'shp3.jpg, sjp2.jpg', 'â€œ Barbhuiya Siddique Plazaâ€ Zindabizar, Sylhet Zinda Bazarï¾ , Sylhet', '24.895156588574324, 91.86870574951172', 'shop'),
(7, 11, 'sale', 'Bangladesh', 'Rajshahi', 'Rajshahi Sadar', NULL, NULL, '2300', '3', NULL, '20000000', '25 October, 2017', '2300 sq-ft. Commercial Space for sale in Rajshahi', '2017-09-19', 'shp3.jpg, shp1.jpg', 'Rani Bazar Main Road Rajshahi Sadar, Rajshahi Sadar', '24.460171585406055, 88.59209038317204', 'shop'),
(8, 11, 'rent', 'Bangladesh', 'Sylhet', 'Sylhet Sadar', NULL, NULL, '1080', '0', NULL, '43200', '30 September, 2017', '1080 sq-ft. Commercial Space for Rent in Sylhet', '2017-09-19', 'sjp2.jpg', 'ahman Tower 2nd floor,Naiorpool Sylhet Sadar, Sylhet Sadar', '24.959188922592652, 91.8605231679976', 'shop');

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
(11, NULL, 'Dipto', 'Paul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01829037067', 'idpaulyd@gmail.com', '6c00cfc3234afdff2dd1da737c9ae917', 'img/uploads/DPaul.gif', 0, '25/08/20');

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
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
