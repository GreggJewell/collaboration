-- phpMyAdmin SQL Dump
-- version 4.5.0-dev
-- http://www.phpmyadmin.net
--
-- Host: internal-pcf-dev-02-mysql-445084290.us-iso-east-1.elb.c2s.ic.gov:3306
-- Generation Time: Mar 08, 2019 at 05:24 PM
-- Server version: 10.0.23-MariaDB-wsrep
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cf_78d659e9_d303_4794_9260_f0b2683ba4d6`
--

-- --------------------------------------------------------

--
-- Table structure for table `AlternateAddress`
--

CREATE TABLE IF NOT EXISTS `AlternateAddress` (
  `altAddressID` tinyint(1) NOT NULL,
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `contactFName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contactLName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `relationship` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `contactPhone` char(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AlternateAddress`
--

INSERT INTO `AlternateAddress` (`altAddressID`, `rcnum`, `street`, `city`, `state`, `zipcode`, `contactFName`, `contactLName`, `relationship`, `contactPhone`) VALUES
(0, 'rc22752', '182 Pickering Trail', 'Atlanta', 'GA', '55123', 'Chelsie', 'Jewell', 'Wife', '555-555-1234'),
(0, 'rc99999', '999 Test Street', 'East City', 'AL', '55555', 'Testy', 'Mic', 'Test', '555-555-5555'),
(1, 'rc22752', 'Disney Suites', 'Orlando', 'FA', '12345', 'John', 'McKnight', 'Friend', '555-555-4321'),
(1, 'rc99999', '111 Test Street', 'West City', 'AL', '11111', 'Testo', 'M', 'Testing', '555-555-9999');

-- --------------------------------------------------------

--
-- Table structure for table `AuntSally`
--

CREATE TABLE IF NOT EXISTS `AuntSally` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `dodIDNum` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `lastFour` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `personalEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNum` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `southOfHwy` tinyint(1) NOT NULL DEFAULT '0',
  `street` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dutyPhone` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `afsc` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isSponsor` tinyint(1) NOT NULL DEFAULT '0',
  `needsHelpBordingHouse` tinyint(1) NOT NULL DEFAULT '0',
  `financiallyAbleEvac` tinyint(1) NOT NULL DEFAULT '0',
  `hasCarEvac` tinyint(1) NOT NULL DEFAULT '0',
  `hasDriversLicense` tinyint(1) NOT NULL DEFAULT '0',
  `concernsForEvac` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hasPets` tinyint(1) NOT NULL DEFAULT '0',
  `hasDependents` tinyint(1) NOT NULL DEFAULT '0',
  `hasSIPRToken` tinyint(1) NOT NULL DEFAULT '0',
  `lastTokenLogin` date DEFAULT NULL,
  `hasSpouse` tinyint(1) NOT NULL DEFAULT '0',
  `cao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AuntSally`
--

INSERT INTO `AuntSally` (`rcnum`, `dodIDNum`, `lastFour`, `birthDate`, `gender`, `personalEmail`, `phoneNum`, `southOfHwy`, `street`, `city`, `state`, `zipcode`, `county`, `dutyPhone`, `afsc`, `isSponsor`, `needsHelpBordingHouse`, `financiallyAbleEvac`, `hasCarEvac`, `hasDriversLicense`, `concernsForEvac`, `hasPets`, `hasDependents`, `hasSIPRToken`, `lastTokenLogin`, `hasSpouse`, `cao`) VALUES
('rc22752', '5551234567', '5555', '1985-01-04', 'M', 'greggJewell@gmail.com', '850-555-1234', 0, '531 Seaway Drive', 'San Destin', 'FL', '32560', 'San Destin', '850-884-0291', NULL, 0, 0, 1, 1, 1, NULL, 1, 1, 1, '2019-02-04', 1, '2019-02-04'),
('rc99999', '1233434555', '5555', '1994-09-23', 'f', 'test@aol.com', '717-555-5555', 0, '555 E Testy Drive', 'Mary Esther', 'FL', '32569', NULL, '884-0787', '14N', 0, 0, 1, 1, 1, NULL, 1, 1, 1, '2019-01-03', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `CertCurrencyList`
--

CREATE TABLE IF NOT EXISTS `CertCurrencyList` (
  `twoID` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `isFA` tinyint(1) NOT NULL DEFAULT '0',
  `isMA` tinyint(1) NOT NULL DEFAULT '0',
  `isMS` tinyint(1) NOT NULL DEFAULT '0',
  `isRTL` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CertCurrencyList`
--

INSERT INTO `CertCurrencyList` (`twoID`, `isFA`, `isMA`, `isMS`, `isRTL`) VALUES
('FA05.01', 1, 1, 1, 1),
('FA05.02', 1, 1, 0, 0),
('FA05.03', 1, 1, 1, 0),
('FA05.04', 1, 1, 1, 0),
('FA06.01', 1, 1, 1, 1),
('MA02.01', 0, 1, 0, 0),
('MA02.02', 0, 1, 1, 1),
('MA02.03', 0, 1, 1, 1),
('MA03.01', 0, 1, 0, 0),
('MA03.02', 0, 1, 1, 0),
('MA03.03', 0, 1, 0, 0),
('MA04.01', 0, 1, 0, 0),
('MS02.01', 0, 0, 1, 0),
('MS02.02', 0, 0, 1, 0),
('MS02.03', 0, 0, 1, 1),
('MS03.01', 0, 0, 1, 1),
('MS04.01', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Certifier`
--

CREATE TABLE IF NOT EXISTS `Certifier` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `isEndorsedFlt` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CertMember`
--

CREATE TABLE IF NOT EXISTS `CertMember` (
  `certID` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `certType` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `isCertified` tinyint(1) NOT NULL DEFAULT '0',
  `certifier` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCertified` date DEFAULT NULL,
  `daysSatCertified` int(11) DEFAULT '0',
  `lastDaySatCert` date DEFAULT NULL,
  `trainingStart` date NOT NULL,
  `daysTrained` smallint(6) NOT NULL DEFAULT '0',
  `lastDateTrained` date DEFAULT NULL,
  `lineItemsComplete` smallint(6) NOT NULL DEFAULT '0',
  `certLevel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CertMember`
--

INSERT INTO `CertMember` (`certID`, `rcnum`, `certType`, `isCertified`, `certifier`, `dateCertified`, `daysSatCertified`, `lastDaySatCert`, `trainingStart`, `daysTrained`, `lastDateTrained`, `lineItemsComplete`, `certLevel`) VALUES
('rc21351fa', 'rc21351', 'FA', 0, NULL, NULL, 0, NULL, '2019-03-07', 3, '2019-03-08', 0, 0),
('rc22752fa', 'rc22752', 'FA', 1, 'rc00000', '2017-02-01', 152, '2019-01-01', '2017-01-01', 17, '2017-02-01', 70, 10),
('rc22752ma', 'rc22752', 'MA', 1, 'rc00000', '2018-04-11', 288, '2019-02-20', '2018-01-25', 32, '2018-04-11', 70, 20),
('rc22752ms', 'rc22752', 'MS', 1, 'rc00000', '2018-09-19', 74, '2018-10-23', '2018-08-19', 15, '2018-09-19', 70, 30);

-- --------------------------------------------------------

--
-- Table structure for table `CertPartOne`
--

CREATE TABLE IF NOT EXISTS `CertPartOne` (
  `oneID` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `certType` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `certLevel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CertPartOne`
--

INSERT INTO `CertPartOne` (`oneID`, `certType`, `description`, `certLevel`) VALUES
('FA04', 'FA', 'KNOWLEDGE AND RESEARCH', 10),
('FA05', 'FA', 'SOFTWARE UTILIZATION', 10),
('FA06', 'FA', 'COORDINATION', 10),
('FA07', 'FA', 'ABILITY TO JUGGLE', 10),
('MA02', 'MA', 'TEAM MANAGEMENT', 20),
('MA03', 'MA', 'MISSION PREPARATION', 20),
('MA04', 'MA', 'TARGET KNOWLEDGE AND RESEARCH', 20),
('MS02', 'MS', 'Team Management', 30),
('MS03', 'MS', 'Mission Preparation', 30),
('MS04', 'MS', 'Target Knowledge and Research', 30);

-- --------------------------------------------------------

--
-- Table structure for table `CertPartTwo`
--

CREATE TABLE IF NOT EXISTS `CertPartTwo` (
  `twoID` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `oneID` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `certType` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `core` tinyint(1) NOT NULL,
  `wartime` tinyint(1) NOT NULL,
  `qtp` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `needsCertified` tinyint(1) NOT NULL DEFAULT '0',
  `topScore` tinyint(1) NOT NULL,
  `requiredPercent` tinyint(1) NOT NULL,
  `certLevel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CertPartTwo`
--

INSERT INTO `CertPartTwo` (`twoID`, `oneID`, `certType`, `description`, `reference`, `core`, `wartime`, `qtp`, `needsCertified`, `topScore`, `requiredPercent`, `certLevel`) VALUES
('FA04.01', 'FA04', 'FA', 'Demonstrate ability to perform knowledge and research tasks', '', 0, 0, '2b', 0, 4, 85, 10),
('FA05.01', 'FA05', 'FA', 'Manipulate software', '', 0, 0, '2b', 0, 20, 85, 10),
('FA05.02', 'FA05', 'FA', 'Launch all required software programs and support materials', '', 0, 0, '2b', 0, 20, 85, 10),
('FA05.03', 'FA05', 'FA', 'Derive Location', '', 0, 0, '2b', 0, 31, 85, 10),
('FA05.04', 'FA05', 'FA', 'Default title thing', '', 0, 0, '2b', 0, 2, 85, 10),
('FA06.01', 'FA06', 'FA', 'Demonstrate ability to recognize and communicate with crew members', '', 0, 0, '2b', 0, 20, 85, 10),
('FA07.01', 'FA07', 'FA', 'Demonstrate ability to recognize and communicate with team members', '', 0, 0, '2b', 1, 20, 85, 10),
('FA07.02', 'FA07', 'FA', 'Default description Part II', '', 0, 0, '2b', 1, 20, 85, 10),
('FA07.03', 'FA07', 'FA', 'Default description Part II', '', 0, 0, '2b', 1, 20, 85, 10),
('FA07.04', 'FA07', 'FA', 'Default description Part II', '', 0, 0, '2b', 0, 20, 85, 10),
('MA02.01', 'MA02', 'MA', 'Demonstrate ability to provide crew resource management recommendations', '', 0, 0, '3c', 0, 7, 85, 20),
('MA02.02', 'MA02', 'MA', 'Demonstrate ability to train', '', 0, 0, '3c', 0, 20, 85, 20),
('MA02.03', 'MA02', 'MA', 'Demonstrate ability to lead assigned FMVAs to successfully PED a single ISR sortie', '', 1, 0, '3c', 1, 1, 85, 20),
('MA03.01', 'MA03', 'MA', 'Demonstrate ability to perform all FMVA MISSION PREPARATION tasks', '', 0, 0, '3c', 0, 7, 85, 20),
('MA03.02', 'MA03', 'MA', 'Demonstrate ability to locate/acquire tactical products to support mission partner operations', '', 0, 0, '2b', 0, 15, 85, 20),
('MA03.03', 'MA03', 'MA', 'Demonstrate ability to conduct basic target research in support of supported unit mission', '', 0, 0, '2b', 0, 6, 85, 20),
('MA04.01', 'MA04', 'MA', 'Demonstrate ability to perform all MA knowledge and research tasks', '', 0, 0, '2b', 0, 6, 85, 20),
('MS02.01', 'MS02', 'MS', 'Demonstrate ability to perform all team management tasks', '', 0, 0, '3c', 0, 2, 85, 30),
('MS02.02', 'MS02', 'MS', 'Demonstrate ability to implement effective crew resource management for two ISR sorties', '', 1, 0, '3c', 1, 4, 85, 30),
('MS02.03', 'MS02', 'MS', 'Demonstrate ability to train FMVA and Mission Analysts', '', 0, 0, '3c', 0, 20, 85, 30),
('MS03.01', 'MS03', 'MS', 'Demonstrate ability to perform all mission preparation tasks', '', 0, 0, '3c', 0, 3, 85, 30),
('MS04.01', 'MS04', 'MS', 'Demonstrate ability to perform all target knowledge and research tasks', '', 0, 0, '3c', 0, 3, 85, 30);

-- --------------------------------------------------------

--
-- Table structure for table `CIFDesc`
--

CREATE TABLE IF NOT EXISTS `CIFDesc` (
  `cifID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `terminationDate` date DEFAULT NULL,
  `issuedBy` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '11 SOIS/DOM/DSN 579-2007',
  `supersedes` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forFMV` tinyint(1) NOT NULL DEFAULT '-1',
  `forFA` tinyint(1) NOT NULL DEFAULT '-1',
  `forMA` tinyint(1) NOT NULL DEFAULT '-1',
  `forMS` tinyint(1) NOT NULL DEFAULT '-1',
  `forRTL` tinyint(1) NOT NULL DEFAULT '-1',
  `forMOC` tinyint(1) NOT NULL DEFAULT '-1',
  `forMSA` tinyint(1) NOT NULL DEFAULT '-1',
  `unclassSubject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CIFDesc`
--

INSERT INTO `CIFDesc` (`cifID`, `issueDate`, `terminationDate`, `issuedBy`, `supersedes`, `forFMV`, `forFA`, `forMA`, `forMS`, `forRTL`, `forMOC`, `forMSA`, `unclassSubject`) VALUES
('00-001', '2018-12-01', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 1, 1, 'Something new to do'),
('00-002', '2018-12-02', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 1, 1, 'Everything is changing'),
('00-003', '2018-12-03', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 0, 0, 'On-Eyes stuff'),
('00-004', '2018-12-04', NULL, '11SOIS/DOM/DSN 579-2007', '', 0, 0, 0, 0, 0, 1, 0, 'Leadership stuff'),
('00-005', '2018-12-05', '2099-01-01', '11SOIS/DOM/DSN 579-2007', '00-990', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('00-006', '2018-12-06', '2099-01-02', '11SOIS/DOM/DSN 579-2007', '00-991', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('00-007', '2018-12-07', '2099-01-03', '11SOIS/DOM/DSN 579-2007', '00-992', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('00-008', '2018-12-08', '2099-01-04', '11SOIS/DOM/DSN 579-2007', '00-993', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('00-009', '2018-12-09', NULL, '11SOIS/DOM/DSN 579-2007', '', 0, 0, 0, 0, 0, 0, 1, 'New DOF stuff'),
('00-010', '2018-12-10', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 1, 1, 'Something new to do');

-- --------------------------------------------------------

--
-- Table structure for table `CIFMember`
--

CREATE TABLE IF NOT EXISTS `CIFMember` (
  `cifID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `dateSigned` datetime DEFAULT CURRENT_TIMESTAMP,
  `signature` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CIFMember`
--

INSERT INTO `CIFMember` (`cifID`, `rcnum`, `dateSigned`, `signature`) VALUES
('00-001', 'rc00000', NULL, NULL),
('00-001', 'rc00001', '2018-01-09 00:00:00', 'rc00001'),
('00-001', 'rc00003', '2018-05-09 00:00:00', 'rc00003'),
('00-001', 'rc00004', '2018-05-25 00:00:00', 'rc00004'),
('00-001', 'rc00005', '2018-01-17 00:00:00', 'rc00005'),
('00-001', 'rc00006', '2018-01-25 00:00:00', 'rc00006'),
('00-001', 'rc00007', '2018-02-02 00:00:00', 'rc00007'),
('00-001', 'rc00008', '2018-02-10 00:00:00', 'rc00008'),
('00-001', 'rc00009', '2018-02-18 00:00:00', 'rc00009'),
('00-001', 'rc00010', '2018-02-26 00:00:00', 'rc00010'),
('00-001', 'rc00011', '2018-03-06 00:00:00', 'rc00011'),
('00-001', 'rc00012', '2018-03-14 00:00:00', 'rc00012'),
('00-001', 'rc00013', '2018-03-22 00:00:00', 'rc00013'),
('00-001', 'rc00014', '2018-03-30 00:00:00', 'rc00014'),
('00-001', 'rc00015', '2018-06-26 00:00:00', 'rc00015'),
('00-001', 'rc00016', '2018-07-04 00:00:00', 'rc00016'),
('00-001', 'rc00017', '2018-07-12 00:00:00', 'rc00017'),
('00-001', 'rc00018', '2018-07-20 00:00:00', 'rc00018'),
('00-001', 'rc00019', '2018-06-18 00:00:00', 'rc00019'),
('00-001', 'rc00020', '2018-06-10 00:00:00', 'rc00020'),
('00-001', 'rc00021', '2018-04-07 00:00:00', 'rc00021'),
('00-001', 'rc00022', '2018-04-15 00:00:00', 'rc00022'),
('00-001', 'rc00023', '2018-04-23 00:00:00', 'rc00023'),
('00-001', 'rc00024', '2018-05-17 00:00:00', 'rc00024'),
('00-001', 'rc00025', '2018-06-02 00:00:00', 'rc00025'),
('00-001', 'rc22752', '2018-02-04 00:00:00', 'rc22752'),
('00-002', 'rc00000', '2018-01-02 00:00:00', 'rc00000'),
('00-002', 'rc00001', '2018-01-10 00:00:00', 'rc00001'),
('00-002', 'rc00002', '2018-05-02 00:00:00', 'rc00002'),
('00-002', 'rc00003', '2018-05-10 00:00:00', 'rc00003'),
('00-002', 'rc00004', '2018-05-26 00:00:00', 'rc00004'),
('00-002', 'rc00005', '2018-01-18 00:00:00', 'rc00005'),
('00-002', 'rc00006', '2018-01-26 00:00:00', 'rc00006'),
('00-002', 'rc00007', '2018-02-03 00:00:00', 'rc00007'),
('00-002', 'rc00008', '2018-02-11 00:00:00', 'rc00008'),
('00-002', 'rc00009', '2018-02-19 00:00:00', 'rc00009'),
('00-002', 'rc00010', '2018-02-27 00:00:00', 'rc00010'),
('00-002', 'rc00011', '2018-03-07 00:00:00', 'rc00011'),
('00-002', 'rc00012', '2018-03-15 00:00:00', 'rc00012'),
('00-002', 'rc00013', '2018-03-23 00:00:00', 'rc00013'),
('00-002', 'rc00014', '2018-03-31 00:00:00', 'rc00014'),
('00-002', 'rc00015', '2018-06-27 00:00:00', 'rc00015'),
('00-002', 'rc00016', '2018-07-05 00:00:00', 'rc00016'),
('00-002', 'rc00017', '2018-07-13 00:00:00', 'rc00017'),
('00-002', 'rc00018', '2018-07-21 00:00:00', 'rc00018'),
('00-002', 'rc00019', '2018-06-19 00:00:00', 'rc00019'),
('00-002', 'rc00020', '2018-06-11 00:00:00', 'rc00020'),
('00-002', 'rc00021', '2018-04-08 00:00:00', 'rc00021'),
('00-002', 'rc00022', '2018-04-16 00:00:00', 'rc00022'),
('00-002', 'rc00023', '2018-04-24 00:00:00', 'rc00023'),
('00-002', 'rc00024', '2018-05-18 00:00:00', 'rc00024'),
('00-002', 'rc00025', '2018-06-03 00:00:00', 'rc00025'),
('00-002', 'rc22752', '2019-02-12 00:00:00', 'rc22752'),
('00-003', 'rc00000', '2018-01-03 00:00:00', 'rc00000'),
('00-003', 'rc00001', '2018-01-11 00:00:00', 'rc00001'),
('00-003', 'rc00002', '2018-05-03 00:00:00', 'rc00002'),
('00-003', 'rc00003', '2018-05-11 00:00:00', 'rc00003'),
('00-003', 'rc00004', '2018-05-27 00:00:00', 'rc00004'),
('00-003', 'rc00005', '2018-01-19 00:00:00', 'rc00005'),
('00-003', 'rc00006', '2018-01-27 00:00:00', 'rc00006'),
('00-003', 'rc00007', '2018-02-04 00:00:00', 'rc00007'),
('00-003', 'rc00008', '2018-02-12 00:00:00', 'rc00008'),
('00-003', 'rc00009', '2018-02-20 00:00:00', 'rc00009'),
('00-003', 'rc00010', '2018-02-28 00:00:00', 'rc00010'),
('00-003', 'rc00011', '2018-03-08 00:00:00', 'rc00011'),
('00-003', 'rc00012', '2018-03-16 00:00:00', 'rc00012'),
('00-003', 'rc00013', '2018-03-24 00:00:00', 'rc00013'),
('00-003', 'rc00014', '2018-04-01 00:00:00', 'rc00014'),
('00-003', 'rc00020', '2018-06-12 00:00:00', 'rc00020'),
('00-003', 'rc00021', '2018-04-09 00:00:00', 'rc00021'),
('00-003', 'rc00022', '2018-04-17 00:00:00', 'rc00022'),
('00-003', 'rc00023', '2018-04-25 00:00:00', 'rc00023'),
('00-003', 'rc00024', '2018-05-19 00:00:00', 'rc00024'),
('00-003', 'rc00025', '2018-06-04 00:00:00', 'rc00025'),
('00-003', 'rc22752', '2019-02-04 16:53:51', 'rc22752'),
('00-004', 'rc00015', '2018-06-28 00:00:00', 'rc00015'),
('00-004', 'rc00016', '2018-07-06 00:00:00', 'rc00016'),
('00-004', 'rc00017', '2018-07-14 00:00:00', 'rc00017'),
('00-004', 'rc00018', '2018-07-22 00:00:00', 'rc00018'),
('00-004', 'rc22752', '2019-02-04 16:53:51', 'rc22572'),
('00-005', 'rc00000', '2018-01-04 00:00:00', 'rc00000'),
('00-005', 'rc00001', '2018-01-12 00:00:00', 'rc00001'),
('00-005', 'rc00002', '2018-05-04 00:00:00', 'rc00002'),
('00-005', 'rc00003', '2018-05-12 00:00:00', 'rc00003'),
('00-005', 'rc00004', '2018-05-28 00:00:00', 'rc00004'),
('00-005', 'rc00005', '2018-01-20 00:00:00', 'rc00005'),
('00-005', 'rc00006', '2018-01-28 00:00:00', 'rc00006'),
('00-005', 'rc00007', '2018-02-05 00:00:00', 'rc00007'),
('00-005', 'rc00008', '2018-02-13 00:00:00', 'rc00008'),
('00-005', 'rc00009', '2018-02-21 00:00:00', 'rc00009'),
('00-005', 'rc00010', '2018-03-01 00:00:00', 'rc00010'),
('00-005', 'rc00011', '2018-03-09 00:00:00', 'rc00011'),
('00-005', 'rc00012', '2018-03-17 00:00:00', 'rc00012'),
('00-005', 'rc00013', '2018-03-25 00:00:00', 'rc00013'),
('00-005', 'rc00014', '2018-04-02 00:00:00', 'rc00014'),
('00-005', 'rc00015', '2018-06-29 00:00:00', 'rc00015'),
('00-005', 'rc00016', '2018-07-07 00:00:00', 'rc00016'),
('00-005', 'rc00017', '2018-07-15 00:00:00', 'rc00017'),
('00-005', 'rc00018', '2018-07-23 00:00:00', 'rc00018'),
('00-005', 'rc00019', '2018-06-20 00:00:00', 'rc00019'),
('00-005', 'rc00020', '2018-06-13 00:00:00', 'rc00020'),
('00-005', 'rc00021', '2018-04-10 00:00:00', 'rc00021'),
('00-005', 'rc00022', '2018-04-18 00:00:00', 'rc00022'),
('00-005', 'rc00023', '2018-04-26 00:00:00', 'rc00023'),
('00-005', 'rc00024', '2018-05-20 00:00:00', 'rc00024'),
('00-005', 'rc00025', '2018-06-05 00:00:00', 'rc00025'),
('00-005', 'rc22752', '2018-02-04 00:00:00', 'rc22752'),
('00-006', 'rc00000', '2018-01-05 00:00:00', 'rc00000'),
('00-006', 'rc00001', '2018-01-13 00:00:00', 'rc00001'),
('00-006', 'rc00002', '2018-05-05 00:00:00', 'rc00002'),
('00-006', 'rc00003', '2018-05-13 00:00:00', 'rc00003'),
('00-006', 'rc00004', '2018-05-29 00:00:00', 'rc00004'),
('00-006', 'rc00005', '2018-01-21 00:00:00', 'rc00005'),
('00-006', 'rc00006', '2018-01-29 00:00:00', 'rc00006'),
('00-006', 'rc00007', '2018-02-06 00:00:00', 'rc00007'),
('00-006', 'rc00008', '2018-02-14 00:00:00', 'rc00008'),
('00-006', 'rc00009', '2018-02-22 00:00:00', 'rc00009'),
('00-006', 'rc00010', '2018-03-02 00:00:00', 'rc00010'),
('00-006', 'rc00011', '2018-03-10 00:00:00', 'rc00011'),
('00-006', 'rc00012', '2018-03-18 00:00:00', 'rc00012'),
('00-006', 'rc00013', '2018-03-26 00:00:00', 'rc00013'),
('00-006', 'rc00014', '2018-04-03 00:00:00', 'rc00014'),
('00-006', 'rc00015', '2018-06-30 00:00:00', 'rc00015'),
('00-006', 'rc00016', '2018-07-08 00:00:00', 'rc00016'),
('00-006', 'rc00017', '2018-07-16 00:00:00', 'rc00017'),
('00-006', 'rc00018', '2018-07-24 00:00:00', 'rc00018'),
('00-006', 'rc00019', '2018-06-21 00:00:00', 'rc00019'),
('00-006', 'rc00020', '2018-06-14 00:00:00', 'rc00020'),
('00-006', 'rc00021', '2018-04-11 00:00:00', 'rc00021'),
('00-006', 'rc00022', '2018-04-19 00:00:00', 'rc00022'),
('00-006', 'rc00023', '2018-04-27 00:00:00', 'rc00023'),
('00-006', 'rc00024', '2018-05-21 00:00:00', 'rc00024'),
('00-006', 'rc00025', '2018-06-06 00:00:00', 'rc00025'),
('00-006', 'rc22752', '2018-02-04 00:00:00', 'rc22572'),
('00-007', 'rc00000', '2018-01-06 00:00:00', 'rc00000'),
('00-007', 'rc00001', '2018-01-14 00:00:00', 'rc00001'),
('00-007', 'rc00002', '2018-05-06 00:00:00', 'rc00002'),
('00-007', 'rc00003', '2018-05-14 00:00:00', 'rc00003'),
('00-007', 'rc00004', '2018-05-30 00:00:00', 'rc00004'),
('00-007', 'rc00005', '2018-01-22 00:00:00', 'rc00005'),
('00-007', 'rc00006', '2018-01-30 00:00:00', 'rc00006'),
('00-007', 'rc00007', '2018-02-07 00:00:00', 'rc00007'),
('00-007', 'rc00008', '2018-02-15 00:00:00', 'rc00008'),
('00-007', 'rc00009', '2018-02-23 00:00:00', 'rc00009'),
('00-007', 'rc00010', '2018-03-03 00:00:00', 'rc00010'),
('00-007', 'rc00011', '2018-03-11 00:00:00', 'rc00011'),
('00-007', 'rc00012', '2018-03-19 00:00:00', 'rc00012'),
('00-007', 'rc00013', '2018-03-27 00:00:00', 'rc00013'),
('00-007', 'rc00014', '2018-04-04 00:00:00', 'rc00014'),
('00-007', 'rc00015', '2018-07-01 00:00:00', 'rc00015'),
('00-007', 'rc00016', '2018-07-09 00:00:00', 'rc00016'),
('00-007', 'rc00017', '2018-07-17 00:00:00', 'rc00017'),
('00-007', 'rc00018', '2018-07-25 00:00:00', 'rc00018'),
('00-007', 'rc00019', '2018-06-22 00:00:00', 'rc00019'),
('00-007', 'rc00020', '2018-06-15 00:00:00', 'rc00020'),
('00-007', 'rc00021', '2018-04-12 00:00:00', 'rc00021'),
('00-007', 'rc00022', '2018-04-20 00:00:00', 'rc00022'),
('00-007', 'rc00023', '2018-04-28 00:00:00', 'rc00023'),
('00-007', 'rc00024', '2018-05-22 00:00:00', 'rc00024'),
('00-007', 'rc00025', '2018-06-07 00:00:00', 'rc00025'),
('00-007', 'rc22752', '2019-02-12 00:00:00', 'rc22752'),
('00-008', 'rc00000', '2018-01-07 00:00:00', 'rc00000'),
('00-008', 'rc00001', '2018-01-15 00:00:00', 'rc00001'),
('00-008', 'rc00002', '2018-05-07 00:00:00', 'rc00002'),
('00-008', 'rc00003', '2018-05-15 00:00:00', 'rc00003'),
('00-008', 'rc00004', '2018-05-31 00:00:00', 'rc00004'),
('00-008', 'rc00005', '2018-01-23 00:00:00', 'rc00005'),
('00-008', 'rc00006', '2018-01-31 00:00:00', 'rc00006'),
('00-008', 'rc00007', '2018-02-08 00:00:00', 'rc00007'),
('00-008', 'rc00008', '2018-02-16 00:00:00', 'rc00008'),
('00-008', 'rc00009', '2018-02-24 00:00:00', 'rc00009'),
('00-008', 'rc00010', '2018-03-04 00:00:00', 'rc00010'),
('00-008', 'rc00011', '2018-03-12 00:00:00', 'rc00011'),
('00-008', 'rc00012', '2018-03-20 00:00:00', 'rc00012'),
('00-008', 'rc00013', '2018-03-28 00:00:00', 'rc00013'),
('00-008', 'rc00014', '2018-04-05 00:00:00', 'rc00014'),
('00-008', 'rc00015', '2018-07-02 00:00:00', 'rc00015'),
('00-008', 'rc00016', '2018-07-10 00:00:00', 'rc00016'),
('00-008', 'rc00017', '2018-07-18 00:00:00', 'rc00017'),
('00-008', 'rc00018', '2018-07-26 00:00:00', 'rc00018'),
('00-008', 'rc00019', '2018-06-23 00:00:00', 'rc00019'),
('00-008', 'rc00020', '2018-06-16 00:00:00', 'rc00020'),
('00-008', 'rc00021', '2018-04-13 00:00:00', 'rc00021'),
('00-008', 'rc00022', '2018-04-21 00:00:00', 'rc00022'),
('00-008', 'rc00023', '2018-04-29 00:00:00', 'rc00023'),
('00-008', 'rc00024', '2018-05-23 00:00:00', 'rc00024'),
('00-008', 'rc00025', '2018-06-08 00:00:00', 'rc00025'),
('00-008', 'rc22752', '2019-02-04 16:55:11', 'rc22572'),
('00-009', 'rc00019', '2018-06-24 00:00:00', 'rc00019'),
('00-010', 'rc00000', '2018-01-08 00:00:00', 'rc00000'),
('00-010', 'rc00001', '2018-01-16 00:00:00', 'rc00001'),
('00-010', 'rc00002', '2018-05-08 00:00:00', 'rc00002'),
('00-010', 'rc00003', '2018-05-16 00:00:00', 'rc00003'),
('00-010', 'rc00004', '2018-06-01 00:00:00', 'rc00004'),
('00-010', 'rc00005', '2018-01-24 00:00:00', 'rc00005'),
('00-010', 'rc00006', '2018-02-01 00:00:00', 'rc00006'),
('00-010', 'rc00007', '0000-00-00 00:00:00', ''),
('00-010', 'rc00008', '2018-02-17 00:00:00', 'rc00008'),
('00-010', 'rc00009', '2018-02-25 00:00:00', 'rc00009'),
('00-010', 'rc00010', '2018-03-05 00:00:00', 'rc00010'),
('00-010', 'rc00011', '2018-03-13 00:00:00', 'rc00011'),
('00-010', 'rc00012', '0000-00-00 00:00:00', ''),
('00-010', 'rc00013', '2018-03-29 00:00:00', 'rc00013'),
('00-010', 'rc00014', '2018-04-06 00:00:00', 'rc00014'),
('00-010', 'rc00015', '2018-07-03 00:00:00', 'rc00015'),
('00-010', 'rc00016', '2018-07-11 00:00:00', 'rc00016'),
('00-010', 'rc00017', '0000-00-00 00:00:00', ''),
('00-010', 'rc00018', '2018-07-27 00:00:00', 'rc00018'),
('00-010', 'rc00019', '2018-06-25 00:00:00', 'rc00019'),
('00-010', 'rc00020', '2018-06-17 00:00:00', 'rc00020'),
('00-010', 'rc00021', '2018-04-14 00:00:00', 'rc00021'),
('00-010', 'rc00022', '2018-04-22 00:00:00', 'rc00022'),
('00-010', 'rc00023', '0000-00-00 00:00:00', ''),
('00-010', 'rc00024', '2018-05-24 00:00:00', 'rc00024'),
('00-010', 'rc00025', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `CurrencyMemberItem`
--

CREATE TABLE IF NOT EXISTS `CurrencyMemberItem` (
  `currencyID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `rcnum` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `cao` date DEFAULT NULL,
  `initialSig` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auditSig` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CurrencyMemberItem`
--

INSERT INTO `CurrencyMemberItem` (`currencyID`, `rcnum`, `cao`, `initialSig`, `auditSig`) VALUES
('FA05.01', 'rc22752', '2019-01-01', 'rc00000', 'rc99999'),
('FA05.02', 'rc22752', '2019-01-01', 'rc00000', 'rc99999'),
('FA05.03', 'rc22752', '2019-01-01', 'rc00000', 'rc99999'),
('FA05.04', 'rc22752', '2018-11-14', 'rc00000', 'rc99999'),
('FA06.01', 'rc22752', '2019-01-01', 'rc00000', 'rc99999'),
('FMV02.01', 'rc22752', '2019-01-02', 'rc00000', 'rc99999'),
('FMV02.02', 'rc22752', '2019-01-02', 'rc00000', 'rc99999'),
('FMV02.03', 'rc22752', '2019-01-02', 'rc00000', 'rc99999'),
('MA02.01', 'rc22752', '2019-02-19', 'rc00000', 'rc99999'),
('MA02.02', 'rc22752', '2019-02-19', 'rc00000', 'rc99999'),
('MA02.03', 'rc22752', '2019-02-19', 'rc00000', 'rc99999'),
('MA03.01', 'rc22752', '2019-02-10', 'rc00000', 'rc99999'),
('MA03.02', 'rc22752', '2019-02-10', 'rc00000', 'rc99999'),
('MA03.03', 'rc22752', '2019-02-10', 'rc00000', 'rc99999'),
('MA04.01', 'rc22752', '2019-02-10', 'rc00000', 'rc99999'),
('MS02.01', 'rc22752', '2018-10-23', 'rc00000', 'rc99999'),
('MS02.02', 'rc22752', '2018-10-23', 'rc00000', 'rc99999'),
('MS02.03', 'rc22752', '2018-10-23', 'rc00000', 'rc99999'),
('MS03.01', 'rc22752', '2018-10-23', 'rc00000', 'rc99999'),
('MS04.01', 'rc22752', '2018-10-23', 'rc00000', 'rc99999');

-- --------------------------------------------------------

--
-- Table structure for table `DayMember`
--

CREATE TABLE IF NOT EXISTS `DayMember` (
  `certID` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `dayDate` date NOT NULL,
  `trainerSig` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `memberSig` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `unclassTrainerComment` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `unclassMemberComment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DayMember`
--

INSERT INTO `DayMember` (`certID`, `dayDate`, `trainerSig`, `memberSig`, `unclassTrainerComment`, `unclassMemberComment`) VALUES
('rc21351fa', '2019-03-07', 'rc22752', '', 'Trainee has been entered into FA training.', NULL),
('rc22752fa', '2019-02-05', 'rc11111', 'rc22752', 'hello', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `Dependent`
--

CREATE TABLE IF NOT EXISTS `Dependent` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `depID` tinyint(1) NOT NULL,
  `depFName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `depLName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `relationship` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `school` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `livesWSponsor` tinyint(1) NOT NULL DEFAULT '1',
  `hasSpecialNeeds` tinyint(1) NOT NULL DEFAULT '0',
  `specialInfo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dependent`
--

INSERT INTO `Dependent` (`rcnum`, `depID`, `depFName`, `depLName`, `relationship`, `birthDate`, `gender`, `school`, `livesWSponsor`, `hasSpecialNeeds`, `specialInfo`) VALUES
('rc22752', 1, 'Jeff', 'Jewell', 'Son', '2016-01-03', '', 'San Destin Prepitory School', 1, 0, NULL),
('rc22752', 2, 'Jamie', 'Jewell', 'Daughter', '2017-08-23', 'F', NULL, 1, 0, NULL),
('rc99999', 1, 'T', 'Testing', 'son', '2010-01-01', 'm', 'Test Elementary', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DifferenceDesc`
--

CREATE TABLE IF NOT EXISTS `DifferenceDesc` (
  `differenceID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `terminationDate` date DEFAULT NULL,
  `issuedBy` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '11 SOIS/DOT',
  `forFMV` tinyint(1) NOT NULL DEFAULT '-1',
  `forFA` tinyint(1) NOT NULL DEFAULT '-1',
  `forMA` tinyint(1) NOT NULL DEFAULT '-1',
  `forMS` tinyint(1) NOT NULL DEFAULT '-1',
  `forRTL` tinyint(1) NOT NULL DEFAULT '-1',
  `forMOC` tinyint(1) NOT NULL DEFAULT '-1',
  `forMSA` tinyint(1) NOT NULL DEFAULT '-1',
  `unclassSubject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DifferenceDesc`
--

INSERT INTO `DifferenceDesc` (`differenceID`, `issueDate`, `terminationDate`, `issuedBy`, `forFMV`, `forFA`, `forMA`, `forMS`, `forRTL`, `forMOC`, `forMSA`, `unclassSubject`) VALUES
('55-001', '2018-12-01', NULL, '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Something new to do'),
('55-002', '2018-12-02', NULL, '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Everything is changing'),
('55-003', '2018-12-03', NULL, '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 0, 0, 'On-Eyes stuff'),
('55-004', '2018-12-04', NULL, '11SOIS/DOM/DSN 579-2007', 0, 0, 0, 0, 0, 1, 0, 'Leadership stuff'),
('55-005', '2018-12-05', '2099-01-01', '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('55-006', '2018-12-06', '2099-01-02', '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('55-007', '2018-12-07', '2099-01-03', '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('55-008', '2018-12-08', '2099-01-04', '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('55-009', '2018-12-09', NULL, '11SOIS/DOM/DSN 579-2007', 0, 0, 0, 0, 0, 0, 1, 'New DOF stuff'),
('55-010', '2018-12-10', NULL, '11SOIS/DOM/DSN 579-2007', 1, 1, 1, 1, 1, 1, 1, 'Something new to do');

-- --------------------------------------------------------

--
-- Table structure for table `DifferenceMember`
--

CREATE TABLE IF NOT EXISTS `DifferenceMember` (
  `differenceID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `dateSigned` datetime DEFAULT CURRENT_TIMESTAMP,
  `signature` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DifferenceMember`
--

INSERT INTO `DifferenceMember` (`differenceID`, `rcnum`, `dateSigned`, `signature`) VALUES
('55-001', 'rc00000', '2018-01-01 00:00:00', 'rc00000'),
('55-001', 'rc00001', '2018-01-09 00:00:00', 'rc00001'),
('55-001', 'rc00002', '2018-05-01 00:00:00', 'rc00002'),
('55-001', 'rc00003', '2018-05-09 00:00:00', 'rc00003'),
('55-001', 'rc00004', '2018-05-25 00:00:00', 'rc00004'),
('55-001', 'rc00005', '2018-01-17 00:00:00', 'rc00005'),
('55-001', 'rc00006', '2018-01-25 00:00:00', 'rc00006'),
('55-001', 'rc00007', '2018-02-02 00:00:00', 'rc00007'),
('55-001', 'rc00008', '2018-02-10 00:00:00', 'rc00008'),
('55-001', 'rc00009', '2018-02-18 00:00:00', 'rc00009'),
('55-001', 'rc00010', '2018-02-26 00:00:00', 'rc00010'),
('55-001', 'rc00011', '2018-03-06 00:00:00', 'rc00011'),
('55-001', 'rc00012', '2018-03-14 00:00:00', 'rc00012'),
('55-001', 'rc00013', '2018-03-22 00:00:00', 'rc00013'),
('55-001', 'rc00014', '2018-03-30 00:00:00', 'rc00014'),
('55-001', 'rc00015', '2018-06-26 00:00:00', 'rc00015'),
('55-001', 'rc00016', '2018-07-04 00:00:00', 'rc00016'),
('55-001', 'rc00017', '2018-07-12 00:00:00', 'rc00017'),
('55-001', 'rc00018', '2018-07-20 00:00:00', 'rc00018'),
('55-001', 'rc00019', '2018-06-18 00:00:00', 'rc00019'),
('55-001', 'rc00020', '2018-06-10 00:00:00', 'rc00020'),
('55-001', 'rc00021', '2018-04-07 00:00:00', 'rc00021'),
('55-001', 'rc00022', '2018-04-15 00:00:00', 'rc00022'),
('55-001', 'rc00023', '2018-04-23 00:00:00', 'rc00023'),
('55-001', 'rc00024', '2018-05-17 00:00:00', 'rc00024'),
('55-001', 'rc00025', '2018-06-02 00:00:00', 'rc00025'),
('55-001', 'rc22752', '2019-02-28 19:50:12', 'rc22752'),
('55-002', 'rc00000', '2018-01-02 00:00:00', 'rc00000'),
('55-002', 'rc00001', '2018-01-10 00:00:00', 'rc00001'),
('55-002', 'rc00002', '2018-05-02 00:00:00', 'rc00002'),
('55-002', 'rc00003', '2018-05-10 00:00:00', 'rc00003'),
('55-002', 'rc00004', '2018-05-26 00:00:00', 'rc00004'),
('55-002', 'rc00005', '2018-01-18 00:00:00', 'rc00005'),
('55-002', 'rc00006', '2018-01-26 00:00:00', 'rc00006'),
('55-002', 'rc00007', '2018-02-03 00:00:00', 'rc00007'),
('55-002', 'rc00008', '2018-02-11 00:00:00', 'rc00008'),
('55-002', 'rc00009', '2018-02-19 00:00:00', 'rc00009'),
('55-002', 'rc00010', '2018-02-27 00:00:00', 'rc00010'),
('55-002', 'rc00011', '2018-03-07 00:00:00', 'rc00011'),
('55-002', 'rc00012', '2018-03-15 00:00:00', 'rc00012'),
('55-002', 'rc00013', '2018-03-23 00:00:00', 'rc00013'),
('55-002', 'rc00014', '2018-03-31 00:00:00', 'rc00014'),
('55-002', 'rc00015', '2018-06-27 00:00:00', 'rc00015'),
('55-002', 'rc00016', '2018-07-05 00:00:00', 'rc00016'),
('55-002', 'rc00017', '2018-07-13 00:00:00', 'rc00017'),
('55-002', 'rc00018', '2018-07-21 00:00:00', 'rc00018'),
('55-002', 'rc00019', '2018-06-19 00:00:00', 'rc00019'),
('55-002', 'rc00020', '2018-06-11 00:00:00', 'rc00020'),
('55-002', 'rc00021', '2018-04-08 00:00:00', 'rc00021'),
('55-002', 'rc00022', '2018-04-16 00:00:00', 'rc00022'),
('55-002', 'rc00023', '2018-04-24 00:00:00', 'rc00023'),
('55-002', 'rc00024', '2018-05-18 00:00:00', 'rc00024'),
('55-002', 'rc00025', '2018-06-03 00:00:00', 'rc00025'),
('55-002', 'rc22752', '2019-02-11 23:23:52', 'rc22752'),
('55-003', 'rc00000', '2018-01-03 00:00:00', 'rc00000'),
('55-003', 'rc00001', '2018-01-11 00:00:00', 'rc00001'),
('55-003', 'rc00002', '2018-05-03 00:00:00', 'rc00002'),
('55-003', 'rc00003', '2018-05-11 00:00:00', 'rc00003'),
('55-003', 'rc00004', '2018-05-27 00:00:00', 'rc00004'),
('55-003', 'rc00005', '2018-01-19 00:00:00', 'rc00005'),
('55-003', 'rc00006', '2018-01-27 00:00:00', 'rc00006'),
('55-003', 'rc00007', '2018-02-04 00:00:00', 'rc00007'),
('55-003', 'rc00008', '2018-02-12 00:00:00', 'rc00008'),
('55-003', 'rc00009', '2018-02-20 00:00:00', 'rc00009'),
('55-003', 'rc00010', '2018-02-28 00:00:00', 'rc00010'),
('55-003', 'rc00011', '2018-03-08 00:00:00', 'rc00011'),
('55-003', 'rc00012', '2018-03-16 00:00:00', 'rc00012'),
('55-003', 'rc00013', '2018-03-24 00:00:00', 'rc00013'),
('55-003', 'rc00014', '2018-04-01 00:00:00', 'rc00014'),
('55-003', 'rc00020', '2018-06-12 00:00:00', 'rc00020'),
('55-003', 'rc00021', '2018-04-09 00:00:00', 'rc00021'),
('55-003', 'rc00022', '2018-04-17 00:00:00', 'rc00022'),
('55-003', 'rc00023', '2018-04-25 00:00:00', 'rc00023'),
('55-003', 'rc00024', '2018-05-19 00:00:00', 'rc00024'),
('55-003', 'rc00025', '2018-06-04 00:00:00', 'rc00025'),
('55-003', 'rc22752', '2019-02-20 20:48:33', 'rc22752'),
('55-004', 'rc00015', '2018-06-28 00:00:00', 'rc00015'),
('55-004', 'rc00016', '2018-07-06 00:00:00', 'rc00016'),
('55-004', 'rc00017', '2018-07-14 00:00:00', 'rc00017'),
('55-004', 'rc00018', '2018-07-22 00:00:00', 'rc00018'),
('55-004', 'rc22752', '2019-02-11 23:06:30', 'rc22752'),
('55-005', 'rc00000', '2018-01-04 00:00:00', 'rc00000'),
('55-005', 'rc00001', '2018-01-12 00:00:00', 'rc00001'),
('55-005', 'rc00002', '2018-05-04 00:00:00', 'rc00002'),
('55-005', 'rc00003', '2018-05-12 00:00:00', 'rc00003'),
('55-005', 'rc00004', '2018-05-28 00:00:00', 'rc00004'),
('55-005', 'rc00005', '2018-01-20 00:00:00', 'rc00005'),
('55-005', 'rc00006', '2018-01-28 00:00:00', 'rc00006'),
('55-005', 'rc00007', '2018-02-05 00:00:00', 'rc00007'),
('55-005', 'rc00008', '2018-02-13 00:00:00', 'rc00008'),
('55-005', 'rc00009', '2018-02-21 00:00:00', 'rc00009'),
('55-005', 'rc00010', '2018-03-01 00:00:00', 'rc00010'),
('55-005', 'rc00011', '2018-03-09 00:00:00', 'rc00011'),
('55-005', 'rc00012', '2018-03-17 00:00:00', 'rc00012'),
('55-005', 'rc00013', '2018-03-25 00:00:00', 'rc00013'),
('55-005', 'rc00014', '2018-04-02 00:00:00', 'rc00014'),
('55-005', 'rc00015', '2018-06-29 00:00:00', 'rc00015'),
('55-005', 'rc00016', '2018-07-07 00:00:00', 'rc00016'),
('55-005', 'rc00017', '2018-07-15 00:00:00', 'rc00017'),
('55-005', 'rc00018', '2018-07-23 00:00:00', 'rc00018'),
('55-005', 'rc00019', '2018-06-20 00:00:00', 'rc00019'),
('55-005', 'rc00020', '2018-06-13 00:00:00', 'rc00020'),
('55-005', 'rc00021', '2018-04-10 00:00:00', 'rc00021'),
('55-005', 'rc00022', '2018-04-18 00:00:00', 'rc00022'),
('55-005', 'rc00023', '2018-04-26 00:00:00', 'rc00023'),
('55-005', 'rc00024', '2018-05-20 00:00:00', 'rc00024'),
('55-005', 'rc00025', '2018-06-05 00:00:00', 'rc00025'),
('55-005', 'rc22752', '2019-02-11 23:00:06', 'rc22752'),
('55-006', 'rc00000', '2018-01-05 00:00:00', 'rc00000'),
('55-006', 'rc00001', '2018-01-13 00:00:00', 'rc00001'),
('55-006', 'rc00002', '2018-05-05 00:00:00', 'rc00002'),
('55-006', 'rc00003', '2018-05-13 00:00:00', 'rc00003'),
('55-006', 'rc00004', '2018-05-29 00:00:00', 'rc00004'),
('55-006', 'rc00005', '2018-01-21 00:00:00', 'rc00005'),
('55-006', 'rc00006', '2018-01-29 00:00:00', 'rc00006'),
('55-006', 'rc00007', '2018-02-06 00:00:00', 'rc00007'),
('55-006', 'rc00008', '2018-02-14 00:00:00', 'rc00008'),
('55-006', 'rc00009', '2018-02-22 00:00:00', 'rc00009'),
('55-006', 'rc00010', '2018-03-02 00:00:00', 'rc00010'),
('55-006', 'rc00011', '2018-03-10 00:00:00', 'rc00011'),
('55-006', 'rc00012', '2018-03-18 00:00:00', 'rc00012'),
('55-006', 'rc00013', '2018-03-26 00:00:00', 'rc00013'),
('55-006', 'rc00014', '2018-04-03 00:00:00', 'rc00014'),
('55-006', 'rc00015', '2018-06-30 00:00:00', 'rc00015'),
('55-006', 'rc00016', '2018-07-08 00:00:00', 'rc00016'),
('55-006', 'rc00017', '2018-07-16 00:00:00', 'rc00017'),
('55-006', 'rc00018', '2018-07-24 00:00:00', 'rc00018'),
('55-006', 'rc00019', '2018-06-21 00:00:00', 'rc00019'),
('55-006', 'rc00020', '2018-06-14 00:00:00', 'rc00020'),
('55-006', 'rc00021', '2018-04-11 00:00:00', 'rc00021'),
('55-006', 'rc00022', '2018-04-19 00:00:00', 'rc00022'),
('55-006', 'rc00023', '2018-04-27 00:00:00', 'rc00023'),
('55-006', 'rc00024', '2018-05-21 00:00:00', 'rc00024'),
('55-006', 'rc00025', '2018-06-06 00:00:00', 'rc00025'),
('55-006', 'rc22752', '2019-02-11 22:59:40', 'rc22752'),
('55-007', 'rc00000', '2018-01-06 00:00:00', 'rc00000'),
('55-007', 'rc00001', '2018-01-14 00:00:00', 'rc00001'),
('55-007', 'rc00002', '2018-05-06 00:00:00', 'rc00002'),
('55-007', 'rc00003', '2018-05-14 00:00:00', 'rc00003'),
('55-007', 'rc00004', '2018-05-30 00:00:00', 'rc00004'),
('55-007', 'rc00005', '2018-01-22 00:00:00', 'rc00005'),
('55-007', 'rc00006', '2018-01-30 00:00:00', 'rc00006'),
('55-007', 'rc00007', '2018-02-07 00:00:00', 'rc00007'),
('55-007', 'rc00008', '2018-02-15 00:00:00', 'rc00008'),
('55-007', 'rc00009', '2018-02-23 00:00:00', 'rc00009'),
('55-007', 'rc00010', '2018-03-03 00:00:00', 'rc00010'),
('55-007', 'rc00011', '2018-03-11 00:00:00', 'rc00011'),
('55-007', 'rc00012', '2018-03-19 00:00:00', 'rc00012'),
('55-007', 'rc00013', '2018-03-27 00:00:00', 'rc00013'),
('55-007', 'rc00014', '2018-04-04 00:00:00', 'rc00014'),
('55-007', 'rc00015', '2018-07-01 00:00:00', 'rc00015'),
('55-007', 'rc00016', '2018-07-09 00:00:00', 'rc00016'),
('55-007', 'rc00017', '2018-07-17 00:00:00', 'rc00017'),
('55-007', 'rc00018', '2018-07-25 00:00:00', 'rc00018'),
('55-007', 'rc00019', '2018-06-22 00:00:00', 'rc00019'),
('55-007', 'rc00020', '2018-06-15 00:00:00', 'rc00020'),
('55-007', 'rc00021', '2018-04-12 00:00:00', 'rc00021'),
('55-007', 'rc00022', '2018-04-20 00:00:00', 'rc00022'),
('55-007', 'rc00023', '2018-04-28 00:00:00', 'rc00023'),
('55-007', 'rc00024', '2018-05-22 00:00:00', 'rc00024'),
('55-007', 'rc00025', '2018-06-07 00:00:00', 'rc00025'),
('55-008', 'rc00000', '2018-01-07 00:00:00', 'rc00000'),
('55-008', 'rc00001', '2018-01-15 00:00:00', 'rc00001'),
('55-008', 'rc00002', '2018-05-07 00:00:00', 'rc00002'),
('55-008', 'rc00003', '2018-05-15 00:00:00', 'rc00003'),
('55-008', 'rc00004', '2018-05-31 00:00:00', 'rc00004'),
('55-008', 'rc00005', '2018-01-23 00:00:00', 'rc00005'),
('55-008', 'rc00006', '2018-01-31 00:00:00', 'rc00006'),
('55-008', 'rc00007', '2018-02-08 00:00:00', 'rc00007'),
('55-008', 'rc00008', '2018-02-16 00:00:00', 'rc00008'),
('55-008', 'rc00009', '2018-02-24 00:00:00', 'rc00009'),
('55-008', 'rc00010', '2018-03-04 00:00:00', 'rc00010'),
('55-008', 'rc00011', '2018-03-12 00:00:00', 'rc00011'),
('55-008', 'rc00012', '2018-03-20 00:00:00', 'rc00012'),
('55-008', 'rc00013', '2018-03-28 00:00:00', 'rc00013'),
('55-008', 'rc00014', '2018-04-05 00:00:00', 'rc00014'),
('55-008', 'rc00015', '2018-07-02 00:00:00', 'rc00015'),
('55-008', 'rc00016', '2018-07-10 00:00:00', 'rc00016'),
('55-008', 'rc00017', '2018-07-18 00:00:00', 'rc00017'),
('55-008', 'rc00018', '2018-07-26 00:00:00', 'rc00018'),
('55-008', 'rc00019', '2018-06-23 00:00:00', 'rc00019'),
('55-008', 'rc00020', '2018-06-16 00:00:00', 'rc00020'),
('55-008', 'rc00021', '2018-04-13 00:00:00', 'rc00021'),
('55-008', 'rc00022', '2018-04-21 00:00:00', 'rc00022'),
('55-008', 'rc00023', '2018-04-29 00:00:00', 'rc00023'),
('55-008', 'rc00024', '2018-05-23 00:00:00', 'rc00024'),
('55-008', 'rc00025', '2018-06-08 00:00:00', 'rc00025'),
('55-009', 'rc00019', '2018-06-24 00:00:00', 'rc00019'),
('55-010', 'rc00000', '2018-01-08 00:00:00', 'rc00000'),
('55-010', 'rc00001', '2018-01-16 00:00:00', 'rc00001'),
('55-010', 'rc00002', '2018-05-08 00:00:00', 'rc00002'),
('55-010', 'rc00003', '2018-05-16 00:00:00', 'rc00003'),
('55-010', 'rc00004', '2018-06-01 00:00:00', 'rc00004'),
('55-010', 'rc00005', '2018-01-24 00:00:00', 'rc00005'),
('55-010', 'rc00006', '2018-02-01 00:00:00', 'rc00006'),
('55-010', 'rc00007', '0000-00-00 00:00:00', ''),
('55-010', 'rc00008', '2018-02-17 00:00:00', 'rc00008'),
('55-010', 'rc00009', '2018-02-25 00:00:00', 'rc00009'),
('55-010', 'rc00010', '2018-03-05 00:00:00', 'rc00010'),
('55-010', 'rc00011', '2018-03-13 00:00:00', 'rc00011'),
('55-010', 'rc00012', '0000-00-00 00:00:00', ''),
('55-010', 'rc00013', '2018-03-29 00:00:00', 'rc00013'),
('55-010', 'rc00014', '2018-04-06 00:00:00', 'rc00014'),
('55-010', 'rc00015', '2018-07-03 00:00:00', 'rc00015'),
('55-010', 'rc00016', '2018-07-11 00:00:00', 'rc00016'),
('55-010', 'rc00017', '0000-00-00 00:00:00', ''),
('55-010', 'rc00018', '2018-07-27 00:00:00', 'rc00018'),
('55-010', 'rc00019', '2018-06-25 00:00:00', 'rc00019'),
('55-010', 'rc00020', '2018-06-17 00:00:00', 'rc00020'),
('55-010', 'rc00021', '2018-04-14 00:00:00', 'rc00021'),
('55-010', 'rc00022', '2018-04-22 00:00:00', 'rc00022'),
('55-010', 'rc00023', '0000-00-00 00:00:00', ''),
('55-010', 'rc00024', '2018-05-24 00:00:00', 'rc00024'),
('55-010', 'rc00025', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `LineItemMember`
--

CREATE TABLE IF NOT EXISTS `LineItemMember` (
  `certID` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `itemID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `openDate` date DEFAULT NULL,
  `closeDate` date DEFAULT NULL,
  `trainerSig` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certifierSig` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memberSig` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` tinyint(1) NOT NULL DEFAULT '0',
  `certifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `LineItemMember`
--

INSERT INTO `LineItemMember` (`certID`, `itemID`, `openDate`, `closeDate`, `trainerSig`, `certifierSig`, `memberSig`, `score`, `certifiedDate`) VALUES
('rc21351fa', 'FA04.01', '2019-03-07', '2019-03-08', 'rc22752', NULL, NULL, 4, NULL),
('rc21351fa', 'FA04.01.01', '2019-03-07', '2019-03-08', 'rc22752', NULL, NULL, 1, NULL),
('rc21351fa', 'FA04.01.02', '2019-03-07', '2019-03-08', 'rc22752', NULL, NULL, 1, NULL),
('rc21351fa', 'FA04.01.03', '2019-03-07', '2019-03-08', 'rc22752', NULL, NULL, 1, NULL),
('rc21351fa', 'FA04.01.04', '2019-03-07', '2019-03-08', 'rc22752', NULL, NULL, 1, NULL),
('rc21351fa', 'FA05.01', '2019-03-08', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.01.01', '2019-03-08', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.02.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.02.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.03', '2019-03-07', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.03.01', '2019-03-07', '2019-03-08', 'rc22752', NULL, NULL, 5, NULL),
('rc21351fa', 'FA05.03.02', '2019-03-07', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.03.03', '2019-03-07', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.03.04', '2019-03-07', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.03.05', '2019-03-07', NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.04', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.04.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA05.04.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA06.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA06.01.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA06.01.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.01.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.01.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.01.03', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.01.04', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.02.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.02.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.02.03', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.02.04', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.02.05', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.03', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.03.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.03.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.03.03', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.04', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.04.01', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc21351fa', 'FA07.04.02', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('rc22752fa', 'FA05.01', '2017-01-01', '2017-01-03', 'rc00000', 'rc00001', 'rc22752', 15, '2019-02-28 00:00:00'),
('rc22752fa', 'FA05.01.01', '2019-02-01', '2019-02-13', 'rc11111', NULL, NULL, 4, NULL),
('rc22752fa', 'FA05.02', '2017-01-01', '2017-01-03', 'rc00000', NULL, 'rc22752', 20, NULL),
('rc22752fa', 'FA05.03', '2017-01-04', '2017-01-04', 'rc00000', NULL, 'rc22752', 31, NULL),
('rc22752fa', 'FA05.04', '2017-01-11', '2017-01-11', 'rc00000', NULL, 'rc22752', 2, NULL),
('rc22752fa', 'FA06.01', '2017-01-04', '2017-01-04', 'rc00000', NULL, '', 20, NULL),
('rc22752ma', 'MA02.01', '2018-04-11', '2018-04-11', 'rc00000', NULL, '', 7, NULL),
('rc22752ma', 'MA02.02', '2018-03-11', '2018-03-14', 'rc00000', NULL, '', 20, NULL),
('rc22752ma', 'MA02.03', '2018-03-04', '2018-03-09', 'rc00000', NULL, '', 1, NULL),
('rc22752ma', 'MA03.01', '2018-03-11', '2018-03-14', 'rc00000', NULL, '', 7, NULL),
('rc22752ma', 'MA03.02', '2018-03-04', '2018-03-09', 'rc00000', NULL, '', 15, NULL),
('rc22752ma', 'MA03.03', '2018-03-04', '2018-03-09', 'rc00000', NULL, '', 6, NULL),
('rc22752ma', 'MA04.01', '2018-04-01', '2018-04-01', 'rc00000', NULL, '', 6, NULL),
('rc22752ms', 'MS02.01', '2018-09-19', '2018-09-19', 'rc00000', NULL, 'rc22752', 31, NULL),
('rc22752ms', 'MS02.02', '2018-09-10', '2018-09-19', 'rc00000', NULL, '', 31, NULL),
('rc22752ms', 'MS02.03', '2018-08-29', '2018-08-29', 'rc00000', NULL, 'rc22752', 31, NULL),
('rc22752ms', 'MS03.01', '2018-08-29', '2018-08-29', 'rc00000', NULL, '', 31, NULL),
('rc22752ms', 'MS04.01', '2018-08-29', '2018-08-29', 'rc00000', NULL, '', 31, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MCNDesc`
--

CREATE TABLE IF NOT EXISTS `MCNDesc` (
  `mcnID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `terminationDate` date DEFAULT NULL,
  `issuedBy` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '11 SOIS/DOM/DSN 579-2007',
  `supersedes` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forFMV` tinyint(1) NOT NULL DEFAULT '-1',
  `forFA` tinyint(1) NOT NULL DEFAULT '-1',
  `forMA` tinyint(1) NOT NULL DEFAULT '-1',
  `forMS` tinyint(1) NOT NULL DEFAULT '-1',
  `forRTL` tinyint(1) NOT NULL DEFAULT '-1',
  `forMOC` tinyint(1) NOT NULL DEFAULT '-1',
  `forMSA` tinyint(1) NOT NULL DEFAULT '-1',
  `unclassSubject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MCNDesc`
--

INSERT INTO `MCNDesc` (`mcnID`, `issueDate`, `terminationDate`, `issuedBy`, `supersedes`, `forFMV`, `forFA`, `forMA`, `forMS`, `forRTL`, `forMOC`, `forMSA`, `unclassSubject`) VALUES
('19-001', '2019-02-21', NULL, 'rc22752', '', 1, 1, 1, 1, 1, 1, 1, 'demo'),
('99-001', '2018-12-01', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 1, 1, 'Something new to do'),
('99-002', '2018-12-02', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 1, 1, 'Everything is changing'),
('99-003', '2018-12-03', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 0, 0, 'On-Eyes stuff'),
('99-004', '2018-12-04', NULL, '11SOIS/DOM/DSN 579-2007', '', 0, 0, 0, 0, 0, 1, 0, 'Leadership stuff'),
('99-005', '2018-12-05', '2099-01-01', '11SOIS/DOM/DSN 579-2007', '99-990', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('99-006', '2018-12-06', '2099-01-02', '11SOIS/DOM/DSN 579-2007', '99-991', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('99-007', '2018-12-07', '2099-01-03', '11SOIS/DOM/DSN 579-2007', '99-992', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('99-008', '2018-12-08', '2099-01-04', '11SOIS/DOM/DSN 579-2007', '99-993', 1, 1, 1, 1, 1, 1, 1, 'Go back to what it used to be'),
('99-009', '2018-12-09', NULL, '11SOIS/DOM/DSN 579-2007', '', 0, 0, 0, 0, 0, 0, 1, 'New DOF stuff'),
('99-010', '2018-12-10', NULL, '11SOIS/DOM/DSN 579-2007', '', 1, 1, 1, 1, 1, 1, 1, 'Something new to do');

-- --------------------------------------------------------

--
-- Table structure for table `MCNMember`
--

CREATE TABLE IF NOT EXISTS `MCNMember` (
  `mcnID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `dateSigned` datetime DEFAULT CURRENT_TIMESTAMP,
  `signature` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MCNMember`
--

INSERT INTO `MCNMember` (`mcnID`, `rcnum`, `dateSigned`, `signature`) VALUES
('19-001', 'rc21351', NULL, NULL),
('19-001', 'rc22602', NULL, NULL),
('19-001', 'rc22752', '2019-02-21 00:00:00', 'rc22752'),
('19-001', 'rc99999', NULL, NULL),
('99-001', 'rc00000', '2018-01-01 00:00:00', 'rc00000'),
('99-001', 'rc00001', '2018-01-09 00:00:00', 'rc00001'),
('99-001', 'rc00002', '2018-05-01 00:00:00', 'rc00002'),
('99-001', 'rc00003', '2018-05-09 00:00:00', 'rc00003'),
('99-001', 'rc00004', '2018-05-25 00:00:00', 'rc00004'),
('99-001', 'rc00005', '2018-01-17 00:00:00', 'rc00005'),
('99-001', 'rc00006', '2018-01-25 00:00:00', 'rc00006'),
('99-001', 'rc00007', '2018-02-02 00:00:00', 'rc00007'),
('99-001', 'rc00008', '2018-02-10 00:00:00', 'rc00008'),
('99-001', 'rc00009', '2018-02-18 00:00:00', 'rc00009'),
('99-001', 'rc00010', '2018-02-26 00:00:00', 'rc00010'),
('99-001', 'rc00011', '2018-03-06 00:00:00', 'rc00011'),
('99-001', 'rc00012', '2018-03-14 00:00:00', 'rc00012'),
('99-001', 'rc00013', '2018-03-22 00:00:00', 'rc00013'),
('99-001', 'rc00014', '2018-03-30 00:00:00', 'rc00014'),
('99-001', 'rc00015', '2018-06-26 00:00:00', 'rc00015'),
('99-001', 'rc00016', '2018-07-04 00:00:00', 'rc00016'),
('99-001', 'rc00017', '2018-07-12 00:00:00', 'rc00017'),
('99-001', 'rc00018', '2018-07-20 00:00:00', 'rc00018'),
('99-001', 'rc00019', '2018-06-18 00:00:00', 'rc00019'),
('99-001', 'rc00020', '2018-06-10 00:00:00', 'rc00020'),
('99-001', 'rc00021', '2018-04-07 00:00:00', 'rc00021'),
('99-001', 'rc00022', '2018-04-15 00:00:00', 'rc00022'),
('99-001', 'rc00023', '2018-04-23 00:00:00', 'rc00023'),
('99-001', 'rc00024', '2018-05-17 00:00:00', 'rc00024'),
('99-001', 'rc00025', '2018-06-02 00:00:00', 'rc00025'),
('99-002', 'rc00000', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00001', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00002', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00003', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00004', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00005', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00006', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00007', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00008', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00009', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00010', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00011', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00012', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00013', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00014', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00015', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00016', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00017', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00018', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00019', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00020', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00021', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00022', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00023', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00024', '2019-02-07 15:36:11', NULL),
('99-002', 'rc00025', '2019-02-07 15:36:11', NULL),
('99-002', 'rc22752', '2019-02-12 00:00:00', 'rc22752'),
('99-003', 'rc00000', '2018-01-03 00:00:00', 'rc00000'),
('99-003', 'rc00001', '2018-01-11 00:00:00', 'rc00001'),
('99-003', 'rc00002', '2018-05-03 00:00:00', 'rc00002'),
('99-003', 'rc00003', '2018-05-11 00:00:00', 'rc00003'),
('99-003', 'rc00004', '2018-05-27 00:00:00', 'rc00004'),
('99-003', 'rc00005', '2018-01-19 00:00:00', 'rc00005'),
('99-003', 'rc00006', '2018-01-27 00:00:00', 'rc00006'),
('99-003', 'rc00007', '2018-02-04 00:00:00', 'rc00007'),
('99-003', 'rc00008', '2018-02-12 00:00:00', 'rc00008'),
('99-003', 'rc00009', '2018-02-20 00:00:00', 'rc00009'),
('99-003', 'rc00010', '2018-02-28 00:00:00', 'rc00010'),
('99-003', 'rc00011', '2018-03-08 00:00:00', 'rc00011'),
('99-003', 'rc00012', '2018-03-16 00:00:00', 'rc00012'),
('99-003', 'rc00013', '2018-03-24 00:00:00', 'rc00013'),
('99-003', 'rc00014', '2018-04-01 00:00:00', 'rc00014'),
('99-003', 'rc00020', '2018-06-12 00:00:00', 'rc00020'),
('99-003', 'rc00021', '2018-04-09 00:00:00', 'rc00021'),
('99-003', 'rc00022', '2018-04-17 00:00:00', 'rc00022'),
('99-003', 'rc00023', '2018-04-25 00:00:00', 'rc00023'),
('99-003', 'rc00024', '2018-05-19 00:00:00', 'rc00024'),
('99-003', 'rc00025', '2018-06-04 00:00:00', 'rc00025'),
('99-003', 'rc22752', '2019-02-04 16:50:06', 'rc22572'),
('99-004', 'rc00015', '2018-06-28 00:00:00', 'rc00015'),
('99-004', 'rc00016', '2018-07-06 00:00:00', 'rc00016'),
('99-004', 'rc00017', '2018-07-14 00:00:00', 'rc00017'),
('99-004', 'rc00018', '2018-07-22 00:00:00', 'rc00018'),
('99-004', 'rc22752', '2019-02-04 16:50:06', 'rc22752'),
('99-005', 'rc00000', '2018-01-04 00:00:00', 'rc00000'),
('99-005', 'rc00001', '2018-01-12 00:00:00', 'rc00001'),
('99-005', 'rc00002', '2018-05-04 00:00:00', 'rc00002'),
('99-005', 'rc00003', '2018-05-12 00:00:00', 'rc00003'),
('99-005', 'rc00004', '2018-05-28 00:00:00', 'rc00004'),
('99-005', 'rc00005', '2018-01-20 00:00:00', 'rc00005'),
('99-005', 'rc00006', '2018-01-28 00:00:00', 'rc00006'),
('99-005', 'rc00007', '2018-02-05 00:00:00', 'rc00007'),
('99-005', 'rc00008', '2018-02-13 00:00:00', 'rc00008'),
('99-005', 'rc00009', '2018-02-21 00:00:00', 'rc00009'),
('99-005', 'rc00010', '2018-03-01 00:00:00', 'rc00010'),
('99-005', 'rc00011', '2018-03-09 00:00:00', 'rc00011'),
('99-005', 'rc00012', '2018-03-17 00:00:00', 'rc00012'),
('99-005', 'rc00013', '2018-03-25 00:00:00', 'rc00013'),
('99-005', 'rc00014', '2018-04-02 00:00:00', 'rc00014'),
('99-005', 'rc00015', '2018-06-29 00:00:00', 'rc00015'),
('99-005', 'rc00016', '2018-07-07 00:00:00', 'rc00016'),
('99-005', 'rc00017', '2018-07-15 00:00:00', 'rc00017'),
('99-005', 'rc00018', '2018-07-23 00:00:00', 'rc00018'),
('99-005', 'rc00019', '2018-06-20 00:00:00', 'rc00019'),
('99-005', 'rc00020', '2018-06-13 00:00:00', 'rc00020'),
('99-005', 'rc00021', '2018-04-10 00:00:00', 'rc00021'),
('99-005', 'rc00022', '2018-04-18 00:00:00', 'rc00022'),
('99-005', 'rc00023', '2018-04-26 00:00:00', 'rc00023'),
('99-005', 'rc00024', '2018-05-20 00:00:00', 'rc00024'),
('99-005', 'rc00025', '2018-06-05 00:00:00', 'rc00025'),
('99-005', 'rc22752', '2019-02-04 16:49:44', 'rc22572'),
('99-006', 'rc00000', '2018-01-05 00:00:00', 'rc00000'),
('99-006', 'rc00001', '2018-01-13 00:00:00', 'rc00001'),
('99-006', 'rc00002', '2018-05-05 00:00:00', 'rc00002'),
('99-006', 'rc00003', '2018-05-13 00:00:00', 'rc00003'),
('99-006', 'rc00004', '2018-05-29 00:00:00', 'rc00004'),
('99-006', 'rc00005', '2018-01-21 00:00:00', 'rc00005'),
('99-006', 'rc00006', '2018-01-29 00:00:00', 'rc00006'),
('99-006', 'rc00007', '2018-02-06 00:00:00', 'rc00007'),
('99-006', 'rc00008', '2018-02-14 00:00:00', 'rc00008'),
('99-006', 'rc00009', '2018-02-22 00:00:00', 'rc00009'),
('99-006', 'rc00010', '2018-03-02 00:00:00', 'rc00010'),
('99-006', 'rc00011', '2018-03-10 00:00:00', 'rc00011'),
('99-006', 'rc00012', '2018-03-18 00:00:00', 'rc00012'),
('99-006', 'rc00013', '2018-03-26 00:00:00', 'rc00013'),
('99-006', 'rc00014', '2018-04-03 00:00:00', 'rc00014'),
('99-006', 'rc00015', '2018-06-30 00:00:00', 'rc00015'),
('99-006', 'rc00016', '2018-07-08 00:00:00', 'rc00016'),
('99-006', 'rc00017', '2018-07-16 00:00:00', 'rc00017'),
('99-006', 'rc00018', '2018-07-24 00:00:00', 'rc00018'),
('99-006', 'rc00019', '2018-06-21 00:00:00', 'rc00019'),
('99-006', 'rc00020', '2018-06-14 00:00:00', 'rc00020'),
('99-006', 'rc00021', '2018-04-11 00:00:00', 'rc00021'),
('99-006', 'rc00022', '2018-04-19 00:00:00', 'rc00022'),
('99-006', 'rc00023', '2018-04-27 00:00:00', 'rc00023'),
('99-006', 'rc00024', '2018-05-21 00:00:00', 'rc00024'),
('99-006', 'rc00025', '2018-06-06 00:00:00', 'rc00025'),
('99-006', 'rc22752', '2019-03-05 00:00:00', 'rc22752'),
('99-007', 'rc00000', '2018-01-06 00:00:00', 'rc00000'),
('99-007', 'rc00001', '2018-01-14 00:00:00', 'rc00001'),
('99-007', 'rc00002', '2018-05-06 00:00:00', 'rc00002'),
('99-007', 'rc00003', '2018-05-14 00:00:00', 'rc00003'),
('99-007', 'rc00004', '2018-05-30 00:00:00', 'rc00004'),
('99-007', 'rc00005', '2018-01-22 00:00:00', 'rc00005'),
('99-007', 'rc00006', '2018-01-30 00:00:00', 'rc00006'),
('99-007', 'rc00007', '2018-02-07 00:00:00', 'rc00007'),
('99-007', 'rc00008', '2018-02-15 00:00:00', 'rc00008'),
('99-007', 'rc00009', '2018-02-23 00:00:00', 'rc00009'),
('99-007', 'rc00010', '2018-03-03 00:00:00', 'rc00010'),
('99-007', 'rc00011', '2018-03-11 00:00:00', 'rc00011'),
('99-007', 'rc00012', '2018-03-19 00:00:00', 'rc00012'),
('99-007', 'rc00013', '2018-03-27 00:00:00', 'rc00013'),
('99-007', 'rc00014', '2018-04-04 00:00:00', 'rc00014'),
('99-007', 'rc00015', '2018-07-01 00:00:00', 'rc00015'),
('99-007', 'rc00016', '2018-07-09 00:00:00', 'rc00016'),
('99-007', 'rc00017', '2018-07-17 00:00:00', 'rc00017'),
('99-007', 'rc00018', '2018-07-25 00:00:00', 'rc00018'),
('99-007', 'rc00019', '2018-06-22 00:00:00', 'rc00019'),
('99-007', 'rc00020', '2018-06-15 00:00:00', 'rc00020'),
('99-007', 'rc00021', '2018-04-12 00:00:00', 'rc00021'),
('99-007', 'rc00022', '2018-04-20 00:00:00', 'rc00022'),
('99-007', 'rc00023', '2018-04-28 00:00:00', 'rc00023'),
('99-007', 'rc00024', '2018-05-22 00:00:00', 'rc00024'),
('99-007', 'rc00025', '2018-06-07 00:00:00', 'rc00025'),
('99-007', 'rc22752', '2019-02-04 16:49:20', 'rc22572'),
('99-008', 'rc00000', '2018-01-07 00:00:00', 'rc00000'),
('99-008', 'rc00001', '2018-01-15 00:00:00', 'rc00001'),
('99-008', 'rc00002', '2018-05-07 00:00:00', 'rc00002'),
('99-008', 'rc00003', '2018-05-15 00:00:00', 'rc00003'),
('99-008', 'rc00004', '2018-05-31 00:00:00', 'rc00004'),
('99-008', 'rc00005', '2018-01-23 00:00:00', 'rc00005'),
('99-008', 'rc00006', '2018-01-31 00:00:00', 'rc00006'),
('99-008', 'rc00007', '2018-02-08 00:00:00', 'rc00007'),
('99-008', 'rc00008', '2018-02-16 00:00:00', 'rc00008'),
('99-008', 'rc00009', '2018-02-24 00:00:00', 'rc00009'),
('99-008', 'rc00010', '2018-03-04 00:00:00', 'rc00010'),
('99-008', 'rc00011', '2018-03-12 00:00:00', 'rc00011'),
('99-008', 'rc00012', '2018-03-20 00:00:00', 'rc00012'),
('99-008', 'rc00013', '2018-03-28 00:00:00', 'rc00013'),
('99-008', 'rc00014', '2018-04-05 00:00:00', 'rc00014'),
('99-008', 'rc00015', '2018-07-02 00:00:00', 'rc00015'),
('99-008', 'rc00016', '2018-07-10 00:00:00', 'rc00016'),
('99-008', 'rc00017', '2018-07-18 00:00:00', 'rc00017'),
('99-008', 'rc00018', '2018-07-26 00:00:00', 'rc00018'),
('99-008', 'rc00019', '2018-06-23 00:00:00', 'rc00019'),
('99-008', 'rc00020', '2018-06-16 00:00:00', 'rc00020'),
('99-008', 'rc00021', '2018-04-13 00:00:00', 'rc00021'),
('99-008', 'rc00022', '2018-04-21 00:00:00', 'rc00022'),
('99-008', 'rc00023', '2018-04-29 00:00:00', 'rc00023'),
('99-008', 'rc00024', '2018-05-23 00:00:00', 'rc00024'),
('99-008', 'rc00025', '2018-06-08 00:00:00', 'rc00025'),
('99-008', 'rc99999', '2019-02-04 16:49:20', 'rc22752'),
('99-009', 'rc00019', '2018-06-24 00:00:00', 'rc00019'),
('99-010', 'rc00000', '2018-01-08 00:00:00', 'rc00000'),
('99-010', 'rc00001', '2018-01-16 00:00:00', 'rc00001'),
('99-010', 'rc00002', '2018-05-08 00:00:00', 'rc00002'),
('99-010', 'rc00003', '2018-05-16 00:00:00', 'rc00003'),
('99-010', 'rc00004', '2018-06-01 00:00:00', 'rc00004'),
('99-010', 'rc00005', '2018-01-24 00:00:00', 'rc00005'),
('99-010', 'rc00006', '2018-02-01 00:00:00', 'rc00006'),
('99-010', 'rc00007', '0000-00-00 00:00:00', ''),
('99-010', 'rc00008', '2018-02-17 00:00:00', 'rc00008'),
('99-010', 'rc00009', '2018-02-25 00:00:00', 'rc00009'),
('99-010', 'rc00010', '2018-03-05 00:00:00', 'rc00010'),
('99-010', 'rc00011', '2018-03-13 00:00:00', 'rc00011'),
('99-010', 'rc00012', '0000-00-00 00:00:00', ''),
('99-010', 'rc00013', '2018-03-29 00:00:00', 'rc00013'),
('99-010', 'rc00014', '2018-04-06 00:00:00', 'rc00014'),
('99-010', 'rc00015', '2018-07-03 00:00:00', 'rc00015'),
('99-010', 'rc00016', '2018-07-11 00:00:00', 'rc00016'),
('99-010', 'rc00017', '0000-00-00 00:00:00', ''),
('99-010', 'rc00018', '2018-07-27 00:00:00', 'rc00018'),
('99-010', 'rc00019', '2018-06-25 00:00:00', 'rc00019'),
('99-010', 'rc00020', '2018-06-17 00:00:00', 'rc00020'),
('99-010', 'rc00021', '2018-04-14 00:00:00', 'rc00021'),
('99-010', 'rc00022', '2018-04-22 00:00:00', 'rc00022'),
('99-010', 'rc00023', '0000-00-00 00:00:00', ''),
('99-010', 'rc00024', '2018-05-24 00:00:00', 'rc00024'),
('99-010', 'rc00025', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `rcnum` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `middleName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `component` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mil',
  `unit` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '11SOIS',
  `office` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcsIn` date NOT NULL,
  `pcsOut` date DEFAULT NULL,
  `highestCert` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `highestQual` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isCertifier` tinyint(1) NOT NULL DEFAULT '0',
  `isTrainer` tinyint(1) NOT NULL DEFAULT '0',
  `isSupervisor` tinyint(1) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `highestCertLevel` tinyint(1) DEFAULT NULL,
  `highestQualLevel` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`rcnum`, `firstName`, `middleName`, `lastName`, `grade`, `component`, `unit`, `office`, `pic`, `pcsIn`, `pcsOut`, `highestCert`, `highestQual`, `isCertifier`, `isTrainer`, `isSupervisor`, `isActive`, `highestCertLevel`, `highestQualLevel`) VALUES
('rc00000', 'Test', 'Aaa', 'Injest', 'E1', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00001', 'Test', 'Bbb', 'Injest', 'E2', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00002', 'Test', 'Ccc', 'Injest', 'E3', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MA', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00003', 'Test', 'Ddd', 'Injest', 'E4', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MA', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00004', 'Test', 'Eee', 'Injest', 'E5', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'FA', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00005', 'Test', 'Fff', 'Injest', 'E6', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00006', 'Test', 'Ggg', 'Injest', 'E7', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00007', 'Test', 'Hhh', 'Injest', 'E8', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00008', 'Test', 'Iii', 'Injest', 'E9', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00009', 'Test', 'Jjj', 'Injest', 'GG11', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00010', 'Test', 'Kkk', 'Injest', 'GG11', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00011', 'Test', 'Lll', 'Injest', 'GG11', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00012', 'Test', 'Mmm', 'Injest', 'GG11', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00013', 'Test', 'Nnn', 'Injest', 'E4', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00014', 'Test', 'Ooo', 'Injest', 'E5', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00015', 'Test', 'Ppp', 'Injest', 'GG12', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MOC', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00016', 'Test', 'Qqq', 'Injest', 'O-1', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MOC', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00017', 'Test', 'Rrr', 'Injest', 'O-2', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MOC', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00018', 'Test', 'Sss', 'Injest', 'O-3', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MOC', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00019', 'Test', 'Ttt', 'Injest', 'E3', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MSA', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00020', 'Test', 'Uuu', 'Injest', 'E4', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'RTL', 'FMVA', 0, 0, 0, 0, NULL, NULL),
('rc00021', 'Test', 'Vvv', 'Injest', 'E3', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 1, 1, 0, 0, NULL, NULL),
('rc00022', 'Test', 'Www', 'Injest', 'E5', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MS', 'FMVA', 1, 1, 0, 0, NULL, NULL),
('rc00023', 'Test', 'Xxx', 'Injest', 'E3', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MA', 'FMVA', 0, 1, 0, 0, NULL, NULL),
('rc00024', 'Test', 'Yyy', 'Injest', 'E4', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'MA', 'FMVA', 0, 1, 0, 0, NULL, NULL),
('rc00025', 'Test', 'Zzz', 'Injest', 'E5', 'mil', '11SOIS', 'DOA', NULL, '2018-01-01', '2020-01-01', 'FA', 'FMVA', 0, 1, 0, 0, NULL, NULL),
('rc17469', 'Taylor', 'O', 'Herron', 'O5', 'mil', '11SOIS', 'CC', 'rc17469.JPG', '2018-10-01', '2018-12-31', NULL, NULL, 0, 0, 0, 0, NULL, NULL),
('rc21351', 'John', 'Henry', 'McKnight', 'E5', 'mil', '11SOIS', 'CCX', 'rc21351.JPG', '2018-12-01', '2018-12-31', NULL, NULL, 0, 0, 0, 1, NULL, NULL),
('rc22598', 'Jonny', 'Charles', 'Eaves', 'GG11', 'mil', '11SOIS', 'DOK', 'rc22598.JPG', '2010-01-21', '2099-01-01', NULL, NULL, 0, 0, 0, 0, NULL, NULL),
('rc22602', 'William', 'David', 'Baez', 'E7', 'mil', '11SOIS', 'CCK', 'rc22602.jpg', '2018-12-01', '2018-12-31', NULL, NULL, 0, 0, 0, 1, NULL, NULL),
('rc22752', 'Gregg', 'K', 'Jewell', 'GG11', 'mil', '11SOIS', 'CCK', 'rc22752.JPG', '2012-03-19', '2021-12-31', 'MS', 'FMV', 1, 1, 1, 1, NULL, NULL),
('rc99999', 'Kayla', 'Eckert', 'Robertson', 'O2', 'mil', '11SOIS', 'CCX', 'rc17234.JPG', '2017-06-21', '2019-03-18', NULL, 'MOC', 0, 1, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE IF NOT EXISTS `Notifications` (
  `pKeys` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tableUsed` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `recipient` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `issueDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expirationDate` datetime DEFAULT NULL COMMENT 'Null = Never',
  `message` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `isRead` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-Not read |1-Read',
  `sender` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Notifications`
--

INSERT INTO `Notifications` (`pKeys`, `tableUsed`, `recipient`, `href`, `type`, `issueDate`, `expirationDate`, `message`, `status`, `isRead`, `sender`) VALUES
('19-001rc21351', 'MCNMember', 'rc21351', 'mission.php?content=cifmcn&rcnum=rc21351', 'MCN', '2019-02-21 20:40:47', NULL, 'You need to sign [url]MCN 19-001[/url].', 'assigned', 0, 'rc22752'),
('19-001rc22602', 'MCNMember', 'rc22602', 'mission.php?content=cifmcn&rcnum=rc22602', 'MCN', '2019-02-21 20:40:47', NULL, 'You need to sign [url]MCN 19-001[/url].', 'assigned', 0, 'rc22752'),
('19-001rc99999', 'MCNMember', 'rc99999', 'mission.php?content=cifmcn&rcnum=rc99999', 'MCN', '2019-02-21 20:40:47', NULL, 'You need to sign [url]MCN 19-001[/url].', 'assigned', 0, 'rc22752'),
('2019-02-13 19:24:51', 'ASI', 'rc00000', '', 'ASI', '2019-02-13 19:24:51', '2019-03-01 08:00:00', 'There will be a SIPR email server outage from 0100-0200 CST on March 2, 2019.', 'unassigned', 0, 'rc00000'),
('leaverequestrc22752', 'Schedule', 'rc22752', '', 'sked-leave-OK', '2019-02-13 23:14:21', NULL, 'Your leave request for dates 03/01/2016-03/07/2016 has been approved.', 'unassigned', 1, 'rc00016'),
('rc2275255-001', 'DifferenceMember', 'rc22602', '', 'training', '2019-02-01 00:00:00', NULL, 'Sign off Tradecraft Enrichment: 55-001', 'assigned', 0, 'rc22752'),
('rc22752fa2019-02-05', 'DayMember', 'rc22752', '', 'training', '2019-02-01 00:00:00', NULL, 'Sign Off 623A: 2019-02-05', 'completed', 0, 'rc22602'),
('Test123', 'Test321', 'rc00000', 'sdfsd', 'sdfs', '2019-02-12 17:09:11', NULL, 'sdfsdf', 'sdf', 1, 'rc00001');

-- --------------------------------------------------------

--
-- Table structure for table `Pet`
--

CREATE TABLE IF NOT EXISTS `Pet` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `petID` tinyint(1) NOT NULL,
  `animalType` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secondaryFName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secondaryLName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secondaryPhone` char(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Pet`
--

INSERT INTO `Pet` (`rcnum`, `petID`, `animalType`, `secondaryFName`, `secondaryLName`, `secondaryPhone`) VALUES
('rc22752', 1, 'Dog', 'Kayla', 'Robertson', '717-824-5553'),
('rc99999', 1, 'dog', 'Testy', 'Test', ''),
('rc99999', 2, 'cat', 'Testy', 'Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `Positions`
--

CREATE TABLE IF NOT EXISTS `Positions` (
  `position` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pType` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `positionLevel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Positions`
--

INSERT INTO `Positions` (`position`, `parent`, `pType`, `positionLevel`) VALUES
('FA', 'FMV', 'cert', 10),
('FMV', NULL, 'qual', 0),
('MA', 'FA', 'cert', 20),
('MOC', NULL, 'qual', 0),
('MS', 'MA', 'cert', 30),
('MSA', NULL, 'qual', 0),
('RTL', 'MS', 'cert', 40);

-- --------------------------------------------------------

--
-- Table structure for table `QualCurrencyList`
--

CREATE TABLE IF NOT EXISTS `QualCurrencyList` (
  `qualTwoID` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `isFA` tinyint(1) NOT NULL DEFAULT '0',
  `isMA` tinyint(1) NOT NULL DEFAULT '0',
  `isMS` tinyint(1) NOT NULL DEFAULT '0',
  `isRTL` tinyint(1) NOT NULL DEFAULT '0',
  `isFMV` tinyint(1) NOT NULL DEFAULT '0',
  `isMOC` tinyint(1) NOT NULL DEFAULT '0',
  `isMSA` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `QualCurrencyList`
--

INSERT INTO `QualCurrencyList` (`qualTwoID`, `isFA`, `isMA`, `isMS`, `isRTL`, `isFMV`, `isMOC`, `isMSA`) VALUES
('FMV02.01', 1, 0, 0, 0, 1, 0, 0),
('FMV02.02', 1, 1, 0, 0, 1, 0, 0),
('FMV02.03', 1, 1, 1, 1, 1, 0, 0),
('MOC04.01', 0, 0, 0, 0, 0, 1, 0),
('MOC05.01', 0, 0, 0, 0, 0, 1, 0),
('MOC05.02', 0, 0, 0, 0, 0, 1, 0),
('MOC05.03', 0, 0, 0, 0, 0, 1, 0),
('MOC05.04', 0, 0, 0, 0, 0, 1, 0),
('MOC06.01', 0, 0, 0, 0, 0, 1, 0),
('MSA99.99', 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `QualMember`
--

CREATE TABLE IF NOT EXISTS `QualMember` (
  `qualID` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `qualType` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `isQualified` tinyint(1) NOT NULL DEFAULT '0',
  `evaluator` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateQualified` date DEFAULT NULL,
  `daysSatQualified` int(11) NOT NULL DEFAULT '0',
  `lastDaySatQual` date DEFAULT NULL,
  `trainingStart` date NOT NULL,
  `daysTrained` smallint(6) NOT NULL DEFAULT '0',
  `lastDateTrained` date DEFAULT NULL,
  `qualLevel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `QualMember`
--

INSERT INTO `QualMember` (`qualID`, `rcnum`, `qualType`, `isQualified`, `evaluator`, `dateQualified`, `daysSatQualified`, `lastDaySatQual`, `trainingStart`, `daysTrained`, `lastDateTrained`, `qualLevel`) VALUES
('rc00000fmv', 'rc00000', 'FMV', 1, 'rc99999', '2017-01-01', 300, '2019-01-01', '2016-12-01', 60, '2017-01-01', 0),
('rc00001fmv', 'rc00001', 'FMV', 1, 'rc99999', '2018-01-01', 200, '2019-01-02', '2017-12-01', 50, '2018-01-01', 0),
('rc00016moc', 'rc00016', 'MOC', 1, 'rc99999', '2017-01-01', 300, '2019-01-01', '2016-12-01', 60, '2017-01-01', 0),
('rc21351fmv', 'rc21351', 'FMV', 1, NULL, NULL, 0, NULL, '0000-00-00', 0, NULL, 0),
('rc22752fmv', 'rc22752', 'FMV', 1, 'rc99999', '2018-01-01', 200, '2019-01-02', '2017-12-01', 50, '2018-01-01', 0),
('rc22752moc', 'rc22752', 'MOC', 0, NULL, NULL, 0, NULL, '2019-02-26', 0, NULL, 0),
('rc99999moc', 'rc99999', 'MOC', 1, 'rc11231', '2019-02-01', 13, '2019-02-01', '2019-02-01', 3, '2019-02-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `QualPartTwo`
--

CREATE TABLE IF NOT EXISTS `QualPartTwo` (
  `qualTwoID` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `qualType` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualLevel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `QualPartTwo`
--

INSERT INTO `QualPartTwo` (`qualTwoID`, `qualType`, `description`, `reference`, `qualLevel`) VALUES
('FMV02.01', 'fmv', 'FMV Test Description 02.01', 'Tactics manual; Mission Analyst; Task 2.0 (Team management)', 0),
('FMV02.02', 'fmv', 'FMV Test Description 02.02', 'Tactics manual; Mission Analyst; Task 2.0 (Team management)', 0),
('FMV02.03', 'fmv', 'FMV Test Description 02.03', 'Tactics manual; Mission Analyst; Task 2.0 (Team management)', 0),
('MOC04.01', 'moc', 'MOC Test Description 4.01', 'Tactics MSAnual; Full-Motion Video Analyst; Task 4.0 (Target Knowledge and Research)', 0),
('MOC05.01', 'moc', 'MOC Test Description 5.01', 'Tactics MSAnual; Full-Motion Video Analyst; Task 5.0 (Workstation and Software Utilization)', 0),
('MOC05.02', 'moc', 'MOC Test Description 5.02', 'Tactics MSAnual; Full-Motion Video Analyst; Task 5.0 (Workstation and Software Utilization)', 0),
('MOC05.03', 'moc', 'MOC Test Description 5.03', 'Tactics MSAnual; Full-Motion Video Analyst; Task 5.0 (Workstation and Software Utilization)', 0),
('MOC05.04', 'moc', 'MOC Test Description 5.04', 'Tactics MSAnual; Full-Motion Video Analyst; Task 5.0 (Workstation and Software Utilization)', 0),
('MOC06.01', 'moc', 'MOC Test Description 6.01', 'Tactics MSAnual; Full-Motion Video Analyst; Task 6.0 (Coordination)', 0),
('MSA99.99', 'msa', 'MSA Test Description 99.99', 'Tactics manual; Mission Analyst; Task 2.0 (Team management)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Spouse`
--

CREATE TABLE IF NOT EXISTS `Spouse` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `spouseFName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `spouseLName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `spousePhone` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `spouseEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthDate` date NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `livesWSponsor` tinyint(1) NOT NULL DEFAULT '0',
  `canPrepareHomeEvac` tinyint(1) NOT NULL DEFAULT '0',
  `hasOwnCarEvac` tinyint(1) NOT NULL DEFAULT '0',
  `hasDriversLicense` tinyint(1) NOT NULL DEFAULT '0',
  `specialInfo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Spouse`
--

INSERT INTO `Spouse` (`rcnum`, `spouseFName`, `spouseLName`, `spousePhone`, `spouseEmail`, `birthDate`, `gender`, `livesWSponsor`, `canPrepareHomeEvac`, `hasOwnCarEvac`, `hasDriversLicense`, `specialInfo`) VALUES
('rc22752', 'Chelsie', 'Jewell', '555-555-1234', 'ChelsJewell@gmail.com', '1988-02-05', 'F', 1, 1, 1, 1, NULL),
('rc99999', 'Shane', 'IfOnly', '555-555-5555', NULL, '1985-01-03', 'm', 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Supervisor`
--

CREATE TABLE IF NOT EXISTS `Supervisor` (
  `rcnumSupervisor` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `supervisorID` tinyint(1) NOT NULL,
  `rcnumSupervisee` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Supervisor`
--

INSERT INTO `Supervisor` (`rcnumSupervisor`, `supervisorID`, `rcnumSupervisee`) VALUES
('rc22752', 1, 'rc00000'),
('rc00010', 1, 'rc00002'),
('rc00011', 1, 'rc00003'),
('rc00012', 1, 'rc00004'),
('rc00012', 2, 'rc00005'),
('rc00012', 3, 'rc00006'),
('rc00012', 4, 'rc00007'),
('rc00012', 5, 'rc00008'),
('rc00015', 1, 'rc00016'),
('rc00015', 2, 'rc00017'),
('rc00015', 3, 'rc00018'),
('rc00020', 1, 'rc00021'),
('rc00020', 2, 'rc00022'),
('rc00020', 3, 'rc00023'),
('rc00020', 4, 'rc00024'),
('rc00003', 1, 'rc17469');

-- --------------------------------------------------------

--
-- Table structure for table `Trainer`
--

CREATE TABLE IF NOT EXISTS `Trainer` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `highestCertCanTrain` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trainTheTrainer` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Trainer`
--

INSERT INTO `Trainer` (`rcnum`, `highestCertCanTrain`, `trainTheTrainer`) VALUES
('rc22752', 'MS', '2016-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `rcnum` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `isFullAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `isDOT` tinyint(1) NOT NULL DEFAULT '0',
  `isCCV` tinyint(1) NOT NULL DEFAULT '0',
  `isDOM` tinyint(1) NOT NULL DEFAULT '0',
  `isSqCC` tinyint(1) NOT NULL DEFAULT '0',
  `isFltAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `isFltCurrency` tinyint(1) NOT NULL DEFAULT '0',
  `password` char(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`rcnum`, `isFullAdmin`, `isDOT`, `isCCV`, `isDOM`, `isSqCC`, `isFltAdmin`, `isFltCurrency`, `password`) VALUES
('rc22752', 1, 0, 0, 0, 0, 0, 0, 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AlternateAddress`
--
ALTER TABLE `AlternateAddress`
  ADD PRIMARY KEY (`altAddressID`,`rcnum`),
  ADD KEY `AlternateAddress_ibfk_1` (`rcnum`);

--
-- Indexes for table `AuntSally`
--
ALTER TABLE `AuntSally`
  ADD PRIMARY KEY (`rcnum`),
  ADD UNIQUE KEY `dodIDNum` (`dodIDNum`);

--
-- Indexes for table `CertCurrencyList`
--
ALTER TABLE `CertCurrencyList`
  ADD PRIMARY KEY (`twoID`);

--
-- Indexes for table `Certifier`
--
ALTER TABLE `Certifier`
  ADD PRIMARY KEY (`rcnum`);

--
-- Indexes for table `CertMember`
--
ALTER TABLE `CertMember`
  ADD PRIMARY KEY (`certID`),
  ADD KEY `rcnum` (`rcnum`);

--
-- Indexes for table `CertPartOne`
--
ALTER TABLE `CertPartOne`
  ADD PRIMARY KEY (`oneID`);

--
-- Indexes for table `CertPartTwo`
--
ALTER TABLE `CertPartTwo`
  ADD PRIMARY KEY (`twoID`),
  ADD KEY `oneID` (`oneID`);

--
-- Indexes for table `CIFDesc`
--
ALTER TABLE `CIFDesc`
  ADD PRIMARY KEY (`cifID`);

--
-- Indexes for table `CIFMember`
--
ALTER TABLE `CIFMember`
  ADD PRIMARY KEY (`cifID`,`rcnum`),
  ADD KEY `CIFMember_ibfk_1` (`rcnum`);

--
-- Indexes for table `CurrencyMemberItem`
--
ALTER TABLE `CurrencyMemberItem`
  ADD PRIMARY KEY (`currencyID`,`rcnum`),
  ADD KEY `rcnum` (`rcnum`);

--
-- Indexes for table `DayMember`
--
ALTER TABLE `DayMember`
  ADD PRIMARY KEY (`certID`,`dayDate`);

--
-- Indexes for table `Dependent`
--
ALTER TABLE `Dependent`
  ADD PRIMARY KEY (`rcnum`,`depID`);

--
-- Indexes for table `DifferenceDesc`
--
ALTER TABLE `DifferenceDesc`
  ADD PRIMARY KEY (`differenceID`);

--
-- Indexes for table `DifferenceMember`
--
ALTER TABLE `DifferenceMember`
  ADD PRIMARY KEY (`differenceID`,`rcnum`),
  ADD KEY `DifferenceMember_ibfk_1` (`rcnum`);

--
-- Indexes for table `LineItemMember`
--
ALTER TABLE `LineItemMember`
  ADD PRIMARY KEY (`certID`,`itemID`);

--
-- Indexes for table `MCNDesc`
--
ALTER TABLE `MCNDesc`
  ADD PRIMARY KEY (`mcnID`);

--
-- Indexes for table `MCNMember`
--
ALTER TABLE `MCNMember`
  ADD PRIMARY KEY (`mcnID`,`rcnum`),
  ADD KEY `MCNMember_ibfk_2` (`rcnum`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`rcnum`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`pKeys`,`tableUsed`,`recipient`),
  ADD KEY `Notifications_ibfk_1` (`recipient`),
  ADD KEY `sender` (`sender`);

--
-- Indexes for table `Pet`
--
ALTER TABLE `Pet`
  ADD PRIMARY KEY (`rcnum`,`petID`);

--
-- Indexes for table `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`position`),
  ADD KEY `fk_parent` (`parent`);

--
-- Indexes for table `QualCurrencyList`
--
ALTER TABLE `QualCurrencyList`
  ADD PRIMARY KEY (`qualTwoID`);

--
-- Indexes for table `QualMember`
--
ALTER TABLE `QualMember`
  ADD PRIMARY KEY (`qualID`),
  ADD KEY `rcnum` (`rcnum`);

--
-- Indexes for table `QualPartTwo`
--
ALTER TABLE `QualPartTwo`
  ADD PRIMARY KEY (`qualTwoID`);

--
-- Indexes for table `Spouse`
--
ALTER TABLE `Spouse`
  ADD PRIMARY KEY (`rcnum`);

--
-- Indexes for table `Supervisor`
--
ALTER TABLE `Supervisor`
  ADD PRIMARY KEY (`rcnumSupervisor`,`supervisorID`),
  ADD UNIQUE KEY `rcnumSupervisee` (`rcnumSupervisee`);

--
-- Indexes for table `Trainer`
--
ALTER TABLE `Trainer`
  ADD PRIMARY KEY (`rcnum`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`rcnum`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AlternateAddress`
--
ALTER TABLE `AlternateAddress`
  ADD CONSTRAINT `AlternateAddress_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `AuntSally` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `AuntSally`
--
ALTER TABLE `AuntSally`
  ADD CONSTRAINT `AuntSally_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON UPDATE CASCADE;

--
-- Constraints for table `CertCurrencyList`
--
ALTER TABLE `CertCurrencyList`
  ADD CONSTRAINT `CertCurrencyList_ibfk_1` FOREIGN KEY (`twoID`) REFERENCES `CertPartTwo` (`twoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Certifier`
--
ALTER TABLE `Certifier`
  ADD CONSTRAINT `Certifier_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CertMember`
--
ALTER TABLE `CertMember`
  ADD CONSTRAINT `CertMember_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON UPDATE CASCADE;

--
-- Constraints for table `CertPartTwo`
--
ALTER TABLE `CertPartTwo`
  ADD CONSTRAINT `CertPartTwo_ibfk_1` FOREIGN KEY (`oneID`) REFERENCES `CertPartOne` (`oneID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CIFMember`
--
ALTER TABLE `CIFMember`
  ADD CONSTRAINT `CIFMember_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CIFMember_ibfk_2` FOREIGN KEY (`cifID`) REFERENCES `CIFDesc` (`cifID`) ON UPDATE CASCADE;

--
-- Constraints for table `CurrencyMemberItem`
--
ALTER TABLE `CurrencyMemberItem`
  ADD CONSTRAINT `CurrencyMemberItem_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON UPDATE CASCADE;

--
-- Constraints for table `DayMember`
--
ALTER TABLE `DayMember`
  ADD CONSTRAINT `DayMember_ibfk_1` FOREIGN KEY (`certID`) REFERENCES `CertMember` (`certID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Dependent`
--
ALTER TABLE `Dependent`
  ADD CONSTRAINT `Dependent_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `AuntSally` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DifferenceMember`
--
ALTER TABLE `DifferenceMember`
  ADD CONSTRAINT `DifferenceMember_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DifferenceMember_ibfk_2` FOREIGN KEY (`differenceID`) REFERENCES `DifferenceDesc` (`differenceID`) ON UPDATE CASCADE;

--
-- Constraints for table `LineItemMember`
--
ALTER TABLE `LineItemMember`
  ADD CONSTRAINT `LineItemMember_ibfk_1` FOREIGN KEY (`certID`) REFERENCES `CertMember` (`certID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MCNMember`
--
ALTER TABLE `MCNMember`
  ADD CONSTRAINT `MCNMember_ibfk_1` FOREIGN KEY (`mcnID`) REFERENCES `MCNDesc` (`mcnID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `MCNMember_ibfk_2` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD CONSTRAINT `Notifications_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notifications_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Pet`
--
ALTER TABLE `Pet`
  ADD CONSTRAINT `Pet_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `AuntSally` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Positions`
--
ALTER TABLE `Positions`
  ADD CONSTRAINT `fk_parent` FOREIGN KEY (`parent`) REFERENCES `Positions` (`position`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `QualCurrencyList`
--
ALTER TABLE `QualCurrencyList`
  ADD CONSTRAINT `QualCurrencyList_ibfk_1` FOREIGN KEY (`qualTwoID`) REFERENCES `QualPartTwo` (`qualTwoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `QualMember`
--
ALTER TABLE `QualMember`
  ADD CONSTRAINT `QualMember_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON UPDATE CASCADE;

--
-- Constraints for table `Spouse`
--
ALTER TABLE `Spouse`
  ADD CONSTRAINT `Spouse_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `AuntSally` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Supervisor`
--
ALTER TABLE `Supervisor`
  ADD CONSTRAINT `Supervisor_ibfk_1` FOREIGN KEY (`rcnumSupervisor`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Supervisor_ibfk_2` FOREIGN KEY (`rcnumSupervisee`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Trainer`
--
ALTER TABLE `Trainer`
  ADD CONSTRAINT `Trainer_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`rcnum`) REFERENCES `Member` (`rcnum`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
