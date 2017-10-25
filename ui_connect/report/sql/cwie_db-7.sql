-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2017 at 01:06 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cwie_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `application_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `application_dateS` date DEFAULT NULL,
  `application_dateE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`application_id`, `s_id`, `application_dateS`, `application_dateE`) VALUES
(1, 1229, '2017-08-01', '2017-08-03'),
(2, 1230, '2017-08-01', '2017-08-09'),
(3, 1231, '2017-08-01', '2017-08-01'),
(4, 1232, '2017-08-01', '2017-08-01'),
(5, 1233, '2017-08-01', '2017-08-01'),
(6, 1234, '2017-08-01', '2017-08-01'),
(7, 1235, '2017-08-01', '2017-08-01'),
(8, 1236, '2017-02-01', '2019-08-01'),
(9, 1237, '2016-08-01', '2017-08-01'),
(10, 1238, '2017-08-01', '2017-08-03'),
(12, 1239, '2017-08-01', '2017-08-09'),
(14, 1240, '2017-08-01', '2017-08-01'),
(16, 1241, '2017-08-01', '2017-08-01'),
(18, 1242, '2017-08-01', '2017-08-01'),
(20, 1243, '2017-08-01', '2017-08-01'),
(22, 1244, '2017-08-01', '2017-08-01'),
(23, 1245, '2016-08-01', '2016-08-03'),
(24, 1246, '2016-08-01', '2016-08-09'),
(25, 1247, '2016-08-01', '2016-08-01'),
(26, 1248, '2016-08-01', '2016-08-01'),
(27, 1249, '2016-08-01', '2016-08-01'),
(28, 1250, '2016-08-01', '2016-08-01'),
(29, 1251, '2016-08-01', '2016-08-01'),
(30, 1252, '2016-02-01', '2016-08-01'),
(31, 1253, '2016-08-01', '2016-08-01'),
(32, 1254, '2015-08-01', '2015-08-03'),
(33, 1255, '2015-08-01', '2015-08-09'),
(34, 1256, '2015-08-01', '2015-08-01'),
(35, 1257, '2015-08-01', '2015-08-01'),
(36, 1258, '2015-08-01', '2015-08-01'),
(37, 1259, '2015-08-01', '2015-08-01'),
(38, 1260, '2015-08-01', '2015-08-01'),
(39, 1261, '2014-08-01', '2014-08-03'),
(40, 1262, '2014-08-01', '2014-08-09'),
(41, 1263, '2014-08-01', '2014-08-01'),
(42, 1264, '2014-08-01', '2014-08-01'),
(43, 1265, '2014-08-01', '2014-08-01'),
(44, 1266, '2014-08-01', '2014-08-01'),
(45, 1267, '2014-08-01', '2014-08-01'),
(46, 1268, '2014-02-01', '2014-08-01'),
(47, 1269, '2014-08-01', '2014-08-01'),
(48, 1270, '2014-08-01', '2014-08-03'),
(49, 1271, '2014-08-01', '2014-08-09'),
(50, 1272, '2013-08-01', '2013-08-01'),
(51, 1273, '2013-08-01', '2013-08-01'),
(52, 1274, '2013-08-01', '2013-08-01'),
(53, 1275, '2013-08-01', '2013-08-01'),
(54, 1276, '2017-08-01', '2017-08-01'),
(55, 1277, '2017-08-01', '2017-08-01'),
(56, 1278, '2017-08-01', '2017-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bnk_id` int(11) NOT NULL,
  `bnk_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bnk_id`, `bnk_name`) VALUES
(2, 'KTC'),
(1, 'SCB');

-- --------------------------------------------------------

--
-- Table structure for table `bank_acc_info`
--

CREATE TABLE `bank_acc_info` (
  `bac_id` int(11) NOT NULL,
  `bac_no` int(11) UNSIGNED DEFAULT NULL,
  `bac_name` varchar(50) DEFAULT NULL,
  `trainee_id` int(11) DEFAULT NULL,
  `bnk_has_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_acc_info`
--

INSERT INTO `bank_acc_info` (`bac_id`, `bac_no`, `bac_name`, `trainee_id`, `bnk_has_id`) VALUES
(1, 2712309310, NULL, 260, 94),
(2, 4070308903, NULL, 261, 95),
(3, 3022605478, NULL, 262, 96),
(4, 4294967295, NULL, 263, 97),
(5, 4294967295, NULL, 264, 98),
(6, 4068363080, NULL, 265, 99),
(7, 4014311853, NULL, 266, 100),
(8, 2322260532, NULL, 267, 101),
(9, 2062592215, NULL, 268, 102),
(10, 2712309310, NULL, 269, 103),
(11, 4070308903, NULL, 270, 104),
(12, 3022605478, NULL, 271, 105),
(13, 4294967295, NULL, 272, 106),
(14, 4294967295, NULL, 273, 107),
(15, 4068363080, NULL, 274, 108),
(16, 4014311853, NULL, 275, 109);

-- --------------------------------------------------------

--
-- Table structure for table `bank_has_banch`
--

CREATE TABLE `bank_has_banch` (
  `bnk_has_bch_id` int(11) NOT NULL,
  `bnk_id` int(11) DEFAULT NULL,
  `bch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_has_banch`
--

INSERT INTO `bank_has_banch` (`bnk_has_bch_id`, `bnk_id`, `bch_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 12),
(4, 1, 16),
(5, 1, 1),
(6, 1, 1),
(7, 1, 16),
(8, 1, 14),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(14, 1, 1),
(15, 1, 1),
(16, 1, 1),
(17, 1, 1),
(18, 1, 1),
(19, 1, 1),
(20, 1, 1),
(21, 1, 1),
(22, 1, 1),
(23, 1, 1),
(24, 1, 1),
(25, 1, 1),
(26, 1, 1),
(27, 1, 1),
(28, 1, 1),
(29, 1, 1),
(30, 1, 1),
(31, 1, 1),
(32, 1, 1),
(33, 1, 1),
(34, 1, 1),
(35, 1, 1),
(36, 1, 1),
(37, 1, 1),
(38, 1, 1),
(39, 1, 1),
(40, 1, 1),
(41, 1, 1),
(42, 1, 1),
(43, 1, 1),
(44, 1, 1),
(45, 1, 1),
(46, 1, 1),
(47, 1, 1),
(48, 1, 1),
(49, 1, 1),
(50, 1, 1),
(51, 1, 1),
(52, 1, 1),
(53, 1, 1),
(54, 1, 1),
(55, 1, 2),
(56, 1, 16),
(57, 1, 16),
(58, 1, 16),
(59, 1, 1),
(60, 1, 1),
(61, 1, 1),
(62, 1, 1),
(63, 1, 1),
(64, 1, 1),
(65, 1, 1),
(66, 1, 1),
(67, 1, 1),
(68, 1, 1),
(69, 1, 1),
(70, 1, 1),
(71, 1, 1),
(72, 1, 1),
(73, 1, 1),
(74, 1, 1),
(75, 1, 1),
(76, 1, 1),
(77, 1, 1),
(78, 1, 1),
(79, 1, NULL),
(80, 1, NULL),
(81, 1, NULL),
(82, 1, NULL),
(83, 1, NULL),
(84, 1, NULL),
(85, 1, NULL),
(86, 1, NULL),
(87, 1, NULL),
(88, 1, NULL),
(89, 1, NULL),
(90, 1, NULL),
(91, 1, NULL),
(92, 1, NULL),
(93, 1, NULL),
(94, 1, 1),
(95, 1, 2),
(96, 1, 3),
(97, 1, 11),
(98, 1, 6),
(99, 1, 6),
(100, 1, 6),
(101, 1, 1),
(102, 1, 17),
(103, 1, 1),
(104, 1, 2),
(105, 1, 3),
(106, 1, 11),
(107, 1, 6),
(108, 1, 6),
(109, 1, 6),
(110, 1, 1),
(111, 1, 17),
(112, 1, 1),
(113, 1, 1),
(114, 1, 1),
(115, 1, 1),
(116, 1, 1),
(117, 1, 1),
(118, 1, 1),
(119, 1, 2),
(120, 1, 3),
(121, 1, 11),
(122, 1, 6),
(123, 1, 6),
(124, 1, 6),
(125, 1, 1),
(126, 1, 17),
(127, 1, 1),
(128, 1, 2),
(129, 1, 3),
(130, 1, 11),
(131, 1, 6),
(132, 1, 6),
(133, 1, 6),
(134, 1, 1),
(135, 1, 17),
(136, 1, 1),
(137, 1, 2),
(138, 1, 3),
(139, 1, 11),
(140, 1, 6),
(141, 1, 6),
(142, 1, 6),
(143, 1, 1),
(144, 1, 17),
(145, 1, 1),
(146, 1, 2),
(147, 1, 3),
(148, 1, 11),
(149, 1, 6),
(150, 1, 6),
(151, 1, 6),
(152, 1, 1),
(153, 1, 17),
(154, 1, 1),
(155, 1, 2),
(156, 1, 3),
(157, 1, 11),
(158, 1, 6),
(159, 1, 6),
(160, 1, 6),
(161, 1, 1),
(162, 1, 17),
(163, 1, 1),
(164, 1, 1),
(165, 1, 2),
(166, 1, 3),
(167, 1, 11),
(168, 1, 6),
(169, 1, 6),
(170, 1, 6),
(171, 1, 1),
(172, 1, 17),
(173, 1, 1),
(174, 1, 2),
(175, 1, 3),
(176, 1, 11),
(177, 1, 6),
(178, 1, 6),
(179, 1, 6),
(180, 1, 1),
(181, 1, 17),
(182, 1, 1),
(183, 1, 2),
(184, 1, 3),
(185, 1, 11),
(186, 1, 6),
(187, 1, 6),
(188, 1, 6),
(189, 1, 1),
(190, 1, 17),
(191, 1, 1),
(192, 1, 1),
(193, 1, 1),
(194, 1, 1),
(195, 1, 2),
(196, 1, 3),
(197, 1, 11),
(198, 1, 6),
(199, 1, 6),
(200, 1, 6),
(201, 1, 1),
(202, 1, 17),
(203, 1, 1),
(204, 1, 2),
(205, 1, 1),
(206, 1, 1),
(207, 1, 1),
(209, 1, 1),
(210, 1, 1),
(211, 1, 2),
(212, 1, 3),
(213, 1, 11),
(214, 1, 6),
(215, 1, 6),
(216, 1, 6),
(217, 1, 1),
(218, 1, 17),
(219, 1, 1),
(220, 1, 2),
(221, 1, 3),
(222, 1, 11),
(223, 1, 6),
(224, 1, 6),
(225, 1, 6),
(226, 1, 1),
(227, 1, 17),
(228, 1, 1),
(229, 1, 1),
(230, 1, 1),
(231, 2, 1),
(232, 2, 1),
(233, 2, 2),
(234, 2, 3),
(235, 2, 11),
(236, 2, 6),
(237, 2, 6),
(238, 2, 6),
(239, 2, 1),
(240, 2, 17),
(241, 1, 1),
(242, 1, 2),
(243, 1, 3),
(244, 1, 11),
(245, 1, 6),
(246, 1, 6),
(247, 1, 6),
(248, 1, 1),
(249, 1, 17),
(250, 1, 1),
(251, 1, 2),
(252, 1, 3),
(253, 1, 11),
(254, 1, 6),
(255, 1, 6),
(256, 1, 6),
(257, 1, 1),
(258, 1, 17),
(259, 1, 1),
(260, 1, 1),
(261, 1, 1),
(262, 1, 2),
(263, 1, 3),
(264, 1, 11),
(265, 1, 6),
(266, 1, 6),
(267, 1, 6),
(268, 1, 1),
(269, 1, 17),
(270, 1, 1),
(271, 1, 2),
(272, 1, 3),
(273, 1, 11),
(274, 1, 6),
(275, 1, 6),
(276, 1, 6),
(277, 1, 1),
(278, 1, 17),
(279, 1, 1),
(280, 1, 2),
(281, 1, 3),
(282, 1, 11),
(283, 1, 6),
(284, 1, 6),
(285, 1, 6),
(286, 1, 1),
(287, 1, 17),
(288, 1, 1),
(289, 1, 2),
(290, 1, 3),
(291, 1, 11),
(292, 1, 6),
(293, 1, 6),
(294, 1, 6),
(295, 1, 1),
(296, 1, 17),
(297, 2, NULL),
(298, 2, NULL),
(299, 2, NULL),
(300, 2, NULL),
(301, 2, NULL),
(302, 2, NULL),
(303, 2, NULL),
(304, 2, NULL),
(305, 2, NULL),
(306, 2, NULL),
(307, 2, NULL),
(308, 2, NULL),
(309, 2, NULL),
(310, 1, 6),
(311, 2, NULL),
(312, 2, NULL),
(313, 2, NULL),
(314, 1, 1),
(315, 1, 1),
(316, 1, 1),
(317, 1, 2),
(318, 1, 3),
(319, 1, 11),
(320, 1, 6),
(321, 1, 6),
(322, 1, 6),
(323, 1, 1),
(324, 1, 17),
(325, 1, 1),
(326, 1, 2),
(327, 1, 3),
(328, 1, 11),
(329, 1, 6),
(330, 1, 6),
(331, 1, 6),
(332, 1, 1),
(333, 1, 17),
(334, 2, NULL),
(335, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bnk_banch`
--

CREATE TABLE `bnk_banch` (
  `bch_id` int(11) NOT NULL,
  `bch_name` varchar(50) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bnk_banch`
--

INSERT INTO `bnk_banch` (`bch_id`, `bch_name`, `province_id`) VALUES
(1, 'Ayutthaya Branch', 38),
(2, 'Ayutthaya Park 2 Branch', 38),
(3, 'Ayutthaya Park Branch', 38),
(4, 'Bang Pa-In Branch', 38),
(5, 'Bangpa-In Industrial Estate Branch', 38),
(6, 'Big C Ayutthaya Branch', 38),
(7, 'Hi-Tech Industrial Estate Branch', 38),
(8, 'Phachi Branch', 38),
(9, 'Pratu Nam Pra-In Branch', 38),
(10, 'Rojana Industrial Estate Branch', 38),
(11, 'Sena Branch', 38),
(12, 'Tesco Lotus Rochana (Ayutthaya) Branch', 38),
(13, ' Tesco Lotus Sena Branch', 38),
(14, 'Tha Rua (Ayutthaya) Branch', 38),
(15, 'Thanon Rojana(Ayutthaya) Branch', 38),
(16, 'Wang Noi Branch', 38),
(17, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `building_info`
--

CREATE TABLE `building_info` (
  `bldg_id` int(11) NOT NULL,
  `bldg_name` varchar(100) NOT NULL,
  `plant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `building_info`
--

INSERT INTO `building_info` (`bldg_id`, `bldg_name`, `plant_id`) VALUES
(1, 'B1', NULL),
(2, 'B2', NULL),
(3, 'B3', NULL),
(4, 'B4', NULL),
(5, 'B5', NULL),
(6, 'B6', NULL),
(7, 'B7', NULL),
(8, 'B8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(3) NOT NULL,
  `cate_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'COOP'),
(2, 'DUO'),
(3, 'Thai-Malaysia'),
(4, 'WIL'),
(5, 'Handicap');

-- --------------------------------------------------------

--
-- Table structure for table `chanel`
--

CREATE TABLE `chanel` (
  `c_id` int(3) NOT NULL,
  `c_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chanel`
--

INSERT INTO `chanel` (`c_id`, `c_name`) VALUES
(3, 'EXCHANGE'),
(2, 'IEASTE'),
(1, 'WACE');

-- --------------------------------------------------------

--
-- Table structure for table `characteristic`
--

CREATE TABLE `characteristic` (
  `ch_id` int(11) NOT NULL,
  `ch_type` varchar(2) NOT NULL,
  `ch_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characteristic`
--

INSERT INTO `characteristic` (`ch_id`, `ch_type`, `ch_name`) VALUES
(1, 'A', 'A (Decisive)'),
(2, 'B', 'B (Neutral)'),
(3, 'C', 'C (Analytical)'),
(4, 'D', 'D (Openness)');

-- --------------------------------------------------------

--
-- Table structure for table `country_list`
--

CREATE TABLE `country_list` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_list`
--

INSERT INTO `country_list` (`country_id`, `country_name`) VALUES
(184, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Aruba'),
(10, 'Australia'),
(11, 'Austria'),
(12, 'Azerbaijan'),
(13, 'Bahamas, The'),
(14, 'Bahrain'),
(15, 'Bangladesh'),
(16, 'Barbados'),
(17, 'Belarus'),
(18, 'Belgium'),
(19, 'Belize'),
(20, 'Benin'),
(21, 'Bhutan'),
(22, 'Bolivia'),
(23, 'Bosnia and Herzegovina'),
(24, 'Botswana'),
(25, 'Brazil'),
(26, 'Brunei'),
(27, 'Bulgaria'),
(28, 'Burkina Faso'),
(29, 'Burma'),
(30, 'Burundi'),
(34, 'Cabo Verde'),
(31, 'Cambodia'),
(32, 'Cameroon'),
(33, 'Canada'),
(35, 'Central African Republic'),
(36, 'Chad'),
(37, 'Chile'),
(38, 'China'),
(39, 'Colombia'),
(40, 'Comoros'),
(41, 'Congo, Democratic Republic of '),
(42, 'Congo, Republic of the'),
(43, 'Costa Rica'),
(44, 'Cote d\'Ivoire'),
(45, 'Croatia'),
(46, 'Cuba'),
(47, 'Curacao'),
(48, 'Cyprus'),
(49, 'Czechia'),
(50, 'Denmark'),
(51, 'Djibouti'),
(52, 'Dominica'),
(53, 'Dominican Republic'),
(54, 'East Timor (seeÃƒâ€šÃ‚Â Timor-'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Equatorial Guinea'),
(59, 'Eritrea'),
(60, 'Estonia'),
(61, 'Ethiopia'),
(62, 'Fiji'),
(63, 'Finland'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia, The'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Greece'),
(71, 'Grenada'),
(72, 'Guatemala'),
(73, 'Guinea'),
(74, 'Guinea-Bissau'),
(75, 'Guyana'),
(76, 'Haiti'),
(77, 'Holy See'),
(78, 'Honduras'),
(79, 'Hong Kong'),
(80, 'Hungary'),
(81, 'Iceland'),
(82, 'India'),
(83, 'Indonesia'),
(84, 'Iran'),
(85, 'Iraq'),
(86, 'Ireland'),
(87, 'Israel'),
(88, 'Italy'),
(89, 'Jamaica'),
(90, 'Japan'),
(91, 'Jordan'),
(92, 'Kazakhstan'),
(93, 'Kenya'),
(94, 'Kiribati'),
(95, 'Korea, North'),
(96, 'Korea, South'),
(97, 'Kosovo'),
(98, 'Kuwait'),
(99, 'Kyrgyzstan'),
(100, 'Laos'),
(101, 'Latvia'),
(102, 'Lebanon'),
(103, 'Lesotho'),
(104, 'Liberia'),
(105, 'Libya'),
(106, 'Liechtenstein'),
(107, 'Lithuania'),
(108, 'Luxembourg'),
(109, 'Macau'),
(110, 'Macedonia'),
(111, 'Madagascar'),
(112, 'Malawi'),
(113, 'Malaysia'),
(114, 'Maldives'),
(115, 'Mali'),
(116, 'Malta'),
(117, 'Marshall Islands'),
(118, 'Mauritania'),
(119, 'Mauritius'),
(120, 'Mexico'),
(121, 'Micronesia'),
(122, 'Moldova'),
(123, 'Monaco'),
(124, 'Mongolia'),
(125, 'Montenegro'),
(126, 'Morocco'),
(127, 'Mozambique'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Zealand'),
(133, 'Nicaragua'),
(134, 'Niger'),
(135, 'Nigeria'),
(136, 'North Korea'),
(137, 'Norway'),
(138, 'Oman'),
(139, 'Pakistan'),
(140, 'Palau'),
(141, 'Palestinian Territories'),
(142, 'Panama'),
(143, 'Papua New Guinea'),
(144, 'Paraguay'),
(145, 'Peru'),
(146, 'Philippines'),
(147, 'Poland'),
(148, 'Portugal'),
(149, 'Qatar'),
(150, 'Romania'),
(151, 'Russia'),
(152, 'Rwanda'),
(153, 'Saint Kitts and Nevis'),
(154, 'Saint Lucia'),
(155, 'Saint Vincent and the Grenadin'),
(156, 'Samoa'),
(157, 'San Marino'),
(158, 'Sao Tome and Principe'),
(159, 'Saudi Arabia'),
(160, 'Senegal'),
(161, 'Serbia'),
(162, 'Seychelles'),
(163, 'Sierra Leone'),
(164, 'Singapore'),
(165, 'Sint Maarten'),
(166, 'Slovakia'),
(167, 'Slovenia'),
(168, 'Solomon Islands'),
(169, 'Somalia'),
(170, 'South Africa'),
(171, 'South Korea'),
(172, 'South Sudan'),
(173, 'Spain'),
(174, 'Sri Lanka'),
(175, 'Sudan'),
(176, 'Suriname'),
(177, 'Swaziland'),
(178, 'Sweden'),
(179, 'Switzerland'),
(180, 'Syria'),
(181, 'Taiwan'),
(182, 'Tajikistan'),
(183, 'Tanzania'),
(1, 'Thailand'),
(185, 'Timor-Leste'),
(186, 'Togo'),
(187, 'Tonga'),
(188, 'Trinidad and Tobago'),
(189, 'Tunisia'),
(190, 'Turkey'),
(191, 'Turkmenistan'),
(192, 'Tuvalu'),
(193, 'Uganda'),
(194, 'Ukraine'),
(195, 'United Arab Emirates'),
(196, 'United Kingdom'),
(197, 'Uruguay'),
(198, 'Uzbekistan'),
(199, 'Vanuatu'),
(200, 'Venezuela'),
(201, 'Vietnam'),
(202, 'Yemen'),
(203, 'Zambia'),
(204, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `degree_info`
--

CREATE TABLE `degree_info` (
  `degree_id` int(11) NOT NULL,
  `degree_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degree_info`
--

INSERT INTO `degree_info` (`degree_id`, `degree_name`) VALUES
(1, 'Doctor Degree'),
(2, 'Master Degree'),
(3, 'Bachelor Degree'),
(4, 'High Vocational Certificate'),
(5, 'Vocational Certificate'),
(6, 'Senior High School'),
(7, 'Diploma'),
(8, 'Bachelor Degree inter'),
(9, 'Master Degree inter'),
(10, 'Doctor Degree inter');

-- --------------------------------------------------------

--
-- Table structure for table `department_info`
--

CREATE TABLE `department_info` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(100) NOT NULL,
  `dep_ext` int(11) DEFAULT NULL,
  `bldg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department_info`
--

INSERT INTO `department_info` (`dep_id`, `dep_name`, `dep_ext`, `bldg_id`) VALUES
(1, 'ASIA HSA TOOLING DEV', NULL, NULL),
(2, 'HR', NULL, NULL),
(3, 'TA', NULL, NULL),
(4, 'AME', NULL, NULL),
(5, 'IE', NULL, NULL),
(6, 'HGA DEV.', NULL, NULL),
(7, 'SF Dev.', NULL, NULL),
(8, 'SYSTEM ENGINEER', NULL, NULL),
(9, 'IR', NULL, NULL),
(10, 'IT', NULL, NULL),
(11, 'ESD CONTROL & DEVELOPMENT', NULL, NULL),
(12, 'WDT IT', NULL, NULL),
(13, 'C&B', NULL, NULL),
(14, 'CLEANING', NULL, NULL),
(15, 'Component FA', NULL, NULL),
(16, 'EHS&S', NULL, NULL),
(17, 'ER', NULL, NULL),
(18, 'FACILITIES', NULL, NULL),
(19, 'Firmware', NULL, NULL),
(20, 'H SA AME', NULL, NULL),
(21, 'HDD TOOLING', NULL, NULL),
(22, 'HDD TRAINING', NULL, NULL),
(23, 'HGA DEVELOPMENT ENG.', NULL, NULL),
(24, 'HGA MAINTENANCE', NULL, NULL),
(25, 'HGA PROCESS/EQUIPMENT', NULL, NULL),
(26, 'HGA ROADMAP', NULL, NULL),
(27, 'HGA ROADMAP & PROJ. MGMT', NULL, NULL),
(28, 'HME', NULL, NULL),
(29, 'HR & COMMUNICATIONS', NULL, NULL),
(30, 'HSA', NULL, NULL),
(31, 'HSA AME', NULL, NULL),
(32, 'HSA AUTOMATION ENGINEERING', NULL, NULL),
(33, 'HSA EQUIPMENT/ TOOLING', NULL, NULL),
(34, 'HSA PRIME PROCESS', NULL, NULL),
(35, 'HSA PRODUCTIVITY STRATEGY', NULL, NULL),
(36, 'HSA TEST & EPZT DEVELOPMENT', NULL, NULL),
(37, 'HSA Tooling', NULL, NULL),
(38, 'HSA TOOLING METROLOGY/ QST SUPPORT', NULL, NULL),
(39, 'IE', NULL, NULL),
(40, 'IR', NULL, NULL),
(41, 'L&D', NULL, NULL),
(42, 'LOGISTIC', NULL, NULL),
(43, 'MACHINING', NULL, NULL),
(44, 'MFG ENGINEERING DIVISION', NULL, NULL),
(45, 'MFG Project', NULL, NULL),
(46, 'MFG-DRIVE', NULL, NULL),
(47, 'MHO PRODUCTION CONTROL', NULL, NULL),
(48, 'PCBA', NULL, NULL),
(49, 'PQE', NULL, NULL),
(50, 'PUR', NULL, NULL),
(51, 'RCSC', NULL, NULL),
(52, 'S/F MAINTENANCE', NULL, NULL),
(53, 'SEV&SWQA', NULL, NULL),
(54, 'SF Cleaning', NULL, NULL),
(55, 'SF FINISHING', NULL, NULL),
(56, 'SF Machining', NULL, NULL),
(57, 'SF METROLOGY', NULL, NULL),
(58, 'SF-Lapping', NULL, NULL),
(59, 'Staffing', NULL, NULL),
(60, 'STW', NULL, NULL),
(61, 'Test engineering', NULL, NULL),
(62, 'Test Equip', NULL, NULL),
(63, 'Tooling', NULL, NULL),
(64, 'TOOLING SOFTWARE DEV', NULL, NULL),
(65, 'TSD', NULL, NULL),
(66, 'TSE', NULL, NULL),
(67, 'WD Store', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_blackgrounf`
--

CREATE TABLE `education_blackgrounf` (
  `bg_id` int(11) NOT NULL,
  `bg_durationS` date DEFAULT NULL,
  `bg_durationE` date DEFAULT NULL,
  `bg_major` varchar(45) DEFAULT NULL,
  `bg_institute_name` varchar(45) DEFAULT NULL,
  `bg_degree` int(11) DEFAULT NULL,
  `bg_gpax` float DEFAULT NULL,
  `student_info_s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education_blackgrounf`
--

INSERT INTO `education_blackgrounf` (`bg_id`, `bg_durationS`, `bg_durationE`, `bg_major`, `bg_institute_name`, `bg_degree`, `bg_gpax`, `student_info_s_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 1229),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 1230),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 1231),
(4, NULL, NULL, NULL, NULL, NULL, NULL, 1232),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 1233),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 1234),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 1235),
(8, NULL, NULL, NULL, NULL, NULL, NULL, 1236),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 1237),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 1238),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 1239),
(12, NULL, NULL, NULL, NULL, NULL, NULL, 1240),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 1241),
(14, '2017-08-02', '2017-08-15', 'aaaaaaa', 'aaaaaaaaaaaaa', 6, NULL, 1242),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 1243),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 1244);

-- --------------------------------------------------------

--
-- Table structure for table `education_info`
--

CREATE TABLE `education_info` (
  `education_id` int(11) NOT NULL,
  `ins_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education_info`
--

INSERT INTO `education_info` (`education_id`, `ins_id`, `major_id`, `degree_id`, `s_id`) VALUES
(1, 1, 37, 3, 1264),
(2, 1, 37, 3, 1265),
(3, 3, 53, 3, 1266),
(4, 3, 50, 2, 1267),
(5, 1, 53, 3, 1268),
(6, 2, 51, 3, 1269),
(7, 1, 46, 3, 1270),
(8, 16, 37, 3, 1271),
(9, 80, 53, 2, 1272),
(10, 47, 53, 1, 1273),
(11, 16, 53, 1, 1274),
(12, 80, 53, 3, 1275),
(13, 47, 45, 3, 1276),
(14, 47, 45, 3, 1277),
(18, 1, 45, 3, 1278),
(956, 1, 45, 3, 1229),
(957, 2, 53, 2, 1230),
(959, 3, 41, 1, 1231),
(960, 1, 37, 3, 1232),
(961, 1, 37, 3, 1233),
(962, 3, 53, 3, 1234),
(963, 3, 50, 2, 1235),
(964, 1, 53, 3, 1236),
(965, 2, 51, 3, 1237),
(966, 1, 46, 3, 1238),
(967, 16, 37, 3, 1239),
(968, 80, 53, 2, 1240),
(969, 47, 53, 1, 1241),
(970, 16, 53, 1, 1242),
(974, 80, 53, 3, 1243),
(975, 47, 45, 3, 1244),
(976, 1, 45, 3, 1245),
(977, 2, 53, 2, 1246),
(978, 3, 41, 1, 1247),
(979, 1, 37, 3, 1248),
(980, 1, 37, 3, 1249),
(982, 3, 53, 3, 1250),
(983, 3, 50, 2, 1251),
(984, 1, 53, 3, 1252),
(985, 2, 51, 3, 1253),
(986, 1, 46, 3, 1254),
(987, 16, 37, 3, 1255),
(988, 80, 53, 2, 1256),
(989, 47, 53, 1, 1257),
(990, 16, 53, 1, 1258),
(994, 80, 53, 3, 1259),
(995, 47, 45, 3, 1260),
(996, 1, 45, 3, 1261),
(997, 2, 53, 2, 1262),
(999, 3, 41, 1, 1263);

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(11) NOT NULL,
  `email_subject` varchar(100) NOT NULL,
  `email_body` text,
  `email_attachment` blob,
  `email_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email_subject`, `email_body`, `email_attachment`, `email_signature`) VALUES
(1, 'Activity', 'It\'s an automated reminder email for the upcoming activity. Please find the details below.', NULL, 'Western Digital Corporation (and its subsidiaries) E-mail Confidentiality Notice & Disclaimer:\r\nThis e-mail and any files transmitted with it may contain confidential or legally privileged information of WDC and/or its affiliates, and are intended solely for the use of the individual or entity to which they are addressed. If you are not the intended recipient, any disclosure, copying, distribution or any action taken or omitted to be taken in reliance on it, is prohibited. If you have received this e-mail in error, please notify the sender immediately and delete the e-mail in its entirety from your system.'),
(2, 'Visa Reminder', 'It\'s an automated reminder email for your visa expiry date. Please contact your institute for your visa document.\r\nYour visa expiry date is as follow.', NULL, 'Western Digital Corporation (and its subsidiaries) E-mail Confidentiality Notice & Disclaimer:\r\nThis e-mail and any files transmitted with it may contain confidential or legally privileged information of WDC and/or its affiliates, and are intended solely for the use of the individual or entity to which they are addressed. If you are not the intended recipient, any disclosure, copying, distribution or any action taken or omitted to be taken in reliance on it, is prohibited. If you have received this e-mail in error, please notify the sender immediately and delete the e-mail in its entirety from your system.'),
(3, 'Presentation', 'It is an automated email for the trainee upcoming presentation. Please find the details below.', NULL, 'Western Digital Corporation (and its subsidiaries) E-mail Confidentiality Notice & Disclaimer:\r\nThis e-mail and any files transmitted with it may contain confidential or legally privileged information of WDC and/or its affiliates, and are intended solely for the use of the individual or entity to which they are addressed. If you are not the intended recipient, any disclosure, copying, distribution or any action taken or omitted to be taken in reliance on it, is prohibited. If you have received this e-mail in error, please notify the sender immediately and delete the e-mail in its entirety from your system.'),
(4, 'Trainee Presentation', 'It is an automated email for your the upcoming presentation of the following trainee:', NULL, 'Western Digital Corporation (and its subsidiaries) E-mail Confidentiality Notice & Disclaimer:\r\nThis e-mail and any files transmitted with it may contain confidential or legally privileged information of WDC and/or its affiliates, and are intended solely for the use of the individual or entity to which they are addressed. If you are not the intended recipient, any disclosure, copying, distribution or any action taken or omitted to be taken in reliance on it, is prohibited. If you have received this e-mail in error, please notify the sender immediately and delete the e-mail in its entirety from your system.'),
(5, 'Trainee Meeting', 'It is an automated email for your upcoming meeting. Please find the details below.', NULL, 'Western Digital Corporation (and its subsidiaries) E-mail Confidentiality Notice & Disclaimer:\r\nThis e-mail and any files transmitted with it may contain confidential or legally privileged information of WDC and/or its affiliates, and are intended solely for the use of the individual or entity to which they are addressed. If you are not the intended recipient, any disclosure, copying, distribution or any action taken or omitted to be taken in reliance on it, is prohibited. If you have received this e-mail in error, please notify the sender immediately and delete the e-mail in its entirety from your system.');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `eva_id` int(11) NOT NULL,
  `eva_onlineTest` int(11) DEFAULT NULL,
  `eva_leonard` int(11) DEFAULT NULL,
  `eva_preTest` int(11) DEFAULT NULL,
  `eva_postTest` int(11) DEFAULT NULL,
  `eva_finalPre_score` int(11) DEFAULT NULL,
  `eva_finalPre_comment` text,
  `stu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`eva_id`, `eva_onlineTest`, `eva_leonard`, `eva_preTest`, `eva_postTest`, `eva_finalPre_score`, `eva_finalPre_comment`, `stu_id`) VALUES
(1, NULL, NULL, NULL, NULL, 0, NULL, 1229),
(2, NULL, NULL, NULL, NULL, 0, NULL, 1230),
(3, NULL, NULL, NULL, NULL, 70, NULL, 1231),
(4, NULL, NULL, NULL, NULL, 50, NULL, 1232),
(5, NULL, NULL, NULL, NULL, 0, NULL, 1233),
(6, NULL, NULL, NULL, NULL, 0, NULL, 1234),
(7, NULL, NULL, NULL, NULL, 0, NULL, 1235),
(8, NULL, NULL, NULL, NULL, 0, NULL, 1236),
(9, NULL, NULL, NULL, NULL, 0, NULL, 1237),
(10, NULL, NULL, NULL, NULL, 0, NULL, 1238),
(11, NULL, NULL, NULL, NULL, 0, NULL, 1239),
(12, NULL, NULL, NULL, NULL, 70, NULL, 1240),
(13, NULL, NULL, NULL, NULL, 50, NULL, 1241),
(14, NULL, NULL, NULL, NULL, 0, NULL, 1242),
(15, NULL, NULL, NULL, NULL, 0, NULL, 1243),
(16, NULL, NULL, NULL, NULL, 0, NULL, 1244);

-- --------------------------------------------------------

--
-- Table structure for table `extracurricular_act`
--

CREATE TABLE `extracurricular_act` (
  `exact_id` int(11) NOT NULL,
  `ext_dateS` date DEFAULT NULL,
  `ext_dateE` date DEFAULT NULL,
  `exact_name` varchar(45) DEFAULT NULL,
  `exact_detail` text,
  `student_info_s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extracurricular_act`
--

INSERT INTO `extracurricular_act` (`exact_id`, `ext_dateS`, `ext_dateE`, `exact_name`, `exact_detail`, `student_info_s_id`) VALUES
(1, NULL, NULL, NULL, NULL, 1229),
(2, NULL, NULL, NULL, NULL, 1230),
(3, NULL, NULL, NULL, NULL, 1231),
(4, NULL, NULL, NULL, NULL, 1232),
(5, NULL, NULL, NULL, NULL, 1233),
(6, NULL, NULL, NULL, NULL, 1234),
(7, NULL, NULL, NULL, NULL, 1235),
(8, NULL, NULL, NULL, NULL, 1236),
(9, NULL, NULL, NULL, NULL, 1237),
(10, NULL, NULL, 'zdcvzsdvzfdv', 'zfvzvzvzsdvszdvzsdv', 1238),
(11, NULL, NULL, 'zdcvzsdvzfdv', 'zdcvzfsdvzfvzfqqqqqqqqqq', 1239),
(12, '2017-08-01', '2017-08-07', 'qqqqq', 'qqqqqq', 1240),
(13, NULL, NULL, NULL, NULL, 1241),
(14, NULL, NULL, NULL, NULL, 1242),
(15, NULL, NULL, NULL, NULL, 1243),
(19, NULL, NULL, NULL, NULL, 1244);

-- --------------------------------------------------------

--
-- Table structure for table `hobby_info`
--

CREATE TABLE `hobby_info` (
  `hobby_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `hobby_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hobby_info`
--

INSERT INTO `hobby_info` (`hobby_id`, `s_id`, `hobby_desc`) VALUES
(1, 1229, NULL),
(2, 1230, NULL),
(3, 1231, NULL),
(4, 1232, NULL),
(5, 1233, NULL),
(6, 1235, NULL),
(7, 1236, NULL),
(8, 1237, NULL),
(9, 1238, NULL),
(13, 1239, NULL),
(14, 1240, NULL),
(15, 1241, 'bonbonkk ch'),
(17, 1242, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `host_university`
--

CREATE TABLE `host_university` (
  `host_id` int(11) NOT NULL,
  `host_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `host_university`
--

INSERT INTO `host_university` (`host_id`, `host_name`) VALUES
(2, 'KING MONGKUT\'S UNIVERSITY OF TECHNOLOGY'),
(1, 'SURANAREE UNIVERSITY OF TECHNOLOGY');

-- --------------------------------------------------------

--
-- Table structure for table `immigration_office`
--

CREATE TABLE `immigration_office` (
  `img_id` int(11) NOT NULL,
  `img_name` varchar(100) NOT NULL,
  `img_location` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `ins_id` int(3) NOT NULL,
  `ins_name` varchar(100) NOT NULL,
  `itp_id` int(2) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`ins_id`, `ins_name`, `itp_id`, `country_id`) VALUES
(1, 'SURANAREE UNIVERSITY OF TECHNOLOGY', 1, 1),
(2, 'RANGSIT UNIVERSITY', 1, 1),
(3, 'BANGKOK UNIVERSITY', 1, 1),
(4, 'AYUTTHAYA TECHNICAL COLLEGE', 2, 1),
(8, 'AEROSPACE / ROYAL MELBOURNE INSTITUTE OF TECHNOLOGY', 1, 1),
(9, 'ASIAN INSTITULE OF TECHNOLOGY (AIT) ', 1, 1),
(10, 'ATLAS NUSANTARA', 1, 2),
(11, 'ATMA JAYA YOGYAKARTA UNIVERSITY', 1, 2),
(12, 'AUTOMOTIVE INDUSTRY TECHNICAL COLLEGE', 2, 1),
(13, 'AYUTTHAYA SHIP BUILDING INDUSTRIAL AND TECHNOLOGY COLLEGE', 2, 1),
(14, 'AYUTTHAYA TECHNICAL COLLEGE', 2, 1),
(15, 'BANGKOK UNIVERSITY', 1, 1),
(16, 'BOCHUM U. OF APPLIED SCIENCE', 1, 4),
(17, 'BURAPHA UNIVERSITY', 1, 1),
(18, 'CHIANG MAI UNIVERSITY', 1, 1),
(19, 'CHULABHORN (LADKWANG) TECHNICAL COLLEGE', 2, 1),
(20, 'CHULALONGKORN UNIVERSITY', 1, 1),
(21, 'COLLEGE OF DATA STORAGE INNOVATION KING MONGKUT\'S INSTITUTE OF TECHNOLOGY LADKRABANG', 1, 1),
(22, 'DURBAN UNIVERSITY OF TECHNOLOGY', 1, 2),
(23, 'ESSLINGEN UNIVERSITY OF APPLIED SCIENCE', 1, 4),
(24, 'ESSLINGEN UNIVERSITY OF APPLIED SCIENCES', 1, 4),
(25, 'ISC PARIS SCHOOL OF MANAGEMENT', 1, 4),
(26, 'KASETSART UNIVERSITY', 1, 1),
(27, 'KING MONGKUT\'S INSTITUTE OF TECHNOLOGY LADKRABANG', 1, 1),
(28, 'KING MONGKUT\'S UNIVERSITY OF TECHNOLOGY NORTH BANGKOK', 1, 1),
(29, 'KING MONGKUT\'S INSTITUTE OF TECHNOLOGY LADKRABANG', 1, 1),
(30, 'KING MONGKUT\'S UNIVERSITY OF TECHNOLOGY THONBURI', 1, 1),
(31, 'LOPBURI TECHNICAL COLLEGE', 2, 1),
(32, 'MAEFAHLUANG UNIVERSITY', 1, 1),
(33, 'MAEJO UNIVERSITY', 1, 1),
(34, 'MAHIDOL UNIVERSITY', 1, 1),
(35, 'MINBURI POLYTECHNIC COLLEGE OF TECHNOLOGY', 2, 1),
(36, 'NAKHON RATCHASIMA RAJABHAT UNIVERSITY', 1, 1),
(37, 'NAKHONNAYOK TECHNICAL COLLEGE', 2, 1),
(38, 'NATIONAL ENGINEERING SCHOOL OF TUNIS', 1, 1),
(39, 'NONGKHAI TECHNICAL COLLEGE', 2, 1),
(40, 'PARNLERT SCHOOL FOR THE DEAF', 2, 1),
(41, 'PATHUMTHANI TECHNICAL COLLEGE', 2, 1),
(42, 'PHAYAO UNIVERSITY', 1, 1),
(43, 'PHETCHABUN TECHNICAL COLLEGE', 2, 1),
(44, 'PHICHIT TECHNICAL COLLEGE', 2, 1),
(45, 'PHOTHONG INDUSTRIAL AND COMMUNITY EDUCATION COLLEGE', 2, 1),
(46, 'POLITEKNIK NILAI, NEGERI SEMBILAN', 2, 4),
(47, 'POLITEKNIK SULTAN AZLAN SHAH', 2, 4),
(48, 'POLITEKNIK SULTAN SALAHUDDIN ABDUL AZIZ SHAH', 2, 4),
(49, 'POLYTECHNIC OF NAMEBIA ', 1, 2),
(50, 'PRINCE OF SONGKLA UNIVERSITY', 1, 1),
(51, 'RAJAMANGALA UNIVERSITY OF TECHNOLOGY ISAN', 1, 1),
(52, 'RAJAMANGALA UNIVERSITY OF TECHNOLOGY ISAN KHONKAEN CAMPUS', 1, 1),
(53, 'RAJAMANGALA UNIVERSITY OF TECHNOLOGY RATTANAKOSIN', 1, 1),
(54, 'RAJAMANGALA UNIVERSITY OF TECHNOLOGY THANYABURI', 1, 1),
(55, 'RAJAMANGGALA UNIVERSITY OF TECHNOLOGY SUVARNABHUMI', 1, 1),
(56, 'RANGSIT UNIVERSITY', 1, 1),
(57, 'ROYAL MELBOURNE INSTITUTE OF TECHNOLOGY', 1, 1),
(59, 'RWTH AACHEN UNIVERSITY', 1, 2),
(60, 'SAKONNAKHON TECHNICAL COLLEGE', 2, 1),
(61, 'SHANGHAI MARITIME UNIVERSITY', 1, 2),
(62, 'SIAM UNIVERSITY', 1, 1),
(63, 'SILAPAKORN UNIVERSITY', 1, 1),
(64, 'SRINAKHARINWIROT UNIVERSITY,NAKORNNAYOK CAMPUS', 1, 1),
(65, 'SS. CYRIL ANDÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â  METHODIUS UNIVERSITY', 1, 2),
(66, 'SUPHANBURI TECHNICAL COLLEGE', 2, 1),
(67, 'SURANAREE UNIVERSITY OF TECHNOLOGY', 1, 1),
(68, 'TALUANG TECHNICAL COLLEGE', 2, 1),
(69, 'TECHNICAL UNIVERSITY OF BERLIN', 2, 1),
(70, 'THAI GERMAN GRADUATE SCHOOL OF ENGINEERING', 1, 1),
(71, 'THAI-NICHI INSTITUTE OF TECHNOLOGY', 1, 1),
(72, 'THAMASART UNIVERSITY', 1, 1),
(73, 'THE HONGKOKG POLYTECHNIC UNIVERSITY', 1, 2),
(74, 'THE SIRINDHORN INTERNATIONAL THAI-GERMAN GRADUATE SCHOOL OF ENGINEERING,TGGS,KMUT-NB', 1, 2),
(75, 'UNIVERSITY OF APPLIED SCIENCE RAPPERSWIL ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â ', 1, 2),
(76, 'UNIVERSITY OF BELGRADE', 1, 1),
(77, 'UNIVERSITY OF SANTIAGO DE COMPOSTELA, SPAIN, ', 1, 4),
(78, 'UNIVERSITY OF WATERLOO ', 1, 4),
(79, 'UNIVERSITY TEKNIKAL MALAYSIA MELAKA', 1, 4),
(80, 'VICTORIA UNIVERSITY', 1, 2),
(81, 'WALAILAK UNIVERSITY', 1, 1),
(82, 'Yildiz Technical University', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `institute_type`
--

CREATE TABLE `institute_type` (
  `itp_id` int(2) NOT NULL,
  `itp_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institute_type`
--

INSERT INTO `institute_type` (`itp_id`, `itp_name`) VALUES
(1, 'UNIVERSITY'),
(2, 'COLLAGE');

-- --------------------------------------------------------

--
-- Table structure for table `interview_info`
--

CREATE TABLE `interview_info` (
  `interview_id` int(11) NOT NULL,
  `applicantion_id` int(11) DEFAULT NULL,
  `interview_type` varchar(50) DEFAULT NULL,
  `interview_time` time DEFAULT NULL,
  `interview_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `lg_id` int(11) NOT NULL,
  `lg_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`lg_id`, `lg_name`) VALUES
(1, 'Mandarin'),
(2, 'Spanish'),
(3, 'English'),
(4, 'Hindi'),
(5, 'Arabic'),
(6, 'Portuguese'),
(7, 'Bengali '),
(8, 'Russian'),
(9, 'Japanese'),
(10, 'Punjabi');

-- --------------------------------------------------------

--
-- Table structure for table `language_info`
--

CREATE TABLE `language_info` (
  `lg_info_id` int(11) NOT NULL,
  `lg_id` int(11) DEFAULT NULL,
  `lv_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_info`
--

INSERT INTO `language_info` (`lg_info_id`, `lg_id`, `lv_id`, `s_id`) VALUES
(18, 1, 2, 1229),
(20, NULL, NULL, 1230);

-- --------------------------------------------------------

--
-- Table structure for table `language_lv`
--

CREATE TABLE `language_lv` (
  `lv_id` int(11) NOT NULL,
  `lv_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_lv`
--

INSERT INTO `language_lv` (`lv_id`, `lv_name`) VALUES
(1, 'Poor'),
(2, 'Fair'),
(3, 'Good'),
(4, 'Very Good'),
(5, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`) VALUES
(1, ''),
(2, 'HDD'),
(3, 'MHO'),
(4, 'HSA');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `login_id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_details` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`login_id`, `full_name`, `email`, `password`, `created_details`) VALUES
(1, 'Daniyal Qureshi', 'dani.thailand@yahoo.com', 'a79938ab5392c8024dff98a44cf776f4cbbb47be9ff78e4997a4920ec262b320', '2017-03-01 09:21:25'),
(4, 'Admin', 'admin@wdc.co.th', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2', '2017-04-03 03:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `major_info`
--

CREATE TABLE `major_info` (
  `major_id` int(11) NOT NULL,
  `major_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `major_info`
--

INSERT INTO `major_info` (`major_id`, `major_name`) VALUES
(36, 'ADVANCED MANUFACTURING AND MECHATRONICS'),
(37, 'AUTO MECHANIC'),
(38, 'AUTOMATION ENGINEERING'),
(39, 'BIOLOGY PSYCHOLOGY'),
(40, 'CERAMIC ENGINEERING'),
(41, 'CHEMICAL ENGINEERING'),
(42, 'CHEMISTRY ENGINEERING'),
(43, 'COMMERCE'),
(44, 'COMMUNICATION DESIGN'),
(45, 'COMPUTER BUSINESS'),
(46, 'COMPUTER SCIENCE'),
(47, 'COMPUTERS AND NETWORK ENGINEERING'),
(48, 'CONTROL SYSTEM AND INSTRUMENTATION'),
(49, 'ELECTRICAL AND ELECTRONIC'),
(50, 'ELECTRICAL ENGINEERING'),
(52, 'ELECTRONIC AND COMMUNICATION ENGINEERING '),
(51, 'ELECTRONIC ENGINEERING'),
(53, 'ENGILSH'),
(54, 'ENVIRONMENT AND BUSINESS'),
(55, 'ENVIRONMENTAI ENGINEERING'),
(56, 'ENVIRONMENTAL HEALTH'),
(57, 'HEALTH PROMOTION HEALTH INFORMATICS'),
(58, 'INDUSTRIAL AND SYSTEM ENGINEERING'),
(59, 'INDUSTRIAL CHEMISTRY'),
(60, 'INDUSTRIAL ENGINEERING'),
(61, 'INDUSTRIAL PHYSICS'),
(62, 'INFORMATICS ENGINEERING'),
(63, 'INFORMATION & COMMUNICATION TECHNOLOGY'),
(64, 'INFORMATION TECHNOLOGY'),
(65, 'LOGISTICS MANAGEMENT'),
(66, 'MAKETING'),
(67, 'MANAGEMENT INFORMATION SYSTEM'),
(68, 'MANUFACTURING ENGINEERING '),
(69, 'MATERIALS AND PRODUCTION ENGINEERING'),
(70, 'MATERIALS ENGINEERING'),
(71, 'MATHEMATICS'),
(72, 'MECHANICAL AND AUTOMOTIVE ENGINEERING'),
(73, 'MECHANICAL ENGINEERING&BUSINESS'),
(74, 'MECHATRONIC ENGINEERING'),
(75, 'MECHATRONIC OF MANUFACTURE ENGINEERING'),
(109, 'MECHATRONICS AUTOMATION SYSTEMS'),
(80, 'MECHATRONICS ENGINEERING'),
(110, 'MECHATRONICS-PRECISION ENGINEERING'),
(111, 'NANOSCIENCE ANG TECHNOLOGY'),
(112, 'OCCUPATIONAL HEALTH AND SAFETY'),
(113, 'PETROCHEMICAL AND POLYMER'),
(114, 'PHYSIC'),
(115, 'PRODUCTION ENGINEERING'),
(116, 'PRODUCTION TECHNOLOGY'),
(117, 'PROGRAM ENERGY AND PROCESS ENGINEERING'),
(118, 'SOCIOLOGY'),
(119, 'STATISTICAL INFORMATION'),
(120, 'TECHNOLOGY COMPUTER'),
(121, 'TELECOMMUNICATION ENGINEERING');

-- --------------------------------------------------------

--
-- Table structure for table `non_thai`
--

CREATE TABLE `non_thai` (
  `nthai_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `host_id` int(2) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `non_thai`
--

INSERT INTO `non_thai` (`nthai_id`, `s_id`, `host_id`, `c_id`) VALUES
(7, 1239, 1, 1),
(8, 1240, 2, 2),
(9, 1241, 2, 1),
(10, 1242, 1, 3),
(11, 1243, 1, 3),
(12, 1244, 2, 2),
(13, 1255, 1, 1),
(14, 1256, 2, 2),
(15, 1257, 2, 1),
(16, 1258, 1, 3),
(17, 1259, 1, 3),
(18, 1260, 2, 2),
(19, 1271, 1, 1),
(20, 1272, 2, 2),
(21, 1273, 2, 1),
(22, 1274, 1, 3),
(23, 1275, 1, 3),
(24, 1276, 2, 2),
(25, 1277, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `other_doc`
--

CREATE TABLE `other_doc` (
  `idother_id` int(11) NOT NULL,
  `other_file` varchar(35) DEFAULT NULL,
  `application_application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other_doc`
--

INSERT INTO `other_doc` (`idother_id`, `other_file`, `application_application_id`) VALUES
(10, NULL, NULL),
(12, NULL, NULL),
(14, NULL, NULL),
(16, NULL, NULL),
(18, NULL, NULL),
(20, NULL, NULL),
(22, NULL, NULL),
(24, NULL, NULL),
(26, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, NULL, NULL),
(42, NULL, NULL),
(43, NULL, NULL),
(44, NULL, NULL),
(45, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(67, NULL, NULL),
(68, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(77, NULL, NULL),
(78, NULL, NULL),
(79, NULL, NULL),
(80, NULL, NULL),
(81, NULL, NULL),
(82, NULL, NULL),
(83, NULL, NULL),
(84, NULL, NULL),
(85, NULL, NULL),
(86, NULL, NULL),
(87, NULL, NULL),
(88, NULL, NULL),
(89, NULL, NULL),
(90, NULL, NULL),
(91, NULL, NULL),
(92, NULL, NULL),
(93, NULL, NULL),
(94, NULL, NULL),
(95, NULL, NULL),
(96, NULL, NULL),
(97, NULL, NULL),
(98, NULL, NULL),
(99, NULL, NULL),
(100, NULL, NULL),
(101, NULL, NULL),
(102, NULL, NULL),
(103, NULL, NULL),
(104, NULL, NULL),
(105, NULL, NULL),
(106, NULL, NULL),
(107, NULL, NULL),
(108, NULL, NULL),
(109, NULL, NULL),
(110, NULL, NULL),
(111, NULL, NULL),
(112, NULL, NULL),
(113, NULL, NULL),
(114, NULL, NULL),
(115, NULL, NULL),
(116, NULL, NULL),
(117, NULL, NULL),
(118, NULL, NULL),
(119, NULL, NULL),
(120, NULL, NULL),
(121, NULL, NULL),
(122, NULL, NULL),
(123, NULL, NULL),
(124, NULL, NULL),
(125, NULL, NULL),
(126, NULL, NULL),
(127, NULL, NULL),
(128, NULL, NULL),
(129, NULL, NULL),
(130, NULL, NULL),
(131, NULL, NULL),
(132, NULL, NULL),
(133, NULL, NULL),
(134, NULL, NULL),
(135, NULL, NULL),
(136, NULL, NULL),
(137, NULL, NULL),
(138, NULL, NULL),
(139, NULL, NULL),
(140, NULL, NULL),
(141, NULL, NULL),
(142, NULL, NULL),
(143, NULL, NULL),
(144, NULL, NULL),
(145, NULL, NULL),
(146, NULL, NULL),
(147, NULL, NULL),
(148, NULL, NULL),
(149, NULL, NULL),
(150, NULL, NULL),
(151, NULL, NULL),
(152, NULL, NULL),
(153, NULL, NULL),
(154, NULL, NULL),
(155, NULL, NULL),
(156, NULL, NULL),
(157, NULL, NULL),
(158, NULL, NULL),
(159, NULL, NULL),
(160, NULL, NULL),
(161, NULL, NULL),
(162, NULL, NULL),
(163, NULL, NULL),
(164, NULL, NULL),
(165, NULL, NULL),
(166, NULL, NULL),
(167, NULL, NULL),
(168, NULL, NULL),
(169, NULL, NULL),
(170, NULL, NULL),
(171, NULL, NULL),
(172, NULL, NULL),
(173, NULL, NULL),
(174, NULL, NULL),
(175, NULL, NULL),
(176, NULL, NULL),
(177, NULL, NULL),
(178, NULL, NULL),
(179, NULL, NULL),
(180, NULL, NULL),
(181, NULL, NULL),
(182, NULL, NULL),
(183, NULL, NULL),
(184, NULL, NULL),
(185, NULL, NULL),
(186, NULL, NULL),
(187, NULL, NULL),
(188, NULL, NULL),
(189, NULL, NULL),
(190, NULL, NULL),
(191, NULL, NULL),
(192, NULL, NULL),
(193, NULL, NULL),
(194, NULL, NULL),
(195, NULL, NULL),
(196, NULL, NULL),
(197, NULL, NULL),
(198, NULL, NULL),
(199, NULL, NULL),
(200, NULL, NULL),
(201, NULL, NULL),
(202, NULL, NULL),
(203, NULL, NULL),
(204, NULL, NULL),
(205, NULL, NULL),
(206, NULL, NULL),
(207, NULL, NULL),
(208, NULL, NULL),
(209, NULL, NULL),
(210, NULL, NULL),
(211, NULL, NULL),
(212, NULL, NULL),
(213, NULL, NULL),
(214, NULL, NULL),
(215, NULL, NULL),
(216, NULL, NULL),
(217, NULL, NULL),
(218, NULL, NULL),
(219, NULL, NULL),
(220, NULL, NULL),
(221, NULL, NULL),
(222, NULL, NULL),
(223, NULL, NULL),
(224, NULL, NULL),
(225, NULL, NULL),
(226, NULL, NULL),
(227, NULL, NULL),
(228, NULL, NULL),
(229, NULL, NULL),
(230, NULL, NULL),
(231, NULL, NULL),
(232, NULL, NULL),
(233, NULL, NULL),
(234, NULL, NULL),
(235, NULL, NULL),
(236, NULL, NULL),
(237, NULL, NULL),
(238, NULL, NULL),
(239, NULL, NULL),
(240, NULL, NULL),
(241, NULL, NULL),
(242, NULL, NULL),
(243, NULL, NULL),
(244, NULL, NULL),
(245, NULL, NULL),
(246, NULL, NULL),
(247, NULL, NULL),
(248, NULL, NULL),
(249, NULL, NULL),
(250, NULL, NULL),
(251, NULL, NULL),
(252, NULL, NULL),
(253, NULL, NULL),
(254, NULL, NULL),
(255, NULL, NULL),
(256, NULL, NULL),
(257, NULL, NULL),
(258, NULL, NULL),
(259, NULL, NULL),
(260, NULL, NULL),
(261, NULL, NULL),
(262, NULL, NULL),
(263, NULL, NULL),
(264, NULL, NULL),
(265, NULL, NULL),
(266, NULL, NULL),
(267, NULL, NULL),
(268, NULL, NULL),
(269, NULL, NULL),
(270, NULL, NULL),
(271, NULL, NULL),
(272, NULL, NULL),
(273, NULL, NULL),
(274, NULL, NULL),
(275, NULL, NULL),
(276, NULL, NULL),
(277, NULL, NULL),
(278, NULL, NULL),
(279, NULL, NULL),
(280, NULL, NULL),
(281, NULL, NULL),
(282, NULL, NULL),
(283, NULL, NULL),
(284, NULL, NULL),
(285, NULL, NULL),
(286, NULL, NULL),
(287, NULL, NULL),
(288, NULL, NULL),
(289, NULL, NULL),
(290, NULL, NULL),
(291, NULL, NULL),
(292, NULL, NULL),
(293, NULL, NULL),
(294, NULL, NULL),
(295, NULL, NULL),
(296, NULL, NULL),
(297, NULL, NULL),
(298, NULL, NULL),
(299, NULL, NULL),
(300, NULL, NULL),
(301, NULL, NULL),
(302, NULL, NULL),
(303, NULL, NULL),
(304, NULL, NULL),
(305, NULL, NULL),
(306, NULL, NULL),
(307, NULL, NULL),
(308, NULL, NULL),
(309, NULL, NULL),
(310, NULL, NULL),
(311, NULL, NULL),
(312, NULL, NULL),
(313, NULL, NULL),
(314, NULL, NULL),
(315, NULL, NULL),
(316, NULL, NULL),
(317, NULL, NULL),
(318, NULL, NULL),
(319, NULL, NULL),
(320, NULL, NULL),
(321, NULL, NULL),
(322, NULL, NULL),
(323, NULL, NULL),
(324, NULL, NULL),
(325, NULL, NULL),
(326, NULL, NULL),
(327, NULL, NULL),
(328, NULL, NULL),
(329, NULL, NULL),
(330, NULL, NULL),
(331, NULL, NULL),
(332, NULL, NULL),
(333, NULL, NULL),
(334, NULL, NULL),
(335, NULL, NULL),
(336, NULL, NULL),
(337, NULL, NULL),
(338, NULL, NULL),
(339, NULL, NULL),
(340, NULL, NULL),
(341, NULL, NULL),
(342, NULL, NULL),
(343, NULL, NULL),
(344, NULL, NULL),
(345, NULL, NULL),
(346, NULL, NULL),
(347, NULL, NULL),
(348, NULL, NULL),
(349, NULL, NULL),
(350, NULL, NULL),
(351, NULL, NULL),
(352, NULL, NULL),
(353, NULL, NULL),
(354, NULL, NULL),
(355, NULL, NULL),
(356, NULL, NULL),
(357, NULL, NULL),
(358, NULL, NULL),
(359, NULL, NULL),
(360, NULL, NULL),
(361, NULL, NULL),
(362, NULL, NULL),
(363, NULL, NULL),
(364, NULL, NULL),
(365, NULL, NULL),
(366, NULL, NULL),
(367, NULL, NULL),
(368, NULL, NULL),
(369, NULL, NULL),
(370, NULL, NULL),
(371, NULL, NULL),
(372, NULL, NULL),
(373, NULL, NULL),
(374, NULL, NULL),
(375, NULL, NULL),
(376, NULL, NULL),
(377, NULL, NULL),
(378, NULL, NULL),
(379, NULL, NULL),
(380, NULL, NULL),
(381, NULL, NULL),
(382, NULL, NULL),
(383, NULL, NULL),
(384, NULL, NULL),
(385, NULL, NULL),
(386, NULL, NULL),
(387, NULL, NULL),
(388, NULL, NULL),
(389, NULL, NULL),
(390, NULL, NULL),
(391, NULL, NULL),
(392, NULL, NULL),
(393, NULL, NULL),
(395, NULL, NULL),
(396, NULL, NULL),
(397, NULL, NULL),
(398, NULL, NULL),
(399, NULL, NULL),
(400, NULL, NULL),
(401, NULL, NULL),
(402, NULL, NULL),
(403, NULL, NULL),
(404, NULL, NULL),
(405, NULL, NULL),
(406, NULL, NULL),
(407, NULL, NULL),
(408, NULL, NULL),
(409, NULL, NULL),
(410, NULL, NULL),
(411, NULL, NULL),
(412, NULL, NULL),
(413, NULL, NULL),
(414, NULL, NULL),
(415, NULL, NULL),
(416, NULL, NULL),
(417, NULL, NULL),
(418, NULL, NULL),
(419, NULL, NULL),
(420, NULL, NULL),
(421, NULL, NULL),
(422, NULL, NULL),
(423, NULL, NULL),
(424, NULL, NULL),
(425, NULL, NULL),
(426, NULL, NULL),
(427, NULL, NULL),
(428, NULL, NULL),
(429, NULL, NULL),
(430, NULL, NULL),
(431, NULL, NULL),
(432, NULL, NULL),
(433, NULL, NULL),
(434, NULL, NULL),
(435, NULL, NULL),
(436, NULL, NULL),
(437, NULL, NULL),
(438, NULL, NULL),
(439, NULL, NULL),
(440, NULL, NULL),
(441, NULL, NULL),
(442, NULL, NULL),
(443, NULL, NULL),
(444, NULL, NULL),
(445, NULL, NULL),
(446, NULL, NULL),
(447, NULL, NULL),
(448, NULL, NULL),
(449, NULL, NULL),
(450, NULL, NULL),
(451, NULL, NULL),
(452, NULL, NULL),
(453, NULL, NULL),
(454, NULL, NULL),
(455, NULL, NULL),
(456, NULL, NULL),
(457, NULL, NULL),
(458, NULL, NULL),
(459, NULL, NULL),
(460, NULL, NULL),
(461, NULL, NULL),
(462, NULL, NULL),
(463, NULL, NULL),
(464, NULL, NULL),
(465, NULL, NULL),
(466, NULL, NULL),
(467, NULL, NULL),
(468, NULL, NULL),
(469, NULL, NULL),
(470, NULL, NULL),
(471, NULL, NULL),
(472, NULL, NULL),
(473, NULL, NULL),
(474, NULL, NULL),
(475, NULL, NULL),
(476, NULL, NULL),
(477, NULL, NULL),
(478, NULL, NULL),
(479, NULL, NULL),
(480, NULL, NULL),
(481, NULL, NULL),
(482, NULL, NULL),
(483, NULL, NULL),
(484, NULL, NULL),
(485, NULL, NULL),
(486, NULL, NULL),
(487, NULL, NULL),
(488, NULL, NULL),
(489, NULL, NULL),
(490, NULL, NULL),
(491, NULL, NULL),
(492, NULL, NULL),
(493, NULL, NULL),
(494, NULL, NULL),
(495, NULL, NULL),
(496, NULL, NULL),
(497, NULL, NULL),
(498, NULL, NULL),
(499, NULL, NULL),
(500, NULL, NULL),
(501, NULL, NULL),
(502, NULL, NULL),
(503, NULL, NULL),
(504, NULL, NULL),
(505, NULL, NULL),
(506, NULL, NULL),
(507, NULL, NULL),
(508, NULL, NULL),
(509, NULL, NULL),
(510, NULL, NULL),
(511, NULL, NULL),
(512, NULL, NULL),
(513, NULL, NULL),
(514, NULL, NULL),
(515, NULL, NULL),
(516, NULL, NULL),
(517, NULL, NULL),
(519, NULL, NULL),
(520, NULL, NULL),
(521, NULL, NULL),
(522, NULL, NULL),
(523, NULL, NULL),
(524, NULL, NULL),
(525, NULL, NULL),
(526, NULL, NULL),
(527, NULL, NULL),
(528, NULL, NULL),
(529, NULL, NULL),
(530, NULL, NULL),
(531, NULL, NULL),
(532, NULL, NULL),
(533, NULL, NULL),
(534, NULL, NULL),
(535, NULL, NULL),
(536, NULL, NULL),
(537, NULL, NULL),
(538, NULL, NULL),
(539, NULL, NULL),
(540, NULL, NULL),
(541, NULL, NULL),
(542, NULL, NULL),
(543, NULL, NULL),
(544, NULL, NULL),
(545, NULL, NULL),
(546, NULL, NULL),
(547, NULL, NULL),
(548, NULL, NULL),
(549, NULL, NULL),
(550, NULL, NULL),
(551, NULL, NULL),
(552, NULL, NULL),
(553, NULL, NULL),
(554, NULL, NULL),
(555, NULL, NULL),
(556, NULL, NULL),
(576, NULL, NULL),
(578, NULL, NULL),
(579, NULL, NULL),
(580, NULL, NULL),
(581, NULL, NULL),
(582, NULL, NULL),
(583, NULL, NULL),
(584, NULL, NULL),
(585, NULL, NULL),
(586, NULL, NULL),
(587, NULL, NULL),
(588, NULL, NULL),
(589, NULL, NULL),
(590, NULL, NULL),
(591, NULL, NULL),
(592, NULL, NULL),
(593, NULL, NULL),
(594, NULL, NULL),
(595, NULL, NULL),
(596, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plant_info`
--

CREATE TABLE `plant_info` (
  `plant_id` int(11) NOT NULL,
  `plant_name` varchar(50) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plant_info`
--

INSERT INTO `plant_info` (`plant_id`, `plant_name`, `country_id`) VALUES
(1, 'BPI', 1),
(2, 'NVK', 1),
(3, 'PRB', 1),
(4, 'Pulau Pinang', 2);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`) VALUES
(1, 'Bangkok Metropolis'),
(2, 'Chiang Rai'),
(3, 'Chiang Mai'),
(4, 'Nan'),
(5, 'Phayao'),
(6, 'Phrae'),
(7, 'Mae Hong Son'),
(8, 'Lampang'),
(9, 'Lamphun'),
(10, 'Uttaradit'),
(11, 'Kalasin'),
(12, 'Khon Kaen'),
(13, 'Chaiyaphum'),
(14, 'Nakhon Phanom'),
(15, 'Nakhon Ratchasima'),
(16, 'Bueng Kan'),
(17, 'Buri Ram'),
(18, 'Maha Sarakham'),
(19, 'Mukdahan'),
(20, 'Yasothon'),
(21, 'Roi Et'),
(22, 'Loei'),
(23, 'Si Sa Ket'),
(24, 'Sakon Nakhon'),
(25, 'Surin'),
(26, 'Nong Khai'),
(27, 'Nong Bua Lam Phu'),
(28, 'Amnat Charoen'),
(29, 'Udon Thani'),
(30, 'Ubon Ratchathani'),
(31, 'Kamphaeng Phet'),
(32, 'Chai Nat'),
(33, 'Nakhon Nayok'),
(34, 'Nakhon Pathom'),
(35, 'Nakhon Sawan'),
(36, 'Nonthaburi'),
(37, 'Pathum Thani'),
(38, 'Phra Nakhon Si Ayutthaya'),
(39, 'Phichit'),
(40, 'Phitsanulok'),
(41, 'Phetchabun'),
(42, 'Lop Buri'),
(43, 'Samut Prakan'),
(44, 'Samut Songkhram'),
(45, 'Samut Sakhon'),
(46, 'Sing Buri'),
(47, 'Sukhothai'),
(48, 'Suphan Buri'),
(49, 'Saraburi'),
(50, 'Ang Thong'),
(51, 'Uthai Thani'),
(52, 'Chanthaburi'),
(53, 'Chachoengsao'),
(54, 'Chon Buri'),
(55, 'Trat'),
(56, 'Prachin Buri'),
(57, 'Rayong'),
(58, 'Sa Kaeo'),
(59, 'Kanchanaburi'),
(60, 'Tak'),
(61, 'Prachuap Khiri Khan'),
(62, 'Phetchaburi'),
(63, 'Ratchaburi'),
(64, 'Krabi'),
(65, 'Chumphon'),
(66, 'Trang'),
(67, 'Nakhon Si Thammarat'),
(68, 'Narathiwat'),
(69, 'Pattani'),
(70, 'Phangnga'),
(71, 'Phatthalung'),
(72, 'Phuket'),
(73, 'Yala'),
(74, 'Ranong'),
(75, 'Songkhla'),
(76, 'Satun'),
(77, 'Surat Thani');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `resume_id` int(11) NOT NULL,
  `resume_file` varchar(35) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`resume_id`, `resume_file`, `application_id`) VALUES
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, NULL, NULL),
(42, NULL, NULL),
(43, NULL, NULL),
(44, NULL, NULL),
(45, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(67, NULL, NULL),
(68, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(77, NULL, NULL),
(78, NULL, NULL),
(79, NULL, NULL),
(80, NULL, NULL),
(81, NULL, NULL),
(82, NULL, NULL),
(83, NULL, NULL),
(84, NULL, NULL),
(85, NULL, NULL),
(86, NULL, NULL),
(87, NULL, NULL),
(88, NULL, NULL),
(89, NULL, NULL),
(90, NULL, NULL),
(91, NULL, NULL),
(92, NULL, NULL),
(93, NULL, NULL),
(94, NULL, NULL),
(95, NULL, NULL),
(96, NULL, NULL),
(97, NULL, NULL),
(98, NULL, NULL),
(99, NULL, NULL),
(100, NULL, NULL),
(101, NULL, NULL),
(102, NULL, NULL),
(103, NULL, NULL),
(104, NULL, NULL),
(105, NULL, NULL),
(106, NULL, NULL),
(107, NULL, NULL),
(108, NULL, NULL),
(109, NULL, NULL),
(110, NULL, NULL),
(111, NULL, NULL),
(112, NULL, NULL),
(113, NULL, NULL),
(114, NULL, NULL),
(115, NULL, NULL),
(116, NULL, NULL),
(117, NULL, NULL),
(118, NULL, NULL),
(119, NULL, NULL),
(120, NULL, NULL),
(121, NULL, NULL),
(122, NULL, NULL),
(123, NULL, NULL),
(124, NULL, NULL),
(125, NULL, NULL),
(126, NULL, NULL),
(127, NULL, NULL),
(128, NULL, NULL),
(129, NULL, NULL),
(130, NULL, NULL),
(131, NULL, NULL),
(132, NULL, NULL),
(133, NULL, NULL),
(134, NULL, NULL),
(135, NULL, NULL),
(136, NULL, NULL),
(137, NULL, NULL),
(138, NULL, NULL),
(139, NULL, NULL),
(140, NULL, NULL),
(141, NULL, NULL),
(142, NULL, NULL),
(143, NULL, NULL),
(144, NULL, NULL),
(145, NULL, NULL),
(146, NULL, NULL),
(147, NULL, NULL),
(148, NULL, NULL),
(149, NULL, NULL),
(150, NULL, NULL),
(151, NULL, NULL),
(152, NULL, NULL),
(153, NULL, NULL),
(154, NULL, NULL),
(155, NULL, NULL),
(156, NULL, NULL),
(157, NULL, NULL),
(158, NULL, NULL),
(159, NULL, NULL),
(160, NULL, NULL),
(161, NULL, NULL),
(162, NULL, NULL),
(163, NULL, NULL),
(164, NULL, NULL),
(165, NULL, NULL),
(166, NULL, NULL),
(167, NULL, NULL),
(168, NULL, NULL),
(169, NULL, NULL),
(170, NULL, NULL),
(171, NULL, NULL),
(172, NULL, NULL),
(173, NULL, NULL),
(174, NULL, NULL),
(175, NULL, NULL),
(176, NULL, NULL),
(177, NULL, NULL),
(178, NULL, NULL),
(179, NULL, NULL),
(180, NULL, NULL),
(181, NULL, NULL),
(182, NULL, NULL),
(183, NULL, NULL),
(184, NULL, NULL),
(185, NULL, NULL),
(186, NULL, NULL),
(187, NULL, NULL),
(188, NULL, NULL),
(189, NULL, NULL),
(190, NULL, NULL),
(191, NULL, NULL),
(192, NULL, NULL),
(193, NULL, NULL),
(194, NULL, NULL),
(195, NULL, NULL),
(196, NULL, NULL),
(197, NULL, NULL),
(198, NULL, NULL),
(199, NULL, NULL),
(200, NULL, NULL),
(201, NULL, NULL),
(202, NULL, NULL),
(203, NULL, NULL),
(204, NULL, NULL),
(205, NULL, NULL),
(206, NULL, NULL),
(207, NULL, NULL),
(208, NULL, NULL),
(209, NULL, NULL),
(210, NULL, NULL),
(211, NULL, NULL),
(212, NULL, NULL),
(213, NULL, NULL),
(214, NULL, NULL),
(215, NULL, NULL),
(216, NULL, NULL),
(217, NULL, NULL),
(218, NULL, NULL),
(219, NULL, NULL),
(220, NULL, NULL),
(221, NULL, NULL),
(222, NULL, NULL),
(223, NULL, NULL),
(224, NULL, NULL),
(225, NULL, NULL),
(226, NULL, NULL),
(227, NULL, NULL),
(228, NULL, NULL),
(229, NULL, NULL),
(230, NULL, NULL),
(231, NULL, NULL),
(232, NULL, NULL),
(233, NULL, NULL),
(234, NULL, NULL),
(235, NULL, NULL),
(236, NULL, NULL),
(237, NULL, NULL),
(238, NULL, NULL),
(239, NULL, NULL),
(240, NULL, NULL),
(241, NULL, NULL),
(242, NULL, NULL),
(243, NULL, NULL),
(244, NULL, NULL),
(245, NULL, NULL),
(246, NULL, NULL),
(247, NULL, NULL),
(248, NULL, NULL),
(249, NULL, NULL),
(250, NULL, NULL),
(251, NULL, NULL),
(252, NULL, NULL),
(253, NULL, NULL),
(254, NULL, NULL),
(255, NULL, NULL),
(256, NULL, NULL),
(257, NULL, NULL),
(258, NULL, NULL),
(259, NULL, NULL),
(260, NULL, NULL),
(261, NULL, NULL),
(262, NULL, NULL),
(263, NULL, NULL),
(264, NULL, NULL),
(265, NULL, NULL),
(266, NULL, NULL),
(267, NULL, NULL),
(268, NULL, NULL),
(269, NULL, NULL),
(270, NULL, NULL),
(271, NULL, NULL),
(272, NULL, NULL),
(273, NULL, NULL),
(274, NULL, NULL),
(275, NULL, NULL),
(276, NULL, NULL),
(277, NULL, NULL),
(278, NULL, NULL),
(279, NULL, NULL),
(280, NULL, NULL),
(281, NULL, NULL),
(282, NULL, NULL),
(283, NULL, NULL),
(284, NULL, NULL),
(285, NULL, NULL),
(286, NULL, NULL),
(287, NULL, NULL),
(288, NULL, NULL),
(289, NULL, NULL),
(290, NULL, NULL),
(291, NULL, NULL),
(292, NULL, NULL),
(293, NULL, NULL),
(294, NULL, NULL),
(295, NULL, NULL),
(296, NULL, NULL),
(297, NULL, NULL),
(298, NULL, NULL),
(299, NULL, NULL),
(300, NULL, NULL),
(301, NULL, NULL),
(302, NULL, NULL),
(303, NULL, NULL),
(304, NULL, NULL),
(305, NULL, NULL),
(306, NULL, NULL),
(307, NULL, NULL),
(308, NULL, NULL),
(309, NULL, NULL),
(310, NULL, NULL),
(311, NULL, NULL),
(312, NULL, NULL),
(313, NULL, NULL),
(314, NULL, NULL),
(315, NULL, NULL),
(316, NULL, NULL),
(317, NULL, NULL),
(318, NULL, NULL),
(319, NULL, NULL),
(320, NULL, NULL),
(321, NULL, NULL),
(322, NULL, NULL),
(323, NULL, NULL),
(324, NULL, NULL),
(325, NULL, NULL),
(326, NULL, NULL),
(327, NULL, NULL),
(328, NULL, NULL),
(329, NULL, NULL),
(330, NULL, NULL),
(331, NULL, NULL),
(332, NULL, NULL),
(333, NULL, NULL),
(334, NULL, NULL),
(335, NULL, NULL),
(336, NULL, NULL),
(337, NULL, NULL),
(338, NULL, NULL),
(339, NULL, NULL),
(340, NULL, NULL),
(341, NULL, NULL),
(342, NULL, NULL),
(343, NULL, NULL),
(344, NULL, NULL),
(345, NULL, NULL),
(346, NULL, NULL),
(347, NULL, NULL),
(348, NULL, NULL),
(349, NULL, NULL),
(350, NULL, NULL),
(351, NULL, NULL),
(352, NULL, NULL),
(353, NULL, NULL),
(354, NULL, NULL),
(355, NULL, NULL),
(356, NULL, NULL),
(357, NULL, NULL),
(358, NULL, NULL),
(359, NULL, NULL),
(360, NULL, NULL),
(361, NULL, NULL),
(362, NULL, NULL),
(363, NULL, NULL),
(364, NULL, NULL),
(365, NULL, NULL),
(366, NULL, NULL),
(367, NULL, NULL),
(368, NULL, NULL),
(369, NULL, NULL),
(370, NULL, NULL),
(371, NULL, NULL),
(372, NULL, NULL),
(373, NULL, NULL),
(374, NULL, NULL),
(375, NULL, NULL),
(376, NULL, NULL),
(377, NULL, NULL),
(378, NULL, NULL),
(379, NULL, NULL),
(380, NULL, NULL),
(381, NULL, NULL),
(382, NULL, NULL),
(383, NULL, NULL),
(384, NULL, NULL),
(385, NULL, NULL),
(386, NULL, NULL),
(387, NULL, NULL),
(388, NULL, NULL),
(389, NULL, NULL),
(390, NULL, NULL),
(391, NULL, NULL),
(392, NULL, NULL),
(393, NULL, NULL),
(394, NULL, NULL),
(395, NULL, NULL),
(396, NULL, NULL),
(397, NULL, NULL),
(398, NULL, NULL),
(399, NULL, NULL),
(400, NULL, NULL),
(401, NULL, NULL),
(402, NULL, NULL),
(403, NULL, NULL),
(404, NULL, NULL),
(405, NULL, NULL),
(406, NULL, NULL),
(407, NULL, NULL),
(408, NULL, NULL),
(409, NULL, NULL),
(410, NULL, NULL),
(411, NULL, NULL),
(412, NULL, NULL),
(413, NULL, NULL),
(414, NULL, NULL),
(415, NULL, NULL),
(416, NULL, NULL),
(417, NULL, NULL),
(418, NULL, NULL),
(419, NULL, NULL),
(420, NULL, NULL),
(421, NULL, NULL),
(422, NULL, NULL),
(423, NULL, NULL),
(424, NULL, NULL),
(425, NULL, NULL),
(426, NULL, NULL),
(427, NULL, NULL),
(428, NULL, NULL),
(429, NULL, NULL),
(430, NULL, NULL),
(431, NULL, NULL),
(432, NULL, NULL),
(433, NULL, NULL),
(434, NULL, NULL),
(435, NULL, NULL),
(436, NULL, NULL),
(437, NULL, NULL),
(438, NULL, NULL),
(439, NULL, NULL),
(440, NULL, NULL),
(441, NULL, NULL),
(442, NULL, NULL),
(443, NULL, NULL),
(444, NULL, NULL),
(445, NULL, NULL),
(446, NULL, NULL),
(447, NULL, NULL),
(448, NULL, NULL),
(449, NULL, NULL),
(450, NULL, NULL),
(451, NULL, NULL),
(452, NULL, NULL),
(453, NULL, NULL),
(454, NULL, NULL),
(455, NULL, NULL),
(456, NULL, NULL),
(457, NULL, NULL),
(458, NULL, NULL),
(459, NULL, NULL),
(460, NULL, NULL),
(461, NULL, NULL),
(462, NULL, NULL),
(463, NULL, NULL),
(464, NULL, NULL),
(465, NULL, NULL),
(466, NULL, NULL),
(467, NULL, NULL),
(468, NULL, NULL),
(469, NULL, NULL),
(470, NULL, NULL),
(471, NULL, NULL),
(472, NULL, NULL),
(473, NULL, NULL),
(474, NULL, NULL),
(475, NULL, NULL),
(476, NULL, NULL),
(477, NULL, NULL),
(478, NULL, NULL),
(479, NULL, NULL),
(480, NULL, NULL),
(481, NULL, NULL),
(482, NULL, NULL),
(483, NULL, NULL),
(484, NULL, NULL),
(485, NULL, NULL),
(486, NULL, NULL),
(487, NULL, NULL),
(488, NULL, NULL),
(489, NULL, NULL),
(490, NULL, NULL),
(491, NULL, NULL),
(492, NULL, NULL),
(493, NULL, NULL),
(494, NULL, NULL),
(495, NULL, NULL),
(496, NULL, NULL),
(497, NULL, NULL),
(498, NULL, NULL),
(499, NULL, NULL),
(500, NULL, NULL),
(501, NULL, NULL),
(502, NULL, NULL),
(503, NULL, NULL),
(504, NULL, NULL),
(505, NULL, NULL),
(506, NULL, NULL),
(507, NULL, NULL),
(508, NULL, NULL),
(509, NULL, NULL),
(510, NULL, NULL),
(511, NULL, NULL),
(512, NULL, NULL),
(513, NULL, NULL),
(514, NULL, NULL),
(515, NULL, NULL),
(516, NULL, NULL),
(517, NULL, NULL),
(519, NULL, NULL),
(520, NULL, NULL),
(521, NULL, NULL),
(522, NULL, NULL),
(523, NULL, NULL),
(524, NULL, NULL),
(525, NULL, NULL),
(526, NULL, NULL),
(527, NULL, NULL),
(528, NULL, NULL),
(529, NULL, NULL),
(530, NULL, NULL),
(531, NULL, NULL),
(532, NULL, NULL),
(533, NULL, NULL),
(534, NULL, NULL),
(535, NULL, NULL),
(536, NULL, NULL),
(537, NULL, NULL),
(538, NULL, NULL),
(539, NULL, NULL),
(540, NULL, NULL),
(541, NULL, NULL),
(542, NULL, NULL),
(543, NULL, NULL),
(544, NULL, NULL),
(545, NULL, NULL),
(546, NULL, NULL),
(547, NULL, NULL),
(548, NULL, NULL),
(549, NULL, NULL),
(550, NULL, NULL),
(551, NULL, NULL),
(552, NULL, NULL),
(553, NULL, NULL),
(554, NULL, NULL),
(555, NULL, NULL),
(556, NULL, NULL),
(576, NULL, NULL),
(578, NULL, NULL),
(579, NULL, NULL),
(580, NULL, NULL),
(581, NULL, NULL),
(582, NULL, NULL),
(583, NULL, NULL),
(584, NULL, NULL),
(585, NULL, NULL),
(586, NULL, NULL),
(587, NULL, NULL),
(588, NULL, NULL),
(589, NULL, NULL),
(590, NULL, NULL),
(591, NULL, NULL),
(592, NULL, NULL),
(593, NULL, NULL),
(594, NULL, NULL),
(595, NULL, NULL),
(596, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roi_project`
--

CREATE TABLE `roi_project` (
  `rid` int(11) NOT NULL,
  `tp_id` int(5) NOT NULL,
  `roi_1` varchar(20) DEFAULT NULL,
  `describee_1` text,
  `roi_2` varchar(20) DEFAULT NULL,
  `describee_2` text,
  `benefit` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roi_project`
--

INSERT INTO `roi_project` (`rid`, `tp_id`, `roi_1`, `describee_1`, `roi_2`, `describee_2`, `benefit`) VALUES
(1, 1, '150%', '', ' 100%', '(177000-59000/59000)*100%', 'increase safety'),
(2, 2, '140%', '', ' 210%', 'oooooo', 'support employee'),
(3, 3, '150%', '', ' 200%', '(177000-59000/59000)*100%', 'convenient'),
(4, 4, '140%', '', ' 110%', 'oooooo', 'reduce time'),
(5, 5, '150%', '', ' 400%', '(177000-59000/59000)*100%', 'reduce time'),
(6, 6, '140%', '', ' 510%', 'oooooo', 'convenient'),
(7, 7, '150%', '', ' 280%', '(177000-59000/59000)*100%', 'support employee'),
(8, 8, '140%', '', ' 310%', 'oooooo', 'increase safety'),
(9, 9, '150%', '', ' 280%', '(177000-59000/59000)*100%', 'reduce time'),
(10, 10, '140%', '', ' 250%', 'oooooo', 'convenient'),
(11, 11, '150%', '', ' 190%', '(177000-59000/59000)*100%', 'support employee'),
(12, 12, '140%', '', ' 210%', 'oooooo', 'increase safety'),
(13, 13, '150%', '', ' 200%', '(177000-59000/59000)*100%', 'convenient'),
(14, 14, '140%', '', ' 210%', 'oooooo', 'support employee'),
(15, 15, '150%', '', ' 220%', '(177000-59000/59000)*100%', 'reduce time'),
(16, 16, '140%', '', ' 270%', 'oooooo', 'support employee'),
(17, 17, '150%', '', ' 560%', '(177000-59000/59000)*100%', 'increase safety'),
(18, 18, '140%', '', ' 410%', 'oooooo', 'convenient'),
(19, 19, '150%', '', ' 420%', '(177000-59000/59000)*100%', 'support employee'),
(20, 20, '140%', '', ' 250%', 'oooooo', 'reduce time'),
(21, 21, '150%', '', ' 200%', '(177000-59000/59000)*100%', 'convenient'),
(22, 22, '140%', '', ' 230%', 'oooooo', 'increase safety'),
(23, 23, '150%', '', ' 100%', '(177000-59000/59000)*100%', 'support employee'),
(24, 24, '140%', '', ' 110%', 'oooooo', 'support employee'),
(25, 25, '150%', '', ' 200%', '(177000-59000/59000)*100%', 'reduce time'),
(26, 26, '140%', '', ' 210%', 'oooooo', 'convenient'),
(27, 27, '150%', '', ' 300%', '(177000-59000/59000)*100%', 'increase safety'),
(28, 28, '140%', '', ' 290%', 'oooooo', 'support employee'),
(29, 29, '150%', '', ' 210%', '(177000-59000/59000)*100%', 'employee are safe'),
(30, 30, '140%', '', ' 210%', 'oooooo', 'reduce time'),
(31, 31, '150%', '', ' 270%', '(177000-59000/59000)*100%', 'support employee'),
(32, 32, '140%', '', ' 410%', 'oooooo', 'convenient'),
(33, 33, '150%', '', ' 540%', '(177000-59000/59000)*100%', 'increase safety'),
(34, 34, '140%', '', ' 310%', 'oooooo', 'support employee'),
(35, 35, '150%', '', ' 100%', '(177000-59000/59000)*100%', 'reduce time'),
(36, 36, '140%', '', ' 210%', 'oooooo', 'increase safety'),
(37, 37, '150%', '', ' 200%', '(177000-59000/59000)*100%', 'support employee'),
(38, 38, '140%', '', ' 290%', 'oooooo', 'reduce time'),
(39, 39, '150%', '', ' 100%', '(177000-59000/59000)*100%', 'convenient'),
(40, 40, '140%', '', ' 110%', 'oooooo', 'support employee'),
(41, 41, '150%', '', ' 150%', '(177000-59000/59000)*100%', 'support employee'),
(42, 42, '140%', '', ' 190%', 'oooooo', 'reduce time'),
(43, 43, '150%', '', ' 260%', '(177000-59000/59000)*100%', 'convenient'),
(44, 44, '140%', '', ' 290%', 'oooooo', 'support employee'),
(45, 45, '150%', '', ' 400%', '(177000-59000/59000)*100%', 'support employee'),
(46, 46, '140%', '', ' 240%', 'oooooo', 'increase safety'),
(47, 47, '150%', '', ' 500%', '(177000-59000/59000)*100%', 'reduce time'),
(48, 48, '140%', '', ' 510%', 'oooooo', 'convenient'),
(49, 49, '150%', '', ' 100%', '(177000-59000/59000)*100%', 'reduce time'),
(50, 50, '150%', '', ' 200%', '(177000-59000/59000)*100%', 'convenient');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(45) NOT NULL,
  `bldg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `bldg_id`) VALUES
(1, 'SE COM 1', 3),
(2, 'SE COM 2', 3),
(3, 'SE COM 3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_email_act`
--

CREATE TABLE `schedule_email_act` (
  `sch_email_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `email_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `sch_date` date DEFAULT NULL,
  `sch_time` time DEFAULT NULL,
  `schedule_detail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule_email_act`
--

INSERT INTO `schedule_email_act` (`sch_email_id`, `activity_id`, `email_id`, `status_id`, `sch_date`, `sch_time`, `schedule_detail`) VALUES
(1, 1, 1, 4, '2017-03-20', '09:00:00', '2017-03-29 02:21:32'),
(2, 2, 1, 4, '2017-03-20', '09:00:00', '2017-03-29 02:22:37'),
(3, 3, 1, 4, '2017-03-20', '09:00:00', '2017-03-29 02:23:37'),
(4, 4, 1, 4, '2017-04-01', '09:00:00', '2017-03-29 02:25:55'),
(5, 5, 1, 1, '2018-02-02', '14:01:00', '2017-04-19 07:07:32'),
(6, 6, 1, 4, '0012-12-31', '00:12:00', '2017-04-25 08:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_email_pre`
--

CREATE TABLE `schedule_email_pre` (
  `sch_pre_email_id` int(11) NOT NULL,
  `present_id` int(11) NOT NULL,
  `pre_trainee_id` varchar(45) NOT NULL,
  `pre_email_id` int(11) NOT NULL,
  `pre_sch_date` date NOT NULL,
  `pre_sch_time` time NOT NULL,
  `pre_cr_detail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule_email_pre`
--

INSERT INTO `schedule_email_pre` (`sch_pre_email_id`, `present_id`, `pre_trainee_id`, `pre_email_id`, `pre_sch_date`, `pre_sch_time`, `pre_cr_detail`) VALUES
(4, 4, 'RSMBC16_279', 4, '2017-05-02', '10:10:00', '2017-03-29 09:03:32'),
(5, 5, 'RSMBC16_278', 4, '2017-02-25', '10:00:00', '2017-03-29 06:16:25'),
(6, 6, 'RSMBC16_278', 3, '0012-12-12', '00:12:00', '2017-05-21 01:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `sent_email`
--

CREATE TABLE `sent_email` (
  `st_email_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `sent_date` date DEFAULT NULL,
  `sent_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE `student_address` (
  `address_Id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `no` varchar(15) DEFAULT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `road_name` varchar(100) DEFAULT NULL,
  `sub_district` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `province_name` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`address_Id`, `s_id`, `no`, `place_name`, `road_name`, `sub_district`, `district`, `city`, `zip_code`, `province_name`, `country_id`) VALUES
(1, 1229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 1230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 1232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 1233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 1235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 1236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 1237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 1238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 1239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(12, 1240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(13, 1241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(14, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(15, 1243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(16, 1244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(17, 1245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(18, 1246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 1247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 1248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(21, 1249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, 1250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 1251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 1252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 1253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 1254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 1255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(29, 1256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(30, 1257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(31, 1258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(32, 1259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(33, 1260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(34, 1261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 1262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, 1263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(37, 1264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(38, 1265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(39, 1266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(40, 1267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(41, 1268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(42, 1269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(43, 1270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(44, 1271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(45, 1272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(46, 1273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(47, 1274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(48, 1275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(49, 1276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(50, 1277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(51, 1278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_contact_details`
--

CREATE TABLE `student_contact_details` (
  `contact_id` int(11) NOT NULL,
  `scd_s_id` int(11) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `email_adress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_contact_details`
--

INSERT INTO `student_contact_details` (`contact_id`, `scd_s_id`, `contact_no`, `email_adress`) VALUES
(1, 1229, '959594821', 'aom_natthira@outlook.com'),
(2, 1230, '811358181', 'popkanyawee@gmail.com'),
(3, 1231, '852241356', 'nont.sranpat@gmail.com'),
(4, 1232, '999046334', 'myname_pla@hotmail.com'),
(5, 1233, '841169358', 'Benjamaporn305@gmail.com'),
(6, 1234, '818516267', 'moosiravich@gmail.com'),
(7, 1235, '871917927', 'Tutahxt@gmail.com'),
(8, 1236, '875611053', 'saitharn.eng@gmail.com'),
(9, 1237, '934416283', 'guntoon01@gmail.com'),
(16, 1238, '959594821', 'aom_natthirai@outlook.comi'),
(17, 1239, '811358181', 'popkanyawee@gmail.comi'),
(18, 1240, '852241356', 'nont.sranpat@gmail.comi'),
(19, 1241, '999046334', 'myname_pla@hotmail.comi'),
(20, 1242, '841169358', 'Benjamaporn305@gmail.comi'),
(21, 1243, '818516267', 'moosiravich@gmail.comi'),
(22, 1244, '871917927', 'Tutahxt@gmail.comi');

-- --------------------------------------------------------

--
-- Table structure for table `student_emergency_contact`
--

CREATE TABLE `student_emergency_contact` (
  `emc_id` int(11) NOT NULL,
  `emc_fname` varchar(20) DEFAULT NULL,
  `emc_lname` varchar(20) DEFAULT NULL,
  `emc_relation` varchar(50) DEFAULT NULL,
  `emc_contact` varchar(20) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_emergency_contact`
--

INSERT INTO `student_emergency_contact` (`emc_id`, `emc_fname`, `emc_lname`, `emc_relation`, `emc_contact`, `contact_id`) VALUES
(2, NULL, NULL, NULL, NULL, 34),
(3, NULL, NULL, NULL, NULL, 35),
(4, NULL, NULL, NULL, NULL, 36),
(5, NULL, NULL, NULL, NULL, 37),
(6, NULL, NULL, NULL, NULL, 38),
(7, NULL, NULL, NULL, NULL, 39),
(8, NULL, NULL, NULL, NULL, 40),
(9, NULL, NULL, NULL, NULL, 41),
(11, NULL, NULL, NULL, NULL, 43),
(12, NULL, NULL, NULL, NULL, 44),
(13, NULL, NULL, NULL, NULL, 45),
(14, NULL, NULL, NULL, NULL, 46),
(15, NULL, NULL, NULL, NULL, 47),
(16, NULL, NULL, NULL, NULL, 48),
(17, NULL, NULL, NULL, NULL, 49),
(18, NULL, NULL, NULL, NULL, 50),
(19, NULL, NULL, NULL, NULL, 51),
(20, NULL, NULL, NULL, NULL, 52),
(21, NULL, NULL, NULL, NULL, 53),
(22, NULL, NULL, NULL, NULL, 54),
(23, NULL, NULL, NULL, NULL, 55),
(24, NULL, NULL, NULL, NULL, 56),
(25, NULL, NULL, NULL, NULL, 57),
(26, NULL, NULL, NULL, NULL, 58),
(27, NULL, NULL, NULL, NULL, 59),
(28, NULL, NULL, NULL, NULL, 60),
(29, NULL, NULL, NULL, NULL, 61),
(30, NULL, NULL, NULL, NULL, 62),
(31, NULL, NULL, NULL, NULL, 63),
(32, NULL, NULL, NULL, NULL, 64),
(33, NULL, NULL, NULL, NULL, 65),
(34, NULL, NULL, NULL, NULL, 66),
(35, NULL, NULL, NULL, NULL, 67),
(36, NULL, NULL, NULL, NULL, 68),
(37, NULL, NULL, NULL, NULL, 69),
(38, NULL, NULL, NULL, NULL, 70),
(39, NULL, NULL, NULL, NULL, 71),
(40, NULL, NULL, NULL, NULL, 72),
(41, NULL, NULL, NULL, NULL, 73),
(42, NULL, NULL, NULL, NULL, 74),
(43, NULL, NULL, NULL, NULL, 75),
(44, NULL, NULL, NULL, NULL, 76),
(45, NULL, NULL, NULL, NULL, 77),
(46, NULL, NULL, NULL, NULL, 78),
(47, NULL, NULL, NULL, NULL, 79),
(48, NULL, NULL, NULL, NULL, 80),
(49, NULL, NULL, NULL, NULL, 81),
(50, NULL, NULL, NULL, NULL, 82),
(51, NULL, NULL, NULL, NULL, 83),
(52, NULL, NULL, NULL, NULL, 84),
(53, NULL, NULL, NULL, NULL, 85),
(54, NULL, NULL, NULL, NULL, 86),
(55, NULL, NULL, NULL, NULL, 87),
(56, NULL, NULL, NULL, NULL, 88),
(57, NULL, NULL, NULL, NULL, 89),
(58, NULL, NULL, NULL, NULL, 90),
(59, NULL, NULL, NULL, NULL, 91),
(60, NULL, NULL, NULL, NULL, 92),
(61, NULL, NULL, NULL, NULL, 93),
(62, NULL, NULL, NULL, NULL, 94),
(63, NULL, NULL, NULL, NULL, 95),
(64, NULL, NULL, NULL, NULL, 96),
(65, NULL, NULL, NULL, NULL, 97),
(66, NULL, NULL, NULL, NULL, 98),
(67, NULL, NULL, NULL, NULL, 99),
(68, NULL, NULL, NULL, NULL, 100),
(69, NULL, NULL, NULL, NULL, 101),
(70, NULL, NULL, NULL, NULL, 102),
(71, NULL, NULL, NULL, NULL, 103),
(72, NULL, NULL, NULL, NULL, 104),
(73, NULL, NULL, NULL, NULL, 105),
(74, NULL, NULL, NULL, NULL, 106),
(75, NULL, NULL, NULL, NULL, 107),
(76, NULL, NULL, NULL, NULL, 108),
(77, NULL, NULL, NULL, NULL, 109),
(78, NULL, NULL, NULL, NULL, 110),
(79, NULL, NULL, NULL, NULL, 111),
(80, NULL, NULL, NULL, NULL, 112),
(81, NULL, NULL, NULL, NULL, 113),
(82, NULL, NULL, NULL, NULL, 114),
(83, NULL, NULL, NULL, NULL, 115),
(84, NULL, NULL, NULL, NULL, 116),
(85, NULL, NULL, NULL, NULL, 117),
(86, NULL, NULL, NULL, NULL, 118),
(87, NULL, NULL, NULL, NULL, 119),
(88, NULL, NULL, NULL, NULL, 120),
(89, NULL, NULL, NULL, NULL, 121),
(90, NULL, NULL, NULL, NULL, 122),
(91, NULL, NULL, NULL, NULL, 123),
(92, NULL, NULL, NULL, NULL, 124),
(93, NULL, NULL, NULL, NULL, 125),
(94, NULL, NULL, NULL, NULL, 126),
(95, NULL, NULL, NULL, NULL, 127),
(96, NULL, NULL, NULL, NULL, 128),
(97, NULL, NULL, NULL, NULL, 129),
(98, NULL, NULL, NULL, NULL, 130),
(99, NULL, NULL, NULL, NULL, 131),
(100, NULL, NULL, NULL, NULL, 132),
(101, NULL, NULL, NULL, NULL, 133),
(102, NULL, NULL, NULL, NULL, 134),
(103, NULL, NULL, NULL, NULL, 135),
(104, NULL, NULL, NULL, NULL, 136),
(105, NULL, NULL, NULL, NULL, 137),
(106, NULL, NULL, NULL, NULL, 138),
(107, NULL, NULL, NULL, NULL, 139),
(108, NULL, NULL, NULL, NULL, 140),
(109, NULL, NULL, NULL, NULL, 141),
(110, NULL, NULL, NULL, NULL, 142),
(113, NULL, NULL, NULL, NULL, 145),
(114, NULL, NULL, NULL, NULL, 146),
(115, NULL, NULL, NULL, NULL, 147),
(116, NULL, NULL, NULL, NULL, 148),
(117, NULL, NULL, NULL, NULL, 149),
(118, NULL, NULL, NULL, NULL, 150),
(119, NULL, NULL, NULL, NULL, 151),
(120, NULL, NULL, NULL, NULL, 152),
(121, NULL, NULL, NULL, NULL, 153),
(122, NULL, NULL, NULL, NULL, 154),
(123, NULL, NULL, NULL, NULL, 155),
(124, NULL, NULL, NULL, NULL, 156),
(125, NULL, NULL, NULL, NULL, 157),
(126, NULL, NULL, NULL, NULL, 158),
(127, NULL, NULL, NULL, NULL, 159),
(128, NULL, NULL, NULL, NULL, 160),
(129, NULL, NULL, NULL, NULL, 161),
(130, NULL, NULL, NULL, NULL, 162),
(131, NULL, NULL, NULL, NULL, 163),
(132, NULL, NULL, NULL, NULL, 164),
(133, NULL, NULL, NULL, NULL, 165),
(134, NULL, NULL, NULL, NULL, 166),
(135, NULL, NULL, NULL, NULL, 167),
(136, NULL, NULL, NULL, NULL, 168),
(137, NULL, NULL, NULL, NULL, 169),
(138, NULL, NULL, NULL, NULL, 170),
(139, NULL, NULL, NULL, NULL, 171),
(140, NULL, NULL, NULL, NULL, 172),
(141, NULL, NULL, NULL, NULL, 173),
(142, NULL, NULL, NULL, NULL, 174),
(143, NULL, NULL, NULL, NULL, 175),
(144, NULL, NULL, NULL, NULL, 176),
(145, NULL, NULL, NULL, NULL, 177),
(146, NULL, NULL, NULL, NULL, 178),
(147, NULL, NULL, NULL, NULL, 179),
(148, NULL, NULL, NULL, NULL, 180),
(149, NULL, NULL, NULL, NULL, 183),
(150, NULL, NULL, NULL, NULL, 184),
(151, NULL, NULL, NULL, NULL, 185),
(152, NULL, NULL, NULL, NULL, 186),
(153, NULL, NULL, NULL, NULL, 187),
(154, NULL, NULL, NULL, NULL, 188),
(155, NULL, NULL, NULL, NULL, 189),
(156, NULL, NULL, NULL, NULL, 190),
(157, NULL, NULL, NULL, NULL, 191),
(158, NULL, NULL, NULL, NULL, 192),
(159, NULL, NULL, NULL, NULL, 193),
(160, NULL, NULL, NULL, NULL, 194),
(161, NULL, NULL, NULL, NULL, 195),
(162, NULL, NULL, NULL, NULL, 196),
(163, NULL, NULL, NULL, NULL, 197),
(164, NULL, NULL, NULL, NULL, 198),
(168, NULL, NULL, NULL, NULL, 199),
(169, NULL, NULL, NULL, NULL, 200),
(170, 'BONGKOCHch', 'PRASERTSANGch', 'MOTHERch', '086223864622', 201),
(172, NULL, NULL, NULL, NULL, 202);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `s_id` int(11) NOT NULL,
  `s_fname` varchar(20) NOT NULL,
  `s_lname` varchar(20) NOT NULL,
  `thai_fname` varchar(20) DEFAULT NULL,
  `thai_lname` varchar(20) DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `citizen_id` varchar(13) DEFAULT NULL,
  `remark` text,
  `origin_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `national_id` int(11) DEFAULT NULL,
  `title_title_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `cate_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`s_id`, `s_fname`, `s_lname`, `thai_fname`, `thai_lname`, `years`, `date_of_birth`, `citizen_id`, `remark`, `origin_id`, `type_id`, `ref_id`, `national_id`, `title_title_id`, `status_id`, `cate_id`) VALUES
(1229, 'SURACHET', 'KHANTHAKHET', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 4, NULL),
(1230, 'KANOKWAN ', 'ANGKRATHOK', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 4, NULL),
(1231, 'CHOTIMA ', 'KRAJANGAIM', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 4, NULL),
(1232, 'SASITORN ', 'SITTISRI', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 1, NULL),
(1233, 'BENJAPORN ', 'PROMMOUNWAI', '_______ ', '_________', 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 1, NULL),
(1234, 'THITA ', 'SONKLIN', '_______ ', '_________', 2, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 3, NULL),
(1235, 'KITTIKORN ', 'WISUTTHAKORN', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 3, NULL),
(1236, 'NOPPARAT ', 'SRIBUNNAK', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 2, NULL),
(1237, 'NATHIRA', ' SAREERAT', '_______ ', '_________', 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 1, NULL),
(1238, 'CHAIANANT', ' SRANPAT', '________ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 1, NULL),
(1239, 'SHIQIAN', 'WANG', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 2, NULL),
(1240, 'SKANDER', ' HELLAL', '______ ', '_____________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 3, NULL),
(1241, 'KIMSENG', ' SOK', '_____', '________', 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 3, NULL),
(1242, 'SUNNY', 'AMATYA', '______ ', '____________', 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 4, NULL),
(1243, 'THIDAR', ' SHWE SIN', '____', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 4, NULL),
(1244, 'RUVINDA', ' SANDEEP MASIMBULA', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, NULL),
(1245, 'WACHIRAWIT', ' KHAMRAT', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 4, NULL),
(1246, 'PIYAPORN', ' KUDSOONGNUENG', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 4, NULL),
(1247, 'RATTIKARN', ' KHAMDANGYAI', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 4, NULL),
(1248, 'WARAPORN', ' LANWONG', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 1, NULL),
(1249, 'SAISUDA', ' KOONSUWAN', '_______ ', '_________', 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 1, NULL),
(1250, 'SASINA', ' YODKAEW', '_______ ', '_________', 2, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 3, NULL),
(1251, 'JIRAPAT', ' SRISANGVAN', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 3, NULL),
(1252, 'KITTIPONG', ' BUABUT', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 2, NULL),
(1253, 'WASAN', ' PROMRACH', '_______ ', '_________', 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 1, NULL),
(1254, 'PRACHA', 'SILLAPANON', '________ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 1, NULL),
(1255, 'DILUKA', ' HARISCHANDRA', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 2, NULL),
(1256, 'LAKNA', ' KAUMADIE HAKMANAARA', '______ ', '_____________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 3, NULL),
(1257, 'SACHHAM', ' MAN BUDDHACHARYA', '_____', '________', 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 3, NULL),
(1258, 'MILINDA', ' SENEVIRATNE', '______ ', '____________', 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 4, NULL),
(1259, 'SACHINI', ' ATTANAYAKE', '____', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 4, NULL),
(1260, 'DARSHANA', ' SANJEEWAN ADIKARI', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, NULL),
(1261, 'NOPPADON', ' JANGJAIDEE', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 4, NULL),
(1262, 'SUNANTA', ' MUENGPREM', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 4, NULL),
(1263, 'PIMNICHA', ' TAVEEBOT', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 4, NULL),
(1264, 'NUTCHAYA', ' SRITUMMAYOS', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 1, NULL),
(1265, 'VLISSARA', ' UPARA', '_______ ', '_________', 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 1, NULL),
(1266, 'SIMAPORN', ' WANNAPRAJIT', '_______ ', '_________', 2, NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, 3, NULL),
(1267, 'WATTANA', ' APHAIPROM', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 3, NULL),
(1268, 'TEERAKORN', ' SIMMA', '_______ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 2, NULL),
(1269, 'THEERAPONG', ' TUNGSAKUL', '_______ ', '_________', 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 1, NULL),
(1270, 'SUNNY', ' AMATYA', '________ ', '_________', 4, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 1, NULL),
(1271, 'THIDAR', ' SHWE SIN', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 2, NULL),
(1272, 'HASHAN', ' C GUNASEKARA', '______ ', '_____________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 3, NULL),
(1273, 'AAYUSH', ' JUNG BAHADUR RANA', '_____', '________', 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 3, NULL),
(1274, 'RUVINDA', ' SANDEEP MASIMBULA', '______ ', '____________', 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, 4, NULL),
(1275, 'CHARLIE ', 'BIEBER', '____', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 4, NULL),
(1276, 'SVEN', ' LEIX', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, NULL),
(1277, 'MILANDOU', ' BRICE', '_______ ', '_________', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, NULL),
(1278, 'PHASIT', 'SRITONCHAI', '_______ ', '_________', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_national_info`
--

CREATE TABLE `student_national_info` (
  `national_id` int(11) NOT NULL,
  `thai_id` int(11) DEFAULT NULL,
  `passport_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_origin`
--

CREATE TABLE `student_origin` (
  `origin_id` int(11) NOT NULL,
  `origin_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_origin`
--

INSERT INTO `student_origin` (`origin_id`, `origin_name`) VALUES
(1, 'International'),
(2, 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `student_reference_info`
--

CREATE TABLE `student_reference_info` (
  `ref_id` int(11) NOT NULL,
  `ref_fname` varchar(20) DEFAULT NULL,
  `ref_lname` varchar(20) DEFAULT NULL,
  `ref_contact` varchar(12) DEFAULT NULL,
  `ref_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_relationship`
--

CREATE TABLE `student_relationship` (
  `relation_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `relation_type` varchar(50) DEFAULT NULL,
  `relation_fname` varchar(20) DEFAULT NULL,
  `relation_lname` varchar(20) DEFAULT NULL,
  `relation_occupation` varchar(50) DEFAULT NULL,
  `relation_contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_relationship`
--

INSERT INTO `student_relationship` (`relation_id`, `s_id`, `relation_type`, `relation_fname`, `relation_lname`, `relation_occupation`, `relation_contact`) VALUES
(1, 1229, NULL, NULL, NULL, NULL, NULL),
(2, 1230, NULL, NULL, NULL, NULL, NULL),
(3, 1231, NULL, NULL, NULL, NULL, NULL),
(4, 1232, NULL, NULL, NULL, NULL, NULL),
(5, 1233, NULL, NULL, NULL, NULL, NULL),
(6, 1234, NULL, NULL, NULL, NULL, NULL),
(7, 1235, NULL, NULL, NULL, NULL, NULL),
(8, 1236, NULL, NULL, NULL, NULL, NULL),
(9, 1237, NULL, NULL, NULL, NULL, NULL),
(10, 1238, NULL, NULL, NULL, NULL, NULL),
(11, 1239, NULL, NULL, NULL, NULL, NULL),
(12, 1240, NULL, NULL, NULL, NULL, NULL),
(13, 1241, NULL, NULL, NULL, NULL, NULL),
(14, 1242, NULL, NULL, NULL, NULL, NULL),
(15, 1243, NULL, NULL, NULL, NULL, NULL),
(16, 1244, NULL, NULL, NULL, NULL, NULL),
(17, 1245, NULL, NULL, NULL, NULL, NULL),
(18, 1246, NULL, NULL, NULL, NULL, NULL),
(19, 1247, NULL, NULL, NULL, NULL, NULL),
(20, 1248, NULL, NULL, NULL, NULL, NULL),
(21, 1249, NULL, NULL, NULL, NULL, NULL),
(22, 1250, NULL, NULL, NULL, NULL, NULL),
(23, 1251, NULL, NULL, NULL, NULL, NULL),
(24, 1252, NULL, NULL, NULL, NULL, NULL),
(25, 1253, NULL, NULL, NULL, NULL, NULL),
(29, 1254, NULL, NULL, NULL, NULL, NULL),
(30, 1255, NULL, NULL, NULL, NULL, NULL),
(31, 1256, 'Motherch', 'Bongkochch', 'Prasertsangch', 'Godch', '099899022'),
(33, 1257, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_status`
--

CREATE TABLE `student_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_status`
--

INSERT INTO `student_status` (`status_id`, `status_desc`) VALUES
(1, 'On Process'),
(2, 'Waiting on Board'),
(3, 'Trainee'),
(4, 'End Trainee');

-- --------------------------------------------------------

--
-- Table structure for table `student_type`
--

CREATE TABLE `student_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_type`
--

INSERT INTO `student_type` (`type_id`, `type_name`) VALUES
(1, 'Applicant'),
(2, 'Trainee');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_info`
--

CREATE TABLE `supervisor_info` (
  `spv_id` int(11) NOT NULL,
  `spv_fname` varchar(20) NOT NULL,
  `spv_lname` varchar(20) NOT NULL,
  `spv_job` varchar(50) NOT NULL,
  `spv_ext` int(6) DEFAULT NULL,
  `spv_email` varchar(45) DEFAULT NULL,
  `spv_mobile` int(10) DEFAULT NULL,
  `spv_dept` int(2) DEFAULT NULL,
  `spv_bdg` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supervisor_info`
--

INSERT INTO `supervisor_info` (`spv_id`, `spv_fname`, `spv_lname`, `spv_job`, `spv_ext`, `spv_email`, `spv_mobile`, `spv_dept`, `spv_bdg`) VALUES
(1, 'Theerasak', 'S.', 'Manager', 77602, 'theerasak.Sa-nguanmanasak@wdc.com', 888888888, 3, 3),
(2, 'Sutthida', 'C.', 'Asst. Manager', 77603, 'sutthida.chan-okul@wdc.com', 999999999, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_info_has_student_info`
--

CREATE TABLE `supervisor_info_has_student_info` (
  `supervisor_info_spv_id` int(11) DEFAULT NULL,
  `student_info_s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supervisor_info_has_student_info`
--

INSERT INTO `supervisor_info_has_student_info` (`supervisor_info_spv_id`, `student_info_s_id`) VALUES
(1, 1229),
(1, 1230),
(1, 1231),
(1, 1232),
(1, 1233),
(1, 1234),
(1, 1235),
(1, 1236),
(1, 1237),
(1, 1238),
(1, 1239),
(1, 1240),
(1, 1241),
(1, 1251),
(1, 1252),
(1, 1253),
(1, 1254),
(1, 1255),
(1, 1256),
(1, 1258),
(1, 1259),
(1, 1260),
(1, 1261),
(1, 1262),
(1, 1263),
(1, 1264),
(2, 1242),
(2, 1243),
(2, 1244),
(2, 1245),
(2, 1246),
(2, 1247),
(2, 1248),
(2, 1249),
(2, 1250),
(2, 1265),
(2, 1266),
(2, 1267),
(2, 1268),
(2, 1269),
(2, 1270),
(2, 1271),
(2, 1272),
(2, 1273),
(2, 1274),
(2, 1275),
(2, 1276),
(2, 1277),
(2, 1278);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`title_id`, `title_name`, `sex`) VALUES
(1, 'MR.', 'MALE'),
(2, 'MS.', 'FEMALE');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_account`
--

CREATE TABLE `trainee_account` (
  `trainee_acc_id` int(11) NOT NULL,
  `account_name` varchar(40) DEFAULT NULL,
  `trainee_email` varchar(50) DEFAULT NULL,
  `keycard_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_account`
--

INSERT INTO `trainee_account` (`trainee_acc_id`, `account_name`, `trainee_email`, `keycard_id`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL),
(10, NULL, NULL, NULL),
(11, NULL, NULL, NULL),
(12, NULL, NULL, NULL),
(13, NULL, NULL, NULL),
(14, NULL, NULL, NULL),
(15, NULL, NULL, NULL),
(16, NULL, NULL, NULL),
(17, NULL, NULL, NULL),
(18, NULL, NULL, NULL),
(19, NULL, NULL, NULL),
(20, NULL, NULL, NULL),
(21, NULL, NULL, NULL),
(22, NULL, NULL, NULL),
(23, NULL, NULL, NULL),
(24, NULL, NULL, NULL),
(25, NULL, NULL, NULL),
(26, NULL, NULL, NULL),
(27, NULL, NULL, NULL),
(28, 'AAAABBBBFFFF', 'kkkkkk.p@gggmail.com', '099898'),
(29, NULL, '.com@@@@', '09888769000099'),
(30, NULL, NULL, NULL),
(31, NULL, NULL, NULL),
(32, NULL, NULL, NULL),
(33, NULL, NULL, NULL),
(34, NULL, NULL, NULL),
(35, NULL, '@emal', NULL),
(36, NULL, NULL, NULL),
(37, NULL, '@tni.com', '1232345345'),
(38, NULL, '#rrsfsdgsdfg@eded', '99868554767566222'),
(39, NULL, NULL, NULL),
(40, NULL, '@', '1123221'),
(41, NULL, NULL, NULL),
(42, NULL, NULL, NULL),
(43, NULL, NULL, NULL),
(44, NULL, NULL, NULL),
(45, NULL, NULL, NULL),
(46, NULL, NULL, NULL),
(47, NULL, NULL, NULL),
(48, NULL, NULL, NULL),
(49, NULL, NULL, NULL),
(50, NULL, NULL, NULL),
(51, NULL, NULL, NULL),
(52, NULL, NULL, NULL),
(53, NULL, NULL, NULL),
(54, NULL, NULL, NULL),
(55, NULL, NULL, NULL),
(56, NULL, NULL, NULL),
(57, NULL, NULL, NULL),
(58, NULL, NULL, NULL),
(59, NULL, NULL, NULL),
(60, NULL, NULL, NULL),
(61, NULL, NULL, NULL),
(62, NULL, NULL, NULL),
(63, NULL, 'waerawer', NULL),
(64, NULL, NULL, NULL),
(65, NULL, NULL, NULL),
(66, NULL, NULL, NULL),
(67, NULL, NULL, NULL),
(68, NULL, NULL, NULL),
(69, NULL, NULL, NULL),
(70, NULL, NULL, NULL),
(71, NULL, NULL, NULL),
(72, NULL, NULL, NULL),
(73, NULL, NULL, NULL),
(74, NULL, NULL, NULL),
(75, NULL, NULL, NULL),
(76, NULL, NULL, NULL),
(77, NULL, NULL, NULL),
(78, NULL, NULL, NULL),
(79, NULL, NULL, NULL),
(80, NULL, NULL, NULL),
(81, NULL, NULL, NULL),
(82, NULL, NULL, NULL),
(83, NULL, NULL, NULL),
(84, NULL, NULL, NULL),
(85, NULL, NULL, NULL),
(86, NULL, NULL, NULL),
(87, NULL, NULL, NULL),
(88, NULL, NULL, NULL),
(89, NULL, NULL, NULL),
(90, NULL, NULL, NULL),
(91, NULL, NULL, NULL),
(92, NULL, NULL, NULL),
(93, NULL, NULL, NULL),
(94, NULL, NULL, NULL),
(95, NULL, 'kittipan.prasertsang@wdc.com ch', '000666666 ch'),
(96, NULL, NULL, NULL),
(97, NULL, NULL, NULL),
(98, NULL, NULL, NULL),
(99, NULL, NULL, NULL),
(100, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_activity`
--

CREATE TABLE `trainee_activity` (
  `activity_id` int(11) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `activity_detail` text,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  `activity_room` varchar(20) DEFAULT NULL,
  `bldg_id` int(11) DEFAULT NULL,
  `created_details` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_activity`
--

INSERT INTO `trainee_activity` (`activity_id`, `activity_name`, `activity_detail`, `start_time`, `end_time`, `activity_date`, `activity_room`, `bldg_id`, `created_details`) VALUES
(1, 'Let\'s Discover Pakistan', 'Please join us and discover Pakistan with us..', '15:00:00', '17:00:00', '2017-03-24', 'SE-COM-003', 3, '2017-03-29 02:21:32'),
(2, 'Let\'s Discover South Africa', 'Please join us and discover South Africa with us..', '15:00:00', '17:00:00', '2017-03-24', 'SE-COM-003', 3, '2017-03-29 02:22:37'),
(3, 'Let\'s Discover Malaysia', 'Please join us and discover Malaysia with us..', '15:00:00', '17:00:00', '2017-03-28', 'SE-COM-003', 3, '2017-03-29 02:23:36'),
(4, 'Let\'s Discover Thailand', 'Please join us and discover Thailand with us..', '15:00:00', '17:00:00', '2017-04-04', 'SE-COM-003', 3, '2017-03-29 08:14:32'),
(5, 'test', 'awefawefaefw', '03:01:00', '02:02:00', '2018-02-02', 'eeeeeee', 3, '2017-04-19 07:07:32'),
(6, 'IBUPROFEN 400 mg TAB', 'mai roo', '00:12:00', '00:12:00', '2017-04-25', 'Bon\'s Room', 3, '2017-04-25 08:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_category`
--

CREATE TABLE `trainee_category` (
  `tc_id` int(11) NOT NULL,
  `trainee_id` int(11) NOT NULL,
  `cate_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_category`
--

INSERT INTO `trainee_category` (`tc_id`, `trainee_id`, `cate_id`) VALUES
(1, 260, 1),
(2, 261, 1),
(3, 262, 1),
(4, 263, 1),
(5, 264, 1),
(6, 265, 1),
(7, 266, 1),
(8, 267, 2),
(9, 268, 3),
(10, 269, 4),
(11, 270, 5),
(12, 271, 1),
(13, 272, 2),
(14, 273, 3),
(15, 274, 1),
(16, 275, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_duration`
--

CREATE TABLE `trainee_duration` (
  `trainee_duration_id` int(11) NOT NULL,
  `trainee_id` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `extend_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_duration`
--

INSERT INTO `trainee_duration` (`trainee_duration_id`, `trainee_id`, `start_date`, `end_date`, `extend_date`) VALUES
(2, 'RSMBC16_276', '2016-06-21', '2016-10-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_has_project`
--

CREATE TABLE `trainee_has_project` (
  `tp_id` int(5) NOT NULL,
  `project_id` int(11) NOT NULL,
  `trainee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_has_project`
--

INSERT INTO `trainee_has_project` (`tp_id`, `project_id`, `trainee_id`) VALUES
(1, 80, 260),
(2, 81, 261),
(3, 82, 262),
(4, 83, 263),
(5, 84, 264),
(6, 85, 265),
(7, 86, 266),
(8, 87, 267),
(9, 88, 268),
(10, 89, 269),
(11, 90, 270),
(12, 91, 271),
(13, 92, 272),
(14, 93, 273),
(15, 96, 274),
(16, 97, 275),
(17, 80, 304),
(18, 81, 305),
(19, 82, 306),
(20, 83, 307),
(21, 84, 308),
(22, 85, 276),
(23, 86, 277),
(24, 87, 278),
(25, 88, 279),
(26, 89, 280),
(27, 90, 281),
(28, 91, 282),
(29, 92, 283),
(30, 93, 284),
(31, 96, 285),
(32, 97, 286),
(33, 98, 287),
(34, 99, 288),
(35, 100, 289),
(36, 101, 290),
(37, 102, 291),
(38, 103, 292),
(39, 104, 293),
(40, 105, 294),
(41, 106, 295),
(42, 107, 296),
(43, 108, 297),
(44, 109, 298),
(45, 110, 299),
(46, 111, 300),
(47, 112, 301),
(48, 113, 302),
(49, 114, 303),
(50, 115, 309);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_info`
--

CREATE TABLE `trainee_info` (
  `trainee_id` int(11) NOT NULL,
  `trainee_code` varchar(12) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `transportation_id` int(11) DEFAULT NULL,
  `tni_bdg` int(2) DEFAULT NULL,
  `plant_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `tac_acc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_info`
--

INSERT INTO `trainee_info` (`trainee_id`, `trainee_code`, `s_id`, `job_id`, `dep_id`, `transportation_id`, `tni_bdg`, `plant_id`, `location_id`, `tac_acc_id`) VALUES
(260, 'RSMCB16_167', 1229, NULL, 3, 2, NULL, 1, 2, NULL),
(261, 'RSMCB16_166', 1230, NULL, 15, 3, NULL, 1, 2, NULL),
(262, 'RSMCM16_165', 1231, NULL, 17, 4, NULL, 1, 2, NULL),
(263, 'RSMOB16_164', 1232, NULL, 14, 4, NULL, 2, 2, NULL),
(264, 'RSHOM16_163', 1233, NULL, 14, 4, NULL, 2, 3, NULL),
(265, 'RSHCB16_162', 1234, NULL, 13, 4, NULL, 3, 3, NULL),
(266, 'RSHCB16_161', 1235, NULL, 18, 4, NULL, 1, 3, NULL),
(267, 'RSHCB16_148', 1236, NULL, 19, 4, NULL, 1, 4, NULL),
(268, 'RSHCB16_149', 1237, NULL, 1, 1, NULL, 1, 1, NULL),
(269, 'RSMCB16_153', 1238, NULL, 3, 2, NULL, 2, 2, NULL),
(270, 'RSMCB16_154', 1239, NULL, 15, 3, NULL, 3, 2, NULL),
(271, 'RSMCM16_150', 1240, NULL, 17, 4, NULL, 1, 2, NULL),
(272, 'RSMOB16_182', 1241, NULL, 14, 4, NULL, 1, 2, NULL),
(273, 'RSHOM16_208', 1242, NULL, 14, 4, NULL, 1, 3, NULL),
(274, 'RSHCB16_146', 1243, NULL, 13, 4, NULL, 2, 3, NULL),
(275, 'RSHCB16_147', 1244, NULL, 18, 4, NULL, 1, 3, NULL),
(276, 'RSMCB16_181', 1245, NULL, 3, 2, NULL, 1, 2, NULL),
(277, 'RSMCB16_182', 1246, NULL, 15, 3, NULL, 1, 2, NULL),
(278, 'RSMCM16_183', 1247, NULL, 17, 4, NULL, 1, 2, NULL),
(279, 'RSMOB16_184', 1248, NULL, 14, 4, NULL, 2, 2, NULL),
(280, 'RSHOM16_185', 1249, NULL, 14, 4, NULL, 2, 3, NULL),
(281, 'RSHCB16_186', 1250, NULL, 13, 4, NULL, 3, 3, NULL),
(282, 'RSHCB16_187', 1251, NULL, 18, 4, NULL, 1, 3, NULL),
(283, 'RSHCB16_189', 1252, NULL, 19, 4, NULL, 1, 4, NULL),
(284, 'RSHCB16_190', 1253, NULL, 1, 1, NULL, 1, 1, NULL),
(285, 'RSMCB16_191', 1254, NULL, 3, 2, NULL, 2, 2, NULL),
(286, 'RSMCB16_192', 1255, NULL, 15, 3, NULL, 3, 2, NULL),
(287, 'RSMCM16_193', 1256, NULL, 17, 4, NULL, 1, 2, NULL),
(288, 'RSMOB16_195', 1257, NULL, 14, 4, NULL, 1, 2, NULL),
(289, 'RSHOM16_196', 1258, NULL, 14, 4, NULL, 1, 3, NULL),
(290, 'RSHCB16_197', 1259, NULL, 13, 4, NULL, 2, 3, NULL),
(291, 'RSHCB16_198', 1260, NULL, 18, 4, NULL, 1, 3, NULL),
(292, 'RSMCB16_200', 1262, NULL, 15, 3, NULL, 1, 2, NULL),
(293, 'RSMCM16_201', 1263, NULL, 17, 4, NULL, 1, 2, NULL),
(294, 'RSMOB16_202', 1264, NULL, 14, 4, NULL, 2, 2, NULL),
(295, 'RSHOM16_203', 1265, NULL, 14, 4, NULL, 2, 3, NULL),
(296, 'RSHCB16_204', 1266, NULL, 13, 4, NULL, 3, 3, NULL),
(297, 'RSHCB16_205', 1267, NULL, 18, 4, NULL, 1, 3, NULL),
(298, 'RSHCB16_206', 1268, NULL, 19, 4, NULL, 1, 4, NULL),
(299, 'RSHCB16_207', 1269, NULL, 1, 1, NULL, 1, 1, NULL),
(300, 'RSMCB16_209', 1270, NULL, 3, 2, NULL, 2, 2, NULL),
(301, 'RSMCB16_210', 1271, NULL, 15, 3, NULL, 3, 2, NULL),
(302, 'RSMCM16_211', 1272, NULL, 17, 4, NULL, 1, 2, NULL),
(303, 'RSMOB16_212', 1273, NULL, 14, 4, NULL, 1, 2, NULL),
(304, 'RSHOM16_214', 1274, NULL, 14, 4, NULL, 1, 3, NULL),
(305, 'RSHCB16_215', 1275, NULL, 13, 4, NULL, 2, 3, NULL),
(306, 'RSHCB16_216', 1276, NULL, 18, 4, NULL, 1, 3, NULL),
(307, 'RSHCB16_217', 1277, NULL, 18, 4, NULL, 1, 3, NULL),
(308, 'RSMCB16_199', 1261, NULL, 3, 2, NULL, 1, 2, NULL),
(309, 'RSMCB16_218', 1278, NULL, 3, 2, NULL, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_info_has_trainee_activity`
--

CREATE TABLE `trainee_info_has_trainee_activity` (
  `assign_act_id` int(11) NOT NULL,
  `trainee_activity_id` int(11) NOT NULL,
  `student_status_id` int(11) NOT NULL,
  `assigned_detail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_info_has_trainee_activity`
--

INSERT INTO `trainee_info_has_trainee_activity` (`assign_act_id`, `trainee_activity_id`, `student_status_id`, `assigned_detail`) VALUES
(1, 1, 4, '2017-03-29 02:21:32'),
(2, 2, 4, '2017-03-29 02:22:37'),
(3, 3, 4, '2017-03-29 02:23:36'),
(4, 4, 4, '2017-03-29 02:25:55'),
(5, 5, 1, '2017-04-19 07:07:32'),
(6, 6, 4, '2017-04-25 08:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_info_has_trainee_presentation`
--

CREATE TABLE `trainee_info_has_trainee_presentation` (
  `trainee_presentation_id` int(11) NOT NULL,
  `trainee_id` varchar(45) NOT NULL,
  `tr_pre_id` int(11) NOT NULL,
  `created_detail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_info_has_trainee_presentation`
--

INSERT INTO `trainee_info_has_trainee_presentation` (`trainee_presentation_id`, `trainee_id`, `tr_pre_id`, `created_detail`) VALUES
(4, 'RSMBC16_279', 4, '2017-03-29 03:46:42'),
(5, 'RSMBC16_278', 5, '2017-03-29 03:50:47'),
(6, 'RSMBC16_278', 6, '2017-05-21 01:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_info_has_training_course`
--

CREATE TABLE `trainee_info_has_training_course` (
  `training_course_course_id` int(11) NOT NULL,
  `training_course_trainee_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_info_has_training_course`
--

INSERT INTO `trainee_info_has_training_course` (`training_course_course_id`, `training_course_trainee_id`) VALUES
(1, 369),
(2, 369),
(6, 369),
(1, 398),
(1, 399),
(1, 400),
(1, 401),
(1, 402),
(1, 403),
(1, 404),
(1, 405),
(1, 406),
(1, 407),
(7, 407),
(7, 407),
(1, 408),
(7, 408),
(7, 408),
(1, 409),
(7, 409),
(7, 409),
(1, 410),
(7, 410),
(7, 410),
(1, 411),
(7, 411),
(7, 411),
(1, 412),
(7, 412),
(7, 412),
(1, 413),
(7, 413),
(7, 413),
(1, 414),
(7, 414),
(7, 414),
(1, 415),
(7, 415),
(7, 415),
(1, 416),
(2, 416),
(6, 416),
(1, 417),
(2, 417),
(6, 417),
(1, 418),
(2, 418),
(6, 418),
(1, 419),
(2, 419),
(6, 419),
(1, 420),
(2, 420),
(6, 420),
(1, 421),
(2, 421),
(6, 421),
(1, 422),
(2, 422),
(6, 422),
(1, 423),
(2, 423),
(6, 423),
(1, 426),
(2, 426),
(6, 426),
(1, 427),
(2, 427),
(6, 427),
(1, 428),
(2, 428),
(6, 428),
(1, 429),
(2, 429),
(6, 429),
(1, 430),
(2, 430),
(6, 430),
(1, 431),
(2, 431),
(6, 431),
(1, 432),
(2, 432),
(6, 432),
(1, 433),
(2, 433),
(6, 433),
(1, 434),
(2, 434),
(6, 434),
(1, 435),
(2, 435),
(6, 435),
(1, 436),
(2, 436),
(6, 436),
(1, 437),
(2, 437),
(6, 437),
(1, 438),
(2, 438),
(6, 438),
(1, 439),
(2, 439),
(6, 439),
(1, 440),
(2, 440),
(6, 440),
(1, 441),
(2, 441),
(6, 441),
(1, 442),
(2, 442),
(6, 442),
(1, 443),
(2, 443),
(6, 443),
(1, 444),
(2, 444),
(6, 444),
(1, 445),
(2, 445),
(6, 445),
(1, 446),
(2, 446),
(6, 446),
(1, 447),
(2, 447),
(6, 447),
(1, 448),
(2, 448),
(6, 448),
(1, 449),
(2, 449),
(6, 449),
(1, 450),
(2, 450),
(6, 450),
(1, 451),
(2, 451),
(6, 451),
(1, 452),
(2, 452),
(6, 452),
(1, 453),
(2, 453),
(6, 453),
(1, 454),
(2, 454),
(6, 454),
(1, 455),
(2, 455),
(6, 455),
(1, 456),
(2, 456),
(6, 456),
(1, 457),
(2, 457),
(6, 457),
(1, 458),
(2, 458),
(6, 458),
(1, 459),
(2, 459),
(6, 459),
(1, 460),
(2, 460),
(6, 460),
(1, 461),
(2, 461),
(6, 461),
(1, 462),
(2, 462),
(6, 462);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_job`
--

CREATE TABLE `trainee_job` (
  `job_id` int(11) NOT NULL,
  `job_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trainee_presentation`
--

CREATE TABLE `trainee_presentation` (
  `presentation_id` int(11) NOT NULL,
  `presentation_date` date DEFAULT NULL,
  `presentation_stime` time DEFAULT NULL,
  `presentation_ftime` time DEFAULT NULL,
  `presentation_duration` time DEFAULT NULL,
  `remark` text,
  `presentation_score` float DEFAULT NULL,
  `created_details` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_presentation`
--

INSERT INTO `trainee_presentation` (`presentation_id`, `presentation_date`, `presentation_stime`, `presentation_ftime`, `presentation_duration`, `remark`, `presentation_score`, `created_details`, `room_id`) VALUES
(4, '2017-05-06', '09:10:00', '10:10:00', '00:25:00', 'Best', 5, '2017-03-28 19:57:48', NULL),
(5, '2017-03-01', '09:00:00', '10:00:00', '00:20:00', NULL, NULL, '2017-03-29 03:50:47', NULL),
(6, '0012-12-12', '00:12:00', '00:12:00', '00:12:00', NULL, NULL, '2017-05-21 01:44:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_project`
--

CREATE TABLE `trainee_project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `project_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_project`
--

INSERT INTO `trainee_project` (`project_id`, `project_name`, `project_detail`) VALUES
(80, 'Automated HGA Insertion Tail Life Recovery', NULL),
(81, 'Web Server _Project', NULL),
(82, 'Ergonomics', NULL),
(83, 'CWIE', NULL),
(84, 'AVI mechanical design project', NULL),
(85, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(86, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(87, 'Changing traffic improvement in clean room_of B4', NULL),
(88, 'Changing traffic improvement in clean room_of B4', NULL),
(89, 'Automated HGA Insertion Tail Life Recovery', NULL),
(90, 'Web Server _Project', NULL),
(91, 'Automated HGA Insertion Tail Life Recovery', NULL),
(92, 'Automated HGA Insertion Tail Life Recovery', NULL),
(93, 'Automated HGA Insertion Tail Life Recovery', NULL),
(94, 'Automated HGA Insertion Tail Life Recovery', NULL),
(95, 'Automated HGA Insertion Tail Life Recovery', NULL),
(96, 'Automated HGA Insertion Tail Life Recovery', NULL),
(97, 'Web Server _Project', NULL),
(98, 'Ergonomics', NULL),
(99, 'DATA MINING', NULL),
(100, 'AVI mechanical design project', NULL),
(101, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(102, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(103, 'Changing traffic improvement in clean room_of B4', NULL),
(104, 'Changing traffic improvement in clean room_of B4', NULL),
(105, 'Automated HGA Insertion Tail Life Recovery', NULL),
(106, 'Web Server _Project', NULL),
(107, 'Ergonomics', NULL),
(108, '', NULL),
(109, 'AVI mechanical design project', NULL),
(110, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(111, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(112, 'Changing traffic improvement in clean room_of B4', NULL),
(113, 'Changing traffic improvement in clean room_of B4', NULL),
(114, 'Automated HGA Insertion Tail Life Recovery', NULL),
(115, 'Automated HGA Insertion Tail Life Recovery', NULL),
(116, 'Automated HGA Insertion Tail Life Recovery', NULL),
(117, 'Automated HGA Insertion Tail Life Recovery', NULL),
(118, 'Automated HGA Insertion Tail Life Recovery', NULL),
(119, 'Web Server _Project', NULL),
(120, 'Ergonomics', NULL),
(121, '', NULL),
(122, 'AVI mechanical design project', NULL),
(123, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(124, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(125, 'Changing traffic improvement in clean room_of B4', NULL),
(126, 'Changing traffic improvement in clean room_of B4', NULL),
(127, 'Automated HGA Insertion Tail Life Recovery', NULL),
(128, 'Web Server _Project', NULL),
(129, 'Ergonomics', NULL),
(130, '', NULL),
(131, 'AVI mechanical design project', NULL),
(132, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(133, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(134, 'Changing traffic improvement in clean room_of B4', NULL),
(135, 'Changing traffic improvement in clean room_of B4', NULL),
(136, 'Automated HGA Insertion Tail Life Recovery', NULL),
(137, 'Web Server _Project', NULL),
(138, 'Ergonomics', NULL),
(139, '', NULL),
(140, 'AVI mechanical design project', NULL),
(141, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(142, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(143, 'Changing traffic improvement in clean room_of B4', NULL),
(144, 'Changing traffic improvement in clean room_of B4', NULL),
(145, 'Automated HGA Insertion Tail Life Recovery', NULL),
(146, 'Automated HGA Insertion Tail Life Recovery', NULL),
(147, 'Automated HGA Insertion Tail Life Recovery', NULL),
(148, 'Automated HGA Insertion Tail Life Recovery', NULL),
(149, 'Automated HGA Insertion Tail Life Recovery', NULL),
(150, 'Web Server _Project', NULL),
(151, 'Ergonomics', NULL),
(152, '', NULL),
(153, 'AVI mechanical design project', NULL),
(154, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(155, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(156, 'Changing traffic improvement in clean room_of B4', NULL),
(157, 'Changing traffic improvement in clean room_of B4', NULL),
(158, 'Automated HGA Insertion Tail Life Recovery', NULL),
(159, 'Web Server _Project', NULL),
(160, 'Ergonomics', NULL),
(161, '', NULL),
(162, 'AVI mechanical design project', NULL),
(163, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(164, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(165, 'Changing traffic improvement in clean room_of B4', NULL),
(166, 'Changing traffic improvement in clean room_of B4', NULL),
(167, 'Automated HGA Insertion Tail Life Recovery', NULL),
(168, 'Web Server _Project', NULL),
(169, 'Ergonomics', NULL),
(170, '', NULL),
(171, 'AVI mechanical design project', NULL),
(172, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(173, 'Development of Inventory Management Systems : Department of Branded Product', NULL),
(174, 'Changing traffic improvement in clean room_of B4', NULL),
(175, 'Changing traffic improvement in clean room_of B4', NULL),
(176, 'Automated HGA Insertion Tail Life Recovery', NULL),
(177, 'Web Server _Project', NULL),
(178, 'Ergonomics', NULL),
(179, NULL, NULL),
(180, 'AVI mechanical design project', NULL),
(181, 'Development of Inventory Management Systems : Department of Branded Product', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainee_transportation`
--

CREATE TABLE `trainee_transportation` (
  `transportation_id` int(11) NOT NULL,
  `driver_fname` varchar(20) DEFAULT NULL,
  `driver_lname` varchar(20) DEFAULT NULL,
  `vehicle_no` varchar(5) DEFAULT NULL,
  `driver_mobile` varchar(12) DEFAULT NULL,
  `destination_name` varchar(50) DEFAULT NULL,
  `transportation_point` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainee_transportation`
--

INSERT INTO `trainee_transportation` (`transportation_id`, `driver_fname`, `driver_lname`, `vehicle_no`, `driver_mobile`, `destination_name`, `transportation_point`) VALUES
(1, NULL, NULL, NULL, NULL, '', ''),
(2, NULL, NULL, NULL, NULL, NULL, 'Future Park Rungsit'),
(3, NULL, NULL, NULL, NULL, NULL, 'Thammasat University'),
(4, NULL, NULL, NULL, NULL, NULL, 'Bangkok University');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_visa`
--

CREATE TABLE `trainee_visa` (
  `visa_id` int(11) NOT NULL,
  `trainee_id` varchar(15) NOT NULL,
  `visa_exp_date` date DEFAULT NULL,
  `visa_email_date` date DEFAULT NULL,
  `img_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training_course`
--

CREATE TABLE `training_course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_detail` text,
  `course_start_time` time DEFAULT NULL,
  `course_end_time` time DEFAULT NULL,
  `course_date` date DEFAULT NULL,
  `course_room` int(2) DEFAULT NULL,
  `bldg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training_course`
--

INSERT INTO `training_course` (`course_id`, `course_name`, `course_detail`, `course_start_time`, `course_end_time`, `course_date`, `course_room`, `bldg_id`) VALUES
(1, 'Basic Hard Disk Drives', NULL, NULL, NULL, NULL, 3, 3),
(2, 'Keep calm and present your way', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Delivering an Academic Presentation with Confidence', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transcript`
--

CREATE TABLE `transcript` (
  `transcript_id` int(11) NOT NULL,
  `transcript_file` varchar(35) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transcript`
--

INSERT INTO `transcript` (`transcript_id`, `transcript_file`, `application_id`) VALUES
(10, NULL, NULL),
(12, NULL, NULL),
(14, NULL, NULL),
(16, NULL, NULL),
(18, NULL, NULL),
(20, NULL, NULL),
(22, NULL, NULL),
(24, NULL, NULL),
(26, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, NULL, NULL),
(42, NULL, NULL),
(43, NULL, NULL),
(44, NULL, NULL),
(45, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(67, NULL, NULL),
(68, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(77, NULL, NULL),
(78, NULL, NULL),
(79, NULL, NULL),
(80, NULL, NULL),
(81, NULL, NULL),
(82, NULL, NULL),
(83, NULL, NULL),
(84, NULL, NULL),
(85, NULL, NULL),
(86, NULL, NULL),
(87, NULL, NULL),
(88, NULL, NULL),
(89, NULL, NULL),
(90, NULL, NULL),
(91, NULL, NULL),
(92, NULL, NULL),
(93, NULL, NULL),
(94, NULL, NULL),
(95, NULL, NULL),
(96, NULL, NULL),
(97, NULL, NULL),
(98, NULL, NULL),
(99, NULL, NULL),
(100, NULL, NULL),
(101, NULL, NULL),
(102, NULL, NULL),
(103, NULL, NULL),
(104, NULL, NULL),
(105, NULL, NULL),
(106, NULL, NULL),
(107, NULL, NULL),
(108, NULL, NULL),
(109, NULL, NULL),
(110, NULL, NULL),
(111, NULL, NULL),
(112, NULL, NULL),
(113, NULL, NULL),
(114, NULL, NULL),
(115, NULL, NULL),
(116, NULL, NULL),
(117, NULL, NULL),
(118, NULL, NULL),
(119, NULL, NULL),
(120, NULL, NULL),
(121, NULL, NULL),
(122, NULL, NULL),
(123, NULL, NULL),
(124, NULL, NULL),
(125, NULL, NULL),
(126, NULL, NULL),
(127, NULL, NULL),
(128, NULL, NULL),
(129, NULL, NULL),
(130, NULL, NULL),
(131, NULL, NULL),
(132, NULL, NULL),
(133, NULL, NULL),
(134, NULL, NULL),
(135, NULL, NULL),
(136, NULL, NULL),
(137, NULL, NULL),
(138, NULL, NULL),
(139, NULL, NULL),
(140, NULL, NULL),
(141, NULL, NULL),
(142, NULL, NULL),
(143, NULL, NULL),
(144, NULL, NULL),
(145, NULL, NULL),
(146, NULL, NULL),
(147, NULL, NULL),
(148, NULL, NULL),
(149, NULL, NULL),
(150, NULL, NULL),
(151, NULL, NULL),
(152, NULL, NULL),
(153, NULL, NULL),
(154, NULL, NULL),
(155, NULL, NULL),
(156, NULL, NULL),
(157, NULL, NULL),
(158, NULL, NULL),
(159, NULL, NULL),
(160, NULL, NULL),
(161, NULL, NULL),
(162, NULL, NULL),
(163, NULL, NULL),
(164, NULL, NULL),
(165, NULL, NULL),
(166, NULL, NULL),
(167, NULL, NULL),
(168, NULL, NULL),
(169, NULL, NULL),
(170, NULL, NULL),
(171, NULL, NULL),
(172, NULL, NULL),
(173, NULL, NULL),
(174, NULL, NULL),
(175, NULL, NULL),
(176, NULL, NULL),
(177, NULL, NULL),
(178, NULL, NULL),
(179, NULL, NULL),
(180, NULL, NULL),
(181, NULL, NULL),
(182, NULL, NULL),
(183, NULL, NULL),
(184, NULL, NULL),
(185, NULL, NULL),
(186, NULL, NULL),
(187, NULL, NULL),
(188, NULL, NULL),
(189, NULL, NULL),
(190, NULL, NULL),
(191, NULL, NULL),
(192, NULL, NULL),
(193, NULL, NULL),
(194, NULL, NULL),
(195, NULL, NULL),
(196, NULL, NULL),
(197, NULL, NULL),
(198, NULL, NULL),
(199, NULL, NULL),
(200, NULL, NULL),
(201, NULL, NULL),
(202, NULL, NULL),
(203, NULL, NULL),
(204, NULL, NULL),
(205, NULL, NULL),
(206, NULL, NULL),
(207, NULL, NULL),
(208, NULL, NULL),
(209, NULL, NULL),
(210, NULL, NULL),
(211, NULL, NULL),
(212, NULL, NULL),
(213, NULL, NULL),
(214, NULL, NULL),
(215, NULL, NULL),
(216, NULL, NULL),
(217, NULL, NULL),
(218, NULL, NULL),
(219, NULL, NULL),
(220, NULL, NULL),
(221, NULL, NULL),
(222, NULL, NULL),
(223, NULL, NULL),
(224, NULL, NULL),
(225, NULL, NULL),
(226, NULL, NULL),
(227, NULL, NULL),
(228, NULL, NULL),
(229, NULL, NULL),
(230, NULL, NULL),
(231, NULL, NULL),
(232, NULL, NULL),
(233, NULL, NULL),
(234, NULL, NULL),
(235, NULL, NULL),
(236, NULL, NULL),
(237, NULL, NULL),
(238, NULL, NULL),
(239, NULL, NULL),
(240, NULL, NULL),
(241, NULL, NULL),
(242, NULL, NULL),
(243, NULL, NULL),
(244, NULL, NULL),
(245, NULL, NULL),
(246, NULL, NULL),
(247, NULL, NULL),
(248, NULL, NULL),
(249, NULL, NULL),
(250, NULL, NULL),
(251, NULL, NULL),
(252, NULL, NULL),
(253, NULL, NULL),
(254, NULL, NULL),
(255, NULL, NULL),
(256, NULL, NULL),
(257, NULL, NULL),
(258, NULL, NULL),
(259, NULL, NULL),
(260, NULL, NULL),
(261, NULL, NULL),
(262, NULL, NULL),
(263, NULL, NULL),
(264, NULL, NULL),
(265, NULL, NULL),
(266, NULL, NULL),
(267, NULL, NULL),
(268, NULL, NULL),
(269, NULL, NULL),
(270, NULL, NULL),
(271, NULL, NULL),
(272, NULL, NULL),
(273, NULL, NULL),
(274, NULL, NULL),
(275, NULL, NULL),
(276, NULL, NULL),
(277, NULL, NULL),
(278, NULL, NULL),
(279, NULL, NULL),
(280, NULL, NULL),
(281, NULL, NULL),
(282, NULL, NULL),
(283, NULL, NULL),
(284, NULL, NULL),
(285, NULL, NULL),
(286, NULL, NULL),
(287, NULL, NULL),
(288, NULL, NULL),
(289, NULL, NULL),
(290, NULL, NULL),
(291, NULL, NULL),
(292, NULL, NULL),
(293, NULL, NULL),
(294, NULL, NULL),
(295, NULL, NULL),
(296, NULL, NULL),
(297, NULL, NULL),
(298, NULL, NULL),
(299, NULL, NULL),
(300, NULL, NULL),
(301, NULL, NULL),
(302, NULL, NULL),
(303, NULL, NULL),
(304, NULL, NULL),
(305, NULL, NULL),
(306, NULL, NULL),
(307, NULL, NULL),
(308, NULL, NULL),
(309, NULL, NULL),
(310, NULL, NULL),
(311, NULL, NULL),
(312, NULL, NULL),
(313, NULL, NULL),
(314, NULL, NULL),
(315, NULL, NULL),
(316, NULL, NULL),
(317, NULL, NULL),
(318, NULL, NULL),
(319, NULL, NULL),
(320, NULL, NULL),
(321, NULL, NULL),
(322, NULL, NULL),
(323, NULL, NULL),
(324, NULL, NULL),
(325, NULL, NULL),
(326, NULL, NULL),
(327, NULL, NULL),
(328, NULL, NULL),
(329, NULL, NULL),
(330, NULL, NULL),
(331, NULL, NULL),
(332, NULL, NULL),
(333, NULL, NULL),
(334, NULL, NULL),
(335, NULL, NULL),
(336, NULL, NULL),
(337, NULL, NULL),
(338, NULL, NULL),
(339, NULL, NULL),
(340, NULL, NULL),
(341, NULL, NULL),
(342, NULL, NULL),
(343, NULL, NULL),
(344, NULL, NULL),
(345, NULL, NULL),
(346, NULL, NULL),
(347, NULL, NULL),
(348, NULL, NULL),
(349, NULL, NULL),
(350, NULL, NULL),
(351, NULL, NULL),
(352, NULL, NULL),
(353, NULL, NULL),
(354, NULL, NULL),
(355, NULL, NULL),
(356, NULL, NULL),
(357, NULL, NULL),
(358, NULL, NULL),
(359, NULL, NULL),
(360, NULL, NULL),
(361, NULL, NULL),
(362, NULL, NULL),
(363, NULL, NULL),
(364, NULL, NULL),
(365, NULL, NULL),
(366, NULL, NULL),
(367, NULL, NULL),
(368, NULL, NULL),
(369, NULL, NULL),
(370, NULL, NULL),
(371, NULL, NULL),
(372, NULL, NULL),
(373, NULL, NULL),
(374, NULL, NULL),
(375, NULL, NULL),
(376, NULL, NULL),
(377, NULL, NULL),
(378, NULL, NULL),
(379, NULL, NULL),
(380, NULL, NULL),
(381, NULL, NULL),
(382, NULL, NULL),
(383, NULL, NULL),
(384, NULL, NULL),
(385, NULL, NULL),
(386, NULL, NULL),
(387, NULL, NULL),
(388, NULL, NULL),
(389, NULL, NULL),
(390, NULL, NULL),
(391, NULL, NULL),
(392, NULL, NULL),
(393, NULL, NULL),
(394, NULL, NULL),
(395, NULL, NULL),
(396, NULL, NULL),
(397, NULL, NULL),
(398, NULL, NULL),
(399, NULL, NULL),
(400, NULL, NULL),
(401, NULL, NULL),
(402, NULL, NULL),
(403, NULL, NULL),
(404, NULL, NULL),
(405, NULL, NULL),
(406, NULL, NULL),
(407, NULL, NULL),
(408, NULL, NULL),
(409, NULL, NULL),
(410, NULL, NULL),
(411, NULL, NULL),
(412, NULL, NULL),
(413, NULL, NULL),
(414, NULL, NULL),
(415, NULL, NULL),
(416, NULL, NULL),
(417, NULL, NULL),
(418, NULL, NULL),
(419, NULL, NULL),
(420, NULL, NULL),
(421, NULL, NULL),
(422, NULL, NULL),
(423, NULL, NULL),
(424, NULL, NULL),
(425, NULL, NULL),
(426, NULL, NULL),
(427, NULL, NULL),
(428, NULL, NULL),
(429, NULL, NULL),
(430, NULL, NULL),
(431, NULL, NULL),
(432, NULL, NULL),
(433, NULL, NULL),
(434, NULL, NULL),
(435, NULL, NULL),
(436, NULL, NULL),
(437, NULL, NULL),
(438, NULL, NULL),
(439, NULL, NULL),
(440, NULL, NULL),
(441, NULL, NULL),
(442, NULL, NULL),
(443, NULL, NULL),
(444, NULL, NULL),
(445, NULL, NULL),
(446, NULL, NULL),
(447, NULL, NULL),
(448, NULL, NULL),
(449, NULL, NULL),
(450, NULL, NULL),
(451, NULL, NULL),
(452, NULL, NULL),
(453, NULL, NULL),
(454, NULL, NULL),
(455, NULL, NULL),
(456, NULL, NULL),
(457, NULL, NULL),
(458, NULL, NULL),
(459, NULL, NULL),
(460, NULL, NULL),
(461, NULL, NULL),
(462, NULL, NULL),
(463, NULL, NULL),
(464, NULL, NULL),
(465, NULL, NULL),
(466, NULL, NULL),
(467, NULL, NULL),
(468, NULL, NULL),
(469, NULL, NULL),
(470, NULL, NULL),
(471, NULL, NULL),
(472, NULL, NULL),
(473, NULL, NULL),
(474, NULL, NULL),
(475, NULL, NULL),
(476, NULL, NULL),
(477, NULL, NULL),
(478, NULL, NULL),
(479, NULL, NULL),
(480, NULL, NULL),
(481, NULL, NULL),
(482, NULL, NULL),
(483, NULL, NULL),
(484, NULL, NULL),
(485, NULL, NULL),
(486, NULL, NULL),
(487, NULL, NULL),
(488, NULL, NULL),
(489, NULL, NULL),
(490, NULL, NULL),
(491, NULL, NULL),
(492, NULL, NULL),
(493, NULL, NULL),
(494, NULL, NULL),
(495, NULL, NULL),
(496, NULL, NULL),
(497, NULL, NULL),
(498, NULL, NULL),
(499, NULL, NULL),
(500, NULL, NULL),
(501, NULL, NULL),
(502, NULL, NULL),
(503, NULL, NULL),
(504, NULL, NULL),
(505, NULL, NULL),
(506, NULL, NULL),
(507, NULL, NULL),
(508, NULL, NULL),
(509, NULL, NULL),
(510, NULL, NULL),
(511, NULL, NULL),
(512, NULL, NULL),
(513, NULL, NULL),
(514, NULL, NULL),
(515, NULL, NULL),
(516, NULL, NULL),
(517, NULL, NULL),
(519, NULL, NULL),
(520, NULL, NULL),
(521, NULL, NULL),
(522, NULL, NULL),
(523, NULL, NULL),
(524, NULL, NULL),
(525, NULL, NULL),
(526, NULL, NULL),
(527, NULL, NULL),
(528, NULL, NULL),
(529, NULL, NULL),
(530, NULL, NULL),
(531, NULL, NULL),
(532, NULL, NULL),
(533, NULL, NULL),
(534, NULL, NULL),
(535, NULL, NULL),
(536, NULL, NULL),
(537, NULL, NULL),
(538, NULL, NULL),
(539, NULL, NULL),
(540, NULL, NULL),
(541, NULL, NULL),
(542, NULL, NULL),
(543, NULL, NULL),
(544, NULL, NULL),
(545, NULL, NULL),
(546, NULL, NULL),
(547, NULL, NULL),
(548, NULL, NULL),
(549, NULL, NULL),
(550, NULL, NULL),
(551, NULL, NULL),
(552, NULL, NULL),
(553, NULL, NULL),
(554, NULL, NULL),
(555, NULL, NULL),
(556, NULL, NULL),
(576, NULL, NULL),
(578, NULL, NULL),
(579, NULL, NULL),
(580, NULL, NULL),
(581, NULL, NULL),
(582, NULL, NULL),
(583, NULL, NULL),
(584, NULL, NULL),
(585, NULL, NULL),
(586, NULL, NULL),
(587, NULL, NULL),
(588, NULL, NULL),
(589, NULL, NULL),
(590, NULL, NULL),
(591, NULL, NULL),
(592, NULL, NULL),
(593, NULL, NULL),
(594, NULL, NULL),
(595, NULL, NULL),
(596, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_file` varchar(35) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `video_file`, `application_id`) VALUES
(10, NULL, NULL),
(12, NULL, NULL),
(14, NULL, NULL),
(16, NULL, NULL),
(18, NULL, NULL),
(20, NULL, NULL),
(22, NULL, NULL),
(24, NULL, NULL),
(26, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, NULL, NULL),
(42, NULL, NULL),
(43, NULL, NULL),
(44, NULL, NULL),
(45, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(67, NULL, NULL),
(68, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(77, NULL, NULL),
(78, NULL, NULL),
(79, NULL, NULL),
(80, NULL, NULL),
(81, NULL, NULL),
(82, NULL, NULL),
(83, NULL, NULL),
(84, NULL, NULL),
(85, NULL, NULL),
(86, NULL, NULL),
(87, NULL, NULL),
(88, NULL, NULL),
(89, NULL, NULL),
(90, NULL, NULL),
(91, NULL, NULL),
(92, NULL, NULL),
(93, NULL, NULL),
(94, NULL, NULL),
(95, NULL, NULL),
(96, NULL, NULL),
(97, NULL, NULL),
(98, NULL, NULL),
(99, NULL, NULL),
(100, NULL, NULL),
(101, NULL, NULL),
(102, NULL, NULL),
(103, NULL, NULL),
(104, NULL, NULL),
(105, NULL, NULL),
(106, NULL, NULL),
(107, NULL, NULL),
(108, NULL, NULL),
(109, NULL, NULL),
(110, NULL, NULL),
(111, NULL, NULL),
(112, NULL, NULL),
(113, NULL, NULL),
(114, NULL, NULL),
(115, NULL, NULL),
(116, NULL, NULL),
(117, NULL, NULL),
(118, NULL, NULL),
(119, NULL, NULL),
(120, NULL, NULL),
(121, NULL, NULL),
(122, NULL, NULL),
(123, NULL, NULL),
(124, NULL, NULL),
(125, NULL, NULL),
(126, NULL, NULL),
(127, NULL, NULL),
(128, NULL, NULL),
(129, NULL, NULL),
(130, NULL, NULL),
(131, NULL, NULL),
(132, NULL, NULL),
(133, NULL, NULL),
(134, NULL, NULL),
(135, NULL, NULL),
(136, NULL, NULL),
(137, NULL, NULL),
(138, NULL, NULL),
(139, NULL, NULL),
(140, NULL, NULL),
(141, NULL, NULL),
(142, NULL, NULL),
(143, NULL, NULL),
(144, NULL, NULL),
(145, NULL, NULL),
(146, NULL, NULL),
(147, NULL, NULL),
(148, NULL, NULL),
(149, NULL, NULL),
(150, NULL, NULL),
(151, NULL, NULL),
(152, NULL, NULL),
(153, NULL, NULL),
(154, NULL, NULL),
(155, NULL, NULL),
(156, NULL, NULL),
(157, NULL, NULL),
(158, NULL, NULL),
(159, NULL, NULL),
(160, NULL, NULL),
(161, NULL, NULL),
(162, NULL, NULL),
(163, NULL, NULL),
(164, NULL, NULL),
(165, NULL, NULL),
(166, NULL, NULL),
(167, NULL, NULL),
(168, NULL, NULL),
(169, NULL, NULL),
(170, NULL, NULL),
(171, NULL, NULL),
(172, NULL, NULL),
(173, NULL, NULL),
(174, NULL, NULL),
(175, NULL, NULL),
(176, NULL, NULL),
(177, NULL, NULL),
(178, NULL, NULL),
(179, NULL, NULL),
(180, NULL, NULL),
(181, NULL, NULL),
(182, NULL, NULL),
(183, NULL, NULL),
(184, NULL, NULL),
(185, NULL, NULL),
(186, NULL, NULL),
(187, NULL, NULL),
(188, NULL, NULL),
(189, NULL, NULL),
(190, NULL, NULL),
(191, NULL, NULL),
(192, NULL, NULL),
(193, NULL, NULL),
(194, NULL, NULL),
(195, NULL, NULL),
(196, NULL, NULL),
(197, NULL, NULL),
(198, NULL, NULL),
(199, NULL, NULL),
(200, NULL, NULL),
(201, NULL, NULL),
(202, NULL, NULL),
(203, NULL, NULL),
(204, NULL, NULL),
(205, NULL, NULL),
(206, NULL, NULL),
(207, NULL, NULL),
(208, NULL, NULL),
(209, NULL, NULL),
(210, NULL, NULL),
(211, NULL, NULL),
(212, NULL, NULL),
(213, NULL, NULL),
(214, NULL, NULL),
(215, NULL, NULL),
(216, NULL, NULL),
(217, NULL, NULL),
(218, NULL, NULL),
(219, NULL, NULL),
(220, NULL, NULL),
(221, NULL, NULL),
(222, NULL, NULL),
(223, NULL, NULL),
(224, NULL, NULL),
(225, NULL, NULL),
(226, NULL, NULL),
(227, NULL, NULL),
(228, NULL, NULL),
(229, NULL, NULL),
(230, NULL, NULL),
(231, NULL, NULL),
(232, NULL, NULL),
(233, NULL, NULL),
(234, NULL, NULL),
(235, NULL, NULL),
(236, NULL, NULL),
(237, NULL, NULL),
(238, NULL, NULL),
(239, NULL, NULL),
(240, NULL, NULL),
(241, NULL, NULL),
(242, NULL, NULL),
(243, NULL, NULL),
(244, NULL, NULL),
(245, NULL, NULL),
(246, NULL, NULL),
(247, NULL, NULL),
(248, NULL, NULL),
(249, NULL, NULL),
(250, NULL, NULL),
(251, NULL, NULL),
(252, NULL, NULL),
(253, NULL, NULL),
(254, NULL, NULL),
(255, NULL, NULL),
(256, NULL, NULL),
(257, NULL, NULL),
(258, NULL, NULL),
(259, NULL, NULL),
(260, NULL, NULL),
(261, NULL, NULL),
(262, NULL, NULL),
(263, NULL, NULL),
(264, NULL, NULL),
(265, NULL, NULL),
(266, NULL, NULL),
(267, NULL, NULL),
(268, NULL, NULL),
(269, NULL, NULL),
(270, NULL, NULL),
(271, NULL, NULL),
(272, NULL, NULL),
(273, NULL, NULL),
(274, NULL, NULL),
(275, NULL, NULL),
(276, NULL, NULL),
(277, NULL, NULL),
(278, NULL, NULL),
(279, NULL, NULL),
(280, NULL, NULL),
(281, NULL, NULL),
(282, NULL, NULL),
(283, NULL, NULL),
(284, NULL, NULL),
(285, NULL, NULL),
(286, NULL, NULL),
(287, NULL, NULL),
(288, NULL, NULL),
(289, NULL, NULL),
(290, NULL, NULL),
(291, NULL, NULL),
(292, NULL, NULL),
(293, NULL, NULL),
(294, NULL, NULL),
(295, NULL, NULL),
(296, NULL, NULL),
(297, NULL, NULL),
(298, NULL, NULL),
(299, NULL, NULL),
(300, NULL, NULL),
(301, NULL, NULL),
(302, NULL, NULL),
(303, NULL, NULL),
(304, NULL, NULL),
(305, NULL, NULL),
(306, NULL, NULL),
(307, NULL, NULL),
(308, NULL, NULL),
(309, NULL, NULL),
(310, NULL, NULL),
(311, NULL, NULL),
(312, NULL, NULL),
(313, NULL, NULL),
(314, NULL, NULL),
(315, NULL, NULL),
(316, NULL, NULL),
(317, NULL, NULL),
(318, NULL, NULL),
(319, NULL, NULL),
(320, NULL, NULL),
(321, NULL, NULL),
(322, NULL, NULL),
(323, NULL, NULL),
(324, NULL, NULL),
(325, NULL, NULL),
(326, NULL, NULL),
(327, NULL, NULL),
(328, NULL, NULL),
(329, NULL, NULL),
(330, NULL, NULL),
(331, NULL, NULL),
(332, NULL, NULL),
(333, NULL, NULL),
(334, NULL, NULL),
(335, NULL, NULL),
(336, NULL, NULL),
(337, NULL, NULL),
(338, NULL, NULL),
(339, NULL, NULL),
(340, NULL, NULL),
(341, NULL, NULL),
(342, NULL, NULL),
(343, NULL, NULL),
(344, NULL, NULL),
(345, NULL, NULL),
(346, NULL, NULL),
(347, NULL, NULL),
(348, NULL, NULL),
(349, NULL, NULL),
(350, NULL, NULL),
(351, NULL, NULL),
(352, NULL, NULL),
(353, NULL, NULL),
(354, NULL, NULL),
(355, NULL, NULL),
(356, NULL, NULL),
(357, NULL, NULL),
(358, NULL, NULL),
(359, NULL, NULL),
(360, NULL, NULL),
(361, NULL, NULL),
(362, NULL, NULL),
(363, NULL, NULL),
(364, NULL, NULL),
(365, NULL, NULL),
(366, NULL, NULL),
(367, NULL, NULL),
(368, NULL, NULL),
(369, NULL, NULL),
(370, NULL, NULL),
(371, NULL, NULL),
(372, NULL, NULL),
(373, NULL, NULL),
(374, NULL, NULL),
(375, NULL, NULL),
(376, NULL, NULL),
(377, NULL, NULL),
(378, NULL, NULL),
(379, NULL, NULL),
(380, NULL, NULL),
(381, NULL, NULL),
(382, NULL, NULL),
(383, NULL, NULL),
(384, NULL, NULL),
(385, NULL, NULL),
(386, NULL, NULL),
(387, NULL, NULL),
(388, NULL, NULL),
(389, NULL, NULL),
(390, NULL, NULL),
(391, NULL, NULL),
(392, NULL, NULL),
(393, NULL, NULL),
(394, NULL, NULL),
(395, NULL, NULL),
(396, NULL, NULL),
(397, NULL, NULL),
(398, NULL, NULL),
(399, NULL, NULL),
(400, NULL, NULL),
(401, NULL, NULL),
(402, NULL, NULL),
(403, NULL, NULL),
(404, NULL, NULL),
(405, NULL, NULL),
(406, NULL, NULL),
(407, NULL, NULL),
(408, NULL, NULL),
(409, NULL, NULL),
(410, NULL, NULL),
(411, NULL, NULL),
(412, NULL, NULL),
(413, NULL, NULL),
(414, NULL, NULL),
(415, NULL, NULL),
(416, NULL, NULL),
(417, NULL, NULL),
(418, NULL, NULL),
(419, NULL, NULL),
(420, NULL, NULL),
(421, NULL, NULL),
(422, NULL, NULL),
(423, NULL, NULL),
(424, NULL, NULL),
(425, NULL, NULL),
(426, NULL, NULL),
(427, NULL, NULL),
(428, NULL, NULL),
(429, NULL, NULL),
(430, NULL, NULL),
(431, NULL, NULL),
(432, NULL, NULL),
(433, NULL, NULL),
(434, NULL, NULL),
(435, NULL, NULL),
(436, NULL, NULL),
(437, NULL, NULL),
(438, NULL, NULL),
(439, NULL, NULL),
(440, NULL, NULL),
(441, NULL, NULL),
(442, NULL, NULL),
(443, NULL, NULL),
(444, NULL, NULL),
(445, NULL, NULL),
(446, NULL, NULL),
(447, NULL, NULL),
(448, NULL, NULL),
(449, NULL, NULL),
(450, NULL, NULL),
(451, NULL, NULL),
(452, NULL, NULL),
(453, NULL, NULL),
(454, NULL, NULL),
(455, NULL, NULL),
(456, NULL, NULL),
(457, NULL, NULL),
(458, NULL, NULL),
(459, NULL, NULL),
(460, NULL, NULL),
(461, NULL, NULL),
(462, NULL, NULL),
(463, NULL, NULL),
(464, NULL, NULL),
(465, NULL, NULL),
(466, NULL, NULL),
(467, NULL, NULL),
(468, NULL, NULL),
(469, NULL, NULL),
(470, NULL, NULL),
(471, NULL, NULL),
(472, NULL, NULL),
(473, NULL, NULL),
(474, NULL, NULL),
(475, NULL, NULL),
(476, NULL, NULL),
(477, NULL, NULL),
(478, NULL, NULL),
(479, NULL, NULL),
(480, NULL, NULL),
(481, NULL, NULL),
(482, NULL, NULL),
(483, NULL, NULL),
(484, NULL, NULL),
(485, NULL, NULL),
(486, NULL, NULL),
(487, NULL, NULL),
(488, NULL, NULL),
(489, NULL, NULL),
(490, NULL, NULL),
(491, NULL, NULL),
(492, NULL, NULL),
(493, NULL, NULL),
(494, NULL, NULL),
(495, NULL, NULL),
(496, NULL, NULL),
(497, NULL, NULL),
(498, NULL, NULL),
(499, NULL, NULL),
(500, NULL, NULL),
(501, NULL, NULL),
(502, NULL, NULL),
(503, NULL, NULL),
(504, NULL, NULL),
(505, NULL, NULL),
(506, NULL, NULL),
(507, NULL, NULL),
(508, NULL, NULL),
(509, NULL, NULL),
(510, NULL, NULL),
(511, NULL, NULL),
(512, NULL, NULL),
(513, NULL, NULL),
(514, NULL, NULL),
(515, NULL, NULL),
(516, NULL, NULL),
(517, NULL, NULL),
(519, NULL, NULL),
(520, NULL, NULL),
(521, NULL, NULL),
(522, NULL, NULL),
(523, NULL, NULL),
(524, NULL, NULL),
(525, NULL, NULL),
(526, NULL, NULL),
(527, NULL, NULL),
(528, NULL, NULL),
(529, NULL, NULL),
(530, NULL, NULL),
(531, NULL, NULL),
(532, NULL, NULL),
(533, NULL, NULL),
(534, NULL, NULL),
(535, NULL, NULL),
(536, NULL, NULL),
(537, NULL, NULL),
(538, NULL, NULL),
(539, NULL, NULL),
(540, NULL, NULL),
(541, NULL, NULL),
(542, NULL, NULL),
(543, NULL, NULL),
(544, NULL, NULL),
(545, NULL, NULL),
(546, NULL, NULL),
(547, NULL, NULL),
(548, NULL, NULL),
(549, NULL, NULL),
(550, NULL, NULL),
(551, NULL, NULL),
(552, NULL, NULL),
(553, NULL, NULL),
(554, NULL, NULL),
(555, NULL, NULL),
(556, NULL, NULL),
(576, NULL, NULL),
(578, NULL, NULL),
(579, NULL, NULL),
(580, NULL, NULL),
(581, NULL, NULL),
(582, NULL, NULL),
(583, NULL, NULL),
(584, NULL, NULL),
(585, NULL, NULL),
(586, NULL, NULL),
(587, NULL, NULL),
(588, NULL, NULL),
(589, NULL, NULL),
(590, NULL, NULL),
(591, NULL, NULL),
(592, NULL, NULL),
(593, NULL, NULL),
(594, NULL, NULL),
(595, NULL, NULL),
(596, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visa`
--

CREATE TABLE `visa` (
  `visa_id` int(11) NOT NULL,
  `visa_file` varchar(35) DEFAULT NULL,
  `application_application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa`
--

INSERT INTO `visa` (`visa_id`, `visa_file`, `application_application_id`) VALUES
(10, NULL, NULL),
(12, NULL, NULL),
(14, NULL, NULL),
(16, NULL, NULL),
(18, NULL, NULL),
(20, NULL, NULL),
(22, NULL, NULL),
(24, NULL, NULL),
(26, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, NULL, NULL),
(42, NULL, NULL),
(43, NULL, NULL),
(44, NULL, NULL),
(45, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(67, NULL, NULL),
(68, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(77, NULL, NULL),
(78, NULL, NULL),
(79, NULL, NULL),
(80, NULL, NULL),
(81, NULL, NULL),
(82, NULL, NULL),
(83, NULL, NULL),
(84, NULL, NULL),
(85, NULL, NULL),
(86, NULL, NULL),
(87, NULL, NULL),
(88, NULL, NULL),
(89, NULL, NULL),
(90, NULL, NULL),
(91, NULL, NULL),
(92, NULL, NULL),
(93, NULL, NULL),
(94, NULL, NULL),
(95, NULL, NULL),
(96, NULL, NULL),
(97, NULL, NULL),
(98, NULL, NULL),
(99, NULL, NULL),
(100, NULL, NULL),
(101, NULL, NULL),
(102, NULL, NULL),
(103, NULL, NULL),
(104, NULL, NULL),
(105, NULL, NULL),
(106, NULL, NULL),
(107, NULL, NULL),
(108, NULL, NULL),
(109, NULL, NULL),
(110, NULL, NULL),
(111, NULL, NULL),
(112, NULL, NULL),
(113, NULL, NULL),
(114, NULL, NULL),
(115, NULL, NULL),
(116, NULL, NULL),
(117, NULL, NULL),
(118, NULL, NULL),
(119, NULL, NULL),
(120, NULL, NULL),
(121, NULL, NULL),
(122, NULL, NULL),
(123, NULL, NULL),
(124, NULL, NULL),
(125, NULL, NULL),
(126, NULL, NULL),
(127, NULL, NULL),
(128, NULL, NULL),
(129, NULL, NULL),
(130, NULL, NULL),
(131, NULL, NULL),
(132, NULL, NULL),
(133, NULL, NULL),
(134, NULL, NULL),
(135, NULL, NULL),
(136, NULL, NULL),
(137, NULL, NULL),
(138, NULL, NULL),
(139, NULL, NULL),
(140, NULL, NULL),
(141, NULL, NULL),
(142, NULL, NULL),
(143, NULL, NULL),
(144, NULL, NULL),
(145, NULL, NULL),
(146, NULL, NULL),
(147, NULL, NULL),
(148, NULL, NULL),
(149, NULL, NULL),
(150, NULL, NULL),
(151, NULL, NULL),
(152, NULL, NULL),
(153, NULL, NULL),
(154, NULL, NULL),
(155, NULL, NULL),
(156, NULL, NULL),
(157, NULL, NULL),
(158, NULL, NULL),
(159, NULL, NULL),
(160, NULL, NULL),
(161, NULL, NULL),
(162, NULL, NULL),
(163, NULL, NULL),
(164, NULL, NULL),
(165, NULL, NULL),
(166, NULL, NULL),
(167, NULL, NULL),
(168, NULL, NULL),
(169, NULL, NULL),
(170, NULL, NULL),
(171, NULL, NULL),
(172, NULL, NULL),
(173, NULL, NULL),
(174, NULL, NULL),
(175, NULL, NULL),
(176, NULL, NULL),
(177, NULL, NULL),
(178, NULL, NULL),
(179, NULL, NULL),
(180, NULL, NULL),
(181, NULL, NULL),
(182, NULL, NULL),
(183, NULL, NULL),
(184, NULL, NULL),
(185, NULL, NULL),
(186, NULL, NULL),
(187, NULL, NULL),
(188, NULL, NULL),
(189, NULL, NULL),
(190, NULL, NULL),
(191, NULL, NULL),
(192, NULL, NULL),
(193, NULL, NULL),
(194, NULL, NULL),
(195, NULL, NULL),
(196, NULL, NULL),
(197, NULL, NULL),
(198, NULL, NULL),
(199, NULL, NULL),
(200, NULL, NULL),
(201, NULL, NULL),
(202, NULL, NULL),
(203, NULL, NULL),
(204, NULL, NULL),
(205, NULL, NULL),
(206, NULL, NULL),
(207, NULL, NULL),
(208, NULL, NULL),
(209, NULL, NULL),
(210, NULL, NULL),
(211, NULL, NULL),
(212, NULL, NULL),
(213, NULL, NULL),
(214, NULL, NULL),
(215, NULL, NULL),
(216, NULL, NULL),
(217, NULL, NULL),
(218, NULL, NULL),
(219, NULL, NULL),
(220, NULL, NULL),
(221, NULL, NULL),
(222, NULL, NULL),
(223, NULL, NULL),
(224, NULL, NULL),
(225, NULL, NULL),
(226, NULL, NULL),
(227, NULL, NULL),
(228, NULL, NULL),
(229, NULL, NULL),
(230, NULL, NULL),
(231, NULL, NULL),
(232, NULL, NULL),
(233, NULL, NULL),
(234, NULL, NULL),
(235, NULL, NULL),
(236, NULL, NULL),
(237, NULL, NULL),
(238, NULL, NULL),
(239, NULL, NULL),
(240, NULL, NULL),
(241, NULL, NULL),
(242, NULL, NULL),
(243, NULL, NULL),
(244, NULL, NULL),
(245, NULL, NULL),
(246, NULL, NULL),
(247, NULL, NULL),
(248, NULL, NULL),
(249, NULL, NULL),
(250, NULL, NULL),
(251, NULL, NULL),
(252, NULL, NULL),
(253, NULL, NULL),
(254, NULL, NULL),
(255, NULL, NULL),
(256, NULL, NULL),
(257, NULL, NULL),
(258, NULL, NULL),
(259, NULL, NULL),
(260, NULL, NULL),
(261, NULL, NULL),
(262, NULL, NULL),
(263, NULL, NULL),
(264, NULL, NULL),
(265, NULL, NULL),
(266, NULL, NULL),
(267, NULL, NULL),
(268, NULL, NULL),
(269, NULL, NULL),
(270, NULL, NULL),
(271, NULL, NULL),
(272, NULL, NULL),
(273, NULL, NULL),
(274, NULL, NULL),
(275, NULL, NULL),
(276, NULL, NULL),
(277, NULL, NULL),
(278, NULL, NULL),
(279, NULL, NULL),
(280, NULL, NULL),
(281, NULL, NULL),
(282, NULL, NULL),
(283, NULL, NULL),
(284, NULL, NULL),
(285, NULL, NULL),
(286, NULL, NULL),
(287, NULL, NULL),
(288, NULL, NULL),
(289, NULL, NULL),
(290, NULL, NULL),
(291, NULL, NULL),
(292, NULL, NULL),
(293, NULL, NULL),
(294, NULL, NULL),
(295, NULL, NULL),
(296, NULL, NULL),
(297, NULL, NULL),
(298, NULL, NULL),
(299, NULL, NULL),
(300, NULL, NULL),
(301, NULL, NULL),
(302, NULL, NULL),
(303, NULL, NULL),
(304, NULL, NULL),
(305, NULL, NULL),
(306, NULL, NULL),
(307, NULL, NULL),
(308, NULL, NULL),
(309, NULL, NULL),
(310, NULL, NULL),
(311, NULL, NULL),
(312, NULL, NULL),
(313, NULL, NULL),
(314, NULL, NULL),
(315, NULL, NULL),
(316, NULL, NULL),
(317, NULL, NULL),
(318, NULL, NULL),
(319, NULL, NULL),
(320, NULL, NULL),
(321, NULL, NULL),
(322, NULL, NULL),
(323, NULL, NULL),
(324, NULL, NULL),
(325, NULL, NULL),
(326, NULL, NULL),
(327, NULL, NULL),
(328, NULL, NULL),
(329, NULL, NULL),
(330, NULL, NULL),
(331, NULL, NULL),
(332, NULL, NULL),
(333, NULL, NULL),
(334, NULL, NULL),
(335, NULL, NULL),
(336, NULL, NULL),
(337, NULL, NULL),
(338, NULL, NULL),
(339, NULL, NULL),
(340, NULL, NULL),
(341, NULL, NULL),
(342, NULL, NULL),
(343, NULL, NULL),
(344, NULL, NULL),
(345, NULL, NULL),
(346, NULL, NULL),
(347, NULL, NULL),
(348, NULL, NULL),
(349, NULL, NULL),
(350, NULL, NULL),
(351, NULL, NULL),
(352, NULL, NULL),
(353, NULL, NULL),
(354, NULL, NULL),
(355, NULL, NULL),
(356, NULL, NULL),
(357, NULL, NULL),
(358, NULL, NULL),
(359, NULL, NULL),
(360, NULL, NULL),
(361, NULL, NULL),
(362, NULL, NULL),
(363, NULL, NULL),
(364, NULL, NULL),
(365, NULL, NULL),
(366, NULL, NULL),
(367, NULL, NULL),
(368, NULL, NULL),
(369, NULL, NULL),
(370, NULL, NULL),
(371, NULL, NULL),
(372, NULL, NULL),
(373, NULL, NULL),
(374, NULL, NULL),
(375, NULL, NULL),
(376, NULL, NULL),
(377, NULL, NULL),
(378, NULL, NULL),
(379, NULL, NULL),
(380, NULL, NULL),
(381, NULL, NULL),
(382, NULL, NULL),
(383, NULL, NULL),
(384, NULL, NULL),
(385, NULL, NULL),
(386, NULL, NULL),
(387, NULL, NULL),
(388, NULL, NULL),
(389, NULL, NULL),
(390, NULL, NULL),
(391, NULL, NULL),
(392, NULL, NULL),
(393, NULL, NULL),
(394, NULL, NULL),
(395, NULL, NULL),
(396, NULL, NULL),
(397, NULL, NULL),
(398, NULL, NULL),
(399, NULL, NULL),
(400, NULL, NULL),
(401, NULL, NULL),
(402, NULL, NULL),
(403, NULL, NULL),
(404, NULL, NULL),
(405, NULL, NULL),
(406, NULL, NULL),
(407, NULL, NULL),
(408, NULL, NULL),
(409, NULL, NULL),
(410, NULL, NULL),
(411, NULL, NULL),
(412, NULL, NULL),
(413, NULL, NULL),
(414, NULL, NULL),
(415, NULL, NULL),
(416, NULL, NULL),
(417, NULL, NULL),
(418, NULL, NULL),
(419, NULL, NULL),
(420, NULL, NULL),
(421, NULL, NULL),
(422, NULL, NULL),
(423, NULL, NULL),
(424, NULL, NULL),
(425, NULL, NULL),
(426, NULL, NULL),
(427, NULL, NULL),
(428, NULL, NULL),
(429, NULL, NULL),
(430, NULL, NULL),
(431, NULL, NULL),
(432, NULL, NULL),
(433, NULL, NULL),
(434, NULL, NULL),
(435, NULL, NULL),
(436, NULL, NULL),
(437, NULL, NULL),
(438, NULL, NULL),
(439, NULL, NULL),
(440, NULL, NULL),
(441, NULL, NULL),
(442, NULL, NULL),
(443, NULL, NULL),
(444, NULL, NULL),
(445, NULL, NULL),
(446, NULL, NULL),
(447, NULL, NULL),
(448, NULL, NULL),
(449, NULL, NULL),
(450, NULL, NULL),
(451, NULL, NULL),
(452, NULL, NULL),
(453, NULL, NULL),
(454, NULL, NULL),
(455, NULL, NULL),
(456, NULL, NULL),
(457, NULL, NULL),
(458, NULL, NULL),
(459, NULL, NULL),
(460, NULL, NULL),
(461, NULL, NULL),
(462, NULL, NULL),
(463, NULL, NULL),
(464, NULL, NULL),
(465, NULL, NULL),
(466, NULL, NULL),
(467, NULL, NULL),
(468, NULL, NULL),
(469, NULL, NULL),
(470, NULL, NULL),
(471, NULL, NULL),
(472, NULL, NULL),
(473, NULL, NULL),
(474, NULL, NULL),
(475, NULL, NULL),
(476, NULL, NULL),
(477, NULL, NULL),
(478, NULL, NULL),
(479, NULL, NULL),
(480, NULL, NULL),
(481, NULL, NULL),
(482, NULL, NULL),
(483, NULL, NULL),
(484, NULL, NULL),
(485, NULL, NULL),
(486, NULL, NULL),
(487, NULL, NULL),
(488, NULL, NULL),
(489, NULL, NULL),
(490, NULL, NULL),
(491, NULL, NULL),
(492, NULL, NULL),
(493, NULL, NULL),
(494, NULL, NULL),
(495, NULL, NULL),
(496, NULL, NULL),
(497, NULL, NULL),
(498, NULL, NULL),
(499, NULL, NULL),
(500, NULL, NULL),
(501, NULL, NULL),
(502, NULL, NULL),
(503, NULL, NULL),
(504, NULL, NULL),
(505, NULL, NULL),
(506, NULL, NULL),
(507, NULL, NULL),
(508, NULL, NULL),
(509, NULL, NULL),
(510, NULL, NULL),
(511, NULL, NULL),
(512, NULL, NULL),
(513, NULL, NULL),
(514, NULL, NULL),
(515, NULL, NULL),
(516, NULL, NULL),
(517, NULL, NULL),
(519, NULL, NULL),
(520, NULL, NULL),
(521, NULL, NULL),
(522, NULL, NULL),
(523, NULL, NULL),
(524, NULL, NULL),
(525, NULL, NULL),
(526, NULL, NULL),
(527, NULL, NULL),
(528, NULL, NULL),
(529, NULL, NULL),
(530, NULL, NULL),
(531, NULL, NULL),
(532, NULL, NULL),
(533, NULL, NULL),
(534, NULL, NULL),
(535, NULL, NULL),
(536, NULL, NULL),
(537, NULL, NULL),
(538, NULL, NULL),
(539, NULL, NULL),
(540, NULL, NULL),
(541, NULL, NULL),
(542, NULL, NULL),
(543, NULL, NULL),
(544, NULL, NULL),
(545, NULL, NULL),
(546, NULL, NULL),
(547, NULL, NULL),
(548, NULL, NULL),
(549, NULL, NULL),
(550, NULL, NULL),
(551, NULL, NULL),
(552, NULL, NULL),
(553, NULL, NULL),
(554, NULL, NULL),
(555, NULL, NULL),
(556, NULL, NULL),
(576, NULL, NULL),
(578, NULL, NULL),
(579, NULL, NULL),
(580, NULL, NULL),
(581, NULL, NULL),
(582, NULL, NULL),
(583, NULL, NULL),
(584, NULL, NULL),
(585, NULL, NULL),
(586, NULL, NULL),
(587, NULL, NULL),
(588, NULL, NULL),
(589, NULL, NULL),
(590, NULL, NULL),
(591, NULL, NULL),
(592, NULL, NULL),
(593, NULL, NULL),
(594, NULL, NULL),
(595, NULL, NULL),
(596, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `wex_id` int(11) NOT NULL,
  `wex_dateS` date DEFAULT NULL,
  `wex_dateE` date DEFAULT NULL,
  `wex_organ` varchar(45) DEFAULT NULL,
  `wex_detail` text,
  `student_info_s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`wex_id`, `wex_dateS`, `wex_dateE`, `wex_organ`, `wex_detail`, `student_info_s_id`) VALUES
(1, NULL, NULL, NULL, NULL, 1798),
(2, NULL, NULL, NULL, NULL, 1799),
(3, NULL, NULL, NULL, NULL, 1800),
(4, NULL, NULL, NULL, NULL, 1801),
(5, NULL, NULL, NULL, NULL, 1802),
(6, NULL, NULL, NULL, NULL, 1803),
(7, NULL, NULL, NULL, NULL, 1804),
(8, NULL, NULL, NULL, NULL, 1805),
(9, NULL, NULL, NULL, NULL, 1806),
(10, NULL, NULL, NULL, NULL, 1814),
(11, NULL, NULL, NULL, NULL, 1815),
(12, NULL, NULL, NULL, NULL, 1816),
(13, NULL, NULL, NULL, NULL, 1817),
(14, NULL, NULL, NULL, NULL, 1818),
(15, '2017-08-30', '2017-08-09', 'asdfasdfsaf', 'asfasdfasdfadsfadsf', 1819),
(16, '2017-08-31', '2017-09-24', 'ASDcsdczdsc', 'zsdvzdsvzsdvzsvd', 1820),
(17, '2017-08-01', '2017-08-30', NULL, NULL, 1821),
(18, '2017-08-01', '2017-08-29', NULL, NULL, 1822),
(19, '2017-08-01', '2017-08-29', NULL, NULL, 1823),
(20, '2017-08-01', '2017-08-29', NULL, NULL, 1824),
(21, '2017-08-14', '2017-08-29', NULL, NULL, 1825),
(22, NULL, NULL, NULL, NULL, 1826),
(23, NULL, NULL, NULL, NULL, 1827),
(24, NULL, NULL, NULL, NULL, 1828),
(25, NULL, NULL, NULL, NULL, 1829),
(29, NULL, NULL, NULL, NULL, 1830),
(30, NULL, NULL, NULL, NULL, 1831),
(31, '2017-08-08', '2017-08-10', 'wdchssss', 'asistant engchssss', 1832),
(33, NULL, NULL, NULL, NULL, 1833);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `s_id_idx` (`s_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bnk_id`),
  ADD UNIQUE KEY `bnk_name` (`bnk_name`);

--
-- Indexes for table `bank_acc_info`
--
ALTER TABLE `bank_acc_info`
  ADD PRIMARY KEY (`bac_id`),
  ADD KEY `fkbac_trainee_id` (`trainee_id`),
  ADD KEY `fk_bnk_has_id` (`bnk_has_id`);

--
-- Indexes for table `bank_has_banch`
--
ALTER TABLE `bank_has_banch`
  ADD PRIMARY KEY (`bnk_has_bch_id`),
  ADD KEY `fkbb_bnk_id` (`bnk_id`),
  ADD KEY `fkbb_bch_id` (`bch_id`);

--
-- Indexes for table `bnk_banch`
--
ALTER TABLE `bnk_banch`
  ADD PRIMARY KEY (`bch_id`),
  ADD KEY `fkbch_provice_id` (`province_id`);

--
-- Indexes for table `building_info`
--
ALTER TABLE `building_info`
  ADD PRIMARY KEY (`bldg_id`),
  ADD KEY `fk_plant_id` (`plant_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `chanel`
--
ALTER TABLE `chanel`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_name_UNIQUE` (`c_name`);

--
-- Indexes for table `characteristic`
--
ALTER TABLE `characteristic`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `country_list`
--
ALTER TABLE `country_list`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name_UNIQUE` (`country_name`);

--
-- Indexes for table `degree_info`
--
ALTER TABLE `degree_info`
  ADD PRIMARY KEY (`degree_id`);

--
-- Indexes for table `department_info`
--
ALTER TABLE `department_info`
  ADD PRIMARY KEY (`dep_id`),
  ADD KEY `bldg_id_idx` (`bldg_id`);

--
-- Indexes for table `education_blackgrounf`
--
ALTER TABLE `education_blackgrounf`
  ADD PRIMARY KEY (`bg_id`),
  ADD KEY `fk_education_blackgrounf_student_info1_idx` (`student_info_s_id`),
  ADD KEY `fk_bg_degree` (`bg_degree`) USING BTREE;

--
-- Indexes for table `education_info`
--
ALTER TABLE `education_info`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `fk_education_info_major_info1_idx` (`major_id`),
  ADD KEY `fk_education_info_degree_info1_idx` (`degree_id`),
  ADD KEY `fk_education_info_student_info1_idx` (`s_id`),
  ADD KEY `fkegu_inst` (`ins_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`eva_id`),
  ADD KEY `fkeva_stu_id` (`stu_id`),
  ADD KEY `fkeva_ch_id` (`eva_leonard`);

--
-- Indexes for table `extracurricular_act`
--
ALTER TABLE `extracurricular_act`
  ADD PRIMARY KEY (`exact_id`),
  ADD KEY `fk_extracurricular_act_student_info1_idx` (`student_info_s_id`);

--
-- Indexes for table `hobby_info`
--
ALTER TABLE `hobby_info`
  ADD PRIMARY KEY (`hobby_id`),
  ADD KEY `s_id_idx` (`s_id`);

--
-- Indexes for table `host_university`
--
ALTER TABLE `host_university`
  ADD PRIMARY KEY (`host_id`),
  ADD UNIQUE KEY `host_name_UNIQUE` (`host_name`);

--
-- Indexes for table `immigration_office`
--
ALTER TABLE `immigration_office`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`ins_id`),
  ADD KEY `fkins_type` (`itp_id`),
  ADD KEY `fkins_country` (`country_id`);

--
-- Indexes for table `institute_type`
--
ALTER TABLE `institute_type`
  ADD PRIMARY KEY (`itp_id`);

--
-- Indexes for table `interview_info`
--
ALTER TABLE `interview_info`
  ADD PRIMARY KEY (`interview_id`),
  ADD KEY `application_id_idx` (`applicantion_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`lg_id`);

--
-- Indexes for table `language_info`
--
ALTER TABLE `language_info`
  ADD PRIMARY KEY (`lg_info_id`),
  ADD KEY `s_id_idx` (`s_id`),
  ADD KEY `fklg_lg` (`lg_id`),
  ADD KEY `fklg_lv` (`lv_id`);

--
-- Indexes for table `language_lv`
--
ALTER TABLE `language_lv`
  ADD PRIMARY KEY (`lv_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `major_info`
--
ALTER TABLE `major_info`
  ADD PRIMARY KEY (`major_id`),
  ADD UNIQUE KEY `major_name` (`major_name`);

--
-- Indexes for table `non_thai`
--
ALTER TABLE `non_thai`
  ADD PRIMARY KEY (`nthai_id`),
  ADD KEY `s_idx` (`s_id`),
  ADD KEY `c_idx` (`c_id`),
  ADD KEY `host_idx` (`host_id`);

--
-- Indexes for table `other_doc`
--
ALTER TABLE `other_doc`
  ADD PRIMARY KEY (`idother_id`),
  ADD KEY `fk_other_doc_application1_idx` (`application_application_id`);

--
-- Indexes for table `plant_info`
--
ALTER TABLE `plant_info`
  ADD PRIMARY KEY (`plant_id`),
  ADD KEY `country_id_idx` (`country_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`resume_id`),
  ADD KEY `appilication_id_idx` (`application_id`);

--
-- Indexes for table `roi_project`
--
ALTER TABLE `roi_project`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `fk_rid_tp_id` (`tp_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `fk_bldg_id` (`bldg_id`);

--
-- Indexes for table `schedule_email_act`
--
ALTER TABLE `schedule_email_act`
  ADD PRIMARY KEY (`sch_email_id`),
  ADD KEY `email_id_idx` (`email_id`),
  ADD KEY `fk_tr_ac_id_sch_email` (`activity_id`),
  ADD KEY `fk_s_sts_id_sch_email` (`status_id`);

--
-- Indexes for table `schedule_email_pre`
--
ALTER TABLE `schedule_email_pre`
  ADD PRIMARY KEY (`sch_pre_email_id`),
  ADD KEY `present_id` (`present_id`),
  ADD KEY `pre_email_id` (`pre_email_id`),
  ADD KEY `pre_trainee_id` (`pre_trainee_id`);

--
-- Indexes for table `sent_email`
--
ALTER TABLE `sent_email`
  ADD PRIMARY KEY (`st_email_id`),
  ADD KEY `s_id_idx` (`s_id`),
  ADD KEY `email_id_idx` (`email_id`);

--
-- Indexes for table `student_address`
--
ALTER TABLE `student_address`
  ADD PRIMARY KEY (`address_Id`),
  ADD KEY `s_id_idx` (`s_id`),
  ADD KEY `country_id_idx` (`country_id`);

--
-- Indexes for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `s_id_idx` (`scd_s_id`);

--
-- Indexes for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  ADD PRIMARY KEY (`emc_id`),
  ADD KEY `fk_student_emergency_contact_student_contact_details1_idx` (`contact_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `s_type_id_idx` (`type_id`),
  ADD KEY `s_origin_id_idx` (`origin_id`),
  ADD KEY `s_ref_id_idx` (`ref_id`),
  ADD KEY `fk_student_info_student_national_id1_idx` (`national_id`),
  ADD KEY `fk_student_info_title1_idx` (`title_title_id`),
  ADD KEY `s_status_id_idx` (`status_id`),
  ADD KEY `s_cate_id_idx` (`cate_id`);

--
-- Indexes for table `student_national_info`
--
ALTER TABLE `student_national_info`
  ADD PRIMARY KEY (`national_id`);

--
-- Indexes for table `student_origin`
--
ALTER TABLE `student_origin`
  ADD PRIMARY KEY (`origin_id`);

--
-- Indexes for table `student_reference_info`
--
ALTER TABLE `student_reference_info`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `student_relationship`
--
ALTER TABLE `student_relationship`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `s_id_idx` (`s_id`);

--
-- Indexes for table `student_status`
--
ALTER TABLE `student_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `student_type`
--
ALTER TABLE `student_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `supervisor_info`
--
ALTER TABLE `supervisor_info`
  ADD PRIMARY KEY (`spv_id`),
  ADD KEY `fkspv_dept` (`spv_dept`),
  ADD KEY `fkspv_bdg` (`spv_bdg`);

--
-- Indexes for table `supervisor_info_has_student_info`
--
ALTER TABLE `supervisor_info_has_student_info`
  ADD PRIMARY KEY (`student_info_s_id`) USING BTREE,
  ADD KEY `fk_supervisor_info_has_student_info_student_info1_idx` (`student_info_s_id`),
  ADD KEY `fk_supervisor_info_has_student_info_supervisor_info1_idx` (`supervisor_info_spv_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `trainee_account`
--
ALTER TABLE `trainee_account`
  ADD PRIMARY KEY (`trainee_acc_id`);

--
-- Indexes for table `trainee_activity`
--
ALTER TABLE `trainee_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `bldg_id_idx` (`bldg_id`);

--
-- Indexes for table `trainee_category`
--
ALTER TABLE `trainee_category`
  ADD PRIMARY KEY (`tc_id`),
  ADD KEY `fktrainee_id` (`trainee_id`),
  ADD KEY `fkcate_id` (`cate_id`);

--
-- Indexes for table `trainee_duration`
--
ALTER TABLE `trainee_duration`
  ADD PRIMARY KEY (`trainee_duration_id`),
  ADD KEY `s_tr_id_idx` (`trainee_id`);

--
-- Indexes for table `trainee_has_project`
--
ALTER TABLE `trainee_has_project`
  ADD PRIMARY KEY (`tp_id`),
  ADD KEY `fkthp_tnc` (`trainee_id`),
  ADD KEY `fkthp_pjc` (`project_id`);

--
-- Indexes for table `trainee_info`
--
ALTER TABLE `trainee_info`
  ADD PRIMARY KEY (`trainee_id`),
  ADD KEY `s_id_idx` (`s_id`),
  ADD KEY `s_job_id_idx` (`job_id`),
  ADD KEY `dep_id_idx` (`dep_id`),
  ADD KEY `s_trps_id_idx` (`transportation_id`),
  ADD KEY `plant_id_idx` (`plant_id`),
  ADD KEY `location_id_idx` (`location_id`),
  ADD KEY `fktrn_trainee_acc_id` (`tac_acc_id`),
  ADD KEY `fktni_bdg` (`tni_bdg`);

--
-- Indexes for table `trainee_info_has_trainee_activity`
--
ALTER TABLE `trainee_info_has_trainee_activity`
  ADD PRIMARY KEY (`assign_act_id`),
  ADD KEY `fk_tr_act_id` (`trainee_activity_id`),
  ADD KEY `fk_s_sts_id` (`student_status_id`);

--
-- Indexes for table `trainee_info_has_trainee_presentation`
--
ALTER TABLE `trainee_info_has_trainee_presentation`
  ADD PRIMARY KEY (`trainee_presentation_id`),
  ADD KEY `trainee_id` (`trainee_id`),
  ADD KEY `pre_trainee_id` (`tr_pre_id`);

--
-- Indexes for table `trainee_info_has_training_course`
--
ALTER TABLE `trainee_info_has_training_course`
  ADD KEY `fk_trainee_info_has_training_course_training_course1_idx` (`training_course_course_id`),
  ADD KEY `fkthc_trainee_id` (`training_course_trainee_id`);

--
-- Indexes for table `trainee_job`
--
ALTER TABLE `trainee_job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `trainee_presentation`
--
ALTER TABLE `trainee_presentation`
  ADD PRIMARY KEY (`presentation_id`),
  ADD KEY `fkpre_room_id` (`presentation_id`),
  ADD KEY `fk_room` (`room_id`);

--
-- Indexes for table `trainee_project`
--
ALTER TABLE `trainee_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `trainee_transportation`
--
ALTER TABLE `trainee_transportation`
  ADD PRIMARY KEY (`transportation_id`);

--
-- Indexes for table `trainee_visa`
--
ALTER TABLE `trainee_visa`
  ADD PRIMARY KEY (`visa_id`),
  ADD KEY `s_tr_id_idx` (`trainee_id`),
  ADD KEY `img_id_idx` (`img_id`);

--
-- Indexes for table `training_course`
--
ALTER TABLE `training_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `bldg_id_idx` (`bldg_id`),
  ADD KEY `fkcou_room` (`course_room`);

--
-- Indexes for table `transcript`
--
ALTER TABLE `transcript`
  ADD PRIMARY KEY (`transcript_id`),
  ADD KEY `application_id_idx` (`application_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `application_id_idx` (`application_id`);

--
-- Indexes for table `visa`
--
ALTER TABLE `visa`
  ADD PRIMARY KEY (`visa_id`),
  ADD KEY `fk_visa_application1_idx` (`application_application_id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`wex_id`),
  ADD KEY `fk_work_experience_student_info1_idx` (`student_info_s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bnk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bank_acc_info`
--
ALTER TABLE `bank_acc_info`
  MODIFY `bac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `bank_has_banch`
--
ALTER TABLE `bank_has_banch`
  MODIFY `bnk_has_bch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `bnk_banch`
--
ALTER TABLE `bnk_banch`
  MODIFY `bch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `building_info`
--
ALTER TABLE `building_info`
  MODIFY `bldg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `chanel`
--
ALTER TABLE `chanel`
  MODIFY `c_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `characteristic`
--
ALTER TABLE `characteristic`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `country_list`
--
ALTER TABLE `country_list`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `degree_info`
--
ALTER TABLE `degree_info`
  MODIFY `degree_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `department_info`
--
ALTER TABLE `department_info`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `education_blackgrounf`
--
ALTER TABLE `education_blackgrounf`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `education_info`
--
ALTER TABLE `education_info`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `eva_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `extracurricular_act`
--
ALTER TABLE `extracurricular_act`
  MODIFY `exact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `hobby_info`
--
ALTER TABLE `hobby_info`
  MODIFY `hobby_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `immigration_office`
--
ALTER TABLE `immigration_office`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `ins_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `institute_type`
--
ALTER TABLE `institute_type`
  MODIFY `itp_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `lg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `language_info`
--
ALTER TABLE `language_info`
  MODIFY `lg_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `language_lv`
--
ALTER TABLE `language_lv`
  MODIFY `lv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `login_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `major_info`
--
ALTER TABLE `major_info`
  MODIFY `major_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `non_thai`
--
ALTER TABLE `non_thai`
  MODIFY `nthai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `other_doc`
--
ALTER TABLE `other_doc`
  MODIFY `idother_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;
--
-- AUTO_INCREMENT for table `plant_info`
--
ALTER TABLE `plant_info`
  MODIFY `plant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `resume_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;
--
-- AUTO_INCREMENT for table `roi_project`
--
ALTER TABLE `roi_project`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schedule_email_act`
--
ALTER TABLE `schedule_email_act`
  MODIFY `sch_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `schedule_email_pre`
--
ALTER TABLE `schedule_email_pre`
  MODIFY `sch_pre_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sent_email`
--
ALTER TABLE `sent_email`
  MODIFY `st_email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_address`
--
ALTER TABLE `student_address`
  MODIFY `address_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  MODIFY `emc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1279;
--
-- AUTO_INCREMENT for table `student_origin`
--
ALTER TABLE `student_origin`
  MODIFY `origin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student_reference_info`
--
ALTER TABLE `student_reference_info`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_relationship`
--
ALTER TABLE `student_relationship`
  MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `student_status`
--
ALTER TABLE `student_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_type`
--
ALTER TABLE `student_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supervisor_info`
--
ALTER TABLE `supervisor_info`
  MODIFY `spv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainee_account`
--
ALTER TABLE `trainee_account`
  MODIFY `trainee_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `trainee_activity`
--
ALTER TABLE `trainee_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trainee_category`
--
ALTER TABLE `trainee_category`
  MODIFY `tc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `trainee_duration`
--
ALTER TABLE `trainee_duration`
  MODIFY `trainee_duration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainee_has_project`
--
ALTER TABLE `trainee_has_project`
  MODIFY `tp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `trainee_info`
--
ALTER TABLE `trainee_info`
  MODIFY `trainee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT for table `trainee_info_has_trainee_activity`
--
ALTER TABLE `trainee_info_has_trainee_activity`
  MODIFY `assign_act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trainee_info_has_trainee_presentation`
--
ALTER TABLE `trainee_info_has_trainee_presentation`
  MODIFY `trainee_presentation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trainee_job`
--
ALTER TABLE `trainee_job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trainee_presentation`
--
ALTER TABLE `trainee_presentation`
  MODIFY `presentation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trainee_project`
--
ALTER TABLE `trainee_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `trainee_transportation`
--
ALTER TABLE `trainee_transportation`
  MODIFY `transportation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `trainee_visa`
--
ALTER TABLE `trainee_visa`
  MODIFY `visa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `training_course`
--
ALTER TABLE `training_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transcript`
--
ALTER TABLE `transcript`
  MODIFY `transcript_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;
--
-- AUTO_INCREMENT for table `visa`
--
ALTER TABLE `visa`
  MODIFY `visa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;
--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `wex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fkapp_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bank_acc_info`
--
ALTER TABLE `bank_acc_info`
  ADD CONSTRAINT `fk_bnk_has_id` FOREIGN KEY (`bnk_has_id`) REFERENCES `bank_has_banch` (`bnk_has_bch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkbac_trainee_id` FOREIGN KEY (`trainee_id`) REFERENCES `trainee_info` (`trainee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bank_has_banch`
--
ALTER TABLE `bank_has_banch`
  ADD CONSTRAINT `fkbb_bch_id` FOREIGN KEY (`bch_id`) REFERENCES `bnk_banch` (`bch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkbb_bnk_id` FOREIGN KEY (`bnk_id`) REFERENCES `bank` (`bnk_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bnk_banch`
--
ALTER TABLE `bnk_banch`
  ADD CONSTRAINT `fkbch_provice_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `building_info`
--
ALTER TABLE `building_info`
  ADD CONSTRAINT `fkbui_plant_id` FOREIGN KEY (`plant_id`) REFERENCES `plant_info` (`plant_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department_info`
--
ALTER TABLE `department_info`
  ADD CONSTRAINT `fkdep_bldg_id` FOREIGN KEY (`bldg_id`) REFERENCES `building_info` (`bldg_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education_blackgrounf`
--
ALTER TABLE `education_blackgrounf`
  ADD CONSTRAINT `fk_education_blackgrounf_student_info1` FOREIGN KEY (`student_info_s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rrrrr` FOREIGN KEY (`bg_degree`) REFERENCES `degree_info` (`degree_id`);

--
-- Constraints for table `education_info`
--
ALTER TABLE `education_info`
  ADD CONSTRAINT `fk_education_info_degree_info1_idx` FOREIGN KEY (`degree_id`) REFERENCES `degree_info` (`degree_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_education_info_major_info1_idx` FOREIGN KEY (`major_id`) REFERENCES `major_info` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_education_info_student_info1_idx` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkegu_inst` FOREIGN KEY (`ins_id`) REFERENCES `institute` (`ins_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `fkeva_ch_id` FOREIGN KEY (`eva_leonard`) REFERENCES `characteristic` (`ch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkeva_stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `institute`
--
ALTER TABLE `institute`
  ADD CONSTRAINT `fkins_country` FOREIGN KEY (`country_id`) REFERENCES `country_list` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkins_type` FOREIGN KEY (`itp_id`) REFERENCES `institute_type` (`itp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `non_thai`
--
ALTER TABLE `non_thai`
  ADD CONSTRAINT `c_idx` FOREIGN KEY (`c_id`) REFERENCES `chanel` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `host_idx` FOREIGN KEY (`host_id`) REFERENCES `host_university` (`host_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_idx` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roi_project`
--
ALTER TABLE `roi_project`
  ADD CONSTRAINT `fk_rid_tp_id` FOREIGN KEY (`tp_id`) REFERENCES `trainee_has_project` (`tp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_info`
--
ALTER TABLE `student_info`
  ADD CONSTRAINT `fk_student_info_student_national_id1_idx` FOREIGN KEY (`national_id`) REFERENCES `student_national_info` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student_info_title1_idx` FOREIGN KEY (`title_title_id`) REFERENCES `title` (`title_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_cate_id_idx` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_origin_id_idx` FOREIGN KEY (`origin_id`) REFERENCES `student_origin` (`origin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_ref_id_idx` FOREIGN KEY (`ref_id`) REFERENCES `student_reference_info` (`ref_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_status_id_idx` FOREIGN KEY (`status_id`) REFERENCES `student_status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_type_id_idx` FOREIGN KEY (`type_id`) REFERENCES `student_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_category`
--
ALTER TABLE `trainee_category`
  ADD CONSTRAINT `fkcate_id` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrainee_id` FOREIGN KEY (`trainee_id`) REFERENCES `trainee_info` (`trainee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_has_project`
--
ALTER TABLE `trainee_has_project`
  ADD CONSTRAINT `fkthp_pjc` FOREIGN KEY (`project_id`) REFERENCES `trainee_project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkthp_tnc` FOREIGN KEY (`trainee_id`) REFERENCES `trainee_info` (`trainee_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
