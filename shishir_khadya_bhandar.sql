-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2025 at 02:57 AM
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
-- Database: `shishir_khadya_bhandar`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image_path` varchar(255) NOT NULL,
  `product_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image_path`, `product_price`) VALUES
(2, 'Milk', 'Dairy', 'Pure cow milk packed hygienically.', 'images/products/milk.png', 80),
(3, 'Oil', 'Groceries', 'High quality cooking oil for daily use.', 'images/products/oil.png', 120),
(4, 'Ghee', 'Dairy', 'Pure ghee made from traditional methods.', 'images/products/ghee.png', 180);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fullname`, `email`, `phone`, `password`, `role`) VALUES
('adminn', 'adish', 'admin@admin.com', '9748844591', 'GkNUNplQyln+gRXe1dJnZZj/KRjbzsGRcrj5p532td+7Fmfh1rWQmYOJ4C0H7Ew8kWU5bqo=', 'admin'),
('ram', 'Ram Thapaaa', 'ram@ram.com', '9748844592', 'WUStITo11H8mjnLGnrZJiVw0aL/CdJDTVSX0XQRxrZxULiV+KZnto+OdJl+m+H2ezOfG6EY=', 'user'),
('shishir', 'sheesheq', 'shishir@shishir.com', '9748844593', 'F9mnHWOHD1vUqmfJ+c0cxt3VteyIdmuNUVFAmCMGJvNV3ZN4bhtmsxFuSd3B+obCgkKjLJ4=', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `fullname` (`fullname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
