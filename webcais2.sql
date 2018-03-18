/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.22-MariaDB : Database - webcais
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webcais` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `webcais`;

/*Table structure for table `account_tbl` */

DROP TABLE IF EXISTS `account_tbl`;

CREATE TABLE `account_tbl` (
  `acc_id` int(255) NOT NULL AUTO_INCREMENT,
  `acc_username` varchar(255) NOT NULL,
  `acc_password` varchar(255) NOT NULL,
  `access_right` enum('Administrator','Professor','Student','') NOT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `account_tbl` */

insert  into `account_tbl`(`acc_id`,`acc_username`,`acc_password`,`access_right`) values (1,'prof','prof','Professor');

/*Table structure for table `author_tbl` */

DROP TABLE IF EXISTS `author_tbl`;

CREATE TABLE `author_tbl` (
  `author_id` int(255) NOT NULL AUTO_INCREMENT,
  `a_first_name` varchar(255) NOT NULL,
  `a_middle_name` varchar(255) NOT NULL,
  `a_last_name` varchar(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `author_tbl` */

/*Table structure for table `book_access` */

DROP TABLE IF EXISTS `book_access`;

CREATE TABLE `book_access` (
  `reference_id` int(255) NOT NULL AUTO_INCREMENT,
  `acc_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book_access` */

/*Table structure for table `book_tbl` */

DROP TABLE IF EXISTS `book_tbl`;

CREATE TABLE `book_tbl` (
  `book_id` int(255) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(255) NOT NULL,
  `book_author` varchar(255) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `book_color` varchar(255) NOT NULL,
  `isDeleted` int(255) NOT NULL,
  PRIMARY KEY (`book_id`,`book_title`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `book_tbl` */

insert  into `book_tbl`(`book_id`,`book_title`,`book_author`,`book_image`,`book_color`,`isDeleted`) values (3,'dsadasdasd','asdasdas','Backend/images/b2442583-d9c1-43b2-9ffe-7e9d9abaa671_','#388e3c',0),(4,'Testting 2','Testting 2','C:\\Users\\Aljon\\Desktop\\Technical Electives\\RTU-ELRN\\App_Data\\bookImages\\a47c699d-ab1e-4093-bac3-5dbd5c82b652_schematic.png','#616161',1),(5,'dasdas','dasdas','C:\\Users\\Aljon\\Desktop\\Technical Electives\\RTU-ELRN\\Professors\\Backend\\images\\43cf7e10-71f0-434b-a562-2036a26295bd_thinP_lowercaseAligned.png','#5d4037',0),(6,'dsadas','dasdas','/Backend/images/7ee12ce7-4a3b-47db-acf7-c267541d7132_TriggerImage6_1.png','#5d4037',0),(7,'khkj','klkjl','Backend/images/fa9ddf59-2f08-44ac-8c56-e60fc565f54b_','#c2185b',0),(8,'hkjhk',';lk;lk;','Backend/images/4c63dfcc-9fa9-4b48-a61a-065c4d7cd1df_24993309_1498590180196665_2657744717259325439_n.jpg','',0),(9,'l;jj;','l;\'l\'','Backend/images/998d0c2c-aa22-4cf6-80f0-b1f611fb80b1_','#388e3c',0),(10,'dsadas','dasdsa','../Backend/images/7c90f3f8-9d30-4fda-af8f-7e133bc8c1ff_thinP_lowercaseAligned.png','#303f9f',0),(11,'sadas','dasdas','../Backend/images/9b53ced8-e006-40cc-8f29-85332121242d_','#7b1fa2',0),(12,'as','as','Backend/images/a814e7e0-bb65-49ce-974d-5d75b5f43f91_TE1.png','#7b1fa2',0);

/*Table structure for table `chapter_progress` */

DROP TABLE IF EXISTS `chapter_progress`;

CREATE TABLE `chapter_progress` (
  `chapter_progress_id` int(255) NOT NULL AUTO_INCREMENT,
  `acc_id` int(255) NOT NULL,
  `status` enum('Unread','On-going','Completed') NOT NULL,
  `datetime_start` date NOT NULL,
  `datetime_end` date NOT NULL,
  `chapt_id` int(255) NOT NULL,
  `rating` int(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`chapter_progress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chapter_progress` */

/*Table structure for table `chapter_tbl` */

DROP TABLE IF EXISTS `chapter_tbl`;

CREATE TABLE `chapter_tbl` (
  `chapt_id` int(255) NOT NULL AUTO_INCREMENT,
  `book_id` int(255) NOT NULL,
  `content_desc` varchar(255) NOT NULL,
  `chapter_number` varchar(255) NOT NULL,
  `chapter_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`chapt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `chapter_tbl` */

insert  into `chapter_tbl`(`chapt_id`,`book_id`,`content_desc`,`chapter_number`,`chapter_desc`) values (3,0,'','','Chapter Name '),(4,0,'','','arnold'),(5,0,'','','kish'),(6,0,'','','port'),(7,0,'','','GOLD'),(8,0,'','','Patern'),(9,0,'','','aljon'),(10,0,'','','Kennt'),(11,0,'','','gor'),(12,0,'','','Test'),(13,0,'','','Test'),(14,0,'','','Woah');

/*Table structure for table `choice_tbl` */

DROP TABLE IF EXISTS `choice_tbl`;

CREATE TABLE `choice_tbl` (
  `choice_id` int(255) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(255) NOT NULL,
  `chapt_id` int(255) NOT NULL,
  `choice` varchar(255) NOT NULL,
  PRIMARY KEY (`choice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `choice_tbl` */

/*Table structure for table `content_tbl` */

DROP TABLE IF EXISTS `content_tbl`;

CREATE TABLE `content_tbl` (
  `content_id` int(255) NOT NULL AUTO_INCREMENT,
  `content_desc` varchar(255) NOT NULL,
  `chapter_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `content_tbl` */

/*Table structure for table `logs_tbl` */

DROP TABLE IF EXISTS `logs_tbl`;

CREATE TABLE `logs_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_user` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `R_date` date DEFAULT NULL,
  `R_time` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `notice` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `logs_tbl` */

/*Table structure for table `quiz_progress` */

DROP TABLE IF EXISTS `quiz_progress`;

CREATE TABLE `quiz_progress` (
  `quiz_prog_id` int(255) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(255) NOT NULL,
  `chapt_id` int(255) NOT NULL,
  `status` enum('Pending','On-going','Completed') NOT NULL,
  `datetime_start` date NOT NULL,
  `datetime_end` date NOT NULL,
  `quiztotal` varchar(255) NOT NULL,
  `isStart` int(255) NOT NULL,
  `isFinish` int(255) NOT NULL,
  `percent` int(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`quiz_prog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quiz_progress` */

/*Table structure for table `quiz_tbl` */

DROP TABLE IF EXISTS `quiz_tbl`;

CREATE TABLE `quiz_tbl` (
  `quiz_id` int(255) NOT NULL AUTO_INCREMENT,
  `quiz_desc` varchar(255) NOT NULL,
  `chapt_id` int(255) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quiz_tbl` */

/*Table structure for table `student_tbl` */

DROP TABLE IF EXISTS `student_tbl`;

CREATE TABLE `student_tbl` (
  `student_id` int(255) NOT NULL AUTO_INCREMENT,
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
  `isApproved` int(255) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_tbl` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
