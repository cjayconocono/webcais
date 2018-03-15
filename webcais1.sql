-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 08:16 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcais`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_tbl`
--

CREATE TABLE `account_tbl` (
  `acc_id` int(255) NOT NULL,
  `acc_username` varchar(255) NOT NULL,
  `acc_password` varchar(255) NOT NULL,
  `access_right` enum('Administrator','Professor','Student','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_tbl`
--

INSERT INTO `account_tbl` (`acc_id`, `acc_username`, `acc_password`, `access_right`) VALUES
(1, 'prof', 'prof', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `author_tbl`
--

CREATE TABLE `author_tbl` (
  `author_id` int(255) NOT NULL,
  `a_first_name` varchar(255) NOT NULL,
  `a_middle_name` varchar(255) NOT NULL,
  `a_last_name` varchar(255) NOT NULL,
  `book_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_access`
--

CREATE TABLE `book_access` (
  `reference_id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_tbl`
--

CREATE TABLE `book_tbl` (
  `book_id` int(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `book_author` varchar(255) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `book_color` varchar(255) NOT NULL,
  `isDeleted` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_tbl`
--

INSERT INTO `book_tbl` (`book_id`, `book_title`, `book_author`, `book_image`, `book_color`, `isDeleted`) VALUES
(3, 'dsadasdasd', 'asdasdas', 'Backend/images/b2442583-d9c1-43b2-9ffe-7e9d9abaa671_', '#388e3c', 0),
(4, 'Testting 2', 'Testting 2', 'C:\\Users\\Aljon\\Desktop\\Technical Electives\\RTU-ELRN\\App_Data\\bookImages\\a47c699d-ab1e-4093-bac3-5dbd5c82b652_schematic.png', '#616161', 1),
(5, 'dasdas', 'dasdas', 'C:\\Users\\Aljon\\Desktop\\Technical Electives\\RTU-ELRN\\Professors\\Backend\\images\\43cf7e10-71f0-434b-a562-2036a26295bd_thinP_lowercaseAligned.png', '#5d4037', 0),
(6, 'dsadas', 'dasdas', '/Backend/images/7ee12ce7-4a3b-47db-acf7-c267541d7132_TriggerImage6_1.png', '#5d4037', 0),
(7, 'khkj', 'klkjl', 'Backend/images/fa9ddf59-2f08-44ac-8c56-e60fc565f54b_', '#c2185b', 0),
(8, 'hkjhk', ';lk;lk;', 'Backend/images/4c63dfcc-9fa9-4b48-a61a-065c4d7cd1df_24993309_1498590180196665_2657744717259325439_n.jpg', '', 0),
(9, 'l;jj;', 'l;\'l\'', 'Backend/images/998d0c2c-aa22-4cf6-80f0-b1f611fb80b1_', '#388e3c', 0),
(10, 'dsadas', 'dasdsa', 'Backend/images/7c90f3f8-9d30-4fda-af8f-7e133bc8c1ff_thinP_lowercaseAligned.png', '#303f9f', 0),
(11, 'sadas', 'dasdas', 'Backend/images/b990b072-2c4f-488a-9c95-48f6d2bf1bba_TriggerImage6_1.png', '#c2185b', 0),
(12, 'as', 'as', 'Backend/images/a814e7e0-bb65-49ce-974d-5d75b5f43f91_TE1.png', '#7b1fa2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chapter_progress`
--

CREATE TABLE `chapter_progress` (
  `chapter_progress_id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `status` enum('Unread','On-going','Completed') NOT NULL,
  `datetime_start` date NOT NULL,
  `datetime_end` date NOT NULL,
  `chapt_id` int(255) NOT NULL,
  `rating` int(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_tbl`
--

CREATE TABLE `chapter_tbl` (
  `chapt_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  `content_desc` varchar(255) NOT NULL,
  `chapter_number` varchar(255) NOT NULL,
  `chapter_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chapter_tbl`
--

INSERT INTO `chapter_tbl` (`chapt_id`, `book_id`, `content_desc`, `chapter_number`, `chapter_desc`) VALUES
(3, 0, '', '', 'Chapter Name '),
(4, 0, '', '', 'arnold'),
(5, 0, '', '', 'kish'),
(6, 0, '', '', 'port'),
(7, 0, '', '', 'GOLD'),
(8, 0, '', '', 'Patern'),
(9, 0, '', '', 'aljon'),
(10, 0, '', '', 'Kennt'),
(11, 0, '', '', 'gor'),
(12, 0, '', '', 'Test'),
(13, 0, '', '', 'Test'),
(14, 0, '', '', 'Woah');

-- --------------------------------------------------------

--
-- Table structure for table `choice_tbl`
--

CREATE TABLE `choice_tbl` (
  `choice_id` int(255) NOT NULL,
  `quiz_id` int(255) NOT NULL,
  `chapt_id` int(255) NOT NULL,
  `choice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_tbl`
--

CREATE TABLE `content_tbl` (
  `content_id` int(255) NOT NULL,
  `content_desc` varchar(255) NOT NULL,
  `chapter_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs_tbl`
--

CREATE TABLE `logs_tbl` (
  `id` int(11) NOT NULL,
  `acc_user` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `R_date` date DEFAULT NULL,
  `R_time` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `notice` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_progress`
--

CREATE TABLE `quiz_progress` (
  `quiz_prog_id` int(255) NOT NULL,
  `quiz_id` int(255) NOT NULL,
  `chapt_id` int(255) NOT NULL,
  `status` enum('Pending','On-going','Completed') NOT NULL,
  `datetime_start` date NOT NULL,
  `datetime_end` date NOT NULL,
  `quiztotal` varchar(255) NOT NULL,
  `isStart` int(255) NOT NULL,
  `isFinish` int(255) NOT NULL,
  `percent` int(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_tbl`
--

CREATE TABLE `quiz_tbl` (
  `quiz_id` int(255) NOT NULL,
  `quiz_desc` varchar(255) NOT NULL,
  `chapt_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `student_id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `student_number` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `isApproved` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_tbl`
--
ALTER TABLE `account_tbl`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `author_tbl`
--
ALTER TABLE `author_tbl`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book_access`
--
ALTER TABLE `book_access`
  ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `book_tbl`
--
ALTER TABLE `book_tbl`
  ADD PRIMARY KEY (`book_id`,`book_title`);

--
-- Indexes for table `chapter_progress`
--
ALTER TABLE `chapter_progress`
  ADD PRIMARY KEY (`chapter_progress_id`);

--
-- Indexes for table `chapter_tbl`
--
ALTER TABLE `chapter_tbl`
  ADD PRIMARY KEY (`chapt_id`);

--
-- Indexes for table `choice_tbl`
--
ALTER TABLE `choice_tbl`
  ADD PRIMARY KEY (`choice_id`);

--
-- Indexes for table `content_tbl`
--
ALTER TABLE `content_tbl`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `logs_tbl`
--
ALTER TABLE `logs_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `quiz_progress`
--
ALTER TABLE `quiz_progress`
  ADD PRIMARY KEY (`quiz_prog_id`);

--
-- Indexes for table `quiz_tbl`
--
ALTER TABLE `quiz_tbl`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_tbl`
--
ALTER TABLE `account_tbl`
  MODIFY `acc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `author_tbl`
--
ALTER TABLE `author_tbl`
  MODIFY `author_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_access`
--
ALTER TABLE `book_access`
  MODIFY `reference_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_tbl`
--
ALTER TABLE `book_tbl`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `chapter_progress`
--
ALTER TABLE `chapter_progress`
  MODIFY `chapter_progress_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chapter_tbl`
--
ALTER TABLE `chapter_tbl`
  MODIFY `chapt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `choice_tbl`
--
ALTER TABLE `choice_tbl`
  MODIFY `choice_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_tbl`
--
ALTER TABLE `content_tbl`
  MODIFY `content_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_tbl`
--
ALTER TABLE `logs_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quiz_progress`
--
ALTER TABLE `quiz_progress`
  MODIFY `quiz_prog_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quiz_tbl`
--
ALTER TABLE `quiz_tbl`
  MODIFY `quiz_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_tbl`
--
ALTER TABLE `student_tbl`
  MODIFY `student_id` int(255) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
