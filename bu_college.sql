-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 12:59 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bu_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attdid` int(11) NOT NULL,
  `attendance_date` varchar(100) NOT NULL,
  `student_rollno` text NOT NULL,
  `semester` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gatepass`
--

CREATE TABLE `gatepass` (
  `gatepassid` int(11) NOT NULL,
  `generate_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` varchar(100) NOT NULL,
  `reasone` varchar(100) NOT NULL,
  `accepted_by` varchar(100) NOT NULL DEFAULT 'NULL',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `user_type` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `checkoutdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gatepass`
--

INSERT INTO `gatepass` (`gatepassid`, `generate_date`, `time`, `reasone`, `accepted_by`, `status`, `user_type`, `userid`, `checkoutdate`) VALUES
(1, '2019-04-17 13:19:53', '12:00', 'Urgent for train', 'Admin', 'approved', 'student', '0128cs071060', '2019-04-17'),
(12, '2019-04-17 13:19:55', '11:00', 'remove', 'Admin', 'approved', 'teacher', 'amit@gmail.com', '1989-02-12'),
(13, '2019-04-17 13:19:57', '23:59', 'Urgent for train', 'Admin', 'approved', 'student', '0128cs071060', '2019-04-23'),
(14, '2019-06-14 10:57:19', '04:00', 'Train', 'Admin', 'approved', 'student', '0128CS071060', '2019-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `leaveid` int(11) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `to_date` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `userid` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `leave_generate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`leaveid`, `from_date`, `to_date`, `subject`, `message`, `userid`, `user_type`, `status`, `leave_generate`) VALUES
(2, '2019-04-17', '2019-04-20', 'For Doctor', 'Hello \r\n              ', '0128cs071060', 'student', 'approved', '2019-04-17 13:26:31'),
(3, '2019-04-17', '2019-04-26', 'For Doctor', ' \r\nwefewerw', 'amit@gmail.com', 'teacher', 'approved', '2019-04-17 13:26:28'),
(4, '2019-06-15', '2019-06-19', 'Leave for Personal Work', 'Na \r\n              ', '0128CS071060', 'student', 'approved', '2019-06-14 10:57:27'),
(5, '2019-06-14', '2019-06-15', 'Leave for Personal Work', 'asd', '0128CS071060', 'student', 'approved', '2019-06-14 10:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `dpt` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `enrollment` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `local_address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `dpt`, `branch`, `semester`, `fullname`, `enrollment`, `mobile`, `email`, `local_address`, `gender`, `password`) VALUES
(6, 'MBA', 'MARKETING ', '2', 'Nitin Jain', '0128CS071060', '9907427783', 'nitinjn07@gmail.com', 'Mp nagar', 'Male', 'student1000');

-- --------------------------------------------------------

--
-- Table structure for table `study_material`
--

CREATE TABLE `study_material` (
  `materialid` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `links` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study_material`
--

INSERT INTO `study_material` (`materialid`, `department`, `branch`, `links`, `subject`, `description`) VALUES
(2, 'ENGINEERING', 'Computer Science Engineering ', 'card-fcra-2015-16.pdf', 'ADA, M3, Basic Computer', 'asdadada');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL,
  `dpt` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `sub_teach` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `local_address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherid`, `dpt`, `branch`, `full_name`, `sub_teach`, `mobile_no`, `email`, `local_address`, `gender`, `password`) VALUES
(1, 'MBA', 'FINANCE', 'Prof. Amit Singh', 'Marketing', '9223322119', 'amit@gmail.com', '123 MP nagar', 'Male', 'teacher1000'),
(2, 'ENGINEERING', 'Computer Science Engineering ', 'Nitin Jain', 'Maths', '9907427783', 'nitinjn07@gmail.com', 'Mp nagar', 'Male', 'teacher1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attdid`);

--
-- Indexes for table `gatepass`
--
ALTER TABLE `gatepass`
  ADD PRIMARY KEY (`gatepassid`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`leaveid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `enrollment` (`enrollment`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `study_material`
--
ALTER TABLE `study_material`
  ADD PRIMARY KEY (`materialid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherid`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attdid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatepass`
--
ALTER TABLE `gatepass`
  MODIFY `gatepassid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `leaveid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `study_material`
--
ALTER TABLE `study_material`
  MODIFY `materialid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
