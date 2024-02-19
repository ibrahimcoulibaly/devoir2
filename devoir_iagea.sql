-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 19, 2024 at 09:01 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devoir_iagea`
--

-- --------------------------------------------------------

--
-- Table structure for table `bien`
--

DROP TABLE IF EXISTS `bien`;
CREATE TABLE IF NOT EXISTS `bien` (
  `id_bien` int(11) NOT NULL AUTO_INCREMENT,
  `reference_bien` varchar(25) NOT NULL,
  `description_bien` varchar(25) NOT NULL,
  `prix_bien` double NOT NULL,
  `dateCreation_bien` date NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`id_bien`),
  UNIQUE KEY `zone_id` (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `id_zone` int(11) NOT NULL AUTO_INCREMENT,
  `nom_zone` varchar(25) NOT NULL,
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `bien_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id_zone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
