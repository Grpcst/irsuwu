-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2016 at 06:59 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `abstract`
--

INSERT INTO `abstract` (`AuthorID`, `AbstractID`, `title`, `abstract`, `author`, `keywords`, `track`, `ppttype`, `pdf`, `submittedDate`, `modifiedDate`, `status`) VALUES
(0, 2, 'xxxxxxxxxxxxx', 'we rfr vbtb crfrfr rgt cdr ', '', 'science ', 'computer Science', 'oral', '', '2016-10-10', '2016-11-01', 'p'),
(0, 13, 't', 't', 't', 't', 'Mangement', 'oral', 'uploads/CST362-3 Pixel Relationship.pdf', '0000-00-00', '0000-00-00', 'p'),
(0, 14, 'c', 'c', 'c', 'c', 'Science and Technolo', 'pposter', 'uploads/Histogram equilization.pdf', '2016-11-03', '0000-00-00', 'p'),
(0, 15, 'tutrw', 'eggekgriuwegriuwgriow', 'diuwgfriuhfroiqh', 'iqug', 'Computer Science', 'oral', 'uploads/CST362-3 Introduction.pdf', '2016-11-03', '0000-00-00', 'p'),
(0, 16, 'Digital image processing', 'tfidsgbfkjdsbfgousgf kdgo;ruwgsj fkjguesbfkjwebfkjgs', 'sajith nirmana', 'jcgiue', 'Animal Science', 'oral', 'uploads/CST362-3 Introduction.pdf', '2016-11-03', '0000-00-00', 'p');

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
  `userType` varchar(20) NOT NULL,
  `fname` varchar(8) NOT NULL,
  `lname` varchar(8) NOT NULL,
  `org` varchar(10) NOT NULL,
  `city` varchar(8) NOT NULL,
  `contactNo` int(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `pw` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`userType`, `fname`, `lname`, `org`, `city`, `contactNo`, `email`, `pw`) VALUES
('', '', '', '', 'as', 1233, '', 'as'),
('', '', '', '', 'asd', 124, '', 'asds'),
('', 'a', 's', '', 'df', 23242, '', 'qwe'),
('', 'x', 'x', '', 'x', 0, '', 'o'),
('', '', '', '', 'q', 23654, '', 'q'),
('', 'tt', 'tt', '', 'tt', 98, '', '123t'),
('', 'uwu', 'uwu', '', 'uwu', 98, '', '123u'),
('', '', '', '', 'w', 1, '', 'w'),
('', '', '', '', 'qwe', 12324, '', 'qw'),
('', 'x', 'x', '', 'x', 0, '', 'x'),
('', 'uwu', 'uwu', '', 'uwu', 98, 'uwu@gmail.com', '123u'),
('', 'uwu', 'uwu', '', 'uwu', 98, 'uwu@gmail.com', '123u'),
('', 'uwu', 'uwu', '', 'uwu', 98, 'uwu@gmail.com', '123u'),
('', 'uwu', 'uwu', '', 'uwu', 98, 'uwu@gmail.com', '123u'),
('', 'tharushi', 'ediriwee', '', 'badulla', 987654, 'te@gmail.com', '123T'),
('', 'tharushi', 'ediriwee', '', 'badulla', 987654, 'te@gmail.com', '123T'),
('', 'yy', 'yy', '', 'yy', 0, 'yy', '1yy'),
('', 'kk', 'kk', '', 'kk', 987, 'kk', '1k'),
('', 'kk', 'kk', '', 'kk', 987, 'kk', '1k'),
('', 'kk', 'kk', '', 'kk', 987, 'kk', '1k');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
