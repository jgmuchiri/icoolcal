-- phpMyAdmin SQL Dump
-- version 4.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2014 at 05:36 PM
-- Server version: 5.6.11-log
-- PHP Version: 5.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sql_calendar`
--
CREATE DATABASE IF NOT EXISTS `sql_calendar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql_calendar`;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `start` date NOT NULL,
  `start_t` time NOT NULL,
  `end` date DEFAULT NULL,
  `end_t` time NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `allDay` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=55 ;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `start`, `start_t`, `end`, `end_t`, `description`, `allDay`) VALUES
(51, 'hello hhe', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 'tes', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `help_articles`
--

CREATE TABLE IF NOT EXISTS `help_articles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order` int(5) NOT NULL,
  `article_name` varchar(50) NOT NULL,
  `article_body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `help_articles`
--

INSERT INTO `help_articles` (`id`, `order`, `article_name`, `article_body`) VALUES
(8, 0, 'Overview', 'iCoolCal is a customizable php/mysql calendar that utilizes CodeIgniter framework and Arshaw''s Fullcalendar plugin.&nbsp;<div><br></div>'),
(9, 0, 'Installation', 'To install iCoolCal, follow the following steps:<div><span ><br></span></div><div><span >Copy the files into the root of your existing CodeIgniter installation. Make sure you don''t have existing files with similar names.</span><div><div><ul><li>/application/controllers</li><li>/application/models</li><li>/application/views</li><li>/assets</li></ul><div>Edit the following files</div><ul><li>/application/config/config.php</li><li>/application/config/routes.php</li><li>/application/config/database.php</li></ul><div>install database with schema in the root folder (sql_calendar.sql)</div></div></div></div>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
