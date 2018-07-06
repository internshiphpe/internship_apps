-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 08:35 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitte`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendence_id` int(11) NOT NULL,
  `susn` varchar(255) NOT NULL,
  `ssemster` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `tpresents` int(11) NOT NULL,
  `tperiods` int(11) NOT NULL,
  `percentage` double NOT NULL,
  PRIMARY KEY (`attendence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendence_id`, `susn`, `ssemster`, `subject`, `tpresents`, `tperiods`, `percentage`) VALUES
(1, '4SU12cs040', 4, 'Management Information Systems', 50, 100, 50),
(3, '4so13cs060', 1, 'Electrical', 100, 70, 65),
(4, '4so13cs060', 1, 'C Programming', 100, 90, 75),
(5, '4so13cs010', 2, 'Microprocessor', 100, 80, 80),
(6, '4so13cs010', 2, 'SAN', 100, 60, 58),
(7, '4so13cs060', 1, 'Physics', 100, 100, 100),
(8, '4so13cs060', 1, 'CAD', 80, 100, 83.3),
(9, '4so13cs060', 2, 'Chemistry', 80, 100, 80),
(10, '4so13cs060', 2, 'Electronics', 85, 100, 85),
(11, '4so13cs060', 2, 'Civil', 60, 70, 65),
(12, '4so13cs060', 2, 'Constitution', 70, 85, 76),
(13, '4so13cs060', 3, 'Data Structure', 90, 100, 92),
(14, '4so13cs060', 3, 'OOPs', 70, 100, 78),
(15, '4so13cs060', 3, 'File Strucuture', 85, 100, 85),
(16, '4so13cs060', 3, 'FS Lab', 85, 85, 85),
(17, '4so13cs060', 4, 'Computer Organization', 70, 100, 75),
(18, '4so13cs060', 4, 'Microprocessor', 80, 100, 83),
(19, '4so13cs060', 4, 'DBMS', 75, 100, 74),
(20, '4so13cs060', 4, 'Computer Networks', 80, 100, 84.4),
(21, '4so13cs060', 5, 'Operating System', 75, 100, 75.55),
(22, '4so13cs060', 5, 'Java', 85, 100, 82.3),
(23, '4so13cs060', 5, 'Storage Area Networks', 70, 100, 70),
(24, '4so13cs060', 5, 'Computer Graphics', 90, 100, 92.5),
(25, '4so13cs060', 6, 'Clouds,Grids and Clusters', 100, 100, 100),
(26, '4so13cs060', 6, 'System Modelling & Simulation', 70, 100, 73.6),
(27, '4so13cs060', 6, 'Project Work', 92, 100, 94.5),
(28, '4so13cs060', 6, 'Seminar', 70, 85, 74.4),
(29, '4SU12CS040', 4, 'software engineering', 50, 50, 100),
(30, '4SU12CS040', 3, 'Management Information Systems', 50, 100, 50),
(31, '4su12cs040', 3, 'Software Engineering', 50, 100, 50),
(32, '4su12cs040', 2, 'Software Engineering', 50, 100, 50),
(33, '4su12cs040', 5, 'Software Engineering', 40, 80, 50),
(34, '4su12cs040', 6, 'Software Engineering', 60, 100, 60),
(36, '4su12cs040', 4, 'Cryptography', 50, 50, 100),
(37, '4su12cs040', 4, 'Network security', 50, 50, 100),
(38, '4su12cs040', 4, 'Web Technologies', 50, 50, 100);

-- --------------------------------------------------------

--
-- Table structure for table `external_marks`
--

CREATE TABLE IF NOT EXISTS `external_marks` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `eusn` varchar(255) NOT NULL,
  `SGPA` varchar(255) NOT NULL,
  `CGPA` varchar(255) NOT NULL,
  `esemester` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `external_marks`
--

INSERT INTO `external_marks` (`eid`, `eusn`, `SGPA`, `CGPA`, `esemester`) VALUES
(1, '4SU12CS040', '4.35', '4.53', '4'),
(2, '4SU12CS040', '3.85', '3.75', '2'),
(3, '4SO13CS060', '7.75', '7.62', '4');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `musn` varchar(255) NOT NULL,
  `msemester` int(11) NOT NULL,
  `exam` varchar(255) NOT NULL,
  `scode` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mid`, `musn`, `msemester`, `exam`, `scode`, `sname`, `marks`) VALUES
(1, '4su12cs040', 4, 'TASK-1', 'MCA41 ', ' Management Information Systems', '3.5'),
(2, '4su12cs040', 4, 'MSE-1', 'MCA41 ', 'Management Information Systems', '4.2'),
(3, '4su12cs040', 3, 'TASK-1', 'Embedded', 'EB034', '70'),
(4, '4so13cs060', 1, 'TASK-1', 'JAVA050', 'Java', '4.2'),
(5, '4su12cs040', 4, 'TASK-2', 'MCA41', 'Management Information Systems', '3.2'),
(6, '4su12cs040', 4, 'MSE-2', 'MCA41', 'Software Engineering', '4.2'),
(7, '4su12cs040', 4, 'TASK-1', 'MCA42', 'Software engineering', '4.1'),
(8, '4su12cs040', 1, 'TASK-1', 'CA042', 'Computer Organisation & Architecture', '3.5'),
(9, '4SU12CS040', 2, 'TASK-1', 'OS026', 'Operating Systems', '4.1'),
(10, '4SU12CS040', 5, 'TASK-1', 'SE052', 'SoftwareEngg. II', '4.1'),
(11, '4SU12CS040', 6, 'TASK-1', 'SM041', 'Seminar', '4.2');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `notice` varchar(255) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `title`, `date`, `notice`) VALUES
(1, 'circular', '02 october 2017', 'Students who remain absent for mid semester examination due to valid reasons have to get prior permissions.'),
(2, 'circular', '05 October 2017', 'Students who remain absent for mid semester examination due to valid reasons have to get prior permissions.');

-- --------------------------------------------------------

--
-- Table structure for table `phone_book`
--

CREATE TABLE IF NOT EXISTS `phone_book` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(20) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `phone_book`
--

INSERT INTO `phone_book` (`pid`, `names`, `phone_no`) VALUES
(19, 'nidhi', '12345'),
(20, 'qwer', 'ywu'),
(21, 'gshaj', 'wet');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `semid` int(11) NOT NULL AUTO_INCREMENT,
  `usn` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `CI` int(11) NOT NULL,
  `SE` int(11) NOT NULL,
  `GR` varchar(255) NOT NULL,
  `GP` int(11) NOT NULL,
  PRIMARY KEY (`semid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semid`, `usn`, `semester`, `subject`, `CI`, `SE`, `GR`, `GP`) VALUES
(1, '4su12cs040', '4', '15MCA41', 45, 20, 'E', 4),
(2, '4SU12CS040', '4', '15MCA42', 40, 35, 'A', 4),
(3, '4su12cs040', '2', 'MCA43', 30, 30, 'A', 7),
(4, '4su12cs040', '4', '10MCA43', 40, 40, 'A', 7),
(5, '4SU12CS040', '4', '10MCA45', 38, 38, 'A', 10),
(6, '4so13cs060', '4', '14MCA43', 30, 30, 'A', 7),
(7, '4SU12CS040', '4', '10MCA47', 40, 40, 'A', 10);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhar` varchar(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `section` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `foccupation` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `moccupation` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `bgroup` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `actual_cat` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `pmailid` varchar(20) NOT NULL,
  `smailid` varchar(20) NOT NULL,
  `smobno` varchar(10) NOT NULL,
  `pmobno` varchar(10) NOT NULL,
  `cetno` varchar(11) NOT NULL,
  `dissue` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `r_urban` varchar(20) NOT NULL,
  `quota` varchar(20) NOT NULL,
  `pcollege` varchar(20) NOT NULL,
  `marks` int(11) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `hmname` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `aadhar`, `name`, `usn`, `course`, `semester`, `section`, `fname`, `foccupation`, `mname`, `moccupation`, `dob`, `caste`, `religion`, `bgroup`, `sex`, `actual_cat`, `nationality`, `pmailid`, `smailid`, `smobno`, `pmobno`, `cetno`, `dissue`, `rank`, `r_urban`, `quota`, `pcollege`, `marks`, `percentage`, `image`, `hmname`, `post`, `address`, `district`, `pincode`) VALUES
(2, '123412341234', 'Shreya', '4SU12cs040', 'MCA', '4', 'B', 'Anup', 'lawyer', 'amrutha', 'lawyer', '27/03/1995', 'Billava', 'Hindu', 'AB+', 'female', '2AG', 'Indian', 'anup@gmail.com', 'shreya@gmail.com', '9449671234', '9449671234', '2828', '27/04/2015', 1200, 'urban', 'CET', 'sdm', 800, '80.56', 'stuimages/image2.jpg', 'Shriraksha house', 'Kotekar', 'Mangaladevi, mangalore', 'D.K', '575001');

-- --------------------------------------------------------

--
-- Table structure for table `traindetails`
--

CREATE TABLE IF NOT EXISTS `traindetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhar` varchar(255) NOT NULL,
  `trainno` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `usn` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `traindetails`
--

INSERT INTO `traindetails` (`id`, `aadhar`, `trainno`, `name`, `usn`) VALUES
(1, '123412341234', 2, 'mangalore', '4SU12cs040'),
(2, '2345433', 2, 'bangalore', '4SU12cs0402');

-- --------------------------------------------------------

--
-- Table structure for table `trainticket`
--

CREATE TABLE IF NOT EXISTS `trainticket` (
  `id` int(11) NOT NULL,
  `taadhar` varchar(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `trainname` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainticket`
--

INSERT INTO `trainticket` (`id`, `taadhar`, `trainno`, `trainname`, `route`) VALUES
(0, '12341234123', 12, 'mangalore', 'mangalore'),
(0, '12341234123', 12, 'mangalore', 'mangalore');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
