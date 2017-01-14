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
