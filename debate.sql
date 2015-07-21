-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2015 at 01:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `debate`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
`b_id` int(11) NOT NULL,
  `b_authorID` int(11) NOT NULL,
  `b_topic` varchar(100) NOT NULL,
  `b_description` varchar(1000) NOT NULL,
  `b_category` varchar(100) NOT NULL,
  `b_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`b_id`, `b_authorID`, `b_topic`, `b_description`, `b_category`, `b_time`) VALUES
(1, 201201038, 'Is there life after death?', 'Delve into the secrets of after-ife.', 'Philosophy', '2015-04-11 05:16:32'),
(2, 201201002, 'Attendance', 'Should attendance be mandatory?', 'Campus', '2015-04-11 05:16:32'),
(3, 201201015, 'Diplomacy', 'A story of foreign affairs', 'Politics', '2015-04-11 05:19:35'),
(4, 201201052, 'Save earth', 'Raise environmental awareness', 'Environment', '2015-04-11 05:19:35'),
(5, 201201038, 'Grading in DAIICT', 'MY views on the grading policy of DAIICT', 'Campus', '2015-04-11 06:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`c_id` int(11) NOT NULL,
  `c_o_ID` int(11) NOT NULL,
  `c_authorID` int(11) NOT NULL,
  `c_text` varchar(10000) NOT NULL,
  `c_type` tinyint(1) NOT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `c_o_ID`, `c_authorID`, `c_text`, `c_type`, `c_time`) VALUES
(1, 1, 201201011, 'I accept', 0, '2015-04-11 06:01:45'),
(2, 1, 201201052, 'I oppose', 1, '2015-04-11 06:01:45'),
(3, 2, 201201038, 'I accept', 0, '2015-04-11 06:02:56'),
(4, 3, 201201024, 'I oppose', 1, '2015-04-11 06:02:56'),
(5, 4, 201201015, 'I accept', 0, '2015-04-11 06:15:27'),
(6, 4, 201201002, 'I reject', 1, '2015-04-11 06:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`e_id` int(11) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_description` varchar(500) NOT NULL,
  `e_venue` varchar(50) NOT NULL,
  `e_time` varchar(100) NOT NULL,
  `e_date` varchar(100) NOT NULL,
  `e_duration` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `e_name`, `e_description`, `e_venue`, `e_time`, `e_date`, `e_duration`) VALUES
(1, 'Debate Club Session', 'This is an informal session for practising on an abstract topic to help the students to prepare for their GD Rounds for placements.', 'CEP 110', '17:00:00', '2015-03-31', '2 hours'),
(2, 'MUN Session', 'Model United Nations.Each member would be given a country and he has to speak on that.', 'CEP 102', '10:00:00', '2015-04-02', '5hours'),
(3, 'Open Forum Debate', 'It facilitates interaction between students and the faculty on various issues of relevance', 'CEP 102', '18:00:00', '2015-04-10', '2 hours'),
(4, 'Intra GD', 'Its a group discussion competition wherein people can earn cash prizes.', 'CEP 100', '17:30:00', '2015-04-15', '3 hours'),
(5, 'Intra PD', 'Its an intra DAIICT parliamentary debate competition.', 'CEP 110', '18:30:00', '2015-04-20', '2.5 hours');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
`f_id` int(11) NOT NULL,
  `f_authorID` int(11) NOT NULL,
  `f_topic` varchar(100) NOT NULL,
  `f_description` varchar(1000) NOT NULL,
  `f_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`f_id`, `f_authorID`, `f_topic`, `f_description`, `f_time`) VALUES
(1, 201201038, 'Animals should have the right to life and liberty', 'We are all well-aware of the cruelties being met out to animals. Should animals have a torture free life? ', '2015-04-11 05:48:13'),
(2, 201201024, 'Athiesm(Pro) Vs Religon(Con)', 'Reveal your thoughts on the existence of God', '2015-04-11 05:48:13'),
(3, 201201015, 'The world needs more feminism', 'Reveal your opinions and thoughts on the present feminism prevalent in the world and if its needed to be escalated', '2015-04-11 05:54:08'),
(4, 201201038, 'There''s No Such Thing as a "Good Person"', 'Are you of the opinion that every human is selfish?', '2015-04-11 05:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE IF NOT EXISTS `polling` (
`p_id` int(11) NOT NULL,
  `p_authorID` int(11) NOT NULL,
  `p_topic` varchar(100) NOT NULL,
  `p_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `p_y` int(11) NOT NULL DEFAULT '0',
  `p_n` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`p_id`, `p_authorID`, `p_topic`, `p_time`, `p_y`, `p_n`) VALUES
(1, 201201002, 'Is abortion cruel?', '2015-04-11 05:28:04', 2, 1),
(2, 201201015, 'Should the church face legal consequences for refusing to perform a same-sex marriage?', '2015-04-11 05:28:04', 3, 0),
(3, 201201038, 'Do you need a God for objective moral values to exist?', '2015-04-11 06:08:16', 1, 0),
(4, 201201024, 'Should we have a school uniform?', '2015-04-11 06:10:10', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE IF NOT EXISTS `polls` (
  `po_id` int(11) NOT NULL,
  `po_u_ID` int(11) NOT NULL,
  `po_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`po_id`, `po_u_ID`, `po_time`) VALUES
(1, 201201024, '2015-04-11 05:31:09'),
(1, 201201038, '2015-04-11 05:31:09'),
(1, 201201038, '2015-04-11 05:31:53'),
(2, 201201038, '2015-04-11 05:32:14'),
(2, 201201011, '2015-04-11 05:32:14'),
(2, 201201002, '2015-04-11 05:32:28'),
(3, 201201053, '2015-04-11 06:08:55'),
(4, 201201053, '2015-04-11 06:10:45'),
(4, 201201024, '2015-04-11 06:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_emailID` varchar(30) NOT NULL,
  `u_aemailID` varchar(50) NOT NULL,
  `u_password` varchar(20) NOT NULL,
  `u_isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `u_photo` varchar(100) NOT NULL,
  `u_rating` int(11) DEFAULT '0',
  `u_securityQ` varchar(100) DEFAULT NULL,
  `u_securityA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_emailID`, `u_aemailID`, `u_password`, `u_isAdmin`, `u_photo`, `u_rating`, `u_securityQ`, `u_securityA`) VALUES
(201201002, 'Vedant', '201201002@gmail.com', 'vedant@gmail.com', 'password', 1, '', 13, 'my name', 'password'),
(201201008, 'Malveeka', '201201008@daiict.ac.in', 'malveeka@gmail.com', 'password', 1, '', 21, 'my name', 'password'),
(201201011, 'Deepak', '201201011@daiict.ac.in', 'deepak@gmail.com', 'password', 0, '', 3, 'my name', 'password'),
(201201015, 'Vaibhav', '201201015@gmail.com', 'vaibhav@gmail.com', 'password', 1, '', 20, 'my name', 'password'),
(201201023, 'Parita', '201201023@gmail.com', 'parita@gmail.com', 'password', 1, '', 19, 'my name', 'password'),
(201201024, 'Aarsee', '201201024@daiict.ac.in', 'aarsee@gmail.com', 'password', 1, '', 18, 'my name', 'password'),
(201201026, 'Amisha', '201201026@daiict.ac.in', 'amisha@gmail.com', 'password', 1, '', 17, 'my name', 'password'),
(201201038, 'Sayli', '201201038@daiict.ac.in', 'sayli@gmail.com', 'password', 1, '', 16, 'my name', 'password'),
(201201041, 'Dhruv', '201201041@daiict.ac.in', 'dhruv@gmail.com', 'password', 0, '', 8, 'my name', 'password'),
(201201051, 'Saurabh', '201201051@daiict.ac.in', 'saurabh@gmail.com', 'password', 0, '', 7, 'my name', 'password'),
(201201052, 'Rohan', '201201052@daiict.ac.in', 'rohan@gmail.com', 'password', 0, '', 6, 'my name', 'password'),
(201201053, 'Sandeep', '201201053@daiict.ac.in', 'sandeep@daiict.ac.in ', 'password', 1, '', 15, 'my name', 'password'),
(201201059, 'Prerit', '201201059@daiict.ac.in', 'prerit@gmail.com', 'password', 0, '', 1, 'my name', 'password'),
(201201063, 'Aman', '201201063@gmail.com', 'aman@gmail.com', 'password', 1, '', 14, 'my name', 'password'),
(201201065, 'Chirag', '201201065@gmail.com', 'chirag@gmail.com', 'password', 1, '', 9, 'my name', 'password'),
(201201069, 'Navneet', '201201069@daiict.ac.in', 'navneet@gmail.com', 'password', 1, '', 10, 'my name', 'password'),
(201201072, 'Rutva', '201201072@daiict.ac.in', 'rutva@gmail.com', 'password', 1, '', 11, 'my name', 'password'),
(201201077, 'Prachi', '201201077@gmail.com', 'prachi@gmail.com', 'password', 1, '', 12, 'my name', 'password'),
(201201082, 'Madhuri', '201201082@daiict.ac.in', 'madhuri@gmail.com', 'password', 0, '', 5, 'my name', 'password'),
(201201109, 'Aditi', '201201109@daiict.ac.in', 'aditi@gmail.com', 'password', 0, '', 4, 'my name', 'password'),
(201201168, 'Archit', '201201068@daiict.ac.in', 'archit@gmail.com', 'password', 0, '', 2, 'my name', 'password'),
(201201216, 'Sujit', '201201216@daiict.ac.in', 'sujit@daiict.ac.in ', 'password', 1, '', 22, 'my name', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
 ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
 ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `polling`
--
ALTER TABLE `polling`
MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
