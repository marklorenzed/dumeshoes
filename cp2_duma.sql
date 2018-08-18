-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2018 at 06:33 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp2_duma`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`) VALUES
(1, 'Dress Shoes'),
(2, 'casual shoes'),
(3, 'bags');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `username`, `password`, `email`, `address`, `role`) VALUES
(3, 'Mark Lorenze', 'Dumalaon', 'marklorenzed', '705b55f5501e7bd53f1df1b1663aaf0a9e41b96f', 'marklorenzed@gmail.com', 'B22 L29 Bilbao St. Southforbes Villas, Silang Cavite', 'user'),
(5, 'Admin', 'Admin', 'admin', 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 'adminDumas@gmail.com', 'NA', 'admin'),
(7, 'Dona Marie', 'Petilla', 'donaemon', 'b17f396484f635e8d903bbc04874259907d67bc8', 'domariya@yahoo.com', 'Phase 1E San Lorenzo Subdivision Santa Rosa Laguna', ''),
(10, 'user', 'user', 'user', '12dea96fec20593566ab75692c9949596833adc9', 'user@gmail.com', 'user', ''),
(11, 'user1', 'user1', 'user1', 'b3daa77b4c04a9551b8781d03191fe098f325e67', 'user1@gmail.com', 'user1', 'user'),
(12, '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '', 'user'),
(13, 'Testng', 'test', 'stefan', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'email@email.com', 'Phase 1E San Lorenzo Subdivision Santa Rosa Laguna', 'user'),
(14, 'test1', 'test1', 'test1', 'b444ac06613fc8d63795be9ad0beaf55011936ac', 'test1@gmail.com', 'test1', 'user'),
(15, 'test2', 'test2', 'test2', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', 'test2@gmail.com', 'test2', 'user'),
(16, 'test3', 'test3', 'test3', '3ebfa301dc59196f18593c45e519287a23297589', 'test3@gmail.com', 'test3', 'user'),
(17, 'Dona Marie', 'Petilla', 'donamarie', '01ee94b8b3ac84acbd3a5b852ed4b18846e304cd', 'domariya13@yahoo.com', 'San Lorenzo Santa Rosa Laguna', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size` varchar(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantityOrdered` int(11) DEFAULT NULL,
  `subTotal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `product_id`, `size`, `order_id`, `quantityOrdered`, `subTotal`) VALUES
(19, 4, 'size 8', 18, 1, 5900),
(20, 15, ' ', 18, 1, 3900),
(21, 3, 'size 11', NULL, 1, 6900),
(22, 16, ' ', NULL, 1, 3900),
(23, 3, 'size 8', 20, 1, 6900),
(24, 16, ' ', NULL, 2, 7800),
(25, 3, 'size 11', NULL, 1, 6900),
(26, 4, 'size 8', NULL, 1, 5900),
(27, 4, 'size 8', NULL, 1, 5900),
(28, 3, 'size 8', NULL, 1, 6900),
(29, 8, 'size 8', NULL, 1, 5900),
(30, 3, 'size 8', NULL, 1, 6900),
(31, 3, 'size 8', NULL, 1, 6900),
(32, 9, 'size 8', 29, 1, 3900),
(33, 3, 'size 8', NULL, 1, 6900),
(34, 4, 'size 8', 31, 1, 5900),
(35, 9, 'size 8', 31, 1, 3900),
(36, 28, ' ', 31, 1, 1500),
(37, 28, ' ', 32, 2, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `grandTotal` int(255) NOT NULL,
  `referenceNo` varchar(255) NOT NULL,
  `orderDate` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `grandTotal`, `referenceNo`, `orderDate`, `status`) VALUES
(18, 3, 9800, '5B404E11BD9AF', '2018/07/07', 'Shipped'),
(20, 3, 6900, '5B406C9579511', '2018/07/07', 'Shipped'),
(29, 3, 3900, '5B44736607FC0', '2018/07/10', 'Shipped'),
(31, 3, 11300, '5B45AC9738BE9', '2018/07/11', 'Processing'),
(32, 17, 3000, '5B45AE0F0AAB6', '2018/07/11', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `img_path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `sub_img_path1` varchar(255) NOT NULL,
  `sub_img_path2` varchar(255) NOT NULL,
  `sub_img_path3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `price`, `img_path`, `description`, `stock`, `category_id`, `gender_id`, `supplier_id`, `sub_img_path1`, `sub_img_path2`, `sub_img_path3`) VALUES
(3, 'Badolla', 6900, 'assets/img/dress_shoes/badolla/badolla_midnightblack1.jpg', 'Sleek yet casual, this flat-sole derby/trainer hybrid works with dress and casual looks.', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/badolla/badolla_midnightblack2.jpg', 'assets/img/dress_shoes/badolla/badolla_midnightblack3.jpg', 'assets/img/dress_shoes/badolla/badolla_midnightblack4.jpg'),
(4, 'Clintunn Black', 5900, 'assets/img/dress_shoes/clintunn/clintunn_black1.jpg', '', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/clintunn/clintunn_black2.jpg', 'assets/img/dress_shoes/clintunn/clintunn_black3.jpg', ''),
(5, 'Clintunn Cognac', 5900, 'assets/img/dress_shoes/clintunn/clintunn_cognac1.jpg', '', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/clintunn/clintunn_cognac2.jpg', 'assets/img/dress_shoes/clintunn/clintunn_cognac3.jpg', ''),
(6, 'Clintunn Dark Brown', 5900, 'assets/img/dress_shoes/clintunn/clintunn_darkbrown1.jpg', '', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/clintunn/clintunn_darkbrown2.jpg', 'assets/img/dress_shoes/clintunn/clintunn_darkbrown3.jpg', ''),
(7, 'Clintunn Suede Navy', 5900, 'assets/img/dress_shoes/clintunn/clintunn_navy1.jpg', '', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/clintunn/clintunn_navy2.jpg', 'assets/img/dress_shoes/clintunn/clintunn_navy3.jpg', ''),
(8, 'Clintunn Suede Black', 5900, 'assets/img/dress_shoes/clintunn/clintunn_suedeblack1.jpg', '', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/clintunn/clintunn_suedeblack2.jpg', 'assets/img/dress_shoes/clintunn/clintunn_suedeblack3.jpg', ''),
(9, 'Gregory Cognac', 3900, 'assets/img/dress_shoes/gregory/gregory_1.jpg', '', NULL, 1, NULL, NULL, 'assets/img/dress_shoes/gregory/gregory_2.jpg', 'assets/img/dress_shoes/gregory/gregory_3.jpg', 'assets/img/dress_shoes/gregory/gregory_4.jpg'),
(14, 'Rucksack Tan', 3900, 'assets/img/bags/rucksack_tan1.jpg', '', NULL, 3, NULL, NULL, '', '0', ''),
(15, 'Rucksack Wine', 3900, 'assets/img/bags/rucksack_wine1.jpg', '', NULL, 3, NULL, NULL, '', '0', ''),
(16, 'Duffle Bag', 3900, 'assets/img/bags/duffle_black1.jpg', '', NULL, 3, NULL, NULL, '', '0', ''),
(22, 'Badolla Black', 6900, 'assets/img/badolla_black1.jpg', '', NULL, 1, NULL, NULL, '', '', ''),
(23, 'Aauwen Black', 3200, 'assets/img/aauwen_black1.jpg', 'Sleek yet casual, this flat-sole derby/trainer hybrid works with dress and casual looks.', NULL, 2, NULL, NULL, '', '', ''),
(24, 'Cross', 1500, 'assets/img/cross_bodybag1.jpg', 'The entire bag construction is made of 100% man-made leather. Designed to style and secure.', NULL, 3, NULL, NULL, '', '', ''),
(25, 'Dworien Navy', 3900, 'assets/img/dworien_navy1.jpg', 'A perfect round-the-clock choice to take him anywhere and everywhere! A choice mix of materials with leather upper and cushioned rubber sole.', NULL, 2, NULL, NULL, '', '', ''),
(26, 'Aauwen Dark Grey', 3900, 'assets/img/aauwen_darkgrey1.jpg', 'Sleek yet casual, this flat-sole derby/trainer hybrid works with dress and casual looks.', NULL, 2, NULL, NULL, '', '', ''),
(27, 'Cross', 1500, 'assets/img/cross_bodybag4.jpg', 'The entire bag construction is made of 100% man-made leather. Designed to style and secure. ', NULL, 3, NULL, NULL, '', '', ''),
(28, 'Cross', 1500, 'assets/img/cross_bodybag3.jpg', 'The entire bag construction is made of 100% man-made leather. Designed to style and secure.', NULL, 3, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplierName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
