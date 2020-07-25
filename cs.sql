-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 06:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `gender`, `password`) VALUES
('adm01', 'hod', 'female', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `sid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`sid`, `mid`) VALUES
('sid01', 'met01'),
('sid02', 'met01'),
('sid04', 'met02'),
('sid04', 'met03'),
('sid05', 'met04'),
('sid06', 'met04'),
('sid07', 'met05'),
('sid08', 'met05'),
('sid07', 'met06'),
('sid08', 'met06'),
('sid09', 'met07'),
('sid10', 'met07'),
('sid10', 'met08');

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `fid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conduct`
--

INSERT INTO `conduct` (`fid`, `mid`, `place`) VALUES
('fac01', 'met01', 'Hall1'),
('fac02', 'met02', 'Hall2'),
('fac02', 'met03', 'Hall2'),
('fac03', 'met04', 'Hall3'),
('fac04', 'met05', 'Hall5'),
('fac04', 'met06', 'Hall4'),
('fac05', 'met07', 'Hall4'),
('fac05', 'met08', 'Hall1');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `fname`, `password`, `gender`, `doj`, `address`, `email`, `qualification`, `aid`) VALUES
('fac01', 'Rudra', 'rudra123', 'male', '2013-03-01', 'Kengeri', 'rudra@gmail.com', 'PHD', 'adm01'),
('fac02', 'Leela', 'leela123', 'female', '2016-08-14', 'Vijaynagar', 'leela@gmail.com', 'MCA', 'adm01'),
('fac03', 'Suryakanth', 'surya123', 'male', '2018-07-18', 'Jayanagar', 'surya@gmail.com', 'MBA', 'adm01'),
('fac04', 'Chandana', 'chandu123', 'female', '2016-02-12', 'Indiranagar', 'chandana@gmail.com', 'MTech', 'adm01'),
('fac05', 'Ramya', 'ramya123', 'female', '2014-11-28', 'Dollars colony', 'ramya@gmail.com', 'MPhil', 'adm01');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `mid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`mid`, `time`, `date`) VALUES
('met01', '02:15:00', '2018-01-13'),
('met02', '03:15:00', '2018-02-11'),
('met03', '04:15:00', '2018-02-16'),
('met04', '03:15:00', '2018-02-16'),
('met05', '01:15:00', '2018-02-21'),
('met06', '12:15:00', '2018-03-26'),
('met07', '11:15:00', '2018-03-27'),
('met08', '10:15:00', '2019-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `productdatabase`
--

CREATE TABLE `productdatabase` (
  `ProductID` int(11) DEFAULT NULL,
  `ProductName` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productdatabase`
--

INSERT INTO `productdatabase` (`ProductID`, `ProductName`) VALUES
(1, 'Pen'),
(2, 'Pencil'),
(3, 'Phone'),
(4, 'Book');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lsname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mob` bigint(20) DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quota` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yoj` int(4) DEFAULT NULL,
  `pcontact` bigint(20) NOT NULL,
  `aadhar` bigint(20) DEFAULT NULL,
  `fid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `fsname`, `lsname`, `gender`, `dob`, `mob`, `email`, `address`, `parentname`, `quota`, `yoj`, `pcontact`, `aadhar`, `fid`) VALUES
('sid01', 'Rajesh', 'Khanna', 'male', '1997-11-28', 7778889990, 'rk@gmail.com', 'Dadar', 'Suresh', 'Management', 2018, 8889999000, 11111, 'fac01'),
('sid02', 'Kriti', 'Kumar', 'female', '1996-01-28', 7778889991, 'kk@gmail.com', 'Worli', 'Raj', 'PGCET', 2018, 8889999001, 11112, 'fac01'),
('sid03', 'Vikas', 'Gupta', 'male', '1997-01-20', 7778889992, 'vg@gmail.com', 'Dombivali', 'Vishal', 'KMAT', 2018, 8889999002, 11113, 'fac01'),
('sid04', 'Arnav', 'Singh', 'male', '1997-03-07', 7778889993, 'ar@gmail.com', 'Patna', 'Gurpreet', 'Management', 2018, 8889999003, 11114, 'fac02'),
('sid05', 'Anjani', 'Patra', 'female', '1995-04-01', 7778889994, 'ap@gmail.com', 'Gurgaon', 'Pooja', 'PGCET', 2017, 8889999004, 11115, 'fac03'),
('sid06', 'Sukruta', 'Bhat', 'female', '1996-07-19', 7778889995, 'sb@gmail.com', 'Mysore', 'Surbhi', 'KMAT', 2018, 8889999005, 11116, 'fac03'),
('sid07', 'Adhya', 'Shetty', 'female', '1997-08-29', 7778889996, 'as@gmail.com', 'Hubli', 'Sheetal', 'Management', 2017, 8889999006, 11117, 'fac04'),
('sid08', 'Vansh', 'Kapoor', 'male', '1996-08-29', 7778889997, 'vk@gmail.com', 'Chennai', 'Varun', 'Management', 2017, 8889999007, 11118, 'fac04'),
('sid09', 'Sakshi', 'Sinha', 'female', '1997-12-29', 7778889998, 'ssinha@gmail.com', 'Kolkata', 'Rohan', 'KMAT', 2018, 8889999008, 11119, 'fac05'),
('sid10', 'Ishaan', 'Naik', 'male', '1995-11-14', 8888999089, 'abc@gmail.com', 'Kashmir', 'prakash', 'pgcet', 2019, 8989898989, 21212, 'fac05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD KEY `sid` (`sid`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD KEY `fid` (`fid`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `fid` (`fid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `attend_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  ADD CONSTRAINT `attend_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `meeting` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conduct`
--
ALTER TABLE `conduct`
  ADD CONSTRAINT `conduct_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`),
  ADD CONSTRAINT `conduct_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `meeting` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `admin` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
