-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 12:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `program` varchar(50) NOT NULL,
  `yos` int(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `mat` varchar(4) NOT NULL,
  `keyy` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`id`, `firstname`, `middlename`, `lastname`, `regno`, `program`, `yos`, `email`, `password`, `gender`, `contact`, `mat`, `keyy`) VALUES
(1, 'Nyamizi', 'Ramadhani', 'Said', 'T/UDOM/2016/04000', 'BCOM-ISM', 3, 'nyamizi@gmail.com', '12345', 'female', '0755539178', 'no', 'yes'),
(2, 'Lucia', 'Joackim', 'Rupia', 'T/UDOM/2016/03965', 'BCOM-MKT', 3, 'luciaj@gmail.com', '56789', 'female', '0718398080', 'yes', 'yes'),
(3, 'Eddah', 'Moses', 'Mwankenja', 'T/UDOM/2016/08052', 'BCOM-FN', 3, 'em1@gmail.com', '54321', 'female', '0752454299', 'no', 'no'),
(4, 'ALLY', 'ABDUL', 'SEIF', 'T/UDOM/2016/06219', 'BSc.IS', 3, 'allyuking95@gmail.com', '12345', 'male', '2345678', 'yes', 'yes'),
(5, 'justine ', 'francis', 'justine', 'T/UDOM/2016/06202', 'BSc.IS', 3, 'francisjustine561@gmail.com', '1234', 'male', '07555665789', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'code.lpu1@gmail.com', '12345', '2016-04-04 20:31:45', '2019-06-11'),
(2, 'bursar', 'bursar@gmail.com', '12345', '2019-06-26 06:56:30', '0000-00-00'),
(3, 'warden', 'warden@gmail.com', '12345', '2019-06-26 06:56:30', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boys_rooms`
--

CREATE TABLE `boys_rooms` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `bed_1` varchar(255) NOT NULL,
  `bed_2` varchar(255) NOT NULL,
  `bed_3` varchar(255) NOT NULL,
  `bed_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boys_rooms`
--

INSERT INTO `boys_rooms` (`id`, `room_no`, `bed_1`, `bed_2`, `bed_3`, `bed_4`) VALUES
(1, 1, '', '', '', ''),
(2, 2, '', '', '', ''),
(3, 3, '', '', '', ''),
(4, 4, '', '', '', ''),
(5, 5, '', '', '', ''),
(6, 6, '', '', '', ''),
(7, 7, '', '', '', ''),
(8, 8, '', '', '', ''),
(9, 9, '', '', '', ''),
(10, 10, '', '', '', ''),
(11, 11, 'T/UDOM/2016/56982', '', 'T/UDOM/2016/89745', ''),
(12, 12, '', '', '', ''),
(13, 13, '', '', '', ''),
(14, 14, '', '', '', ''),
(15, 15, '', '', '', ''),
(16, 16, '', '', '', ''),
(17, 17, '', '', '', ''),
(18, 18, '', '', '', ''),
(19, 19, '', '', '', ''),
(20, 20, '', '', '', ''),
(21, 21, '', '', '', ''),
(22, 22, '', '', '', ''),
(23, 23, '', '', '', ''),
(24, 24, '', '', '', ''),
(25, 25, '', '', '', ''),
(26, 26, '', '', '', ''),
(27, 27, '', '', '', ''),
(28, 28, '', '', '', ''),
(29, 29, '', '', '', ''),
(30, 30, '', '', '', ''),
(31, 31, '', '', '', ''),
(32, 32, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'BCOM_ISM', 'BCOM_ISM', 'Bachelor  of Commerce of commerce in Information System Management', '2016-04-11 19:31:42'),
(2, 'BCOM_MRK', 'BCOM_MRK', 'Bachelor Of commerce  in marketing ', '2016-04-11 19:32:46'),
(3, 'BCOM_PLM', 'BCOM_PLM', 'Bachelor of commerce in procurement and logistic  Management', '2016-04-11 19:33:23'),
(4, 'BCOM_THM', 'BCOM_THM', 'Bachelor Of Commerce in Tourism  and Hospitality Management', '2016-04-11 19:34:18'),
(5, 'BCOM_IB', 'BCOM_IB', 'Bachelor Of commerce  in International Business', '2016-04-11 19:34:40'),
(6, 'BCOM_FN', 'BCOM_FN', 'Bachelor Of commerce  in Finance', '2016-04-11 19:34:59'),
(7, 'BOCA', 'BOCA', 'Bachelor Of commerce  in Accounting', '2016-04-11 19:35:19'),
(8, 'BCOM_SBE', 'BCOM_SBE', 'Bachelor Of commerce  in Small Business and Entrepreneurship', '2019-06-11 14:44:17'),
(9, 'BCOM_HRM', 'BCOM_HRM', 'Bachelor Of commerce  in Human Resource Management', '2019-06-11 14:45:37'),
(10, 'BBA', 'BBA', 'Bachelor of Business Administration', '2019-06-11 14:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(4) NOT NULL,
  `regno` varchar(30) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `passupdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `regno`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `updatedate`, `passupdate`) VALUES
(5, 'T/UDOM/2016/56982', 'HUSSEIN', 'JAMAL', 'JABIR', 'Male', '0789651423', 'husseinjj@gmail.com', '12345', '2019-06-23 17:31:23', ''),
(6, 'T/UDOM/2016/04000', 'SANSA', 'EDDART', 'STARK', 'Female', '0656329966', 'sansa@gmail.com', '12345', '2019-06-23 17:31:23', ''),
(7, 'T/UDOM/2016/89745', 'CALVIN', 'COMFORT', 'URASA', 'Male', '0623122312', 'comfu@gmail.com', '12345', '2019-06-23 17:31:23', ''),
(8, 'T/UDOM/2017/03366', 'CAREN', 'COSMAN', 'COWELL', 'Female', '0715974878', 'cowellcc@gmail.com', '12345', '2019-06-23 17:31:23', ''),
(10, 'T/UDOM/2016/06187', 'eddah', 'justine', 'francis', 'female', '0754697017', 'fgg@gmail.com', '12345678', '2019-06-24 17:06:11', '2019-06-24 17:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` varchar(20) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(4, 201, 2, 6000, '0', '2019-06-21', 12, 'Bachelor Of commerce  in Finance', '0', 'ALLY', 'ABDUL', 'SEIF', 'male', 734398999, 'allyuking95@gmail.com', 752454299, 'abdukarimu', 'father', 752454299, 'kagera', 'wep', 'kagera', 2345, 'kagera', 'wep', 'kagera', 2345, '2019-06-23 05:44:19', ''),
(10, 90, 4, 180000, '0', '2019-06-08', 3, 'Bachelor Of commerce ', '0', 'LUCIA', 'JOACKIAM', 'FRANCIS', 'female', 757068742, 'francisjustine56@gmail.com', 757068742, 'france', 'father', 754697045, '870', 'mwanza', 'Goa', 777, '870', 'mwanza', 'Jammu and Kashmir', 777, '2019-06-11 14:21:02', ''),
(11, 100, 4, 120000, '0', '2019-06-11', 12, 'Bachelor of Business Administration', '0', 'NYAMIZ', 'RAMADHANI', 'SAID', 'female', 717000301, 'nyamizramadhan@gmail.com', 717000301, 'SAID', 'father', 768813120, 'MBEYA', 'MBEYA', 'Goa', 1234, 'MBEYA', 'MBEYA', 'Goa', 1234, '2019-06-11 15:17:54', ''),
(12, 90, 4, 180000, '0', '2019-06-11', 9, 'Bachelor Of commerce  in marketing ', '0', 'LUCIA', 'JOACKIAM', 'FRANCIS', 'female', 755539178, 'lucia@gmail.com', 78963289, 'mike', 'uncle', 6986326, 'MBEYA', 'MBEYA', 'Haryana', 698, 'MBEYA', 'MBEYA', 'Haryana', 698, '2019-06-11 15:45:14', ''),
(13, 201, 4, 180000, '0', '2019-06-12', 12, 'Bachelor of commerce in procurement and logistic  Management', '0', 'salm', 'juma', 'bay', 'male', 923333, 'ffrancisjustine56@gmail.com', 757068742, 'france', 'father', 754697045, '870', 'mwanza', 'arusha', 777, '870', 'mwanza', 'arusha', 777, '2019-06-11 16:46:53', ''),
(14, 100, 4, 0, '0', '0000-00-00', 0, 'Bachelor Of commerce  in marketing ', '0', 'LUCIA', 'JOACKIAM', 'FRANCIS', 'female', 717000301, 'francisjustine56@gmail.com', 757068742, 'france', 'uncle', 754697045, '870', 'mwanza', 'arusha', 777, '870', 'mwanza', 'tabora', 777, '2019-06-12 09:25:54', ''),
(15, 900, 4, 180000, '0', '0000-00-00', 0, 'Bachelor Of Commerce in Tourism  and Hospitality Management', '0', 'juma', 'john', 'sam', 'others', 923333, 'francisjustine56@gmail.com', 757068742, 'france', 'father', 754697045, '870', 'mwanza', 'arusha', 777, '870', 'mwanza', 'arusha', 777, '2019-06-12 09:31:32', ''),
(17, 1, 4, 228000000, '0', '0000-00-00', 11, 'Bachelor Of commerce  in marketing ', '0', 'ALLY', 'ABDUL', 'SEIF', 'male', 734398999, 'allyuking95@gmail.com', 43356789876, 'gfhjkljhj', 'fgfgh', 2345678, 'rghjk', 'ffghjk', 'kagera', 23456, 'rghjk', 'ffghjk', 'kagera', 23456, '2019-06-23 06:05:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `bed_1` varchar(255) NOT NULL,
  `bed_2` varchar(255) NOT NULL,
  `bed_3` varchar(255) NOT NULL,
  `bed_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `bed_1`, `bed_2`, `bed_3`, `bed_4`) VALUES
(1, 1, '', '', '', ''),
(2, 2, '', '', '', ''),
(3, 3, '', '', '', ''),
(4, 4, '', '', '', ''),
(5, 5, 'T/UDOM/2016/06187', '', '', ''),
(6, 6, '', '', '', ''),
(7, 7, '', '', '', ''),
(8, 8, '', '', '', ''),
(9, 9, '', '', '', ''),
(10, 10, '', '', '', ''),
(11, 11, '', '', '', ''),
(12, 12, '', '', '', ''),
(13, 13, '', '', '', ''),
(14, 14, '', '', '', ''),
(15, 15, '', '', '', ''),
(16, 16, '', '', '', ''),
(17, 17, '', '', '', ''),
(18, 18, '', '', '', ''),
(19, 19, '', '', '', ''),
(20, 20, '', '', '', ''),
(21, 21, '', '', '', ''),
(22, 22, '', '', '', ''),
(23, 23, '', '', '', ''),
(24, 24, '', '', '', ''),
(25, 25, '', '', '', ''),
(26, 26, '', '', '', ''),
(27, 27, '', '', '', ''),
(28, 28, '', '', '', ''),
(29, 29, '', '', '', ''),
(30, 30, '', '', '', ''),
(31, 31, '', '', '', ''),
(32, 32, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(37, 'dar es salaam'),
(2, 'mbeya'),
(3, 'tanga'),
(38, 'morogolo'),
(39, 'iringa'),
(40, 'mwanza'),
(41, 'kagera'),
(42, 'arusha'),
(43, 'kilimanjaro'),
(44, 'rukwa'),
(45, 'singida'),
(46, 'tabora'),
(47, 'dar es salaam'),
(48, 'morogolo'),
(49, 'iringa'),
(50, 'mwanza'),
(51, 'kagera'),
(52, 'arusha'),
(53, 'kilimanjaro'),
(54, 'rukwa'),
(55, 'singida'),
(56, 'tabora');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-11 15:30:27'),
(8, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-11 16:03:23'),
(9, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-11 16:56:19'),
(10, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-11 17:01:00'),
(11, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-11 17:17:16'),
(12, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-12 05:27:55'),
(13, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-12 09:23:16'),
(14, 23, 'lucia@gmail.com', 0x3a3a31, '', '', '2019-06-12 09:37:04'),
(15, 33, 'maryjm@gmail.com', 0x3a3a31, '', '', '2019-06-12 20:35:55'),
(16, 33, 'maryjm@gmail.com', 0x3a3a31, '', '', '2019-06-12 20:42:00'),
(17, 33, 'maryjm@gmail.com', 0x3a3a31, '', '', '2019-06-12 20:46:56'),
(18, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 20:14:50'),
(19, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 20:22:48'),
(20, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 21:08:59'),
(21, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 21:15:50'),
(22, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 22:01:02'),
(23, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 22:22:15'),
(24, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-22 22:22:42'),
(25, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-23 03:29:59'),
(26, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-23 06:01:08'),
(27, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-23 22:40:55'),
(28, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-23 22:46:58'),
(29, 4, 'T/UDOM/2016/06219', 0x3a3a31, '', '', '2019-06-23 22:51:48'),
(30, 10, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-25 00:09:22'),
(31, 10, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-25 00:12:36'),
(32, 10, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-25 01:08:12'),
(33, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 03:00:52'),
(34, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 03:52:25'),
(35, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 05:48:03'),
(36, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 06:16:51'),
(37, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 08:41:51'),
(38, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 08:53:11'),
(39, 10, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-26 09:00:35'),
(40, 6, 'T/UDOM/2016/04000', 0x3a3a31, '', '', '2019-06-26 09:08:59'),
(41, 0, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-26 09:30:49'),
(42, 0, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-26 09:30:57'),
(43, 10, 'T/UDOM/2016/06187', 0x3a3a31, '', '', '2019-06-26 09:31:11'),
(44, 5, '', 0x3a3a31, '', '', '2019-06-26 09:46:14'),
(45, 10, '', 0x3a3a31, '', '', '2019-06-26 09:47:34'),
(46, 5, '', 0x3a3a31, '', '', '2019-06-26 09:50:15'),
(47, 7, '', 0x3a3a31, '', '', '2019-06-26 09:51:34'),
(48, 10, '', 0x3a3a31, '', '', '2019-06-26 10:02:31'),
(49, 6, '', 0x3a3a31, '', '', '2019-06-26 10:02:42'),
(50, 10, '', 0x3a3a31, '', '', '2019-06-26 10:03:15'),
(51, 6, '', 0x3a3a31, '', '', '2019-06-26 10:35:34'),
(52, 5, '', 0x3a3a31, '', '', '2019-06-26 10:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'code', 'test', 'projects', 'male', 8467067344, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '23-06-2016 11:04:15', '22-06-2016 05:16:49'),
(19, '102355', 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', '8596185625', '2016-06-26 16:40:07', '', ''),
(21, 'T/UDOM/06202/2016', 'LUCIA', 'JOACKIAM', 'FRANCIS', 'female', 757068742, 'francisjustine56@gmail.com', '0757068742', '2019-06-11 14:21:02', '', ''),
(22, 'T/UDOM/2016/0001', 'NYAMIZ', 'RAMADHANI', 'SAID', 'female', 717000301, 'nyamizramadhan@gmail.com', '0717000301', '2019-06-11 15:17:54', '', ''),
(23, 'T/UDOM/06202/2016', 'LUCIA', 'JOACKIAM', 'FRANCIS', 'female', 755539178, 'lucia@gmail.com', '12345', '2019-06-11 15:30:09', '', ''),
(24, 'T/UDOM/2016/08052', 'EDDAH', 'MOSES', 'MWANKENJA', 'FEMALE', 685563282, 'eddahmoses@gmail.com', '12345', '2019-06-11 16:18:23', '11-06-2019', '12345'),
(27, 'T/UDOM/2016/04100', 'JOSEPH', 'JAMES', 'MHOMA', 'MALE', 789657898, 'mhomajose@gmail.com', '12345', '2019-06-11 16:35:13', '', ''),
(29, 'T/UDOM/06202/2011', 'juma', 'man', 'suma', 'male', 923333, 'hyancisjustine56@gmail.com', '123456', '2019-06-11 16:42:30', '', ''),
(30, 'T/UDOM/06202/2011', 'salm', 'juma', 'bay', 'male', 923333, 'ffrancisjustine56@gmail.com', '0923333', '2019-06-11 16:46:53', '', ''),
(31, 'T/UDOM/06203/2016', 'LUCIA', 'JOACKIAM', 'FRANCIS', 'female', 717000301, 'francisjustine56@gmail.com', '0717000301', '2019-06-12 09:25:54', '', ''),
(32, 'T/UDOM/06202/2016', 'juma', 'john', 'sam', 'others', 923333, 'francisjustine56@gmail.com', '0923333', '2019-06-12 09:31:32', '', ''),
(33, 'T/UDOM/2017/03030', 'MARY', 'JAMES', 'MSHANA', 'female', 715, 'maryjm@gmail.com', '56789', '2019-06-12 20:35:44', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boys_rooms`
--
ALTER TABLE `boys_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boys_rooms`
--
ALTER TABLE `boys_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
