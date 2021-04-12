-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2020 at 10:50 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audit`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ename` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `stime` varchar(100) NOT NULL,
  `ftime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `ename`, `cname`, `date`, `stime`, `ftime`) VALUES
(1, 'sanka', 'tharshi', 'Dec 8, 2020', '9am', '11am'),
(3, 'Admin', 'sanam', '2020-12-03', '5pm', '6pm'),
(4, 'sanka', 'harish', '2020-12-04', '2pm', '3pm'),
(5, 'sanka', 'shohan', '2020-12-02', '2pm', '4pm'),
(8, 'shashini', 'Tharukshi', '2020-12-03', '8.30am', '9am');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `fname`, `lname`, `age`, `company`) VALUES
(1, 'tharshi', 'siva', 30, 'IFS'),
(2, 'keerthi', 'suresh', 32, 'VIRTUSA'),
(3, 'sanam', 'shetty', 33, 'COMMERCIAL BANK'),
(4, 'shona', 'udaaran', 34, 'DIALOG'),
(19, 'shanam', 'theri', 28, 'SLIIT'),
(20, 'shohan', 'jagath', 35, 'IBM'),
(21, 'harish', 'gajarthan', 23, 'IFS'),
(22, 'Shanaaaaa', 'dharani', 25, 'IDM'),
(23, 'Tharukshi', 'udaara', 35, 'SLIIT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empid` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `name`, `age`, `position`, `nic`, `dob`) VALUES
(1001, 'sanka', 45, 'Manager', '758525514V', '19/02/1975'),
(1003, 'sahana', 25, 'employee', '958575481V', '15/05/1995'),
(1004, 'ashwini', 26, 'employee', '852546718V', '15/04/1994'),
(1005, 'shehan', 28, 'employee', '928574849V', '18/12/1992'),
(1008, 'anu', 20, 'Manager', '205148752V', '15/04/2000'),
(1009, 'shashini', 26, 'employee', '948575418V', '20/11/1994'),
(1010, 'TharunKumar', 25, 'Manager', '958531259V', '21/11/1995');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `iname` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sdate` varchar(100) NOT NULL,
  `tdate` varchar(100) NOT NULL,
  `duedate` varchar(100) NOT NULL,
  `taskname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `iname`, `cname`, `sdate`, `tdate`, `duedate`, `taskname`) VALUES
(1, 'sanka', 'tharshi', '2020-12-01', '2020-12-24', '2020-12-26', 'divide tasks'),
(2, 'sanka', 'tharshi', '2020-12-03', '2020-12-24', '2020-12-26', 'complete desktop app '),
(3, 'sanka', 'harish', '2020-12-07', '2020-12-24', '2020-12-31', 'create webpage '),
(5, 'sanka', 'tharshi', '2020-12-11', '2020-12-24', '2020-12-31', 'create word document report'),
(6, 'sanka', 'Shanaaaaa', '2020-12-02', '2020-12-23', '2020-12-30', 'create yearly report'),
(7, 'sanka', 'shona', '2020-12-10', '2020-12-23', '2020-12-31', 'complete report');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
