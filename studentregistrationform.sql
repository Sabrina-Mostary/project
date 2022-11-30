-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 11:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentregistrationportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(20) NOT NULL,
  `studentid` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `middleName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) NOT NULL,
  `collegeName` varchar(100) NOT NULL,
  `enrollmentNumber` varchar(20) NOT NULL,
  `rollNumber` varchar(20) NOT NULL,
  `aadhaarNumber` varchar(12) NOT NULL,
  `course` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `semester` varchar(1) NOT NULL,
  `fatherName` varchar(30) NOT NULL,
  `motherName` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `temporaryAddress` varchar(100) DEFAULT NULL,
  `permanentAddress` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `fatherPhoneNo` varchar(10) DEFAULT NULL,
  `motherPhoneNo` varchar(10) DEFAULT NULL,
  `recipt` varchar(20) NOT NULL,
  `firstSemester` varchar(15) NOT NULL,
  `secondSemester` varchar(15) NOT NULL,
  `thirdSemester` varchar(15) NOT NULL,
  `fourthSemester` varchar(15) NOT NULL,
  `fifthSemester` varchar(15) NOT NULL,
  `sixthSemester` varchar(15) NOT NULL,
  `seventhSemester` varchar(15) NOT NULL,
  `eighthSemester` varchar(15) NOT NULL,
  `studentImage` varchar(30) NOT NULL,
  `feeRecipt` varchar(30) NOT NULL,
  `studentSignature` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentdetails`
--



-- --------------------------------------------------------

--
-- Table structure for table `studentregistration`
--

CREATE TABLE `studentregistration` (
  `srid` int(11) NOT NULL,
  `srfirstname` varchar(20) NOT NULL,
  `srlastname` varchar(20) NOT NULL,
  `sremail` varchar(50) NOT NULL,
  `sruserid` varchar(10) NOT NULL,
  `srpassword` varchar(40) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentregistration`
--



-- --------------------------------------------------------

--
-- Table structure for table `teacherregistration`
--

CREATE TABLE `teacherregistration` (
  `trid` int(11) NOT NULL,
  `trfirstname` varchar(20) NOT NULL,
  `trlastname` varchar(20) NOT NULL,
  `tremail` varchar(50) NOT NULL,
  `truserid` varchar(10) NOT NULL,
  `trpassword` varchar(40) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherregistration`
--



--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentregistration`
--
ALTER TABLE `studentregistration`
  ADD PRIMARY KEY (`srid`),
  ADD UNIQUE KEY `sremail` (`sremail`),
  ADD UNIQUE KEY `sruserid` (`sruserid`);

--
-- Indexes for table `teacherregistration`
--
ALTER TABLE `teacherregistration`
  ADD PRIMARY KEY (`trid`),
  ADD UNIQUE KEY `tremail` (`tremail`),
  ADD UNIQUE KEY `truserid` (`truserid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `studentregistration`
--
ALTER TABLE `studentregistration`
  MODIFY `srid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacherregistration`
--
ALTER TABLE `teacherregistration`
  MODIFY `trid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
