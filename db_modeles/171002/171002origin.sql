-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2017 at 03:17 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `app_pic` varchar(50) DEFAULT NULL,
  `application_dateS` date DEFAULT NULL,
  `application_dateE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bank` (
  `bnk_id` int(11) NOT NULL,
  `bnk_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bank_acc_info` (
  `bac_id` int(11) NOT NULL,
  `bac_no` int(11) UNSIGNED DEFAULT NULL,
  `bac_name` varchar(50) DEFAULT NULL,
  `trainee_id` int(11) DEFAULT NULL,
  `bnk_has_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bank_has_banch` (
  `bnk_has_bch_id` int(11) NOT NULL,
  `bnk_id` int(11) DEFAULT NULL,
  `bch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `bnk_banch` (
  `bch_id` int(11) NOT NULL,
  `bch_name` varchar(50) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(7, 'N1', NULL),
(8, '', NULL);

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

CREATE TABLE `degree_info` (
  `degree_id` int(11) NOT NULL,
  `degree_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degree_info`
--

INSERT INTO `degree_info` (`degree_id`, `degree_name`) VALUES
(1, 'Doctor Degree (Inter)'),
(2, 'Master Degree'),
(3, 'Bachelor Degree'),
(4, 'High Vocational Certificate'),
(5, 'Vocational Certificate'),
(6, 'Senior High School');

-- --------------------------------------------------------

--
-- Table structure for table `department_info`
--

CREATE TABLE `department_info` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(100) NOT NULL,
  `cost_centre` varchar(10) NOT NULL,
  `dep_ext` int(11) DEFAULT NULL,
  `bldg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `education_info` (
  `education_id` int(11) NOT NULL,
  `edu_institute` int(11) DEFAULT NULL,
  `intitute_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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


CREATE TABLE `extracurricular_act` (
  `exact_id` int(11) NOT NULL,
  `ext_dateS` date DEFAULT NULL,
  `ext_dateE` date DEFAULT NULL,
  `exact_name` varchar(45) DEFAULT NULL,
  `exact_detail` text,
  `student_info_s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `hobby_info` (
  `hobby_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `hobby_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `ins_type` int(11) DEFAULT NULL,
  `ins_country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
(1, 'HDD'),
(2, 'MHO'),
(3, 'HSA'),
(4, 'HDD MFG'),
(5, 'HGA'),
(6, 'MHO'),
(7, 'THO'),
(8, '');
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


CREATE TABLE `other_doc` (
  `idother_id` int(11) NOT NULL,
  `other_file` varchar(35) DEFAULT NULL,
  `application_application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `plant_info` (
  `plant_id` int(11) NOT NULL,
  `plant_name` varchar(50) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plant_info`
--

INSERT INTO `plant_info` (`plant_id`, `plant_name`, `country_id`) VALUES
(1, 'Phra Nakhon Si Ayutthaya', 1),
(2, 'Pathum Thani', 1),
(3, 'Prachin Buri', 1),
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


CREATE TABLE `student_contact_details` (
  `contact_id` int(11) NOT NULL,
  `scd_s_id` int(11) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `email_adress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `student_emergency_contact` (
  `emc_id` int(11) NOT NULL,
  `emc_fname` varchar(20) DEFAULT NULL,
  `emc_lname` varchar(20) DEFAULT NULL,
  `emc_relation` varchar(50) DEFAULT NULL,
  `emc_contact` varchar(20) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `student_info` (
  `s_id` int(11) NOT NULL,
  `s_fname` varchar(20) NOT NULL,
  `s_lname` varchar(20) NOT NULL,
  `thai_fname` varchar(20) DEFAULT NULL,
  `thai_lname` varchar(20) DEFAULT NULL,
  `s_nickname` varchar(15) DEFAULT NULL,
  `s_dob` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `citizen_id` varchar(13) DEFAULT NULL,
  `remark` text,
  `origin_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `national_id` int(11) DEFAULT NULL,
  `title_title_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `stu_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, 'Reject'),
(4, 'Trainee'),
(5, 'End Trainee');

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


CREATE TABLE `supervisor_info_has_student_info` (
  `supervisor_info_spv_id` int(11) DEFAULT NULL,
  `student_info_s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `project_id` int(11) DEFAULT NULL,
  `trainee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


CREATE TABLE `trainee_transportation` (
  `transportation_id` int(11) NOT NULL,
  `driver_fname` varchar(20) DEFAULT NULL,
  `driver_lname` varchar(20) DEFAULT NULL,
  `vehicle_no` varchar(5) DEFAULT NULL,
  `driver_mobile` varchar(12) DEFAULT NULL,
  `transportation_line` varchar(50) DEFAULT NULL,
  `transportation_point` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


CREATE TABLE `transcript` (
  `transcript_id` int(11) NOT NULL,
  `transcript_file` varchar(35) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_file` varchar(35) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `visa` (
  `visa_id` int(11) NOT NULL,
  `visa_file` varchar(35) DEFAULT NULL,
  `application_application_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `work_experience` (
  `wex_id` int(11) NOT NULL,
  `wex_dateS` date DEFAULT NULL,
  `wex_dateE` date DEFAULT NULL,
  `wex_organ` varchar(45) DEFAULT NULL,
  `wex_detail` text,
  `student_info_s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD KEY `fkegu_inst` (`edu_institute`);

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
-- Indexes for table `immigration_office`
--
ALTER TABLE `immigration_office`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`ins_id`),
  ADD KEY `fkins_type` (`ins_type`),
  ADD KEY `fkins_country` (`ins_country`);

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
  ADD KEY `s_status_id_idx` (`status_id`);

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
-- Indexes for table `trainee_duration`
--
ALTER TABLE `trainee_duration`
  ADD PRIMARY KEY (`trainee_duration_id`),
  ADD KEY `s_tr_id_idx` (`trainee_id`);

--
-- Indexes for table `trainee_has_project`
--
ALTER TABLE `trainee_has_project`
  ADD PRIMARY KEY (`trainee_id`),
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
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bnk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bank_acc_info`
--
ALTER TABLE `bank_acc_info`
  MODIFY `bac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `bank_has_banch`
--
ALTER TABLE `bank_has_banch`
  MODIFY `bnk_has_bch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `bnk_banch`
--
ALTER TABLE `bnk_banch`
  MODIFY `bch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `building_info`
--
ALTER TABLE `building_info`
  MODIFY `bldg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `characteristic`
--
ALTER TABLE `characteristic`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `country_list`
--
ALTER TABLE `country_list`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `degree_info`
--
ALTER TABLE `degree_info`
  MODIFY `degree_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_info`
--
ALTER TABLE `department_info`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `education_blackgrounf`
--
ALTER TABLE `education_blackgrounf`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `education_info`
--
ALTER TABLE `education_info`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `eva_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `extracurricular_act`
--
ALTER TABLE `extracurricular_act`
  MODIFY `exact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `hobby_info`
--
ALTER TABLE `hobby_info`
  MODIFY `hobby_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `immigration_office`
--
ALTER TABLE `immigration_office`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `ins_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  MODIFY `lg_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  MODIFY `major_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `other_doc`
--
ALTER TABLE `other_doc`
  MODIFY `idother_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  MODIFY `resume_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  MODIFY `address_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  MODIFY `emc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `student_status`
--
ALTER TABLE `student_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_type`
--
ALTER TABLE `student_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supervisor_info`
--
ALTER TABLE `supervisor_info`
  MODIFY `spv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainee_account`
--
ALTER TABLE `trainee_account`
  MODIFY `trainee_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `trainee_activity`
--
ALTER TABLE `trainee_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trainee_duration`
--
ALTER TABLE `trainee_duration`
  MODIFY `trainee_duration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainee_info`
--
ALTER TABLE `trainee_info`
  MODIFY `trainee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `trainee_transportation`
--
ALTER TABLE `trainee_transportation`
  MODIFY `transportation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `trainee_visa`
--
ALTER TABLE `trainee_visa`
  MODIFY `visa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `training_course`
--
ALTER TABLE `training_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `transcript`
--
ALTER TABLE `transcript`
  MODIFY `transcript_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `visa`
--
ALTER TABLE `visa`
  MODIFY `visa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `wex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
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
  ADD CONSTRAINT `fkbac_trainee_id` FOREIGN KEY (`trainee_id`) REFERENCES `trainee_info` (`trainee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkbhb` FOREIGN KEY (`bnk_has_id`) REFERENCES `bank_has_banch` (`bnk_has_bch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `fk_education_info_degree_info1` FOREIGN KEY (`degree_id`) REFERENCES `degree_info` (`degree_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_education_info_major_info1` FOREIGN KEY (`major_id`) REFERENCES `major_info` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student_info1` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkegu_inst` FOREIGN KEY (`edu_institute`) REFERENCES `institute` (`ins_id`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `fkeva_ch_id` FOREIGN KEY (`eva_leonard`) REFERENCES `characteristic` (`ch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkeva_stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extracurricular_act`
--
ALTER TABLE `extracurricular_act`
  ADD CONSTRAINT `fk_extracurricular_act_student_info1` FOREIGN KEY (`student_info_s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hobby_info`
--
ALTER TABLE `hobby_info`
  ADD CONSTRAINT `fkhob_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `institute`
--
ALTER TABLE `institute`
  ADD CONSTRAINT `fkins_country` FOREIGN KEY (`ins_country`) REFERENCES `country_list` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkins_type` FOREIGN KEY (`ins_type`) REFERENCES `institute_type` (`itp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interview_info`
--
ALTER TABLE `interview_info`
  ADD CONSTRAINT `fkinv_application_id` FOREIGN KEY (`applicantion_id`) REFERENCES `application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `language_info`
--
ALTER TABLE `language_info`
  ADD CONSTRAINT `fklg_info_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fklg_lg` FOREIGN KEY (`lg_id`) REFERENCES `language` (`lg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fklg_lv` FOREIGN KEY (`lv_id`) REFERENCES `language_lv` (`lv_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `other_doc`
--
ALTER TABLE `other_doc`
  ADD CONSTRAINT `fk_other_doc_application1` FOREIGN KEY (`application_application_id`) REFERENCES `application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plant_info`
--
ALTER TABLE `plant_info`
  ADD CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `country_list` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `fkres_appilication_id` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fkrm_room_id` FOREIGN KEY (`bldg_id`) REFERENCES `building_info` (`bldg_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule_email_act`
--
ALTER TABLE `schedule_email_act`
  ADD CONSTRAINT `fk_s_sts_id_sch_email` FOREIGN KEY (`status_id`) REFERENCES `student_status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tr_ac_id_sch_email` FOREIGN KEY (`activity_id`) REFERENCES `trainee_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tr_email_id_email` FOREIGN KEY (`email_id`) REFERENCES `email_info` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule_email_pre`
--
ALTER TABLE `schedule_email_pre`
  ADD CONSTRAINT `tr_pre_sch_fk_m1` FOREIGN KEY (`present_id`) REFERENCES `trainee_presentation` (`presentation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tr_pre_sch_fk_m3` FOREIGN KEY (`pre_email_id`) REFERENCES `email_info` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sent_email`
--
ALTER TABLE `sent_email`
  ADD CONSTRAINT `fksem_email_id` FOREIGN KEY (`email_id`) REFERENCES `email_info` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fksem_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_address`
--
ALTER TABLE `student_address`
  ADD CONSTRAINT `fksad_country_id` FOREIGN KEY (`country_id`) REFERENCES `country_list` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fksad_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  ADD CONSTRAINT `fksco_s_id` FOREIGN KEY (`scd_s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  ADD CONSTRAINT `fk_student_emergency_contact_student_contact_details1` FOREIGN KEY (`contact_id`) REFERENCES `student_contact_details` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_info`
--
ALTER TABLE `student_info`
  ADD CONSTRAINT `fk_student_info_student_national_id1` FOREIGN KEY (`national_id`) REFERENCES `student_national_info` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkstu_origin_id` FOREIGN KEY (`origin_id`) REFERENCES `student_origin` (`origin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkstu_ref_id` FOREIGN KEY (`ref_id`) REFERENCES `student_reference_info` (`ref_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkstu_status_id` FOREIGN KEY (`status_id`) REFERENCES `student_status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkstu_title` FOREIGN KEY (`title_title_id`) REFERENCES `title` (`title_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkstu_type_id` FOREIGN KEY (`type_id`) REFERENCES `student_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_relationship`
--
ALTER TABLE `student_relationship`
  ADD CONSTRAINT `fkrel_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisor_info`
--
ALTER TABLE `supervisor_info`
  ADD CONSTRAINT `fkspv_bdg` FOREIGN KEY (`spv_bdg`) REFERENCES `building_info` (`bldg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkspv_dept` FOREIGN KEY (`spv_dept`) REFERENCES `department_info` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisor_info_has_student_info`
--
ALTER TABLE `supervisor_info_has_student_info`
  ADD CONSTRAINT `fk_supervisor_info_has_student_info_student_info1` FOREIGN KEY (`student_info_s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_supervisor_info_has_student_info_supervisor_info1` FOREIGN KEY (`supervisor_info_spv_id`) REFERENCES `supervisor_info` (`spv_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_has_project`
--
ALTER TABLE `trainee_has_project`
  ADD CONSTRAINT `fkthp_pjc` FOREIGN KEY (`project_id`) REFERENCES `trainee_project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkthp_tni` FOREIGN KEY (`trainee_id`) REFERENCES `trainee_info` (`trainee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_info`
--
ALTER TABLE `trainee_info`
  ADD CONSTRAINT `fktni_bdg` FOREIGN KEY (`tni_bdg`) REFERENCES `building_info` (`bldg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_dep_id` FOREIGN KEY (`dep_id`) REFERENCES `department_info` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_plant_id` FOREIGN KEY (`plant_id`) REFERENCES `plant_info` (`plant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_s_id` FOREIGN KEY (`s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_trainee_acc_id` FOREIGN KEY (`tac_acc_id`) REFERENCES `trainee_account` (`trainee_acc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_trainee_job_id` FOREIGN KEY (`job_id`) REFERENCES `trainee_job` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktrn_transportation_id` FOREIGN KEY (`transportation_id`) REFERENCES `trainee_transportation` (`transportation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_info_has_trainee_activity`
--
ALTER TABLE `trainee_info_has_trainee_activity`
  ADD CONSTRAINT `fk_s_sts_id` FOREIGN KEY (`student_status_id`) REFERENCES `student_status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tr_act_id` FOREIGN KEY (`trainee_activity_id`) REFERENCES `trainee_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_info_has_training_course`
--
ALTER TABLE `trainee_info_has_training_course`
  ADD CONSTRAINT `fk_trainee_info_has_training_course_training_course1` FOREIGN KEY (`training_course_course_id`) REFERENCES `training_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkthc_trainee_id` FOREIGN KEY (`training_course_trainee_id`) REFERENCES `trainee_info` (`trainee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_presentation`
--
ALTER TABLE `trainee_presentation`
  ADD CONSTRAINT `fk_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainee_visa`
--
ALTER TABLE `trainee_visa`
  ADD CONSTRAINT `fkvis_img_id` FOREIGN KEY (`img_id`) REFERENCES `immigration_office` (`img_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `training_course`
--
ALTER TABLE `training_course`
  ADD CONSTRAINT `fkcou_bldg_id` FOREIGN KEY (`bldg_id`) REFERENCES `building_info` (`bldg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkcou_room` FOREIGN KEY (`course_room`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transcript`
--
ALTER TABLE `transcript`
  ADD CONSTRAINT `fktra_application_id` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fkvid_application_id` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visa`
--
ALTER TABLE `visa`
  ADD CONSTRAINT `fk_visa_application1` FOREIGN KEY (`application_application_id`) REFERENCES `application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `fk_work_experience_student_info1` FOREIGN KEY (`student_info_s_id`) REFERENCES `student_info` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
