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
-- Table structure for table `finalgames`
--

CREATE TABLE `finalgames` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `finalgames`
--

INSERT INTO `finalgames` VALUES(1, 'rnbqkbnr/1p2pppp/p2p4/8/3NP3/8/PPP2PPP/RNBQKB1R w KQkq - 1 5', 'rnbqkbnr/1p2pppp/p2p4/8/2PNP3/8/PP3PPP/RNBQKB1R b KQkq c3 1 5', NULL, 'W', 'c4', 0, '2012-12-29 10:20:46', 'Stockfish', 'W');
INSERT INTO `finalgames` VALUES(2, 'r1bqkbnr/pppp1ppp/2n5/4p3/8/1P6/PBPPPPPP/RN1QKBNR w KQkq - 3 3', 'r1bqkbnr/pppp1ppp/2n5/4p3/8/1P3N2/PBPPPPPP/RN1QKB1R b KQkq - 4 3', NULL, 'W', 'Nf3', 0, '2012-12-29 10:40:14', 'Stockfish', 'W');
INSERT INTO `finalgames` VALUES(3, 'rnbqk2r/ppp2ppp/5n2/3p2B1/1b1P4/2P2N2/PP3PPP/RN1QKB1R b KQkq - 1 6', 'rnbqk2r/ppp2ppp/3b1n2/3p2B1/3P4/2P2N2/PP3PPP/RN1QKB1R w KQkq - 2 7', NULL, 'B', 'Bd6', 0, '2012-12-29 10:41:11', 'Stockfish', 'B');
INSERT INTO `finalgames` VALUES(4, 'rnbqkbnr/1p3ppp/p2pp3/8/2PNP3/8/PP3PPP/RNBQKB1R w KQkq - 1 6', 'rnbqkbnr/1p3ppp/p2pp3/8/2PNP3/2N5/PP3PPP/R1BQKB1R b KQkq - 2 6', NULL, 'W', 'Nc3', 0, '2012-12-29 10:45:47', 'Stockfish', NULL);
INSERT INTO `finalgames` VALUES(5, 'rnbqkbnr/ppp1pppp/8/3p4/4P3/3P4/PPP2PPP/RNBQKBNR b KQkq - 1 2', 'rnbqkbnr/ppp1pppp/8/8/4p3/3P4/PPP2PPP/RNBQKBNR w KQkq - 1 3', NULL, 'B', 'dxe4', 0, '2012-12-29 11:05:05', 'Stockfish', NULL);
INSERT INTO `finalgames` VALUES(6, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQK2R w KQkq - 3 6', 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', NULL, 'W', 'O-O', 1, '2012-12-29 11:29:43', 'Stockfish', 'W');
INSERT INTO `finalgames` VALUES(7, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/1p2pppp/p1n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'a6', 0, '2012-12-29 11:29:43', NULL, 'W');
INSERT INTO `finalgames` VALUES(8, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/1p2pppp/2n2n2/p1pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq a6 1 7', NULL, 'B', 'a5', 0, '2012-12-29 11:29:44', NULL, 'W');
INSERT INTO `finalgames` VALUES(9, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/p3pppp/1pn2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'b6', 0, '2012-12-29 11:29:45', NULL, 'W');
INSERT INTO `finalgames` VALUES(10, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/p3pppp/2n2n2/1ppp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq b6 1 7', NULL, 'B', 'b5', 0, '2012-12-29 11:29:45', NULL, 'W');
INSERT INTO `finalgames` VALUES(11, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp3ppp/2n1pn2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'e6', 0, '2012-12-29 11:29:46', NULL, 'W');
INSERT INTO `finalgames` VALUES(12, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp3ppp/2n2n2/2pppb2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq e6 1 7', NULL, 'B', 'e5', 0, '2012-12-29 11:29:46', NULL, 'W');
INSERT INTO `finalgames` VALUES(13, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pp1p/2n2np1/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'g6', 0, '2012-12-29 11:29:47', NULL, 'W');
INSERT INTO `finalgames` VALUES(14, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pp1p/2n2n2/2pp1bp1/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq g6 1 7', NULL, 'B', 'g5', 0, '2012-12-29 11:29:47', NULL, 'W');
INSERT INTO `finalgames` VALUES(15, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2ppp1/2n2n1p/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'h6', 0, '2012-12-29 11:29:48', NULL, 'W');
INSERT INTO `finalgames` VALUES(16, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2ppp1/2n2n2/2pp1b1p/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq h6 1 7', NULL, 'B', 'h5', 0, '2012-12-29 11:29:48', NULL, 'W');
INSERT INTO `finalgames` VALUES(17, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2n2/3p1b2/2p5/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'c4', 0, '2012-12-29 11:29:49', NULL, 'W');
INSERT INTO `finalgames` VALUES(18, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2n2/2p2b2/3p4/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'd4', 0, '2012-12-29 11:29:49', NULL, 'W');
INSERT INTO `finalgames` VALUES(19, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', '1r1qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w k - 5 7', NULL, 'B', 'Rb8', 0, '2012-12-29 11:29:50', NULL, 'W');
INSERT INTO `finalgames` VALUES(20, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', '2rqkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w k - 5 7', NULL, 'B', 'Rc8', 0, '2012-12-29 11:29:51', NULL, 'W');
INSERT INTO `finalgames` VALUES(21, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'rn1qkb1r/pp2pppp/5n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Nb8', 0, '2012-12-29 11:29:52', NULL, 'W');
INSERT INTO `finalgames` VALUES(22, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/5n2/2ppnb2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Ne5', 0, '2012-12-29 11:29:52', NULL, 'W');
INSERT INTO `finalgames` VALUES(23, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/5n2/2pp1b2/3n4/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Nd4', 0, '2012-12-29 11:29:53', NULL, 'W');
INSERT INTO `finalgames` VALUES(24, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/5n2/2pp1b2/1n6/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Nb4', 0, '2012-12-29 11:29:54', NULL, 'W');
INSERT INTO `finalgames` VALUES(25, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/5n2/n1pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Na5', 0, '2012-12-29 11:29:54', NULL, 'W');
INSERT INTO `finalgames` VALUES(26, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r3kb1r/pp1qpppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qd7', 0, '2012-12-29 11:29:55', NULL, 'W');
INSERT INTO `finalgames` VALUES(27, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r3kb1r/pp2pppp/2nq1n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qd6', 0, '2012-12-29 11:29:55', NULL, 'W');
INSERT INTO `finalgames` VALUES(28, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r1q1kb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qc8', 0, '2012-12-29 11:29:56', NULL, 'W');
INSERT INTO `finalgames` VALUES(29, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'rq2kb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qb8', 0, '2012-12-29 11:29:57', NULL, 'W');
INSERT INTO `finalgames` VALUES(30, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r3kb1r/ppq1pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qc7', 0, '2012-12-29 11:29:57', NULL, 'W');
INSERT INTO `finalgames` VALUES(31, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r3kb1r/pp2pppp/1qn2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qb6', 0, '2012-12-29 11:29:58', NULL, 'W');
INSERT INTO `finalgames` VALUES(32, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r3kb1r/pp2pppp/2n2n2/q1pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Qa5', 0, '2012-12-29 11:29:58', NULL, 'W');
INSERT INTO `finalgames` VALUES(33, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2q1b1r/pp1kpppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w - - 5 7', NULL, 'B', 'Kd7', 0, '2012-12-29 11:29:59', NULL, 'W');
INSERT INTO `finalgames` VALUES(34, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2nb1/2pp4/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Bg6', 0, '2012-12-29 11:29:59', NULL, 'W');
INSERT INTO `finalgames` VALUES(35, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n1bn2/2pp4/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Be6', 0, '2012-12-29 11:30:00', NULL, 'W');
INSERT INTO `finalgames` VALUES(36, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp1bpppp/2n2n2/2pp4/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Bd7', 0, '2012-12-29 11:30:00', NULL, 'W');
INSERT INTO `finalgames` VALUES(37, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r1bqkb1r/pp2pppp/2n2n2/2pp4/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Bc8', 0, '2012-12-29 11:30:01', NULL, 'W');
INSERT INTO `finalgames` VALUES(38, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2n2/2pp4/6b1/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Bg4', 0, '2012-12-29 11:30:01', NULL, 'W');
INSERT INTO `finalgames` VALUES(39, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2n2/2pp4/8/3P1NPb/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Bh3', 0, '2012-12-29 11:30:02', NULL, 'W');
INSERT INTO `finalgames` VALUES(40, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2n2/2pp4/4b3/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Be4', 0, '2012-12-29 11:30:03', NULL, 'W');
INSERT INTO `finalgames` VALUES(41, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n2n2/2pp4/8/3b1NP1/PPPNPPBP/R1BQ1RK1 w kq - 1 7', NULL, 'B', 'Bxd3', 0, '2012-12-29 11:30:03', NULL, 'W');
INSERT INTO `finalgames` VALUES(42, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp1npppp/2n5/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Nd7', 0, '2012-12-29 11:30:04', NULL, 'W');
INSERT INTO `finalgames` VALUES(43, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkbnr/pp2pppp/2n5/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Ng8', 0, '2012-12-29 11:30:04', NULL, 'W');
INSERT INTO `finalgames` VALUES(44, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n5/2pp1b1n/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Nh5', 0, '2012-12-29 11:30:05', NULL, 'W');
INSERT INTO `finalgames` VALUES(45, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n5/2pp1b2/6n1/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Ng4', 0, '2012-12-29 11:30:05', NULL, 'W');
INSERT INTO `finalgames` VALUES(46, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkb1r/pp2pppp/2n5/2pp1b2/4n3/3P1NP1/PPPNPPBP/R1BQ1RK1 w kq - 5 7', NULL, 'B', 'Ne4', 0, '2012-12-29 11:30:06', NULL, 'W');
INSERT INTO `finalgames` VALUES(47, 'r2qkb1r/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 b kq - 4 6', 'r2qkbr1/pp2pppp/2n2n2/2pp1b2/8/3P1NP1/PPPNPPBP/R1BQ1RK1 w q - 5 7', NULL, 'B', 'Rg8', 0, '2012-12-29 11:30:06', NULL, 'W');
