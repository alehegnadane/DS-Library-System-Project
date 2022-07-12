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
-- Database: `lib`
--
CREATE DATABASE IF NOT EXISTS `lib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lib`;

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
('12', 'java', 'mama', 'programming', '2010', 20, 'Available'),
('44', 'mm', 'lema', 'cs', '2010', 300, 'Available'),
('6', 'PHP', 'lAKEW', 'PRGRAMMING', '2010', 300, 'Available'),
('65344', 'programing', 'asefa', 'cs', '2020', 40, 'Available'),
('666', 'networking', 'alex', 'network', '2010', 500, 'Available'),
('888', 'database', 'alex', 'computing', '2020', 3000, 'Available');

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
('120', 'Adino', 'worko', '12', 'gondaer', '091826653'),
('555', 'Lakew', 'Tarekegn', '123', 'Gon', '0998324'),
('99', 'Gadisa', 'Gutema', '12', 'Ji', '091'),
('999', 'Alehegn', 'Adane', 'pwd', 'BDR', '09181598545');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
