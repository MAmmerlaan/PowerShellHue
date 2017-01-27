-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 14, 2017 at 06:00 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `powershellhue`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `detectphoneonwifi`
-- 

CREATE TABLE `detectphoneonwifi` (
  `id` int(20) NOT NULL auto_increment,
  `message` varchar(250) NOT NULL,
  `datetime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `message` (`message`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=592 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `log`
-- 

CREATE TABLE `log` (
  `id` bigint(100) NOT NULL auto_increment,
  `datetime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `level` varchar(10) default NULL,
  `message` text,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3136 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `suntimes`
-- 

CREATE TABLE `suntimes` (
  `date` date NOT NULL,
  `sun_up` time NOT NULL,
  `sun_down` time NOT NULL,
  `correction_sun_up` int(10) NOT NULL default '0',
  `correction_sun_down` int(10) NOT NULL default '0',
  PRIMARY KEY  (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 27, 2017 at 07:47 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `powershellhue`
-- 

-- 
-- Dumping data for table `suntimes`
-- 

INSERT INTO `suntimes` VALUES ('2016-01-01', '08:48:00', '16:39:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-01', '08:21:00', '17:27:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-01', '07:25:00', '18:20:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-01', '07:14:00', '20:14:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-01', '06:10:00', '21:05:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-01', '05:26:00', '21:51:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-01', '05:25:00', '22:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-01', '06:02:00', '21:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-01', '06:52:00', '20:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-01', '07:41:00', '19:17:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-01', '07:35:00', '17:11:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-01', '08:26:00', '16:32:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-02', '08:48:00', '16:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-02', '08:19:00', '17:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-02', '07:23:00', '18:22:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-02', '07:12:00', '20:16:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-02', '06:08:00', '21:07:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-02', '05:25:00', '21:52:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-02', '05:25:00', '22:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-02', '06:04:00', '21:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-02', '06:54:00', '20:24:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-02', '07:43:00', '19:14:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-02', '07:37:00', '17:09:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-02', '08:27:00', '16:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-03', '08:48:00', '16:41:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-03', '08:18:00', '17:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-03', '07:21:00', '18:24:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-03', '07:10:00', '20:18:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-03', '06:06:00', '21:09:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-03', '05:24:00', '21:53:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-03', '05:26:00', '22:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-03', '06:05:00', '21:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-03', '06:56:00', '20:22:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-03', '07:45:00', '19:12:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-03', '07:39:00', '17:07:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-03', '08:29:00', '16:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-04', '08:48:00', '16:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-04', '08:16:00', '17:32:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-04', '07:18:00', '18:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-04', '07:07:00', '20:20:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-04', '06:04:00', '21:10:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-04', '05:24:00', '21:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-04', '05:27:00', '22:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-04', '06:07:00', '21:24:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-04', '06:57:00', '20:19:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-04', '07:46:00', '19:10:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-04', '07:41:00', '17:06:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-04', '08:30:00', '16:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-05', '08:47:00', '16:43:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-05', '08:14:00', '17:34:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-05', '07:16:00', '18:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-05', '07:05:00', '20:21:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-05', '06:02:00', '21:12:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-05', '05:23:00', '21:55:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-05', '05:28:00', '22:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-05', '06:09:00', '21:22:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-05', '06:59:00', '20:17:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-05', '07:48:00', '19:07:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-05', '07:43:00', '17:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-05', '08:31:00', '16:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-06', '08:47:00', '16:44:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-06', '08:13:00', '17:36:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-06', '07:14:00', '18:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-06', '07:03:00', '20:23:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-06', '06:01:00', '21:14:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-06', '05:22:00', '21:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-06', '05:29:00', '22:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-06', '06:10:00', '21:20:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-06', '07:00:00', '20:15:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-06', '07:50:00', '19:05:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-06', '07:44:00', '17:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-06', '08:33:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-07', '08:47:00', '16:46:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-07', '08:11:00', '17:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-07', '07:12:00', '18:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-07', '07:00:00', '20:25:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-07', '05:59:00', '21:15:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-07', '05:22:00', '21:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-07', '05:30:00', '22:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-07', '06:12:00', '21:19:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-07', '07:02:00', '20:13:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-07', '07:52:00', '19:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-07', '07:46:00', '17:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-07', '08:34:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-08', '08:46:00', '16:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-08', '08:09:00', '17:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-08', '07:09:00', '18:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-08', '06:58:00', '20:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-08', '05:57:00', '21:17:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-08', '05:21:00', '21:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-08', '05:31:00', '21:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-08', '06:13:00', '21:17:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-08', '07:04:00', '20:10:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-08', '07:53:00', '19:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-08', '07:48:00', '16:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-08', '08:35:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-09', '08:46:00', '16:48:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-09', '08:07:00', '17:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-09', '07:07:00', '18:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-09', '06:56:00', '20:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-09', '05:55:00', '21:19:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-09', '05:21:00', '21:58:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-09', '05:32:00', '21:58:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-09', '06:15:00', '21:15:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-09', '07:05:00', '20:08:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-09', '07:55:00', '18:58:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-09', '07:50:00', '16:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-09', '08:36:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-10', '08:45:00', '16:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-10', '08:06:00', '17:44:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-10', '07:05:00', '18:36:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-10', '06:54:00', '20:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-10', '05:54:00', '21:20:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-10', '05:21:00', '21:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-10', '05:33:00', '21:58:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-10', '06:17:00', '21:13:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-10', '07:07:00', '20:06:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-10', '07:57:00', '18:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-10', '07:52:00', '16:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-10', '08:37:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-11', '08:45:00', '16:51:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-11', '08:04:00', '17:45:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-11', '07:03:00', '18:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-11', '06:52:00', '20:32:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-11', '05:52:00', '21:22:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-11', '05:20:00', '22:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-11', '05:34:00', '21:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-11', '06:18:00', '21:11:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-11', '07:09:00', '20:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-11', '07:58:00', '18:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-11', '07:53:00', '16:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-11', '08:38:00', '16:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-12', '08:44:00', '16:53:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-12', '08:02:00', '17:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-12', '07:00:00', '18:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-12', '06:49:00', '20:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-12', '05:50:00', '21:23:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-12', '05:20:00', '22:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-12', '05:35:00', '21:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-12', '06:20:00', '21:09:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-12', '07:10:00', '20:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-12', '08:00:00', '18:52:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-12', '07:55:00', '16:53:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-12', '08:39:00', '16:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-13', '08:43:00', '16:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-13', '08:00:00', '17:49:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-13', '06:58:00', '18:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-13', '06:47:00', '20:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-13', '05:49:00', '21:25:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-13', '05:20:00', '22:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-13', '05:36:00', '21:55:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-13', '06:21:00', '21:07:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-13', '07:12:00', '19:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-13', '08:02:00', '18:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-13', '07:57:00', '16:51:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-13', '08:40:00', '16:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-14', '08:42:00', '16:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-14', '07:58:00', '17:51:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-14', '06:56:00', '18:43:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-14', '06:45:00', '20:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-14', '05:47:00', '21:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-14', '05:20:00', '22:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-14', '05:37:00', '21:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-14', '06:23:00', '21:05:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-14', '07:13:00', '19:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-14', '08:04:00', '18:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-14', '07:59:00', '16:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-14', '08:41:00', '16:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-15', '08:42:00', '16:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-15', '07:56:00', '17:53:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-15', '06:53:00', '18:45:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-15', '06:43:00', '20:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-15', '05:46:00', '21:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-15', '05:19:00', '22:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-15', '05:38:00', '21:53:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-15', '06:25:00', '21:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-15', '07:15:00', '19:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-15', '08:05:00', '18:45:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-15', '08:00:00', '16:48:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-15', '08:42:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-16', '08:41:00', '16:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-16', '07:54:00', '17:55:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-16', '06:51:00', '18:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-16', '06:41:00', '20:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-16', '05:44:00', '21:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-16', '05:19:00', '22:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-16', '05:40:00', '21:52:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-16', '06:26:00', '21:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-16', '07:17:00', '19:52:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-16', '08:07:00', '18:43:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-16', '08:02:00', '16:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-16', '08:43:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-17', '08:40:00', '17:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-17', '07:52:00', '17:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-17', '06:49:00', '18:49:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-17', '06:38:00', '20:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-17', '05:43:00', '21:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-17', '05:19:00', '22:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-17', '05:41:00', '21:51:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-17', '06:28:00', '20:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-17', '07:18:00', '19:49:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-17', '08:09:00', '18:41:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-17', '08:04:00', '16:46:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-17', '08:44:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-18', '08:39:00', '17:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-18', '07:50:00', '17:58:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-18', '06:47:00', '18:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-18', '06:36:00', '20:43:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-18', '05:41:00', '21:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-18', '05:19:00', '22:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-18', '05:42:00', '21:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-18', '06:29:00', '20:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-18', '07:20:00', '19:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-18', '08:10:00', '18:39:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-18', '08:06:00', '16:44:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-18', '08:44:00', '16:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-19', '08:38:00', '17:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-19', '07:48:00', '18:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-19', '06:44:00', '18:52:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-19', '06:34:00', '20:45:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-19', '05:40:00', '21:34:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-19', '05:20:00', '22:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-19', '05:44:00', '21:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-19', '06:29:00', '20:55:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-19', '07:22:00', '19:45:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-19', '08:12:00', '18:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-19', '08:07:00', '16:43:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-19', '08:45:00', '16:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-20', '08:37:00', '17:05:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-20', '07:46:00', '18:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-20', '06:42:00', '18:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-20', '06:32:00', '20:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-20', '05:39:00', '21:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-20', '05:20:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-20', '05:45:00', '21:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-20', '06:33:00', '20:53:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-20', '07:23:00', '19:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-20', '08:14:00', '18:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-20', '08:09:00', '16:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-20', '08:45:00', '16:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-21', '08:36:00', '17:07:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-21', '07:44:00', '18:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-21', '06:40:00', '18:56:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-21', '06:30:00', '20:49:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-21', '05:37:00', '21:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-21', '05:20:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-21', '05:46:00', '21:46:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-21', '06:34:00', '20:51:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-21', '07:25:00', '19:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-21', '08:16:00', '18:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-21', '08:11:00', '16:41:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-21', '08:46:00', '16:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-22', '08:35:00', '17:09:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-22', '07:42:00', '18:06:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-22', '06:37:00', '18:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-22', '06:28:00', '20:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-22', '05:36:00', '21:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-22', '05:20:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-22', '05:48:00', '21:44:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-22', '06:36:00', '20:48:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-22', '07:26:00', '19:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-22', '08:18:00', '18:30:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-22', '08:12:00', '16:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-22', '08:46:00', '16:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-23', '08:33:00', '17:11:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-23', '07:40:00', '18:08:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-23', '06:35:00', '18:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-23', '06:26:00', '20:52:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-23', '05:35:00', '21:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-23', '05:20:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-23', '05:49:00', '21:43:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-23', '06:38:00', '20:46:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-23', '07:28:00', '19:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-23', '08:19:00', '18:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-23', '08:14:00', '16:39:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-23', '08:47:00', '16:32:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-24', '08:32:00', '17:12:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-24', '07:38:00', '18:09:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-24', '06:33:00', '19:01:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-24', '06:24:00', '20:54:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-24', '05:34:00', '21:41:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-24', '05:21:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-24', '05:50:00', '21:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-24', '06:39:00', '20:44:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-24', '07:30:00', '19:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-24', '08:21:00', '18:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-24', '08:15:00', '16:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-24', '08:47:00', '16:32:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-25', '08:31:00', '17:14:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-25', '07:36:00', '18:11:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-25', '06:30:00', '19:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-25', '06:22:00', '20:55:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-25', '05:32:00', '21:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-25', '05:21:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-25', '05:52:00', '21:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-25', '06:41:00', '20:42:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-25', '07:31:00', '19:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-25', '08:23:00', '18:24:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-25', '08:17:00', '16:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-25', '08:48:00', '16:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-26', '08:30:00', '17:16:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-26', '07:34:00', '18:13:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-26', '06:28:00', '19:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-26', '06:20:00', '20:57:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-26', '05:31:00', '21:44:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-26', '05:22:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-26', '05:53:00', '21:39:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-26', '06:43:00', '20:40:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-26', '07:33:00', '19:28:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-26', '08:25:00', '18:22:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-26', '08:19:00', '16:36:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-26', '08:48:00', '16:34:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-27', '08:28:00', '17:18:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-27', '07:32:00', '18:15:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-27', '07:26:00', '20:06:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-27', '06:18:00', '20:59:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-27', '05:30:00', '21:45:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-27', '05:22:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-27', '05:55:00', '21:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-27', '06:44:00', '20:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-27', '07:35:00', '19:26:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-27', '08:26:00', '18:20:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-27', '08:20:00', '16:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-27', '08:48:00', '16:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-28', '08:27:00', '17:19:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-28', '07:29:00', '18:17:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-28', '07:23:00', '20:08:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-28', '06:16:00', '21:00:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-28', '05:29:00', '21:46:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-28', '05:23:00', '22:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-28', '05:56:00', '21:36:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-28', '06:46:00', '20:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-28', '07:36:00', '19:24:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-28', '08:28:00', '18:18:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-28', '08:22:00', '16:34:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-28', '08:48:00', '16:36:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-29', '08:25:00', '17:23:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-02-29', '07:27:00', '18:19:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-29', '07:21:00', '20:09:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-29', '06:14:00', '21:02:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-29', '05:28:00', '21:47:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-29', '05:23:00', '22:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-29', '05:58:00', '21:34:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-29', '06:47:00', '20:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-29', '07:38:00', '19:21:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-29', '08:30:00', '18:17:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-29', '08:23:00', '16:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-29', '08:48:00', '16:36:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-30', '08:24:00', '17:23:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-30', '06:12:00', '21:04:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-04-30', '05:27:00', '21:48:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-30', '05:24:00', '22:03:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-06-30', '05:59:00', '21:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-30', '06:49:00', '20:31:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-30', '06:48:00', '20:34:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-09-30', '07:32:00', '17:15:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-30', '08:25:00', '16:33:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-11-30', '08:48:00', '16:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-30', '08:49:00', '16:37:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-01-31', '08:22:00', '17:25:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-03-31', '05:27:00', '21:50:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-12-31', '08:50:00', '16:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-05-31', '06:51:00', '20:29:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-07-31', '08:48:00', '16:38:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-08-31', '06:49:00', '20:35:00', 0, 0);
INSERT INTO `suntimes` VALUES ('2016-10-31', '08:26:00', '16:34:00', 0, 0);
