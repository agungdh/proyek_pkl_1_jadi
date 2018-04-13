-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2018 at 03:23 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_pkl_1_fix`
--

-- --------------------------------------------------------

--
-- Table structure for table `butir`
--

CREATE TABLE `butir` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `substandar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `butir`
--

INSERT INTO `butir` (`id`, `nomor`, `nama`, `substandar_id`) VALUES
(1, '1.1.1', 'Butir 1.1.1', 1),
(2, '1.1.2', 'Butir 1.1.2', 1),
(3, '1.2.1', 'Butir 1.2.1', 2),
(4, '1.1.3', 'Butir 1.1.3', 1),
(5, '1.1.1', 'Butir 1.1.1', 11),
(6, '1.1.2', 'Butir 1.1.2', 11),
(7, '1.1.3', 'Butir 1.1.3', 11),
(8, '1.2.2', 'Butir 1.2.2', 2),
(9, '1.2.3', 'Butir 1.2.3', 2),
(10, '1.3.1', 'Butir 1.3.1', 28),
(11, '7.1.1', 'butir 7.1.1', 25),
(12, '7.2.2', 'butir 7.1.2', 25),
(13, '1.3.2', 'Butir 1.3.2', 28),
(14, '7.1.3', 'butir 7.1.3', 25),
(15, '1.3.3', 'Butir 1.3.3', 28),
(16, '1.1.1', 'butir 1.1.1', 4),
(17, '1.2.1', 'Butir 1.2.1', 13),
(18, '1.1.2', 'butir 1.1.2', 4),
(19, '1.2.2', 'Butir 1.2.2', 13),
(20, '1.1.3', 'butir 1.1.3', 4),
(21, '2.1.1', 'Butir 2.1.1', 29),
(22, '1.2.3', 'Butir 1.2.3', 13),
(23, '1.2.1', 'butir 1.2.1', 5),
(24, '2.1.2', 'Butir 2.1.2', 29),
(25, '1.2.2', 'butir 1.2.2', 5),
(26, '1.2.3', 'butir 1.2.3', 5),
(27, '1.3.1', 'butir 1.3.1', 6),
(28, '2.1.3', 'Butir 2.1.3', 29),
(29, '1.3.2', 'butri 1.3.2', 6),
(30, '1.3.3', 'butir 1.3.3', 6),
(31, '2.1.1', 'butir 2.1.1', 7),
(32, '2.1.2', 'buutir 2.1.2', 7),
(33, '2.2.1', 'Butir 2.2.1', 30),
(34, '2.1.3', 'butir 2.1.3', 7),
(35, '2.2.1', 'butir 2.2.1', 8),
(36, '2.2.2', 'butir 2.2.2', 8),
(37, '2.2.2', 'Butir 2.2.2', 30),
(38, '2.2.3', 'butir 2.2.3', 8),
(39, '2.3.1', 'butir 2.3.1', 9),
(40, '2.3.2', 'butir 2.3.2', 9),
(41, '2.2.3', 'Butir 2.2.3', 30),
(42, '2.3.3', 'butir 2.3.3', 9),
(43, '3.1.1', 'butir 3.1.1', 10),
(44, '1.3.1', 'Butir 1.3.1', 15),
(45, '3.1.2', 'butir 3.1.2', 10),
(46, '3.1.2', 'butir 3.1.3', 10),
(47, '1.3.2', 'Butir 1.3.2', 15),
(48, '2.3.1', 'Butir 2.3.1', 31),
(49, '3.2.1', 'butir 3.2.1', 12),
(50, '1.3.3', 'Butir 1.3.3', 15),
(51, '3.2.2', 'butir 3.2.2', 12),
(52, '3.2.3', 'butir 3.2.3', 12),
(53, '2.3.2', 'Butir 2.3.2', 31),
(54, '3.3.1', 'butir 3.3.1', 14),
(55, '3.3.2', 'butir 3.3.2', 14),
(56, '2.3.3', 'Butir 2.3.3', 31),
(57, '3.3.3', 'butir 3.3.3', 14),
(58, '3.1.1', 'Butir 3.1.1', 32),
(59, '4.1.1', 'butir  4.1.1', 16),
(60, '4.1.2', 'butir 4.1.2', 16),
(61, '3.1.2', 'Butir 3.1.2', 32),
(62, '4.1.3', 'butir 4.1.3', 16),
(63, '4.2.1', 'butir 4.2.1', 17),
(64, '3.1.3', 'Butir 3.1.3', 32),
(65, '4.2.2', 'butir 4.2.2', 17),
(66, '4.2.3', 'butir 4.2.3', 17),
(67, '4.3.1', 'butir 4.3.1', 18),
(68, '4.3.2', 'butir 4.3.2', 18),
(69, '3.2.1', 'Butir 3.2.1', 34),
(70, '4.3.3', 'butir 4.3.3', 18),
(71, '3.2.2', 'Butir 3.2.2', 34),
(72, '5.1.1', 'butir 5.1.1', 19),
(73, '2.1.1', 'Butir 2.1.1', 33),
(74, '5.1.2', 'butir 5.1.2', 19),
(75, '5.1.3', 'butir 5.1.3', 19),
(76, '3.2.3', 'Butir 3.2.3', 34),
(77, '2.1.2', 'Butir 2.1.2', 33),
(78, '5.2.1', 'butir 5.2.1', 20),
(79, '5.2.2', 'butir 5.2.2', 20),
(80, '2.1.3', 'Butir 2.1.3', 33),
(81, '5.2.3', 'butir 5.2.3', 20),
(82, '5.3.1', 'butir 5.3.1', 21),
(83, '3.3.1', 'Butir 3.3.1', 37),
(84, '5.3.2', 'butir 5.3.2', 21),
(85, '5.3.3', 'butir 5.3.3', 21),
(86, '3.3.2', 'Butir 3.3.2', 37),
(87, '6.1.1', 'butir 6.1.1', 22),
(88, '6.1.2', 'butir 6.1.2', 22),
(89, '3.3.3', 'Butir 3.3.3', 37),
(90, '6.1.3', 'butir 6.1.3', 22),
(91, '6.2.1', 'butir 6.2.1', 23),
(92, '6.2.2', 'butir 6.2.2', 23),
(93, '6.2.3', 'butir 6.2.3', 23),
(94, '4.1.1', 'Butir 4.1.1', 38),
(95, '6.3.1', 'butir 6.3.1', 24),
(96, '6.3.2', 'butir 6.3.2', 24),
(97, '2.2.1', 'Butir 2.2.1', 35),
(98, '6.3.3', 'butir 6.3.3', 24),
(99, '2.2.2', 'Butir 2.2.2', 35),
(100, '4.1.2', 'Butir 4.1.2', 38),
(101, '2.2.3', 'Butir 2.2.3', 35),
(102, '7.2.1', 'butir 7.2.1', 26),
(103, '7.2.2', 'butir 7.2.2', 26),
(104, '7.2.3', 'butir 7.2.3', 26),
(105, '4.1.3', 'Butir 4.1.3', 38),
(106, '7.3.1', 'butir 7.3.1', 27),
(107, '7.3.2', 'butir 7.3.2', 27),
(108, '7.3.3', 'butir 7.3.3', 27),
(109, '4.2.1', 'Butir 4.2.1', 39),
(110, '2.3.1', 'Butir 2.3.1', 36),
(111, '4.2.2', 'Butir 4.2.2', 39),
(112, '2.3.2', 'Butir 2.3.2', 36),
(113, '4.2.3', 'Butir 4.2.3', 39),
(114, '2.3.3', 'Butir 2.3.3', 36),
(115, '4.3.1', 'Butir 4.3.1', 40),
(116, '4.3.2', 'Butir 4.3.2', 40),
(117, '4.3.3', 'Butir 4.3.3', 40),
(118, '5.1.1', 'Butir 5.1.1', 41),
(119, '5.1.2', 'Butir 5.1.2', 41),
(120, '3.1.1', 'Butir 3.1.1', 42),
(121, '5.1.3', 'Butir 5.1.3', 41),
(122, '3.1.2', 'Butir 3.1.2', 42),
(123, '3.1.3', 'Butir 3.1.3', 42),
(124, '5.2.1', 'Butir 5.2.1', 45),
(125, '5.2.2', 'Butir 5.2.2', 45),
(126, '5.3.3', 'Butir 5.3.3', 45),
(127, '5.3.1', 'Butir 5.3.1', 46),
(128, '5.3.2', 'Butir 5.3.2', 46),
(129, '5.3.3', 'Butir 5.3.3', 46),
(130, '3.2.1', 'Butir 3.2.1', 43),
(131, '6.1.1', 'Butir 6.1.1', 47),
(132, '3.2.2', 'Butir 3.2.2', 43),
(133, '6.1.2', 'Butir 6.1.2', 47),
(134, '6.1.3', 'Butir 6.1.3', 47),
(135, '3.2.3', 'Butir 3.2.3', 43),
(136, '6.2.1', 'Butir 6.2.1', 48),
(137, '6.2.2', 'Butir 6.2.2', 48),
(138, '6.2.3', 'Butir 6.2.3', 48),
(139, '3.3.1', 'Butir 3.3.1', 44),
(140, '6.3.1', 'Butir 6.3.1', 49),
(141, '3.3.2', 'Butir 3.3.2', 44),
(142, '3.3.3', 'Butir 3.3.3', 44),
(143, '6.3.2', 'Butir 6.3.2', 49),
(144, '6.3.3', 'Butir 6.3.3', 49),
(145, '7.1.1', 'Butir 7.1.1', 50),
(146, '7.1.2', 'Butir 7.1.2', 50),
(147, '7.1.3', 'Butir 7.1.3', 50),
(148, '7.2.1', 'Butir 7.2.1', 51),
(149, '7.2.2', 'Butir 7.2.2', 51),
(150, '7.2.3', 'Butir 7.2.3', 51),
(151, '4.1.1', 'Butir 4.1.1', 52),
(152, '7.3.1', 'Butir 7.3.1', 55),
(153, '7.3.2', 'Butir 7.3.2', 55),
(154, '4.1.2', 'Butir 4.1.2', 52),
(155, '7.3.3', 'Butir 7.3.3', 55),
(156, '4.1.3', 'Butir 4.1.3', 52),
(157, '4.2.1', 'Butir 4.2.1', 53),
(158, '4.2.2', 'Butir 4.2.2', 53),
(159, '4.2.3', 'Butir 4.2.3', 53),
(160, '4.3.1', 'Butir 4.3.1', 54),
(161, '4.3.2', 'Butir 4.3.2', 54),
(162, '4.3.3', 'Butir 4.3.3', 54),
(163, '5.1.1', 'Butir 5.1.1', 56),
(164, '5.1.2', 'Butir 5.1.2', 56),
(165, '5.1.3', 'Butir 5.1.3', 56),
(166, '5.2.1', 'Butir 5.2.1', 57),
(167, '5.2.2', 'Butir 5.2.2', 57),
(168, '5.2.3', 'Butir 5.2.3', 57),
(169, '7.1.1', 'Butir 7.1.1', 59),
(170, '7.1.2', 'Butir 7.1.2', 59),
(171, '7.1.3', 'Butir 7.1.3', 59),
(172, '5.3.1', 'Butir 5.3.1', 58),
(173, '7.2.1', 'Butir 7.2.1', 60),
(174, '5.3.2', 'Butir 5.3.2', 58),
(175, '5.3.3', 'Butir 5.3.3', 58),
(176, '7.2.2', 'Butir 7.2.2', 60),
(177, '7.2.3', 'Butir 7.2.3', 60),
(178, '7.3.1', 'Butir 7.3.1', 61),
(179, '7.3.2', 'Butir 7.3.2', 61),
(180, '7.3.3', 'Butir 7.3.3', 61),
(181, '6.1.1', 'Butir 6.1.1', 62),
(182, '6.1.2', 'Butir 6.1.2', 62),
(183, '6.1.3', 'Butir 6.1.3', 62),
(184, '6.2.1', 'Butir 6.2.1', 63),
(185, '6.3.3', 'Butir 6.3.3', 64),
(186, '6.3.2', 'Butir 6.3.2', 64);

-- --------------------------------------------------------

--
-- Table structure for table `butirpenilaian`
--

CREATE TABLE `butirpenilaian` (
  `id` int(11) NOT NULL,
  `nomor_butir` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `bobot` decimal(11,2) NOT NULL,
  `butir_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `butirpenilaian`
--

INSERT INTO `butirpenilaian` (`id`, `nomor_butir`, `deskripsi`, `bobot`, `butir_id`) VALUES
(3, '3.2.3.1', 'isi dokumen', '0.90', 76),
(4, '3.3.1.1', 'ketepatan dokumen', '1.00', 83),
(5, '1.1.1.1', 'kelengkapan dokumen', '0.10', 1),
(6, '1.1.1.2', 'Penulisan Dokumen', '0.40', 1),
(7, '1.1.1.3', 'Isi Dokumen', '0.60', 1),
(8, '1.1.2.1', 'kelengkapan dokumen', '0.80', 2),
(9, '1.1.2.2', 'Penulisan Dokumen', '0.30', 2),
(10, '1.1.2.3', 'Isi Dokumen', '0.90', 2),
(11, '1.1.3.1', 'kelengkapan dokumen', '0.70', 4),
(12, '1.1.3.2', 'Penulisan Dokumen', '0.90', 4),
(13, '1.1.3.3', 'Isi Dokumen', '1.00', 4),
(14, '1.2.1.1', 'kelengkapan dokumen', '0.50', 3),
(15, '1.2.1.2', 'Penulisan Dokumen', '0.50', 3),
(16, '1.2.1.3', 'Isi Dokumen', '1.00', 3),
(17, '1.2.2.1', 'kelengkapan dokumen', '0.20', 8),
(18, '1.2.2.2', 'Penulisan Dokumen', '1.00', 8),
(19, '1.2.2.3', 'Isi Dokumen', '0.50', 8),
(20, '1.2.3.1', 'kelengkapan dokumen', '0.40', 9),
(21, '1.2.3.2', 'Penulisan Dokumen', '0.30', 9),
(22, '1.2.3.3', 'Isi Dokumen', '0.40', 9),
(23, '1.3.1.1', 'kelengkapan dokumen', '0.90', 10),
(24, '1.3.1.2', 'Penulisan Dokumen', '0.20', 10),
(25, '1.3.1.3', 'Isi Dokumen', '0.50', 10),
(26, '1.3.2.1', 'kelengkapan dokumen', '0.60', 13),
(27, '1.3.2.2', 'Penulisan Dokumen', '0.40', 13),
(28, '1.3.2.3', 'Isi Dokumen', '0.30', 13),
(29, '1.3.3.1', 'kelengkapan dokumen', '0.30', 15),
(30, '1.3.3.2', 'Penulisan Dokumen', '0.40', 15),
(31, '1.3.3.3', 'Isi Dokumen', '0.10', 15),
(32, '2.1.1.1', 'Ketepatan Dokumen', '0.20', 21),
(33, '2.1.1.2', 'Format Dokumen', '0.60', 21),
(34, '2.1.1.3', 'Isi Dokumen', '0.50', 21),
(35, '2.1.2.1', 'Ketepatan Dokumen', '0.50', 24),
(36, '2.1.2.2', 'Format Dokumen', '0.90', 24),
(37, '2.1.2.3', 'Isi Dokumen', '0.20', 24),
(38, '2.1.3.1', 'Ketepatan Dokumen', '0.20', 28),
(39, '2.1.3.2', 'Format Dokumen', '0.50', 28),
(40, '2.1.3.3', 'Isi Dokumen', '0.70', 28),
(41, '2.2.1.1', 'Ketepatan Dokumen', '0.20', 33),
(42, '2.2.1.2', 'Format Dokumen', '0.50', 33),
(43, '2.2.1.3', 'Isi Dokumen', '0.90', 33),
(44, '2.2.2.1', 'Ketepatan Dokumen', '0.90', 37),
(45, '2.2.2.2', 'Format Dokumen', '0.60', 37),
(46, '2.2.2.3', 'Isi Dokumen', '0.50', 37),
(47, '1.2.2.4', 'Ketepatan Dokumen', '0.70', 8),
(48, '1.2.2.5', 'Format Dokumen', '0.70', 8),
(49, '1.1.2.4', 'Format Dokumen', '0.40', 2),
(50, '2.2.3.1', 'kelengkapan dokumen', '0.90', 41),
(51, '2.2.3.2', 'Isi Dokumen', '0.30', 41),
(52, '2.3.1.1', 'kelengkapan dokumen', '0.70', 48),
(53, '2.3.1.2', 'Isi Dokumen', '0.50', 48),
(54, '2.3.1.3', 'Ketepatan Dokumen', '0.30', 48),
(55, '2.3.1.4', 'Format Dokumen', '0.10', 48),
(56, '2.3.2.1', 'kelengkapan dokumen', '0.30', 53),
(57, '2.3.2.2', 'Penulisan Dokumen', '0.40', 53),
(58, '2.3.3.3', 'Isi Dokumen', '0.80', 53),
(59, '2.3.3.1', 'kelengkapan dokumen', '0.70', 56),
(60, '2.3.3.2', 'Penulisan Dokumen', '0.20', 56),
(61, '2.3.3.3', 'Isi Dokumen', '0.80', 56),
(62, '3.1.1.1', 'Format Dokumen', '0.50', 58),
(63, '3.1.1.2', 'kelengkapan dokumen', '1.00', 58),
(64, '3.1.1.3', 'Penulisan Dokumen', '0.20', 58),
(65, '3.1.1.4', 'Isi Dokumen', '0.30', 58),
(66, '3.1.2.1', 'Kesesuaian dokumen', '0.60', 61),
(67, '3.1.2.2', 'kelengkapan dokumen', '0.30', 61),
(68, '3.1.2.3', 'Penulisan Dokumen', '0.50', 61),
(69, '3.1.2.4', 'Isi Dokumen', '0.70', 61),
(70, '3.1.3.3', 'kelengkapan dokumen', '0.80', 64),
(71, '3.1.3.1', 'Penulisan Dokumen', '0.90', 64),
(72, '3.1.3.2', 'ketepatan dokumen', '0.90', 64),
(73, '3.1.3.4', 'Isi Dokumen', '1.00', 64),
(74, '3.2.1.1', 'kelengkapan dokumen', '0.30', 69),
(75, '3.2.1.2', 'Isi Dokumen', '0.20', 69),
(76, '3.2.2.1', 'Format Dokumen', '0.40', 71),
(77, '3.2.2.2', 'Isi Dokumen', '1.00', 71),
(78, '3.3.2.1', 'Isi Dokumen', '0.80', 86),
(79, '3.3.2.2', 'kelengkapan dokumen', '1.00', 86),
(80, '3.3.2.3', 'Kesesuaian dokumen', '0.30', 86),
(81, '3.3.2.4', 'Format Dokumen', '0.80', 86),
(82, '3.3.3.1', 'Format Dokumen', '0.90', 89),
(83, '3.3.3.2', 'Kesesuaian dokumen', '0.90', 89),
(84, '3.3.3.3', 'Isi Dokumen', '0.80', 89),
(85, '4.1.1.1', 'kelengkapan dokumen', '0.50', 94),
(86, '4.1.1.2', 'Penulisan Dokumen', '0.70', 94),
(87, '4.1.1.3', 'Isi Dokumen', '0.20', 94),
(88, '4.1.2.1', 'kelengkapan dokumen', '0.80', 100),
(89, '4.1.2.2', 'Penulisan Dokumen', '0.30', 100),
(90, '4.1.2.3', 'Isi Dokumen', '0.20', 100),
(91, '4.1.3.1', 'kelengkapan dokumen', '0.20', 105),
(92, '4.1.3.2', 'Penulisan Dokumen', '1.00', 105),
(93, '4.1.3.3', 'Isi Dokumen', '0.60', 105),
(94, '4.2.1.1', 'Format Dokumen', '1.00', 109),
(95, '4.2.1.2', 'Ketepatan Dokumen', '1.00', 109),
(96, '4.2.1.3', 'kelengkapan dokumen', '0.10', 109),
(97, '4.2.1.4', 'Isi Dokumen', '0.20', 109),
(98, '4.2.2.1', 'Format Dokumen', '0.60', 111),
(99, '4.2.2.2', 'Ketepatan Dokumen', '0.50', 111),
(100, '4.2.2.3', 'kelengkapan dokumen', '0.80', 111),
(101, '4.2.2.4', 'Isi Dokumen', '0.40', 111),
(102, '4.2.3.1', 'kelengkapan dokumen', '0.30', 113),
(103, '4.2.3.2', 'Penulisan Dokumen', '0.50', 113),
(104, '4.2.3.3', 'Isi Dokumen', '0.40', 113),
(105, '4.3.3.1', 'kelengkapan dokumen', '0.60', 117),
(106, '4.3.3.2', 'Isi Dokumen', '0.60', 117),
(107, '4.3.2.1', 'kelengkapan dokumen', '0.20', 116),
(108, '4.3.2..2', 'Isi Dokumen', '0.10', 116),
(109, '5.1.1.1', 'kelengkapan dokumen', '0.90', 118),
(110, '5.1.1.2', 'Isi Dokumen', '0.10', 118),
(111, '5.1.1.3', 'Ketepatan Dokumen', '0.60', 118),
(112, '5.1.1.4', 'Format Dokumen', '0.60', 118),
(113, '5.1.1.5', 'Penulisan Dokumen', '0.40', 118),
(114, '5.1.2.1', 'Penulisan Dokumen', '1.00', 119),
(115, '5.1.2.2', 'Isi Dokumen', '0.60', 119),
(116, '5.1.3.1', 'Isi Dokumen', '0.30', 121),
(117, '5.2.1.1', 'kelengkapan dokumen', '0.40', 124),
(118, '5.2.1.2', 'Isi Dokumen', '1.00', 124),
(119, '5.2.2.1', 'kelengkapan dokumen', '1.00', 125),
(120, '5.2.2.2', 'Penulisan Dokumen', '0.70', 125),
(121, '5.2.2.3', 'Isi Dokumen', '0.70', 125),
(122, '5.3.3.1', 'Format Dokumen', '0.20', 126),
(123, '5.3.3.2', 'kelengkapan dokumen', '0.70', 126),
(124, '5.3.3.3', 'Isi Dokumen', '0.10', 126),
(125, '5.3.1.1', 'Isi Dokumen', '0.40', 127),
(126, '5.3.2.1', 'kelengkapan dokumen', '0.70', 128),
(127, '5.3.2.2', 'Isi Dokumen', '0.30', 128),
(128, '5.3.3.1', 'Ketepatan Dokumen', '0.40', 129),
(129, '5.3.3.2', 'Penulisan Dokumen', '0.90', 129),
(130, '5.3.3.3', 'Isi Dokumen', '0.10', 129),
(131, '6.1.1.1', 'Format Dokumen', '0.80', 131),
(132, '6.1.1.2', 'Ketepatan Dokumen', '0.70', 131),
(133, '6.1.1.3', 'Kesesuaian dokumen', '0.20', 131),
(134, '6.1.1.4', 'Isi Dokumen', '0.70', 131),
(135, '6.1.2.1', 'Isi Dokumen', '0.90', 133),
(136, '6.1.3.1', 'kelengkapan dokumen', '0.50', 134),
(137, '6.1.3.2', 'Penulisan Dokumen', '0.80', 134),
(138, '6.1.3.3', 'Isi Dokumen', '0.20', 134),
(139, '6.2.1.1', 'Isi Dokumen', '0.60', 136),
(140, '6.2.1.2', 'Penulisan Dokumen', '0.50', 136),
(141, '6.2.1.3', 'Ketepatan Dokumen', '0.50', 136),
(142, '6.2.2.1', 'Isi Dokumen', '0.80', 137),
(143, '6.2.3.1', 'kelengkapan dokumen', '0.60', 138),
(144, '6.2.3.2', 'Isi Dokumen', '0.60', 138),
(145, '6.3.1.1', 'Format Dokumen', '1.00', 140),
(146, '6.3.1.2', 'Isi Dokumen', '0.30', 140),
(147, '6.3.1.3', 'Ketepatan Dokumen', '0.50', 140),
(148, '6.3.1.4', 'Kesesuaian dokumen', '0.40', 140),
(149, '6.3.2.1', 'kelengkapan dokumen', '0.30', 143),
(150, '6.3.2.2', 'Isi Dokumen', '0.50', 143),
(151, '6.3.3.1', 'kelengkapan dokumen', '0.40', 144),
(152, '6.3.3.2', 'Penulisan Dokumen', '0.50', 144),
(153, '6.3.3.3', 'Isi Dokumen', '0.20', 144),
(154, '7.1.1.1', 'kelengkapan dokumen', '0.60', 145),
(155, '7.1.1.2', 'Kesesuaian dokumen', '0.40', 145),
(156, '7.1.1.3', 'Isi Dokumen', '0.90', 145),
(157, '7.1.2.1', 'Ketepatan Dokumen', '0.50', 146),
(158, '7.1.2.2', 'Penulisan Dokumen', '0.80', 146),
(159, '7.1.2.3', 'Isi Dokumen', '0.40', 146),
(160, '7.1.3.1', 'kelengkapan dokumen', '0.70', 147),
(161, '7.1.3.2', 'Penulisan Dokumen', '0.10', 147),
(162, '7.1.3.3', 'Isi Dokumen', '0.40', 147),
(163, '7.2.1.1', 'Isi Dokumen', '0.80', 148),
(164, '7.2.2.1', 'Format Dokumen', '0.50', 149),
(165, '7.2.2.2', 'Isi Dokumen', '1.00', 149),
(166, '7.2.3.1', 'Kesesuaian dokumen', '0.40', 150),
(167, '7.2.3.2', 'Isi Dokumen', '1.00', 150),
(168, '7.3.1.1', 'kelengkapan dokumen', '1.00', 152),
(169, '7.3.1.2', 'Penulisan Dokumen', '0.80', 152),
(170, '7.3.1.3', 'Isi Dokumen', '1.00', 152),
(171, '7.3.2.1', 'Format Dokumen', '0.40', 153),
(172, '7.3.2.2', 'Ketepatan Dokumen', '1.00', 153),
(173, '7.3.2.3', 'Kesesuaian dokumen', '0.60', 153),
(174, '7.3.2.4', 'Isi Dokumen', '0.30', 153),
(175, '7.3.3.1', 'kelengkapan dokumen', '0.30', 155),
(176, '7.3.3.2', 'Penulisan Dokumen', '0.80', 155),
(177, '7.3.3.3', 'Isi Dokumen', '0.80', 155),
(178, '1.1.1.1', 'Visi Misi', '0.70', 5);

-- --------------------------------------------------------

--
-- Table structure for table `detilpenilaian`
--

CREATE TABLE `detilpenilaian` (
  `id` int(11) NOT NULL,
  `penilaian_id` int(11) NOT NULL,
  `butirpenilaian_id` int(11) NOT NULL,
  `nilai` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detilpenilaian`
--

INSERT INTO `detilpenilaian` (`id`, `penilaian_id`, `butirpenilaian_id`, `nilai`) VALUES
(4, 2, 5, '2.00'),
(5, 2, 6, '3.00'),
(6, 2, 7, '5.00'),
(7, 3, 8, '4.00'),
(8, 3, 9, '5.00'),
(9, 3, 10, '6.00'),
(56, 2, 11, '6.00'),
(57, 4, 5, '2.50');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `nama_file_asli` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `listdokumen_id` int(11) NOT NULL,
  `pengajuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama_file`, `nama_file_asli`, `mime`, `url`, `listdokumen_id`, `pengajuan_id`) VALUES
(18, '18_Screenshot from 2018-03-06 15-09-08.png', 'Screenshot from 2018-03-06 15-09-08.png', 'image/png', 'upload/A/A1/2018/7 Standar/Tikem/standar_3/substandar_3.1/butir_3.1.3//18_Screenshot from 2018-03-06 15-09-08.png', 344, 2),
(19, '19_Screenshot from 2018-03-06 08-13-12.png', 'Screenshot from 2018-03-06 08-13-12.png', 'image/png', 'upload/A/A1/2018/7 Standar/Tikem/standar_1/substandar_1.1/butir_1.1.2//19_Screenshot from 2018-03-06 08-13-12.png', 261, 2),
(20, '20_adminer-4.6.2.php', 'adminer-4.6.2.php', 'application/x-php', 'upload/A/A1/2018/7 Standar/Tikem/standar_1/substandar_1.1/butir_1.1.3//20_adminer-4.6.2.php', 265, 2),
(22, '22_DATA BORANG TESTING.docx', 'DATA BORANG TESTING.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'upload/A/A1/2018/7 Standar/Tikem/standar_4/substandar_4.1/butir_4.1.1//22_DATA BORANG TESTING.docx', 375, 2),
(23, '23_DATA BORANG TESTING.docx', 'DATA BORANG TESTING.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'upload/A/A1/2018/7 Standar/Tikem/standar_6/substandar_6.1/butir_6.1.1//23_DATA BORANG TESTING.docx', 479, 2),
(24, '24_DATA BORANG TESTING.docx', 'DATA BORANG TESTING.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'upload/A/A1/2018/7 Standar/Tikem/standar_6/substandar_6.1/butir_6.1.3//24_DATA BORANG TESTING.docx', 487, 2),
(25, '25_DATA BORANG TESTING.docx', 'DATA BORANG TESTING.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'upload/A/A1/2018/7 Standar/Tikem/standar_4/substandar_4.1/butir_4.1.2//25_DATA BORANG TESTING.docx', 380, 2),
(26, '26_adminer-4.6.2.php', 'adminer-4.6.2.php', 'application/x-php', 'upload/A/A1/2018/7 Standar/Tikem/standar_1/substandar_1.1/butir_1.1.1//26_adminer-4.6.2.php', 258, 2),
(27, '27_android_tutorial.pdf', 'android_tutorial.pdf', 'application/pdf', 'upload/A/A1/2018/7 Standar/Tikem/standar_1/substandar_1.1/butir_1.1.1//27_android_tutorial.pdf', 259, 2),
(28, '28_adminer-4.6.2.php', 'adminer-4.6.2.php', 'application/x-php', 'upload/A/A1/2018/7 Standar/Tikem/standar_1/substandar_1.1/butir_1.1.2//28_adminer-4.6.2.php', 260, 2),
(29, '29_android_tutorial.pdf', 'android_tutorial.pdf', 'application/pdf', 'upload/A/A1/2018/7 Standar/Tikem/standar_5/substandar_5.1/butir_5.1.1//29_android_tutorial.pdf', 433, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `kode`, `nama`) VALUES
(8, 'A', 'Ilmu Komunikasi'),
(9, 'B', 'Teknik'),
(10, 'C', 'Teknologi Informasi'),
(12, 'D', 'Ekonomi dan Bisnis'),
(13, 'E', 'Ilmu Sosial & Ilmu Politik');

-- --------------------------------------------------------

--
-- Table structure for table `listdokumen`
--

CREATE TABLE `listdokumen` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `butir_id` int(11) NOT NULL,
  `tipe` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listdokumen`
--

INSERT INTO `listdokumen` (`id`, `keterangan`, `butir_id`, `tipe`) VALUES
(258, 'Listdokumen', 1, 1),
(259, 'Listdokumen', 1, 2),
(260, 'Listdokumen', 2, 1),
(261, 'Listdokumen', 2, 3),
(262, 'Listdokumen', 1, 2),
(263, 'Listdokumen', 2, 3),
(264, 'Listdokumen', 4, 1),
(265, 'Listdokumen', 4, 1),
(266, 'Listdokumen', 4, 3),
(267, 'Dokumen 1', 5, 1),
(268, 'Listdokumen', 8, 1),
(269, 'Listdokumen', 8, 1),
(270, 'Dokumen 2', 5, 2),
(271, 'Listdokumen', 8, 1),
(272, 'Dokumen 3', 5, 3),
(273, 'Dokumen 2.1', 6, 1),
(274, 'Listdokumen', 9, 1),
(275, 'Dokumen 2.2', 6, 2),
(276, 'Listdokumen', 9, 1),
(277, 'Listdokumen', 9, 1),
(278, 'Dokumen 2.3', 6, 3),
(279, 'Dokumen 3.1', 7, 1),
(280, 'Dokumen 3.2', 7, 2),
(281, 'Listdokumen', 10, 2),
(282, 'Listdokumen', 10, 1),
(283, 'Dokumen 3.3', 7, 3),
(284, 'Listdokumen', 10, 2),
(285, 'Listdokumen', 13, 1),
(286, 'Listdokumen', 13, 3),
(287, 'Listdokumen', 13, 2),
(288, 'Listdokumen', 15, 3),
(289, 'Listdokumen', 15, 2),
(290, 'Listdokumen', 15, 1),
(291, 'Listdokumen', 21, 2),
(292, 'Listdokumen', 21, 1),
(293, 'Listdokumen', 21, 3),
(294, 'Listdokumen', 24, 1),
(295, 'Listdokumen', 24, 2),
(296, 'Listdokumen', 24, 3),
(297, 'Dokumen 1', 17, 1),
(298, 'Listdokumen', 28, 1),
(299, 'Listdokumen', 28, 1),
(300, 'Listdokumen', 28, 1),
(301, 'Dokumen 2', 17, 2),
(303, 'Dokumen 3', 17, 3),
(304, 'Dokumen 1', 19, 1),
(305, 'Dokumen 2', 19, 2),
(306, 'Dokumen 3', 19, 3),
(307, 'Listdokumen', 33, 1),
(308, 'Listdokumen', 33, 1),
(309, 'Listdokumen', 33, 1),
(310, 'Dokumen 1', 22, 1),
(311, 'Listdokumen', 37, 1),
(312, 'Listdokumen', 37, 2),
(313, 'Dokumen 2', 22, 2),
(314, 'Listdokumen', 37, 2),
(315, 'Dokumen 3', 22, 3),
(316, 'Listdokumen', 41, 1),
(317, 'Listdokumen', 41, 1),
(318, 'Listdokumen', 41, 1),
(319, 'Listdokumen', 48, 1),
(320, 'Listdokumen', 48, 1),
(321, 'Listdokumen', 48, 1),
(322, 'Dokumen 1', 44, 1),
(323, 'Listdokumen', 53, 1),
(324, 'Dokumen 2', 44, 2),
(325, 'Listdokumen', 53, 1),
(326, 'Listdokumen', 53, 1),
(327, 'Dokumen 3', 44, 3),
(328, 'Listdokumen', 56, 1),
(329, 'Listdokumen', 56, 1),
(330, 'Listdokumen', 56, 1),
(331, 'Dokumen 1', 47, 1),
(332, 'Dokumen 2', 47, 2),
(333, 'Dokumen 3', 47, 3),
(334, 'Dokumen 1', 50, 1),
(335, 'Listdokumen', 58, 3),
(336, 'Listdokumen', 58, 2),
(337, 'Listdokumen', 58, 1),
(338, 'Dokumen 2', 50, 2),
(339, 'Dokumen 3', 50, 3),
(341, 'Listdokumen', 61, 1),
(342, 'Listdokumen', 61, 1),
(343, 'Listdokumen', 61, 1),
(344, 'Listdokumen', 64, 2),
(345, 'Listdokumen', 64, 1),
(346, 'Listdokumen', 64, 1),
(347, 'Listdokumen', 69, 1),
(348, 'Listdokumen', 69, 1),
(349, 'Listdokumen', 69, 1),
(350, 'Listdokumen', 71, 1),
(351, 'Listdokumen', 71, 1),
(352, 'Listdokumen', 71, 1),
(353, 'Listdokumen', 76, 1),
(354, 'Listdokumen', 76, 1),
(355, 'Listdokumen', 76, 1),
(356, 'Dokumen 1', 73, 1),
(357, 'Listdokumen', 83, 1),
(358, 'Dokumen 2', 73, 2),
(359, 'Listdokumen', 83, 1),
(360, 'Listdokumen', 83, 1),
(361, 'Dokumen 3', 73, 3),
(362, 'Listdokumen', 86, 1),
(363, 'Listdokumen', 86, 1),
(364, 'Listdokumen', 86, 1),
(365, 'Dokumen 1', 77, 1),
(366, 'Listdokumen', 89, 1),
(367, 'Listdokumen', 89, 1),
(368, 'Dokumen 2', 77, 2),
(369, 'Listdokumen', 89, 1),
(370, 'Dokumen 3', 77, 3),
(371, 'Dokumen 1', 80, 1),
(372, 'Dokumen 2', 80, 2),
(373, 'Dokumen 3', 80, 3),
(374, 'Listdokumen', 94, 2),
(375, 'Listdokumen', 94, 1),
(376, 'Listdokumen', 94, 1),
(377, 'Listdokumen', 100, 1),
(378, 'Listdokumen', 100, 3),
(379, 'Dokumen 1', 97, 1),
(380, 'Listdokumen', 100, 2),
(381, 'Dokumen 2', 97, 2),
(382, 'Listdokumen', 105, 1),
(383, 'Dokumen 3', 97, 3),
(384, 'Listdokumen', 105, 2),
(385, 'Listdokumen', 105, 3),
(386, 'Dokumen 1', 101, 1),
(387, 'Dokumen 2', 101, 2),
(388, 'Listdokumen', 109, 1),
(389, 'Dokumen 3', 101, 1),
(390, 'Listdokumen', 109, 1),
(391, 'Listdokumen', 109, 1),
(392, 'keterangan list dokumen 1.1.1', 16, 1),
(393, 'Listdokumen', 111, 1),
(394, 'Listdokumen', 111, 1),
(395, 'Listdokumen', 111, 1),
(396, 'keterangan list dokumen 1.1.2', 16, 2),
(397, 'keterangan list dokumen 1.1.2', 16, 3),
(398, 'Listdokumen', 113, 1),
(399, 'Listdokumen', 113, 1),
(400, 'Dokumen 1', 110, 1),
(401, 'Listdokumen', 113, 1),
(402, 'keterangan list dokumen 1.1.2', 18, 1),
(403, 'Dokumen 2', 110, 2),
(404, 'keterangan list dokumen 1.1.2', 18, 2),
(405, 'Dokumen 3', 110, 3),
(406, 'keterangan list dokumen 1.1.2', 18, 3),
(407, 'Dokumen 1', 112, 1),
(408, 'Listdokumen', 115, 2),
(409, 'keterangan list dokumen 1.1.3', 20, 3),
(410, 'Listdokumen', 115, 1),
(411, 'Listdokumen', 115, 1),
(412, 'Dokumen 2', 112, 2),
(413, 'keterangan list dokumen 1.1.3', 20, 1),
(414, 'keterangan list dokumen 1.1.3', 20, 2),
(415, 'Dokumen 3', 112, 3),
(416, 'Listdokumen', 116, 1),
(417, 'Listdokumen', 116, 2),
(418, 'Dokumen 1', 114, 1),
(419, 'Listdokumen', 116, 3),
(420, 'Dokumen 2', 114, 2),
(421, 'keterangan list dokumen 1.2.1', 23, 1),
(422, 'Listdokumen', 117, 1),
(423, 'Dokumen 3', 114, 3),
(424, 'keterangan list dokumen 1.1.3', 23, 2),
(425, 'Listdokumen', 117, 1),
(426, 'Listdokumen', 117, 1),
(427, 'keterangan list dokumen 1.1.3', 23, 3),
(428, 'keterangan list dokumen 1.2.3', 26, 1),
(429, 'keterangan list dokumen 1.2.3', 26, 3),
(430, 'keterangan list dokumen 1.2.3', 26, 2),
(431, 'Listdokumen', 118, 2),
(432, 'Listdokumen', 118, 1),
(433, 'Listdokumen', 118, 1),
(434, 'keterangan list dokumen 1.2.2', 25, 1),
(435, 'keterangan list dokumen 1.2.2', 25, 2),
(436, 'Listdokumen', 119, 1),
(437, 'Listdokumen', 119, 1),
(438, 'Listdokumen', 119, 1),
(439, 'Listdokumen', 121, 1),
(440, 'Listdokumen', 121, 1),
(441, 'Listdokumen', 121, 1),
(442, 'Listdokumen', 124, 1),
(443, 'Dokumen 1', 120, 1),
(444, 'Listdokumen', 124, 1),
(445, 'Listdokumen', 124, 1),
(446, 'Dokumen 2', 120, 2),
(447, 'Dokumen 3', 120, 3),
(448, 'Listdokumen', 125, 1),
(449, 'keterangan list dokumen 1.3.1', 27, 1),
(450, 'Listdokumen', 125, 1),
(451, 'Listdokumen', 125, 1),
(452, 'keterangan list dokumen 1.2.3', 27, 2),
(453, 'Dokumen 1', 122, 1),
(454, 'Listdokumen', 126, 1),
(455, 'Listdokumen', 126, 1),
(456, 'Dokumen 2', 122, 2),
(457, 'Listdokumen', 126, 1),
(458, 'keterangan list dokumen 1.3.2', 29, 1),
(459, 'keterangan list dokumen 1.2.3', 29, 2),
(460, 'Dokumen 3', 122, 3),
(461, 'keterangan list dokumen 1.3.3', 30, 1),
(462, 'keterangan list dokumen 1.3.3', 30, 2),
(463, 'Listdokumen', 127, 1),
(464, 'Listdokumen', 127, 1),
(465, 'Listdokumen', 127, 1),
(466, 'Dokumen 1', 123, 1),
(467, 'Dokumen 2', 123, 2),
(468, 'Listdokumen', 128, 1),
(469, 'Listdokumen', 128, 1),
(470, 'Listdokumen', 128, 1),
(471, 'Dokumen 3', 123, 3),
(472, 'Listdokumen', 129, 1),
(473, 'Listdokumen', 129, 1),
(474, 'keterangan list dokumen 2.1.1', 31, 1),
(475, 'Listdokumen', 129, 1),
(476, 'keterangan list dokumen 2.1.1', 31, 2),
(477, 'keterangan list dokumen 2.1.2', 32, 1),
(478, 'keterangan list dokumen 2.1.2', 32, 2),
(479, 'Listdokumen', 131, 1),
(480, 'Listdokumen', 131, 2),
(481, 'Listdokumen', 131, 1),
(482, 'keterangan list dokumen 2.1.3', 34, 1),
(483, 'Listdokumen', 133, 1),
(484, 'keterangan list dokumen 2.1.3', 34, 2),
(485, 'Listdokumen', 133, 1),
(486, 'Listdokumen', 133, 3),
(487, 'Listdokumen', 134, 1),
(488, 'Listdokumen', 134, 1),
(489, 'Listdokumen', 134, 1),
(490, 'keterangan list dokumen 2..2.1', 35, 1),
(491, 'Dokumen 1', 130, 1),
(492, 'keterangan list dokumen 2.1.2', 35, 2),
(493, 'Dokumen 2', 130, 2),
(494, 'Dokumen 3', 130, 3),
(495, 'Listdokumen', 136, 1),
(496, 'Listdokumen', 136, 1),
(497, 'Dokumen 1', 135, 1),
(498, 'Listdokumen', 136, 1),
(499, 'keterangan list dokumen 2.2.2', 36, 1),
(500, 'Dokumen 2', 135, 2),
(501, 'keterangan list dokumen 2.2.2', 36, 2),
(502, 'Listdokumen', 137, 1),
(503, 'Dokumen 3', 135, 3),
(504, 'Listdokumen', 137, 1),
(505, 'Listdokumen', 137, 1),
(506, 'keterangan list dokumen 2.2.3', 38, 1),
(507, 'keterangan list dokumen 2.2.3', 38, 2),
(508, 'Listdokumen', 138, 1),
(509, 'Listdokumen', 138, 1),
(510, 'Listdokumen', 138, 1),
(511, 'keterangan list dokumen 2.2.1', 35, 1),
(512, 'Listdokumen', 140, 2),
(513, 'Listdokumen', 140, 1),
(514, 'Listdokumen', 140, 1),
(515, 'Listdokumen', 143, 2),
(516, 'keterangan list dokumen 2.3.1', 39, 1),
(517, 'Listdokumen', 143, 2),
(518, 'Dokumen 1', 139, 1),
(519, 'keterangan list dokumen 2.3.1', 39, 2),
(520, 'Listdokumen', 143, 2),
(521, 'Dokumen 2', 139, 2),
(522, 'keterangan list dokumen 2.3.2', 40, 1),
(523, 'Listdokumen', 144, 1),
(524, 'Listdokumen', 144, 1),
(525, 'Dokumen 3', 139, 3),
(526, 'Listdokumen', 144, 3),
(527, 'keterangan list dokumen 2.3.2', 40, 2),
(528, 'keterangan list dokumen 2.3.3', 42, 1),
(529, 'keterangan list dokumen 2.3.2', 42, 2),
(530, 'Dokumen 1', 141, 1),
(531, 'Dokumen 2', 141, 2),
(532, 'Listdokumen', 145, 1),
(533, 'Listdokumen', 145, 3),
(534, 'Listdokumen', 145, 2),
(535, 'Dokumen 3', 141, 3),
(536, 'keterangan list dokumen 3.1.1', 43, 1),
(537, 'Dokumen 1', 142, 1),
(538, 'Listdokumen', 146, 1),
(539, 'Listdokumen', 146, 2),
(540, 'Dokumen 2', 142, 2),
(541, 'keterangan list dokumen 3.1.1', 43, 2),
(542, 'Listdokumen', 146, 1),
(543, 'Dokumen 3', 142, 3),
(544, 'keterangan list dokumen 3.1.2', 45, 1),
(545, 'Listdokumen', 147, 1),
(546, 'keterangan list dokumen 3.1.2', 45, 2),
(547, 'Listdokumen', 147, 1),
(548, 'Listdokumen', 147, 1),
(549, 'keterangan list dokumen 3.1.1', 46, 2),
(550, 'keterangan list dokumen 3.1.2', 46, 1),
(551, 'Listdokumen', 148, 1),
(552, 'Listdokumen', 148, 2),
(553, 'Listdokumen', 148, 3),
(554, 'keterangan list dokumen 3.1.3', 46, 1),
(555, 'Listdokumen', 149, 1),
(556, 'Listdokumen', 149, 2),
(557, 'Listdokumen', 149, 1),
(558, 'Listdokumen', 150, 2),
(559, 'Listdokumen', 150, 1),
(560, 'Listdokumen', 150, 2),
(561, 'keterangan list dokumen 3.2.1', 49, 1),
(562, 'Dokumen 1', 151, 1),
(563, 'keterangan list dokumen 3.2.1', 49, 2),
(564, 'Dokumen 2', 151, 2),
(565, 'Listdokumen', 152, 1),
(566, 'keterangan list dokumen 3.2.2', 51, 1),
(567, 'Listdokumen', 152, 1),
(568, 'Dokumen 3', 151, 3),
(569, 'Listdokumen', 152, 1),
(570, 'keterangan list dokumen 3.2.1', 51, 2),
(571, 'Listdokumen', 153, 1),
(572, 'keterangan list dokumen 3.2.3', 52, 1),
(573, 'Listdokumen', 153, 1),
(574, 'keterangan list dokumen 3.2.1', 52, 2),
(575, 'Listdokumen', 153, 1),
(576, 'Dokumen 1', 154, 1),
(577, 'Listdokumen', 155, 1),
(578, 'keterangan list dokumen 3.2.1', 49, 1),
(579, 'Listdokumen', 155, 1),
(580, 'Listdokumen', 155, 1),
(581, 'Dokumen 2', 154, 2),
(582, 'Dokumen 3', 154, 3),
(583, 'Dokumen 1', 156, 1),
(584, 'Dokumen 2', 156, 2),
(585, 'Dokumen 3', 156, 3),
(586, 'keterangan list dokumen 3.3.1', 54, 1),
(587, 'keterangan list dokumen 3.3.1', 54, 2),
(588, 'keterangan list dokumen 3.3.2', 55, 1),
(589, 'keterangan list dokumen 3.3.2', 55, 2),
(590, 'keterangan list dokumen 3.3.3', 57, 1),
(591, 'keterangan list dokumen 3.3.3', 57, 2),
(592, 'Dokumen 1', 157, 1),
(593, 'Dokumen 2', 157, 2),
(594, 'Dokumen 3', 157, 3),
(595, 'Dokumen 1', 158, 1),
(596, 'keterangan list dokumen 4.1.1', 59, 1),
(597, 'keterangan list dokumen 4.1.1', 59, 2),
(598, 'Dokumen 2', 158, 2),
(599, 'Dokumen 3', 158, 3),
(600, 'keterangan list dokumen 4.1.2', 60, 1),
(601, 'keterangan list dokumen 4.1.2', 60, 2),
(602, 'Dokumen 1', 159, 1),
(603, 'keterangan list dokumen 4.1.3', 62, 1),
(604, 'Dokumen 2', 159, 2),
(605, 'keterangan list dokumen 4.1.3', 62, 2),
(606, 'Dokumen 3', 159, 3),
(607, 'keterangan list dokumen 4.2.1', 63, 1),
(608, 'keterangan list dokumen 4.2.1', 63, 2),
(609, 'keterangan list dokumen 4.2.2', 65, 1),
(610, 'keterangan list dokumen 4.2.2', 65, 2),
(611, 'keterangan list dokumen 4.2.3', 66, 1),
(612, 'keterangan list dokumen 4.2.3', 66, 2),
(613, 'Dokumen 1', 160, 1),
(614, 'Dokumen 2', 160, 2),
(615, 'Dokumen 3', 160, 3),
(616, 'keterangan list dokumen 4.3.1', 67, 1),
(617, 'keterangan list dokumen 4.3.1', 67, 2),
(618, 'Dokumen 1', 161, 1),
(619, 'keterangan list dokumen 4.3.2', 68, 1),
(620, 'keterangan list dokumen 4.3.1', 68, 2),
(621, 'Dokumen 2', 161, 2),
(622, 'keterangan list dokumen 4.3.3', 70, 1),
(623, 'Dokumen 3', 161, 3),
(624, 'keterangan list dokumen 4.3.3', 70, 2),
(625, 'Dokumen 1', 162, 1),
(626, 'Dokumen 2', 162, 2),
(627, 'Dokumen 3', 162, 3),
(628, 'keterangan list dokumen 5.1.1', 72, 1),
(629, 'keterangan list dokumen 5.1.1', 72, 2),
(630, 'keterangan list dokumen 5.1.2', 74, 2),
(631, 'keterangan list dokumen 5.1.2', 74, 1),
(632, 'keterangan list dokumen 5.1.3', 75, 1),
(633, 'keterangan list dokumen 5.1.3', 75, 2),
(634, 'keterangan list dokumen 5.2.1', 78, 1),
(635, 'keterangan list dokumen 5.2.1', 78, 2),
(636, 'keterangan list dokumen 5.2.2', 79, 1),
(637, 'keterangan list dokumen 5.2.2', 79, 2),
(638, 'keterangan list dokumen 5.2.3', 81, 1),
(639, 'keterangan list dokumen 5.2.3', 81, 2),
(640, 'Dokumen 1', 163, 1),
(641, 'Dokumen 2', 163, 2),
(642, 'keterangan list dokumen 5.3.1', 82, 1),
(643, 'Dokumen 3', 163, 3),
(644, 'keterangan list dokumen 5.3.1', 82, 2),
(645, 'keterangan list dokumen 5.3.2', 84, 2),
(646, 'keterangan list dokumen 5.3.2', 84, 1),
(647, 'keterangan list dokumen 5.3.3', 85, 1),
(648, 'keterangan list dokumen 5.3.3', 85, 2),
(649, 'Dokumen 1', 164, 1),
(650, 'Dokumen 2', 164, 2),
(651, 'Dokumen 3', 164, 3),
(652, 'keterangan list dokumen 6.1.1', 87, 1),
(653, 'Dokumen 1', 165, 1),
(654, 'Dokumen 2', 165, 2),
(655, 'keterangan list dokumen 6.1.1', 87, 2),
(656, 'Dokumen 3', 165, 3),
(657, 'keterangan list dokumen 6.1.2', 88, 1),
(658, 'keterangan list dokumen 6.1.2', 88, 2),
(659, 'keterangan list dokumen 6.1.3', 90, 1),
(660, 'keterangan list dokumen 6.1.3', 90, 2),
(661, 'keterangan list dokumen 6.2.1', 91, 1),
(662, 'keterangan list dokumen 6.2.1', 91, 2),
(663, 'keterangan list dokumen 6.2.2', 92, 1),
(664, 'keterangan list dokumen 6.2.2', 92, 2),
(665, 'keterangan list dokumen 6.2.3', 93, 1),
(666, 'keterangan list dokumen 6.2.3', 93, 2),
(667, 'Dokumen 1', 166, 1),
(668, 'Listdokumen', 169, 1),
(669, 'Dokumen 2', 166, 2),
(670, 'Listdokumen', 169, 1),
(671, 'keterangan list dokumen 6.3.1', 95, 1),
(672, 'Dokumen 3', 166, 3),
(673, 'keterangan list dokumen 6.3.1', 95, 2),
(674, 'Listdokumen', 169, 1),
(675, 'keterangan list dokumen 6.3.2', 96, 1),
(676, 'keterangan list dokumen 6.3.2', 96, 2),
(677, 'Listdokumen', 170, 1),
(678, 'Listdokumen', 170, 1),
(679, 'Dokumen 1', 168, 1),
(680, 'Listdokumen', 170, 1),
(681, 'keterangan list dokumen 6.3.3', 98, 1),
(682, 'Dokumen 2', 168, 2),
(683, 'keterangan list dokumen 6.3.3', 98, 2),
(684, 'Dokumen 3', 168, 3),
(685, 'Listdokumen', 171, 1),
(686, 'Listdokumen', 171, 1),
(687, 'Listdokumen', 171, 1),
(688, 'keterangan list dokumen 7.1.1', 11, 1),
(689, 'keterangan list dokumen 7.1.1', 11, 2),
(690, 'keterangan list dokumen 7.1.2', 12, 1),
(691, 'keterangan list dokumen 7.1.2', 12, 2),
(692, 'Listdokumen', 173, 1),
(693, 'Listdokumen', 173, 1),
(694, 'Listdokumen', 173, 1),
(695, 'keterangan list dokumen 7.1.3', 14, 1),
(696, 'keterangan list dokumen 7.1.3', 14, 2),
(697, 'Listdokumen', 176, 1),
(698, 'Listdokumen', 176, 1),
(699, 'Dokumen 1', 172, 1),
(700, 'Listdokumen', 176, 1),
(701, 'keterangan list dokumen 7.2.1', 102, 1),
(702, 'Dokumen 2', 172, 2),
(703, 'keterangan list dokumen 7.2.1', 102, 2),
(704, 'Dokumen 3', 172, 3),
(705, 'Listdokumen', 177, 1),
(706, 'keterangan list dokumen 7.2.2', 103, 1),
(707, 'Listdokumen', 177, 1),
(708, 'Listdokumen', 177, 1),
(709, 'Dokumen 1', 174, 1),
(710, 'keterangan list dokumen 7.2.2', 103, 2),
(711, 'Dokumen 2', 174, 2),
(712, 'keterangan list dokumen 7.2.3', 104, 1),
(713, 'Dokumen 3', 174, 3),
(714, 'keterangan list dokumen 7.2.3', 104, 2),
(715, 'Listdokumen', 178, 1),
(716, 'Dokumen 1', 175, 1),
(717, 'Listdokumen', 178, 1),
(718, 'Listdokumen', 178, 1),
(719, 'Dokumen 2', 175, 2),
(720, 'Dokumen 3', 175, 3),
(721, 'keterangan list dokumen 7.3.1', 106, 1),
(722, 'Listdokumen', 179, 1),
(723, 'Listdokumen', 179, 1),
(724, 'keterangan list dokumen 7.3.1', 106, 2),
(725, 'Listdokumen', 179, 1),
(726, 'keterangan list dokumen 7.3.2', 107, 1),
(727, 'keterangan list dokumen 7.3.2', 107, 2),
(728, 'Listdokumen', 180, 1),
(729, 'Listdokumen', 180, 1),
(730, 'Listdokumen', 180, 1),
(731, 'keterangan list dokumen 7.3.3', 108, 1),
(732, 'keterangan list dokumen 7.3.3', 108, 2),
(733, 'Dokumen 1', 181, 1),
(734, 'Dokumen 2', 181, 2),
(735, 'Dokumen 3', 181, 3),
(736, 'Dokumen 1', 182, 1),
(737, 'Dokumen 2', 182, 2),
(738, 'Dokumen 3', 182, 3),
(739, 'Dokumen 1', 183, 1),
(740, 'Dokumen 1', 184, 1),
(741, 'Dokumen 1', 185, 1),
(742, 'Dokumen 2', 185, 2),
(743, 'Dokumen 3', 185, 3),
(744, 'Dokumen 2', 184, 2),
(745, 'Dokumen 3', 184, 3),
(746, 'Dokumen 1', 186, 1),
(747, 'Dokumen 2', 186, 2),
(748, 'Dokumen 1', 186, 3),
(749, 'Renstra', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipeversi_id` int(11) NOT NULL,
  `tahun_borang` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `tanggal`, `user_id`, `tipeversi_id`, `tahun_borang`) VALUES
(2, '2018-03-13', 4, 3, 2018),
(3, '2018-03-12', 4, 2, 2018),
(4, '2018-04-12', 3, 1, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `pengajuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id`, `tanggal`, `pengajuan_id`) VALUES
(2, '2018-03-14', 2),
(3, '2018-03-14', 2),
(4, '2018-04-12', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `fakultas_id`) VALUES
(7, 'A1', 'Ilmu Komunikasi', 8),
(11, 'B1', 'TEKNIK ELEKTRO', 9),
(12, 'B2', 'TEKNIK ARSITEKTUR', 9),
(13, 'C1', 'TEKNIK INFORMATIKA', 10),
(14, 'C2', 'SISTEM INFORMASI', 10),
(15, 'C3', 'SISTEM KOMPUTER', 10),
(16, 'D1', 'AKUNTANSI', 12),
(17, 'D2', 'MANAJEMEN', 12),
(18, 'E1', 'HUBUNGAN INTERNASIONAL', 13),
(19, 'E2', 'KRIMINOLOGI', 13);

-- --------------------------------------------------------

--
-- Table structure for table `standar`
--

CREATE TABLE `standar` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `tipeversi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standar`
--

INSERT INTO `standar` (`id`, `nomor`, `nama`, `tipeversi_id`) VALUES
(1, '1', 'Standar 1', 3),
(2, '2', 'Standar 2', 3),
(3, '3', 'Standar 3', 3),
(4, '1', 'Standar 1', 2),
(5, '4', 'Standar 4', 3),
(6, '5', 'Standar 5', 3),
(7, '2', 'Standar 2', 2),
(8, '6', 'Standar 6', 3),
(9, '1', 'Standar 1', 1),
(10, '7', 'Standar 7', 3),
(11, '2', 'standar 2', 1),
(12, '3', 'standar 3', 1),
(13, '3', 'Standar 3', 2),
(14, '4', 'standar 4', 1),
(15, '4', 'Standar 4', 2),
(16, '5', 'standar 5', 1),
(17, '5', 'Standar 5', 2),
(18, '6', 'Standar 6', 2),
(19, '6', 'standar 6', 1),
(20, '7', 'Standar 7', 2),
(21, '7', 'standar 7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `substandar`
--

CREATE TABLE `substandar` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `standar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `substandar`
--

INSERT INTO `substandar` (`id`, `nomor`, `nama`, `standar_id`) VALUES
(1, '1.1', 'Substandar 1.1', 1),
(2, '1.2', 'Substandar 1.2', 1),
(4, '1.1', 'Substandar 1.1', 9),
(5, '1.2', 'substandar 1.2', 9),
(6, '1.3', 'substandar 1.3', 9),
(7, '2.1', 'substandar 2.1', 11),
(8, '2.2', 'substandar 2.2', 11),
(9, '2.3', 'substandar 2.3', 11),
(10, '3.1', 'Substandar 3.1', 12),
(11, '1.1', 'Substandar 1', 4),
(12, '3,2', 'Substandar 3.2', 12),
(13, '1.2', 'Substandar 2', 4),
(14, '3.3', 'Substandar 3.3', 12),
(15, '1.3', 'Substandar 3', 4),
(16, '4.1', 'Substandar 4.1', 14),
(17, '4.2', 'Substandar 4.2', 14),
(18, '4.3', 'Substandar 4.3', 14),
(19, '5.1', 'Substandar 5.1', 16),
(20, '5.2', 'Substandar 5.2', 16),
(21, '5.3', 'Substandar 5.3', 16),
(22, '6.1', 'Substandar 6.1', 19),
(23, '6.2', 'Substandar 6.2', 19),
(24, '6.3', 'Substandar 6.3', 19),
(25, '7.1', 'Substandar 7.1', 21),
(26, '7.2', 'Substandar 7.2', 21),
(27, '7.3', 'Substandar 7.3', 21),
(28, '1.3', 'Substandar 1.3', 1),
(29, '2.1', 'Substandar 2.1', 2),
(30, '2.2', 'Substandar 2.2', 2),
(31, '2.3', 'Substandar 2.3', 2),
(32, '3.1', 'Substandar 3.1', 3),
(33, '2.1', 'Substandar 2.1', 7),
(34, '3.2', 'Substandar 3.2', 3),
(35, '2.2', 'Substandar 2.2', 7),
(36, '2.3', 'Substandar 2.3', 7),
(37, '3.3', 'Substandar 3.3', 3),
(38, '4.1', 'Substandar 4.1', 5),
(39, '4.2', 'Substandar 4.2', 5),
(40, '4.3', 'Substandar 4.3', 5),
(41, '5.1', 'Substandar 5.1', 6),
(42, '3.1', 'Substandar 3.1', 13),
(43, '3.2', 'Substandar 3.2', 13),
(44, '3.3', 'Substandar 3.3', 13),
(45, '5.2', 'Substandar 5.2', 6),
(46, '5.3', 'Substandar 5.3', 6),
(47, '6.1', 'Substandar 6.1', 8),
(48, '6.2', 'Substandar 6.2', 8),
(49, '6.3', 'Substandar 6.3', 8),
(50, '7.1', 'Substandar 7.1', 10),
(51, '7.2', 'Substandar 7.2', 10),
(52, '4.1', 'Substandar 4.1', 15),
(53, '4.2', 'Substandar 4.2', 15),
(54, '4.3', 'Substandar 4.3', 15),
(55, '7.3', 'Substadar 7.3', 10),
(56, '5.1', 'Substandar 5.1', 17),
(57, '5.2', 'Substandar 5.2', 17),
(58, '5.3', 'Substandar 5.3', 17),
(59, '7.1', 'Substandar 7.1', 20),
(60, '7.2', 'Substandar 7.2', 20),
(61, '7.3', 'Substandar 7.3', 20),
(62, '6.1', 'Substandar 6.1', 18),
(63, '6.2', 'Substandar 6.2', 18),
(64, '6.3', 'Substandar 6.3', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tipeversi`
--

CREATE TABLE `tipeversi` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `versi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipeversi`
--

INSERT INTO `tipeversi` (`id`, `tipe`, `versi_id`) VALUES
(1, 'AIPT', 1),
(2, 'Borang Prodi S1', 1),
(3, 'Borang Prodi S2', 1),
(4, 'Borang Prodi D3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_listdokumen`
--

CREATE TABLE `type_listdokumen` (
  `id_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_listdokumen`
--

INSERT INTO `type_listdokumen` (`id_type`, `type`) VALUES
(1, 'Dokumen Wajib'),
(2, 'Dokumen Visitasi'),
(3, 'Dokumen Pendukung');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `prodi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `prodi_id`) VALUES
(1, 'admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 1, NULL),
(3, 'univ', 'c001deeb52dc9ff9e859f65772659245cff32c5607e8932f3efeba343bd829cc497f299789b15cc27c95dc3ec865447679e7bbb52138a3e97f3f4b38c7c17874', 2, NULL),
(4, 'ophumas', '8f18c505ea83c1503b199ca936692912f9e08fda787fbedfc2fc144467bb3d4243ed1df050f001225df6c93dfba15f465eda50e97a10705299f0ff71137b3520', 3, 7),
(14, 'manajemen', 'd2d966dc907af41d781d1a44142d121cd66d209e21768cd9d8dfb2b57b828c8f5e2ac88b6d9944f00e6aa02af582414dfebf4617695ab8af9989e4c3a8b21e24', 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `versi`
--

CREATE TABLE `versi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `versi` text NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `versi`
--

INSERT INTO `versi` (`id`, `nama`, `versi`, `tahun`) VALUES
(1, '7 Standar', '1', 2018);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_butir`
-- (See below for the actual view)
--
CREATE TABLE `v_butir` (
`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_tipeversi` int(11)
,`tipe` text
,`id_versi` int(11)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_butirbutir`
-- (See below for the actual view)
--
CREATE TABLE `v_butirbutir` (
`id_butirpenilaian` int(11)
,`nomor_butirpenilaian` varchar(255)
,`deskripsi` text
,`bobot` decimal(11,2)
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lisdokumen`
-- (See below for the actual view)
--
CREATE TABLE `v_lisdokumen` (
`id_lisdokumen` int(11)
,`keterangan` text
,`tipe_lisdokumen` int(11)
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_tipeversi` int(11)
,`tipe` text
,`id_versi` int(11)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pengajuan`
-- (See below for the actual view)
--
CREATE TABLE `v_pengajuan` (
`id_pengajuan` int(11)
,`tgl_pengajuan` date
,`tahun_borang` year(4)
,`id_user` int(11)
,`username` varchar(255)
,`level` int(11)
,`id_tipeversi` int(11)
,`tipeversi` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pengajuan_dokumen`
-- (See below for the actual view)
--
CREATE TABLE `v_pengajuan_dokumen` (
`id_tipeversi` int(11)
,`tipe_tipeversi` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_listdokumen` int(11)
,`keterangan_listdokumen` text
,`tipe_listdokumen` int(11)
,`tipe` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_penilaian`
-- (See below for the actual view)
--
CREATE TABLE `v_penilaian` (
`id_penilaian` int(11)
,`tanggal_penilaian` date
,`tanggal_pengajuan` date
,`id_pengajuan` int(11)
,`tahun_borang` year(4)
,`tipe` text
,`nama_versi` varchar(255)
,`tahun_versi` year(4)
,`level` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_penilaian_tambah`
-- (See below for the actual view)
--
CREATE TABLE `v_penilaian_tambah` (
`id_pengajuan` int(11)
,`tanggal_pengajuan` date
,`user_id` int(11)
,`tipeversi_id` int(11)
,`tahun_borang` year(4)
,`id_tipeversi` int(11)
,`tipe_tipeversi` text
,`versi_id` int(11)
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_butir` int(11)
,`nomor_butir` varchar(255)
,`nama_butir` text
,`id_butir_penilaian` int(11)
,`deskripsi` text
,`bobot` decimal(11,2)
,`nomor_butirpenilaian` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_prodi`
-- (See below for the actual view)
--
CREATE TABLE `v_prodi` (
`id_prodi` int(11)
,`kode_prodi` varchar(255)
,`nama_prodi` varchar(255)
,`id_fakultas` int(11)
,`kode_fakultas` varchar(4)
,`nama_fakultas` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_standar`
-- (See below for the actual view)
--
CREATE TABLE `v_standar` (
`id_standar` int(11)
,`nomor` varchar(255)
,`nama` text
,`tipeversi_id` int(11)
,`tipe` text
,`versi_id` int(11)
,`nama_versi` varchar(255)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_substandar`
-- (See below for the actual view)
--
CREATE TABLE `v_substandar` (
`id_substandar` int(11)
,`nomor_substandar` varchar(255)
,`nama_substandar` text
,`id_standar` int(11)
,`nomor_standar` varchar(255)
,`nama_standar` text
,`id_tipe` int(11)
,`tipe` text
,`id_versi` int(11)
,`nama` varchar(255)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_versitipe`
-- (See below for the actual view)
--
CREATE TABLE `v_versitipe` (
`id_tipeversi` int(11)
,`tipe` text
,`id_versi` int(11)
,`nama` varchar(255)
,`versi` text
,`tahun` year(4)
);

-- --------------------------------------------------------

--
-- Structure for view `v_butir`
--
DROP TABLE IF EXISTS `v_butir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_butir`  AS  select `b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`sb`.`id` AS `id_substandar`,`sb`.`nomor` AS `nomor_substandar`,`sb`.`nama` AS `nama_substandar`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from ((((`butir` `b` join `substandar` `sb`) join `standar` `s`) join `tipeversi` `t`) join `versi` `v`) where ((`b`.`substandar_id` = `sb`.`id`) and (`sb`.`standar_id` = `s`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_butirbutir`
--
DROP TABLE IF EXISTS `v_butirbutir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_butirbutir`  AS  select `bp`.`id` AS `id_butirpenilaian`,`bp`.`nomor_butir` AS `nomor_butirpenilaian`,`bp`.`deskripsi` AS `deskripsi`,`bp`.`bobot` AS `bobot`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir` from (`butirpenilaian` `bp` join `butir` `b`) where (`bp`.`butir_id` = `b`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_lisdokumen`
--
DROP TABLE IF EXISTS `v_lisdokumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lisdokumen`  AS  select `l`.`id` AS `id_lisdokumen`,`l`.`keterangan` AS `keterangan`,`l`.`tipe` AS `tipe_lisdokumen`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`sb`.`id` AS `id_substandar`,`sb`.`nomor` AS `nomor_substandar`,`sb`.`nama` AS `nama_substandar`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from (((((`listdokumen` `l` join `butir` `b`) join `substandar` `sb`) join `standar` `s`) join `tipeversi` `t`) join `versi` `v`) where ((`l`.`butir_id` = `b`.`id`) and (`b`.`substandar_id` = `sb`.`id`) and (`sb`.`standar_id` = `s`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pengajuan`
--
DROP TABLE IF EXISTS `v_pengajuan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pengajuan`  AS  select `p`.`id` AS `id_pengajuan`,`p`.`tanggal` AS `tgl_pengajuan`,`p`.`tahun_borang` AS `tahun_borang`,`u`.`id` AS `id_user`,`u`.`username` AS `username`,`u`.`level` AS `level`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipeversi` from ((`pengajuan` `p` join `user` `u`) join `tipeversi` `t`) where ((`p`.`user_id` = `u`.`id`) and (`p`.`tipeversi_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pengajuan_dokumen`
--
DROP TABLE IF EXISTS `v_pengajuan_dokumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pengajuan_dokumen`  AS  select `t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe_tipeversi`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`ss`.`id` AS `id_substandar`,`ss`.`nomor` AS `nomor_substandar`,`ss`.`nama` AS `nama_substandar`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`l`.`id` AS `id_listdokumen`,`l`.`keterangan` AS `keterangan_listdokumen`,`l`.`tipe` AS `tipe_listdokumen`,`ty`.`type` AS `tipe` from (((((`tipeversi` `t` join `standar` `s`) join `substandar` `ss`) join `butir` `b`) join `listdokumen` `l`) join `type_listdokumen` `ty`) where ((`s`.`tipeversi_id` = `t`.`id`) and (`ss`.`standar_id` = `s`.`id`) and (`b`.`substandar_id` = `ss`.`id`) and (`l`.`butir_id` = `b`.`id`) and (`ty`.`id_type` = `l`.`tipe`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_penilaian`
--
DROP TABLE IF EXISTS `v_penilaian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_penilaian`  AS  select `pn`.`id` AS `id_penilaian`,`pn`.`tanggal` AS `tanggal_penilaian`,`p`.`tanggal` AS `tanggal_pengajuan`,`p`.`id` AS `id_pengajuan`,`p`.`tahun_borang` AS `tahun_borang`,`t`.`tipe` AS `tipe`,`v`.`nama` AS `nama_versi`,`v`.`tahun` AS `tahun_versi`,`u`.`level` AS `level` from ((((`penilaian` `pn` join `pengajuan` `p`) join `user` `u`) join `tipeversi` `t`) join `versi` `v`) where ((`pn`.`pengajuan_id` = `p`.`id`) and (`p`.`tipeversi_id` = `t`.`id`) and (`p`.`user_id` = `u`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_penilaian_tambah`
--
DROP TABLE IF EXISTS `v_penilaian_tambah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_penilaian_tambah`  AS  select `p`.`id` AS `id_pengajuan`,`p`.`tanggal` AS `tanggal_pengajuan`,`p`.`user_id` AS `user_id`,`p`.`tipeversi_id` AS `tipeversi_id`,`p`.`tahun_borang` AS `tahun_borang`,`t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe_tipeversi`,`t`.`versi_id` AS `versi_id`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`ss`.`id` AS `id_substandar`,`ss`.`nomor` AS `nomor_substandar`,`ss`.`nama` AS `nama_substandar`,`b`.`id` AS `id_butir`,`b`.`nomor` AS `nomor_butir`,`b`.`nama` AS `nama_butir`,`bp`.`id` AS `id_butir_penilaian`,`bp`.`deskripsi` AS `deskripsi`,`bp`.`bobot` AS `bobot`,`bp`.`nomor_butir` AS `nomor_butirpenilaian` from (((((`pengajuan` `p` join `tipeversi` `t`) join `standar` `s`) join `substandar` `ss`) join `butir` `b`) join `butirpenilaian` `bp`) where ((`p`.`tipeversi_id` = `t`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`ss`.`standar_id` = `s`.`id`) and (`b`.`substandar_id` = `ss`.`id`) and (`bp`.`butir_id` = `b`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_prodi`
--
DROP TABLE IF EXISTS `v_prodi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_prodi`  AS  select `p`.`id` AS `id_prodi`,`p`.`kode` AS `kode_prodi`,`p`.`nama` AS `nama_prodi`,`f`.`id` AS `id_fakultas`,`f`.`kode` AS `kode_fakultas`,`f`.`nama` AS `nama_fakultas` from (`prodi` `p` join `fakultas` `f`) where (`p`.`fakultas_id` = `f`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_standar`
--
DROP TABLE IF EXISTS `v_standar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_standar`  AS  select `s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor`,`s`.`nama` AS `nama`,`s`.`tipeversi_id` AS `tipeversi_id`,`t`.`tipe` AS `tipe`,`t`.`versi_id` AS `versi_id`,`v`.`nama` AS `nama_versi`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from ((`standar` `s` join `versi` `v`) join `tipeversi` `t`) where ((`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_substandar`
--
DROP TABLE IF EXISTS `v_substandar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_substandar`  AS  select `sb`.`id` AS `id_substandar`,`sb`.`nomor` AS `nomor_substandar`,`sb`.`nama` AS `nama_substandar`,`s`.`id` AS `id_standar`,`s`.`nomor` AS `nomor_standar`,`s`.`nama` AS `nama_standar`,`t`.`id` AS `id_tipe`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`nama` AS `nama`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from (((`substandar` `sb` join `standar` `s`) join `tipeversi` `t`) join `versi` `v`) where ((`sb`.`standar_id` = `s`.`id`) and (`s`.`tipeversi_id` = `t`.`id`) and (`t`.`versi_id` = `v`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_versitipe`
--
DROP TABLE IF EXISTS `v_versitipe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_versitipe`  AS  select `t`.`id` AS `id_tipeversi`,`t`.`tipe` AS `tipe`,`v`.`id` AS `id_versi`,`v`.`nama` AS `nama`,`v`.`versi` AS `versi`,`v`.`tahun` AS `tahun` from (`tipeversi` `t` join `versi` `v`) where (`t`.`versi_id` = `v`.`id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `butir`
--
ALTER TABLE `butir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `substandar_id` (`substandar_id`);

--
-- Indexes for table `butirpenilaian`
--
ALTER TABLE `butirpenilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `butir_id` (`butir_id`);

--
-- Indexes for table `detilpenilaian`
--
ALTER TABLE `detilpenilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaian_id` (`penilaian_id`),
  ADD KEY `butirpenilaian_id` (`butirpenilaian_id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listdokumen_id` (`listdokumen_id`),
  ADD KEY `pengajuan_id` (`pengajuan_id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `listdokumen`
--
ALTER TABLE `listdokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `butir_id` (`butir_id`),
  ADD KEY `tipe` (`tipe`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versi_id` (`tipeversi_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajuan_id` (`pengajuan_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- Indexes for table `standar`
--
ALTER TABLE `standar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipeversi_id` (`tipeversi_id`);

--
-- Indexes for table `substandar`
--
ALTER TABLE `substandar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `standar_id` (`standar_id`);

--
-- Indexes for table `tipeversi`
--
ALTER TABLE `tipeversi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versi_id` (`versi_id`);

--
-- Indexes for table `type_listdokumen`
--
ALTER TABLE `type_listdokumen`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `prodi_id` (`prodi_id`);

--
-- Indexes for table `versi`
--
ALTER TABLE `versi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `butir`
--
ALTER TABLE `butir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `butirpenilaian`
--
ALTER TABLE `butirpenilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `detilpenilaian`
--
ALTER TABLE `detilpenilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `listdokumen`
--
ALTER TABLE `listdokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `standar`
--
ALTER TABLE `standar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `substandar`
--
ALTER TABLE `substandar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tipeversi`
--
ALTER TABLE `tipeversi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `type_listdokumen`
--
ALTER TABLE `type_listdokumen`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `versi`
--
ALTER TABLE `versi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `butir`
--
ALTER TABLE `butir`
  ADD CONSTRAINT `butir_ibfk_1` FOREIGN KEY (`substandar_id`) REFERENCES `substandar` (`id`);

--
-- Constraints for table `butirpenilaian`
--
ALTER TABLE `butirpenilaian`
  ADD CONSTRAINT `butirpenilaian_ibfk_1` FOREIGN KEY (`butir_id`) REFERENCES `butir` (`id`);

--
-- Constraints for table `detilpenilaian`
--
ALTER TABLE `detilpenilaian`
  ADD CONSTRAINT `detilpenilaian_ibfk_1` FOREIGN KEY (`penilaian_id`) REFERENCES `penilaian` (`id`),
  ADD CONSTRAINT `detilpenilaian_ibfk_2` FOREIGN KEY (`butirpenilaian_id`) REFERENCES `butirpenilaian` (`id`);

--
-- Constraints for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`listdokumen_id`) REFERENCES `listdokumen` (`id`),
  ADD CONSTRAINT `dokumen_ibfk_2` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuan` (`id`);

--
-- Constraints for table `listdokumen`
--
ALTER TABLE `listdokumen`
  ADD CONSTRAINT `listdokumen_ibfk_1` FOREIGN KEY (`butir_id`) REFERENCES `butir` (`id`),
  ADD CONSTRAINT `listdokumen_ibfk_2` FOREIGN KEY (`tipe`) REFERENCES `type_listdokumen` (`id_type`);

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`tipeversi_id`) REFERENCES `tipeversi` (`id`),
  ADD CONSTRAINT `pengajuan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuan` (`id`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);

--
-- Constraints for table `standar`
--
ALTER TABLE `standar`
  ADD CONSTRAINT `standar_ibfk_1` FOREIGN KEY (`tipeversi_id`) REFERENCES `tipeversi` (`id`);

--
-- Constraints for table `substandar`
--
ALTER TABLE `substandar`
  ADD CONSTRAINT `substandar_ibfk_1` FOREIGN KEY (`standar_id`) REFERENCES `standar` (`id`);

--
-- Constraints for table `tipeversi`
--
ALTER TABLE `tipeversi`
  ADD CONSTRAINT `tipeversi_ibfk_1` FOREIGN KEY (`versi_id`) REFERENCES `versi` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
