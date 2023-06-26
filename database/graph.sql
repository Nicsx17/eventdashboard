-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2023 at 08:46 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graph`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblearn`
--

DROP TABLE IF EXISTS `tblearn`;
CREATE TABLE IF NOT EXISTS `tblearn` (
  `months` varchar(20) NOT NULL,
  `earn` int NOT NULL,
  PRIMARY KEY (`earn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblearn`
--

INSERT INTO `tblearn` (`months`, `earn`) VALUES
('January', 50050),
('February', 44250),
('March', 45750),
('April', 41250),
('May', 67000),
('June', 65020),
('July', 70650),
('August', 80530),
('September', 74500),
('October', 88300),
('November', 67750),
('December', 100500);

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

DROP TABLE IF EXISTS `tblevent`;
CREATE TABLE IF NOT EXISTS `tblevent` (
  `events` varchar(20) NOT NULL,
  `clients` int NOT NULL,
  PRIMARY KEY (`clients`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`events`, `clients`) VALUES
('Birthday', 54),
('Party', 40),
('Wedding', 66);

-- --------------------------------------------------------

--
-- Table structure for table `tblgraph`
--

DROP TABLE IF EXISTS `tblgraph`;
CREATE TABLE IF NOT EXISTS `tblgraph` (
  `months` varchar(20) NOT NULL,
  `clients` int NOT NULL,
  PRIMARY KEY (`clients`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblgraph`
--

INSERT INTO `tblgraph` (`months`, `clients`) VALUES
('Jan', 50),
('Feb', 45),
('March', 56),
('April', 51),
('May', 61),
('June', 75),
('July', 70),
('Aug', 85),
('Sept', 74),
('Oct', 88),
('Nov', 67),
('Dec', 96);

-- --------------------------------------------------------

--
-- Table structure for table `tblmap`
--

DROP TABLE IF EXISTS `tblmap`;
CREATE TABLE IF NOT EXISTS `tblmap` (
  `name` varchar(50) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblmap`
--

INSERT INTO `tblmap` (`name`, `lat`, `lng`) VALUES
('Nikita\'s Hotel', 13.391239, 121.165916),
('Filipiniana Hotel Calapan', 13.404110, 121.183960),
('Shakey\'s Pizza Parlor', 13.406622, 121.176453),
('Tagpuan Bistro', 13.408571, 121.175697),
('Halcon\'s Bar and Resto', 13.404094, 121.183479),
('Dad & Me Cafe', 13.416788, 121.182938),
('Uncle Jov\'s', 13.403273, 121.184769),
('Juancios Burgers', 13.403116, 121.180450),
('Blossom Food Delight', 13.408969, 121.178429),
('DUTCH CAFE', 13.404679, 121.183815),
('Vencios Garden Hotel and Restaurant', 13.396719, 121.168846),
('Balai Mindoro', 13.372282, 121.167168),
('Eduardo\'s Resort', 13.358214, 121.169571),
('Villa Agueda Events Place', 13.308098, 121.152710),
('El Pueblo Rhizort', 13.410175, 121.154015),
('Czeascape Beach Resort', 13.415124, 121.162292),
('Playa Ignacio Resort', 13.414508, 121.169785),
('Villa El Salvador', 13.396371, 121.215851),
('Riceland Inn I', 13.412261, 121.179527);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
