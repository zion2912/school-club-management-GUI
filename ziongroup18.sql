-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2023 at 01:55 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ziongroup18`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `AttendanceID` int NOT NULL,
  `StudentID` int NOT NULL,
  `ClubID` int DEFAULT NULL,
  `attendancedate` date NOT NULL,
  `AttendanceStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AttendanceID`),
  KEY `ClubID` (`ClubID`,`StudentID`),
  KEY `StudentID` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AttendanceID`, `StudentID`, `ClubID`, `attendancedate`, `AttendanceStatus`) VALUES
(123, 417000873, 101, '2023-10-04', 'Present'),
(124, 417000873, 101, '2023-10-02', 'Present'),
(125, 400032983, 101, '2023-10-03', 'present'),
(126, 400032983, 101, '2023-10-05', 'present'),
(127, 417000921, 102, '2023-10-06', 'present'),
(128, 417000921, 102, '2023-10-02', 'present'),
(129, 417000934, 102, '2023-10-02', 'present'),
(130, 417000934, 102, '2023-10-04', 'present'),
(131, 418000987, 103, '2023-10-03', 'present'),
(132, 418000987, 103, '2023-10-05', 'present'),
(133, 418000997, 103, '2023-10-06', 'present'),
(134, 418000997, 103, '2023-10-02', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `ClubID` int NOT NULL,
  `ClubName` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `AdvisorID` int DEFAULT NULL,
  `Material` varchar(20) NOT NULL,
  PRIMARY KEY (`ClubID`),
  KEY `AdvisorID` (`AdvisorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`ClubID`, `ClubName`, `description`, `AdvisorID`, `Material`) VALUES
(101, 'Boxing', 'Join our boxing club, where strength, discipline, and skill come together in the', 2, 'Please walk with you'),
(102, 'Chess', 'Welcome to our chess club, where strategic minds unite to explore the world of k', 3, 'Please walk with you'),
(103, 'Swimming', 'Welcome to our Swimming club, where aquatic enthusiasts of all ages and skill le', 1, 'Please walk with you');

-- --------------------------------------------------------

--
-- Table structure for table `clubpayment`
--

DROP TABLE IF EXISTS `clubpayment`;
CREATE TABLE IF NOT EXISTS `clubpayment` (
  `PaymentID` int NOT NULL,
  `StudentID` int DEFAULT NULL,
  `ClubID` int NOT NULL,
  `paymentdate` date DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `StudentID` (`StudentID`),
  KEY `ClubID` (`ClubID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `clubpayment`
--

INSERT INTO `clubpayment` (`PaymentID`, `StudentID`, `ClubID`, `paymentdate`, `Amount`) VALUES
(901, 417000873, 101, '2023-10-18', 45),
(902, 400032983, 101, '2023-10-17', 20),
(903, 417000921, 102, '2023-10-12', 35),
(904, 417000934, 102, '2023-10-09', 35),
(905, 418000987, 103, '2023-10-06', 50),
(906, 418000997, 103, '2023-10-15', 50),
(907, 417000873, 102, '2023-10-13', 60),
(908, 417000873, 102, '2023-10-18', 25);

-- --------------------------------------------------------

--
-- Table structure for table `meetinginformation`
--

DROP TABLE IF EXISTS `meetinginformation`;
CREATE TABLE IF NOT EXISTS `meetinginformation` (
  `MeetingID` int NOT NULL,
  `ClubID` int NOT NULL,
  `MeetingLocation` varchar(20) NOT NULL,
  `MeetingDay` varchar(20) NOT NULL,
  `Meeting Time` time(4) NOT NULL,
  PRIMARY KEY (`MeetingID`),
  KEY `ClubID` (`ClubID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `meetinginformation`
--

INSERT INTO `meetinginformation` (`MeetingID`, `ClubID`, `MeetingLocation`, `MeetingDay`, `Meeting Time`) VALUES
(211, 101, 'lr1', 'Monday', '02:00:00.0000'),
(212, 101, 'lr1', 'wednesday', '02:00:00.0000'),
(213, 102, 'lt1', 'tuesday', '04:00:00.0000'),
(214, 102, 'lt1', 'thursday', '04:00:00.0000'),
(215, 103, 'lt3', 'friday', '12:00:00.0000'),
(216, 103, 'lt3', 'monday', '12:00:00.0000');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
CREATE TABLE IF NOT EXISTS `membership` (
  `StudentID` int NOT NULL,
  `ClubID` int NOT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `MembershipStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StudentID`,`ClubID`),
  KEY `ClubID` (`ClubID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`StudentID`, `ClubID`, `ApplicationDate`, `MembershipStatus`) VALUES
(400032983, 101, '2023-10-02', 'Active'),
(417000873, 101, '2023-10-11', 'Active'),
(417000921, 102, '2023-10-11', 'Active'),
(417000934, 102, '2023-10-08', 'Active'),
(418000987, 103, '0000-00-00', 'Active'),
(418000997, 103, '2023-10-14', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staffadvisor`
--

DROP TABLE IF EXISTS `staffadvisor`;
CREATE TABLE IF NOT EXISTS `staffadvisor` (
  `AdvisorID` int NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Surname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AdvisorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staffadvisor`
--

INSERT INTO `staffadvisor` (`AdvisorID`, `FirstName`, `Email`, `Surname`) VALUES
(1, 'Jeffrey', 'ElcottJeff@hotmail.c', 'Elcott'),
(2, 'Patricia', 'p.Matthews@gmail.com', 'Matthews'),
(3, 'Leroy', 'L.King@outlook.com', 'King');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `StudentID` int NOT NULL,
  `FirstName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Surname` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Email` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ClassLevel` int DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `FirstName`, `Surname`, `Birthdate`, `Email`, `ClassLevel`) VALUES
(400032983, 'Rico', 'Nurse', '2000-08-24', 'nurseR@hotmail.com', 2),
(417000873, 'Daron', 'Drayton', '1999-01-19', 'daron2010@live.com', 3),
(417000921, 'John', 'Smith', '2003-02-23', 'smith10@live.com', 3),
(417000934, 'Johnathan', 'Weekes', '1987-11-30', 'Weekends@live.com', 1),
(418000987, 'Dave', 'Franklyn', '1998-03-12', 'franklyn03@hotmail.com', 2),
(418000997, 'Jamie', 'Hyman', '1996-09-21', 'hymans3@hotmail.com', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`);

--
-- Constraints for table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`AdvisorID`) REFERENCES `staffadvisor` (`AdvisorID`);

--
-- Constraints for table `clubpayment`
--
ALTER TABLE `clubpayment`
  ADD CONSTRAINT `clubpayment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `clubpayment_ibfk_2` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`);

--
-- Constraints for table `meetinginformation`
--
ALTER TABLE `meetinginformation`
  ADD CONSTRAINT `meetinginformation_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`);

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `membership_ibfk_2` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
