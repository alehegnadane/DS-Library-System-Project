-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2015 at 12:18 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `librarydb`
--
CREATE DATABASE IF NOT EXISTS `librarydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `librarydb`;

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE IF NOT EXISTS `booktable` (
  `isbn` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `pubyear` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`isbn`, `title`, `author`, `category`, `pubyear`, `price`, `status`) VALUES
('100', 'distrubted system', 'tanm', 'computing', '2010', 3000, 'Available'),
('1010', 'AI', 'PN', 'CS', '2003', 250, 'Available'),
('111', 'Programming', 'CCC', 'MM', '2010', 200, 'Available'),
('12', 'java', 'mama', 'programming', '2010', 20, 'Available'),
('44', 'mm', 'lema', 'cs', '2010', 300, 'Available'),
('6', 'PHP', 'lAKEW', 'PRGRAMMING', '2010', 300, 'Available'),
('65344', 'programing', 'asefa', 'cs', '2020', 40, 'Available'),
('666', 'networking', 'alex', 'network', '2010', 500, 'Available'),
('888', 'database', 'alex', 'computing', '2020', 3000, 'Available'),
('8888', 'Advanced DB Systems', 'S.Elmasri', 'DB', '2001', 200, 'Available'),
('9999', 'Distributed Systems', 'AS', 'NW', '2010', 200, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `librariantable`
--

CREATE TABLE IF NOT EXISTS `librariantable` (
  `libId` varchar(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`libId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librariantable`
--

INSERT INTO `librariantable` (`libId`, `fName`, `lName`, `password`, `address`, `phone`) VALUES
('111', 'GG', 'JJJ', '123', 'Gondar', '09187766'),
('120', 'Adino', 'worko', '12', 'gondaer', '091826653'),
('333', 'Lema', 'Misgan', '123', 'woldiya', '0910'),
('555', 'Lakew', 'Tarekegn', '123', 'Gon', '0998324'),
('99', 'Gadisa', 'Gutema', '12', 'Ji', '091'),
('999', 'Alehegn', 'Adane', 'pwd', 'BDR', '09181598545');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Previlage` varchar(20) NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserName`, `Password`, `Previlage`) VALUES
('', '*A4B6157319038724E35', ''),
('AAA', '111', 'Admin'),
('alex', 'alex', 'Admin'),
('BBB', '222', 'Librarian'),
('BBC', '123', 'Librarian'),
('lema', '12', 'Librarian');

-- --------------------------------------------------------

--
-- Table structure for table `membertable`
--

CREATE TABLE IF NOT EXISTS `membertable` (
  `memberId` varchar(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membertable`
--

INSERT INTO `membertable` (`memberId`, `fName`, `lName`, `sex`, `address`, `phone`) VALUES
('111111', 'LLL', 'JJJ', 'M', 'MM', '333'),
('122', 'Gebre', 'Ab', 'Male', 'Gondar', '0913445566'),
('123', 'Abebe', 'Kebede', 'Male', 'Gondar', '0918776655'),
('2020', 'GGG', 'MMM', 'Male', 'Gondar', '0918665577'),
('202020', 'AAA', 'BBB', 'Male', 'GG', '0921333333'),
('202022', 'AAA', 'BBB', 'Male', 'GG', '0921333333'),
('303030', 'HH', 'KK', 'Femael', 'Gondar', '0918228877'),
('303039', 'HH', 'KK', 'Femael', 'Gondar', '0918228877');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `Rid` varchar(20) NOT NULL,
  `RoomName` varchar(20) NOT NULL,
  `RoomType` varchar(20) NOT NULL,
  `RoomPrice` double NOT NULL,
  PRIMARY KEY (`Rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Rid`, `RoomName`, `RoomType`, `RoomPrice`) VALUES
('" + Rid + "', '" + RoomName + "', '" + RoomType + "', 111);

-- --------------------------------------------------------

--
-- Table structure for table `transactiontable`
--

CREATE TABLE IF NOT EXISTS `transactiontable` (
  `isbn` varchar(20) NOT NULL,
  `memberId` varchar(20) NOT NULL,
  `issueDate` date NOT NULL,
  `dueDate` date DEFAULT NULL,
  `overDueDate` date DEFAULT NULL,
  `fines` double DEFAULT NULL,
  PRIMARY KEY (`isbn`,`memberId`,`issueDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiontable`
--

INSERT INTO `transactiontable` (`isbn`, `memberId`, `issueDate`, `dueDate`, `overDueDate`, `fines`) VALUES
('100', '122', '2015-05-25', '2015-05-25', '0000-00-00', 0),
('111', '123', '2015-05-19', '2015-05-19', '2015-05-19', 0),
('12', '122', '2015-05-24', '2015-05-24', '0000-00-00', 0),
('12345', '123', '2015-05-19', '2015-05-19', '2015-05-19', 0),
('6', '123', '2015-05-24', '2015-05-24', '0000-00-00', 0),
('888', '122', '2015-05-25', '2015-05-25', '0000-00-00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
