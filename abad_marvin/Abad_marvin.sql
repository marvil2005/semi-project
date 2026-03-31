-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2026 at 8:13 PM
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
-- Database: `abad_marvin`
--
CREATE DATABASE IF NOT EXISTS `abad_marvin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `abad_marvin`;

-- --------------------------------------------------------

-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_name`, `appointment_date`, `status`) VALUES(201, 101, 'Dr. Garcia', '2025-03-10', 'Completed');
INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_name`, `appointment_date`, `status`) VALUES(202, 102, 'Dr. Ramos', '2025-03-11', 'Scheduled');
INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_name`, `appointment_date`, `status`) VALUES(203, 101, 'Dr. Cruz', '2025-03-15', 'Scheduled');
INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_name`, `appointment_date`, `status`) VALUES(204, 103, 'Dr. Garcia', '2025-03-18', 'Cancelled');
INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_name`, `appointment_date`, `status`) VALUES(205, 106, 'Dr. Ramos', '2025-03-20', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `membership_level` varchar(20) DEFAULT NULL,
  `join_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(1, 'Alice', 'Cebu', 'Gold', '2025-01-10');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(2, 'Bob', 'Bohol', 'Silver', '2025-01-15');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(3, 'Charlie', 'Cebu', 'Bronze', '2025-02-10');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(4, 'Diana', 'Tagbilaran', 'Gold', '2025-02-12');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(5, 'Ethan', 'Bohol', 'Silver', '2025-03-01');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(6, 'Fiona', 'Cebu', 'Gold', '2025-03-05');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(7, 'George', 'Tagbilaran', 'Bronze', '2025-03-08');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(8, 'Hannah', 'Cebu', 'Silver', '2025-04-01');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(9, 'Ian', 'Bohol', 'Gold', '2025-04-10');
INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES(10, 'Julia', 'Cebu', 'Bronze', '2025-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_name`, `city`, `contact_number`) VALUES(101, 'Maria Santos', 'Cebu', '09123456781');
INSERT INTO `patients` (`patient_id`, `patient_name`, `city`, `contact_number`) VALUES(102, 'Juan Dela Cruz', 'Bohol', '09123456782');
INSERT INTO `patients` (`patient_id`, `patient_name`, `city`, `contact_number`) VALUES(103, 'Ana Reyes', 'Cebu', '09123456783');
INSERT INTO `patients` (`patient_id`, `patient_name`, `city`, `contact_number`) VALUES(104, 'Mark Lopez', 'Dumaguete', '09123456784');
INSERT INTO `patients` (`patient_id`, `patient_name`, `city`, `contact_number`) VALUES(105, 'Carla Gomez', 'Bohol', '09123456785');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- All SQL queries you executed for the exercises

--Where 
-- List all customers from Cebu

SELECT * 
FROM Customers
WHERE city = 'Cebu';

--Add 
-- Customers from Cebu who are Gold members
SELECT * 
FROM Customers
WHERE city = 'Cebu' 
  AND membership_level = 'Gold';

--Or
--Customers whose names start with A or D
SELECT * 
FROM Customers
WHERE customer_name LIKE 'A%' 
OR customer_name LIKE 'D%';

--In
-- Customers with Silver or Gold membership
SELECT * 
FROM Customers
WHERE membership_level IN ('Silver', 'Gold');

--Like
-- Customers whose names contain the letter 'a'
SELECT * 
FROM Customers
WHERE customer_name LIKE '%a%';

--Join

--INNER JOIN
-- List all patients with their appointments
SELECT p.patient_name, a.doctor_name, a.appointment_date, a.status
FROM Patients p
INNER JOIN Appointments a ON p.patient_id = a.patient_id;

--LEFT JOIN
-- List all patients, including those without appointments
SELECT p.patient_name, a.doctor_name, a.appointment_date, a.status
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id;


