-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2016 at 06:44 PM
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
-- Table structure for table `abstract`
--

CREATE TABLE IF NOT EXISTS `abstract` (
  `AuthorID` int(6) NOT NULL,
  `AbstractID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `abstract` varchar(1000) NOT NULL,
  `author` varchar(25) NOT NULL,
  `keywords` varchar(25) NOT NULL,
  `track` varchar(20) NOT NULL,
  `ppttype` varchar(10) NOT NULL,
  `pdf` varchar(500) NOT NULL,
  `submittedDate` date NOT NULL,
  `modifiedDate` date NOT NULL,
  `status` varchar(6) NOT NULL DEFAULT 'p',
  PRIMARY KEY (`AbstractID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `abstract`
--

INSERT INTO `abstract` (`AuthorID`, `AbstractID`, `title`, `abstract`, `author`, `keywords`, `track`, `ppttype`, `pdf`, `submittedDate`, `modifiedDate`, `status`) VALUES
(0, 2, 'xxxxxxxxxxxxx', 'we rfr vbtb crfrfr rgt cdr ', '', 'science ', 'computer Science', 'oral', '', '2016-10-10', '2016-11-01', 'p'),
(0, 13, 't', 't', 't', 't', 'Mangement', 'oral', 'uploads/CST362-3 Pixel Relationship.pdf', '0000-00-00', '0000-00-00', 'p'),
(0, 14, 'c', 'c', 'c', 'c', 'Science and Technolo', 'pposter', 'uploads/Histogram equilization.pdf', '2016-11-03', '0000-00-00', 'p'),
(0, 15, 'tutrw', 'eggekgriuwegriuwgriow', 'diuwgfriuhfroiqh', 'iqug', 'Computer Science', 'oral', 'uploads/CST362-3 Introduction.pdf', '2016-11-03', '0000-00-00', 'p'),
(0, 16, 'Digital image processing', 'tfidsgbfkjdsbfgousgf kdgo;ruwgsj fkjguesbfkjwebfkjgs', 'sajith nirmana', 'jcgiue', 'Animal Science', 'oral', 'uploads/CST362-3 Introduction.pdf', '2016-11-03', '0000-00-00', 'p'),
(0, 17, 'dip', 'dsgfilugsfiugskfjbvskjvc jls', 'gcjacjafcdf', 'dgkgfdkugf', 'Computer Science', 'oral', 'uploads/CST362-3 Introduction.pdf', '2016-11-08', '0000-00-00', 'p'),
(0, 18, 'gfkjg', 'yftydytdtg\r\n', 'hdhgdjfk\r\n\r\n\r\n', 'dytdytdty', 'Science and Technolo', 'pposter', 'uploads/CST362-3 Pixel Relationship.pdf', '2016-11-08', '0000-00-00', 'p'),
(0, 19, 'q', 'q', 'q', 'q', 'Science and Technolo', 'pposter', 'uploads/CST362-3 Digital Image Processing-2.pdf', '2016-11-08', '0000-00-00', 'p'),
(0, 20, 'a', 'a', 'a', 'a', 'Science and Technolo', 'oral', 'uploads/CST362-3 Introduction.pdf', '2016-11-08', '0000-00-00', 'p'),
(0, 21, 'd', '\r\ndfsfs\r\n\r\n\r\n', 'dgs', 'wrg', 'Science and Technolo', 'oral', 'uploads/CST362-3 Arithmetic Operations in Images.pdf', '2016-11-08', '0000-00-00', 'p'),
(0, 22, 'yyyyy', 'yyyyy\r\n', 'yyyyyy', 'yyyyy', 'Animal Science', 'oral', 'uploads/Histogram equilization.pdf', '2016-11-08', '0000-00-00', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(10) NOT NULL,
  `email` varchar(16) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userType` varchar(15) NOT NULL,
  `uname` varchar(10) NOT NULL,
  `pword` varchar(6) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userType`, `uname`, `pword`) VALUES
('', 'a', 'a'),
('', 'z', 'z');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `role` varchar(255) NOT NULL DEFAULT 'author',
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `org` varchar(255) NOT NULL,
  `city` text NOT NULL,
  `contactNo` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`role`, `fname`, `lname`, `org`, `city`, `contactNo`, `email`, `pw`) VALUES
('admin', 'sajith', 'wijerath', 'irsuwu', 'kurunega', 71539620, 'sajithkasn@gmai', 'abc123'),
('admin', 'sajith', 'wijerathne', 'irsuwu', 'kurunegala', 715396120, 'sajithkasn@gmail.com', 'abc123'),
('admin', 'saj', 'wij', 'irsuwu', 'badulla', 772023948, 'saj', 'wij'),
('author', 'inod', 'wagachchi', 'irsuwu', 'matara', 710491213, 'inod', 'waga'),
('trackcoordinator', 'lahiru', 'liyanage', 'irsuwu', 'Minuwangoda', 711234111, 'lahiru@gmail.com', 'paba');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
