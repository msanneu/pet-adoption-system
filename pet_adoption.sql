-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2026 at 03:20 AM
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
-- Database: `pet_adoption`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `force_password_change` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password_hash`, `force_password_change`, `is_default`) VALUES
(1, 'admin', 'scrypt:32768:8:1$zVIij8Y49wcW24Qj$235253c630af81c0610c1c70745fd10504ec539a13e30370200ce923f7d8fa29666bfde77d2370ce7c70ab46a9c6b04dda325eb225168b5ccba344d142372e45', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adoption_application`
--

CREATE TABLE `adoption_application` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `adopter_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_proof` varchar(200) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `q_home_type` varchar(255) DEFAULT NULL,
  `q_yard_access` varchar(255) DEFAULT NULL,
  `household_size` varchar(100) DEFAULT NULL,
  `q_hours_alone` varchar(100) DEFAULT NULL,
  `other_pets` varchar(255) DEFAULT NULL,
  `surrendered_pet` tinytext DEFAULT NULL,
  `q_pet_experience` text DEFAULT NULL,
  `financial_readiness` varchar(50) DEFAULT NULL,
  `home_picture` varchar(200) DEFAULT NULL,
  `application_date` datetime DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `pickup_date` datetime DEFAULT NULL,
  `claim_date` datetime DEFAULT NULL,
  `return_request_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_application`
--

INSERT INTO `adoption_application` (`id`, `user_id`, `adopter_name`, `email`, `id_proof`, `status`, `phone`, `occupation`, `q_home_type`, `q_yard_access`, `household_size`, `q_hours_alone`, `other_pets`, `surrendered_pet`, `q_pet_experience`, `financial_readiness`, `home_picture`, `application_date`, `approval_date`, `pickup_date`, `claim_date`, `return_request_date`, `return_date`) VALUES
(1, NULL, 'patricia ann sambilay', 'sambilay.patriciaann@gmail.com', '1189d31da0fe45f2b6a3ddace0c4abba.png', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-09 09:39:42', '2026-03-09 21:51:58', NULL, NULL, NULL, NULL),
(2, NULL, 'Patricia Ann Sambilay', 'sambilay.patriciaann@gmail.com', '56f5c8ed6a554e449a5cbf79f2bf7e2c.png', 'Declined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-09 10:11:20', NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'dwdw', 'sambilay.patriciaann@gmail.com', '5fb1c9f873b04b8ea5b6cdfb4c8bb1e0.png', 'Declined', 'dwda', 'dwd', 'fwf', 'No Yard/Balcony', '2-3 People', '0-4 hours', 'None', 'No', 'wd', 'Prepared for routine and emergency care', '96cb53aa50ab40db994c71869d792811.png', '2026-03-09 10:15:29', NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'patricia ann sambilay', 'sambilay.patriciaann@gmail.com', 'a4a3377e3ddb4fa9bd05a280f7f28777.png', 'Declined', 'dasd', 'dadafa', 'House', 'Fully Fenced', '2-3 People', '8+ hours', '1 Dog', 'No', 'dwdw', 'Need assistance with emergency care', '72085fee9d2a470c9b0c733f806973ac.png', '2026-03-09 10:22:46', NULL, NULL, NULL, NULL, NULL),
(5, 2, 'Patricia Ann Sambilay', 'sambilay.patriciaann@gmail.com', '130def28acd14952ae5b338edb6d7855.png', 'Returned', '09604591029', 'Student', 'House', 'Fully Fenced', '1 (Living Alone)', '4-8 hours', 'None', 'No', 'dad', 'Need assistance with emergency care', 'f4e64c24a5814a54936b3a5d3eebb7fb.png', '2026-03-09 13:51:03', '2026-03-09 21:53:22', '2026-03-26 13:53:00', '2026-03-09 21:54:06', '2026-03-09 13:54:14', '2026-03-09 14:05:21'),
(6, 2, 'patricia ann sambilay', 'sambilay.patriciaann@gmail.com', '7be3c20397234048aa22719ab6272d5c.png', 'Pending', 'dadad', 'dada', 'House', 'Fully Fenced', '2-3 People', '0-4 hours', '1 Dog', 'dqdq', 'qdq', 'Prepared for routine and emergency care', 'fb96d3e82d10451697ea8e75dbd8c2d6.png', '2026-03-09 14:46:18', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_item`
--

CREATE TABLE `application_item` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_item`
--

INSERT INTO `application_item` (`id`, `application_id`, `pet_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `admin_username`, `action`, `timestamp`) VALUES
(1, 'admin', 'Registered new pet: Megan', '2026-03-09 09:37:17'),
(2, 'admin', 'Approved multi-pet adoption for: Megan', '2026-03-09 13:52:02'),
(3, 'admin', 'Approved multi-pet adoption for: Megan', '2026-03-09 13:53:25'),
(4, 'admin', 'Declined adoption request from Patricia Ann Sambilay', '2026-03-09 13:53:33'),
(5, 'admin', 'Declined adoption request from Patricia Ann Sambilay', '2026-03-09 13:53:35'),
(6, 'admin', 'Declined adoption request from dwdw', '2026-03-09 13:53:36'),
(7, 'admin', 'Officially finalized adoption for Application #5', '2026-03-09 13:54:06'),
(8, 'admin', 'Confirmed physical intake of Megan (App #5). Relisted to gallery.', '2026-03-09 14:05:21'),
(9, 'admin', 'Registered new staff member: admin1', '2026-03-09 14:16:21'),
(10, 'admin', 'Revoked access for staff member: admin1', '2026-03-09 14:19:22'),
(11, 'admin', 'Declined adoption request from patricia ann sambilay', '2026-03-09 14:36:01'),
(12, 'admin', 'Updated profile for: Megan', '2026-03-09 15:22:02'),
(13, 'admin', 'Updated profile for: Megan', '2026-03-09 16:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `breed` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `age_category` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `energy_level` varchar(20) DEFAULT NULL,
  `spayed_neutered` varchar(5) DEFAULT NULL,
  `vac_status` varchar(30) DEFAULT NULL,
  `vac_date` varchar(20) DEFAULT NULL,
  `special_needs` text DEFAULT NULL,
  `other_description` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `adoption_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`id`, `name`, `breed`, `photo`, `age_category`, `gender`, `size`, `energy_level`, `spayed_neutered`, `vac_status`, `vac_date`, `special_needs`, `other_description`, `status`, `adoption_date`) VALUES
(1, 'Megan', 'Beagle', 'ba5c305bba5b45ac94d9fb71ef5d1d40.png', 'Adult', 'Male', 'Medium', 'Moderate', 'No', 'N/A', '', 'N/A', '', 'Available', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `verification_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password_hash`, `is_verified`, `verification_token`) VALUES
(2, 'Patricia Ann Sambilay', 'sambilay.patriciaann@gmail.com', 'scrypt:32768:8:1$ndBfqpBy76IDOfzf$472dffb68d96066373333a9cf1532ccd625d567fc988ae127b7cf482b5c383d29b1aecb90c72c3cf6b0a6aa2669907503ec3bdfe6645df5a1852bd0b1e90c457', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `adoption_application`
--
ALTER TABLE `adoption_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `application_item`
--
ALTER TABLE `application_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id` (`application_id`),
  ADD KEY `pet_id` (`pet_id`);

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adoption_application`
--
ALTER TABLE `adoption_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `application_item`
--
ALTER TABLE `application_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption_application`
--
ALTER TABLE `adoption_application`
  ADD CONSTRAINT `adoption_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `application_item`
--
ALTER TABLE `application_item`
  ADD CONSTRAINT `application_item_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `adoption_application` (`id`),
  ADD CONSTRAINT `application_item_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
