-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2012 at 11:34 AM
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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `fen` varchar(100) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `moveby` char(1) DEFAULT NULL,
  `move` varchar(50) DEFAULT NULL,
  `process` int(1) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner` enum('White','Black') NOT NULL DEFAULT 'White',
  PRIMARY KEY (`id`),
  KEY `fen` (`fen`),
  KEY `fen_2` (`fen`,`active`),
  KEY `process` (`process`),
  KEY `pid` (`pid`),
  KEY `pid_2` (`pid`,`fen`,`moveby`,`move`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16466 ;
