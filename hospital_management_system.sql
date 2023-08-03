-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 10:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doc_id` int(11) NOT NULL,
  `DName` varchar(255) NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doc_id`, `DName`, `Qualification`, `Salary`) VALUES
(40, 'Mohammod', 'neurologist', 50000),
(41, 'hasan', 'cardiologist', 70000),
(42, 'ali', 'medicine Specialist', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hos_id` int(11) NOT NULL,
  `HName` varchar(255) NOT NULL,
  `HAddress` varchar(255) NOT NULL,
  `HCity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hos_id`, `HName`, `HAddress`, `HCity`) VALUES
(201, 'upozila health complex ', 'Maheshpur', 'Jhenaidah'),
(202, 'Mirpur general hospital', 'Mirpur', 'Dhaka'),
(203, 'ABC private hospital', 'Farmgate', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `Precord_id` int(11) NOT NULL,
  `Date_of_examination` date NOT NULL,
  `Problem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_record`
--

INSERT INTO `medical_record` (`Precord_id`, `Date_of_examination`, `Problem`) VALUES
(2, '2022-05-03', 'headache'),
(7, '2022-05-09', 'chest pain'),
(18, '2022-05-05', 'fever');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Pat_id` int(11) NOT NULL,
  `PName` varchar(255) NOT NULL,
  `PDiognosis` varchar(255) NOT NULL,
  `PAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Pat_id`, `PName`, `PDiognosis`, `PAddress`) VALUES
(103, 'Sumon', 'ECG', 'Mirpur'),
(113, 'Rakin', 'CT scan', 'Farmgate'),
(123, 'Ahsan', 'CBC', 'Jhenaidah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doc_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hos_id`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`Precord_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Pat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
