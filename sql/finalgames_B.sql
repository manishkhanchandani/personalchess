-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2012 at 11:33 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chessstockfish`
--

-- --------------------------------------------------------

--
-- Table structure for table `finalgames_B`
--

CREATE TABLE `finalgames_B` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fen` varchar(255) DEFAULT NULL,
  `fenpost` varchar(255) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `moveby` char(1) DEFAULT NULL,
  `move` varchar(50) DEFAULT NULL,
  `process` int(1) NOT NULL DEFAULT '0',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `played_by` varchar(50) DEFAULT NULL,
  `owner` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fen_3` (`fen`,`fenpost`),
  KEY `fen` (`fen`),
  KEY `process` (`process`),
  KEY `pid_2` (`fen`,`moveby`,`move`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `finalgames_B`
--

