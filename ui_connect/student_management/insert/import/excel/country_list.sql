-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2017 at 03:55 AM
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
(1, 'Afghanistan'),
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
(54, 'East Timor (see Timor-Leste)'),
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
(184, 'Thailand'),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_list`
--
ALTER TABLE `country_list`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name_UNIQUE` (`country_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_list`
--
ALTER TABLE `country_list`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
