-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2016 at 03:50 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `irsuwu`
--

-- --------------------------------------------------------

--
-- Table structure for table `abs_comment`
--

CREATE TABLE IF NOT EXISTS `abs_comment` (
  `ABS_ID` int(10) NOT NULL,
  `status` int(255) NOT NULL,
  `comment` int(255) NOT NULL,
  PRIMARY KEY (`ABS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `abs_info`
--

CREATE TABLE IF NOT EXISTS `abs_info` (
  `ABS_ID` int(10) NOT NULL,
  `title` int(255) NOT NULL,
  `abstract` int(255) NOT NULL,
  `keywords` int(255) NOT NULL,
  `present_type` int(20) NOT NULL,
  `pdf_path` int(255) NOT NULL,
  PRIMARY KEY (`ABS_ID`),
  KEY `ABS_ID` (`ABS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `abs_main`
--

CREATE TABLE IF NOT EXISTS `abs_main` (
  `ABS_ID` int(10) NOT NULL,
  `A_ID` int(10) NOT NULL,
  `track_no` int(10) NOT NULL,
  `rev_no` int(10) NOT NULL,
  PRIMARY KEY (`ABS_ID`),
  KEY `ABS_ID` (`ABS_ID`),
  KEY `A_ID` (`A_ID`),
  KEY `track_no` (`track_no`),
  KEY `rev_no` (`rev_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `admin_no` int(10) NOT NULL,
  `title` int(10) NOT NULL,
  `f_name` int(50) NOT NULL,
  `l_name` int(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  PRIMARY KEY (`admin_no`),
  KEY `admin_no` (`admin_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_no` int(10) NOT NULL,
  `email` int(50) NOT NULL,
  `password` int(50) NOT NULL,
  PRIMARY KEY (`admin_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_details`
--

CREATE TABLE IF NOT EXISTS `author_details` (
  `A_ID` int(10) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  PRIMARY KEY (`A_ID`),
  KEY `A_ID` (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_info`
--

CREATE TABLE IF NOT EXISTS `author_info` (
  `A_ID` int(10) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`A_ID`),
  KEY `A_ID` (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_login`
--

CREATE TABLE IF NOT EXISTS `author_login` (
  `A_ID` int(10) NOT NULL,
  `email` int(50) NOT NULL,
  `password` int(255) NOT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chair_details`
--

CREATE TABLE IF NOT EXISTS `chair_details` (
  `chair_no` int(10) NOT NULL,
  `title` int(10) NOT NULL,
  `f_name` int(50) NOT NULL,
  `l_name` int(50) NOT NULL,
  `position` int(255) NOT NULL,
  `contact_no` int(15) NOT NULL,
  PRIMARY KEY (`chair_no`),
  KEY `chair_no` (`chair_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chair_login`
--

CREATE TABLE IF NOT EXISTS `chair_login` (
  `chair_no` int(10) NOT NULL,
  `email` int(50) NOT NULL,
  `password` int(255) NOT NULL,
  PRIMARY KEY (`chair_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rev_details`
--

CREATE TABLE IF NOT EXISTS `rev_details` (
  `rev_no` int(10) NOT NULL,
  `title` int(10) NOT NULL,
  `f_name` int(50) NOT NULL,
  `l_name` int(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `qulification` int(255) NOT NULL,
  `university` int(250) NOT NULL,
  PRIMARY KEY (`rev_no`),
  KEY `rev_no` (`rev_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rev_login`
--

CREATE TABLE IF NOT EXISTS `rev_login` (
  `rev_no` int(10) NOT NULL,
  `email` int(50) NOT NULL,
  `password` int(225) NOT NULL,
  PRIMARY KEY (`rev_no`),
  KEY `rev_no` (`rev_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rev_main`
--

CREATE TABLE IF NOT EXISTS `rev_main` (
  `rev_no` int(10) NOT NULL,
  `track_no` int(10) NOT NULL,
  PRIMARY KEY (`rev_no`),
  KEY `track_no` (`track_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `track_no` int(10) NOT NULL,
  `track_name` int(255) NOT NULL,
  PRIMARY KEY (`track_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_co_info`
--

CREATE TABLE IF NOT EXISTS `track_co_info` (
  `track_co_no` int(10) NOT NULL,
  `title` int(10) NOT NULL,
  `f_name` int(50) NOT NULL,
  `l_name` int(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `qulification` int(255) NOT NULL,
  PRIMARY KEY (`track_co_no`),
  KEY `track_co_no` (`track_co_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_co_login`
--

CREATE TABLE IF NOT EXISTS `track_co_login` (
  `track_co_no` int(10) NOT NULL,
  `email` int(50) NOT NULL,
  `password` int(255) NOT NULL,
  PRIMARY KEY (`track_co_no`),
  KEY `track_co_no` (`track_co_no`),
  KEY `track_co_no_2` (`track_co_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_co_main`
--

CREATE TABLE IF NOT EXISTS `track_co_main` (
  `track_co_no` int(10) NOT NULL,
  `track_no` int(10) NOT NULL,
  PRIMARY KEY (`track_co_no`),
  KEY `track_co_no` (`track_co_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abs_info`
--
ALTER TABLE `abs_info`
  ADD CONSTRAINT `abs_info_ibfk_1` FOREIGN KEY (`ABS_ID`) REFERENCES `abs_main` (`ABS_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `abs_main`
--
ALTER TABLE `abs_main`
  ADD CONSTRAINT `abs_main_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `author_login` (`A_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abs_main_ibfk_2` FOREIGN KEY (`track_no`) REFERENCES `track` (`track_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abs_main_ibfk_3` FOREIGN KEY (`rev_no`) REFERENCES `rev_main` (`rev_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD CONSTRAINT `admin_details_ibfk_1` FOREIGN KEY (`admin_no`) REFERENCES `admin_login` (`admin_no`);

--
-- Constraints for table `author_details`
--
ALTER TABLE `author_details`
  ADD CONSTRAINT `author_details_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `author_login` (`A_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `author_info`
--
ALTER TABLE `author_info`
  ADD CONSTRAINT `author_info_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `author_login` (`A_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chair_details`
--
ALTER TABLE `chair_details`
  ADD CONSTRAINT `chair_details_ibfk_1` FOREIGN KEY (`chair_no`) REFERENCES `chair_login` (`chair_no`);

--
-- Constraints for table `rev_details`
--
ALTER TABLE `rev_details`
  ADD CONSTRAINT `rev_details_ibfk_1` FOREIGN KEY (`rev_no`) REFERENCES `rev_main` (`rev_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rev_login`
--
ALTER TABLE `rev_login`
  ADD CONSTRAINT `rev_login_ibfk_1` FOREIGN KEY (`rev_no`) REFERENCES `rev_main` (`rev_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rev_main`
--
ALTER TABLE `rev_main`
  ADD CONSTRAINT `rev_main_ibfk_1` FOREIGN KEY (`track_no`) REFERENCES `track` (`track_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `track_co_info`
--
ALTER TABLE `track_co_info`
  ADD CONSTRAINT `track_co_info_ibfk_1` FOREIGN KEY (`track_co_no`) REFERENCES `track_co_main` (`track_co_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `track_co_login`
--
ALTER TABLE `track_co_login`
  ADD CONSTRAINT `track_co_login_ibfk_1` FOREIGN KEY (`track_co_no`) REFERENCES `track_co_main` (`track_co_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `track_co_main`
--
ALTER TABLE `track_co_main`
  ADD CONSTRAINT `track_co_main_ibfk_1` FOREIGN KEY (`track_co_no`) REFERENCES `track` (`track_no`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
