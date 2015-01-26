-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2014 at 07:59 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `musicinsanity`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE IF NOT EXISTS `artist` (
`aid` int(10) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `aemail` varchar(40) NOT NULL,
  `alink` varchar(40) DEFAULT NULL,
  `abio` varchar(40) DEFAULT NULL,
  `last_login_tp` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`aid`, `aname`, `aemail`, `alink`, `abio`, `last_login_tp`) VALUES
(1, 'Super Band', 'superband@gmail.com', NULL, 'This is a band', '2014-11-10'),
(2, 'Arctic Monkeys', 'amonkeys@gmail.com', NULL, 'we are an alt rock band', '2014-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `artist_artist`
--

CREATE TABLE IF NOT EXISTS `artist_artist` (
  `aid` int(10) NOT NULL DEFAULT '0',
  `faid` int(10) NOT NULL DEFAULT '0',
  `artist_fan_tp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artist_musictype`
--

CREATE TABLE IF NOT EXISTS `artist_musictype` (
  `aid` int(10) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `concert`
--

CREATE TABLE IF NOT EXISTS `concert` (
`cid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `cdate` date NOT NULL,
  `vid` int(10) NOT NULL,
  `price` int(10) DEFAULT NULL,
  `availability` int(10) DEFAULT NULL,
  `clink` varchar(20) DEFAULT NULL,
  `cdescription` varchar(40) DEFAULT NULL,
  `concert_tp` date NOT NULL,
  `submitted_by_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concert`
--

INSERT INTO `concert` (`cid`, `aid`, `cdate`, `vid`, `price`, `availability`, `clink`, `cdescription`, `concert_tp`, `submitted_by_uid`) VALUES
(2, 2, '2014-12-17', 1, NULL, NULL, NULL, NULL, '2014-12-24', NULL),
(3, 1, '2014-12-13', 1, NULL, NULL, NULL, NULL, '0000-00-00', NULL),
(4, 1, '2014-12-04', 1, NULL, NULL, NULL, NULL, '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `concert_list`
--

CREATE TABLE IF NOT EXISTS `concert_list` (
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concert_list`
--

INSERT INTO `concert_list` (`cid`, `lid`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `concert_musictype`
--

CREATE TABLE IF NOT EXISTS `concert_musictype` (
  `cid` int(10) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE IF NOT EXISTS `list` (
`lid` int(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`lid`, `lname`, `uid`) VALUES
(1, 'Jazz concerts', 2),
(2, 'awesome concerts', 1),
(3, 'Rock Concerts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `musictype`
--

CREATE TABLE IF NOT EXISTS `musictype` (
  `type_name` varchar(20) NOT NULL DEFAULT '',
  `major` varchar(20) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musictype`
--

INSERT INTO `musictype` (`type_name`, `major`, `description`) VALUES
('Bluegrass', 'Country', NULL),
('Country', NULL, NULL),
('Gangster Rap', 'Hiphop', NULL),
('Hard Rock', 'Rock/Pop', NULL),
('Hiphop', NULL, NULL),
('Indie Rock', 'Rock/Pop', NULL),
('Jazz/Blues', NULL, NULL),
('Rhythm and Blues', 'Jazz/Blues', NULL),
('Rock/Pop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`uid` int(10) NOT NULL,
  `uusername` varchar(20) NOT NULL,
  `upassword` varchar(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `birthday` date DEFAULT NULL,
  `city_residence` varchar(20) DEFAULT NULL,
  `reputation` int(2) NOT NULL,
  `last_login_tp` datetime NOT NULL,
  `artist` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uusername`, `upassword`, `uname`, `uemail`, `birthday`, `city_residence`, `reputation`, `last_login_tp`, `artist`) VALUES
(1, 'tx311', '123456', 'Tianming', 'tx311@nyu.edu', NULL, NULL, 0, '2014-11-01 00:00:00', 0),
(2, 'mike123', '4321', 'Mike', 'mike@nyu.edu', NULL, 'McLean', 0, '2014-11-03 00:00:00', 0),
(3, 'Myasdlfk', 'sadf', 'dsfg', 'sdfg', '0000-00-00', 'dfsg', 0, '0000-00-00 00:00:00', 0),
(4, 'JSmith', '1234', 'John', 'john1@email.com', '0000-00-00', '', 0, '0000-00-00 00:00:00', 0),
(5, 'abc', '123', 'abc', 'abc@abc.com', '0000-00-00', '', 0, '0000-00-00 00:00:00', 0),
(6, 'asdf', 'asdf', 'asdf', 'asdf', '0000-00-00', '', 0, '0000-00-00 00:00:00', 0),
(7, 'qwer', 'qwer', 'qwer', 'qwer', '0000-00-00', 'New York', 0, '2014-12-06 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_artist`
--

CREATE TABLE IF NOT EXISTS `user_artist` (
  `uid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `fan_tp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_artist`
--

INSERT INTO `user_artist` (`uid`, `aid`, `fan_tp`) VALUES
(1, 1, '2014-12-07'),
(1, 2, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user_concert`
--

CREATE TABLE IF NOT EXISTS `user_concert` (
  `cid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `rate` int(1) DEFAULT NULL,
  `review` varchar(40) DEFAULT NULL,
  `attend_tp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_concert`
--

INSERT INTO `user_concert` (`cid`, `uid`, `rate`, `review`, `attend_tp`) VALUES
(2, 1, 5, 'awesome', '2014-12-07'),
(2, 2, NULL, NULL, NULL),
(4, 2, 5, 'This concert was awesome!', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE IF NOT EXISTS `user_follow` (
  `uid` int(10) NOT NULL DEFAULT '0',
  `fuid` int(10) NOT NULL DEFAULT '0',
  `follow_tp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_follow`
--

INSERT INTO `user_follow` (`uid`, `fuid`, `follow_tp`) VALUES
(1, 2, '2014-12-07'),
(1, 7, '2014-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `user_musictype`
--

CREATE TABLE IF NOT EXISTS `user_musictype` (
  `uid` int(10) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
`vid` int(10) NOT NULL,
  `vname` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `city` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`vid`, `vname`, `location`, `city`) VALUES
(1, 'Meriweather Post', 'Maryland', 'Baltimore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
 ADD PRIMARY KEY (`aid`), ADD UNIQUE KEY `artistname` (`aemail`), ADD UNIQUE KEY `aid` (`aid`);

--
-- Indexes for table `artist_artist`
--
ALTER TABLE `artist_artist`
 ADD PRIMARY KEY (`aid`,`faid`), ADD KEY `faid` (`faid`);

--
-- Indexes for table `artist_musictype`
--
ALTER TABLE `artist_musictype`
 ADD PRIMARY KEY (`aid`,`type_name`), ADD KEY `type_name` (`type_name`);

--
-- Indexes for table `concert`
--
ALTER TABLE `concert`
 ADD PRIMARY KEY (`cid`), ADD KEY `aid` (`aid`), ADD KEY `vid` (`vid`);

--
-- Indexes for table `concert_list`
--
ALTER TABLE `concert_list`
 ADD PRIMARY KEY (`cid`,`lid`);

--
-- Indexes for table `concert_musictype`
--
ALTER TABLE `concert_musictype`
 ADD PRIMARY KEY (`cid`,`type_name`), ADD KEY `type_name` (`type_name`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
 ADD PRIMARY KEY (`lid`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `musictype`
--
ALTER TABLE `musictype`
 ADD PRIMARY KEY (`type_name`), ADD KEY `major` (`major`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `username` (`uusername`,`uemail`), ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `user_artist`
--
ALTER TABLE `user_artist`
 ADD PRIMARY KEY (`uid`,`aid`), ADD KEY `aid` (`aid`);

--
-- Indexes for table `user_concert`
--
ALTER TABLE `user_concert`
 ADD PRIMARY KEY (`cid`,`uid`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_follow`
--
ALTER TABLE `user_follow`
 ADD PRIMARY KEY (`uid`,`fuid`), ADD KEY `fuid` (`fuid`);

--
-- Indexes for table `user_musictype`
--
ALTER TABLE `user_musictype`
 ADD PRIMARY KEY (`uid`,`type_name`), ADD KEY `type_name` (`type_name`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
 ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `concert`
--
ALTER TABLE `concert`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
MODIFY `lid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
MODIFY `vid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artist_artist`
--
ALTER TABLE `artist_artist`
ADD CONSTRAINT `artist_artist_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`),
ADD CONSTRAINT `artist_artist_ibfk_2` FOREIGN KEY (`faid`) REFERENCES `artist` (`aid`);

--
-- Constraints for table `artist_musictype`
--
ALTER TABLE `artist_musictype`
ADD CONSTRAINT `artist_musictype_ibfk_1` FOREIGN KEY (`type_name`) REFERENCES `musictype` (`type_name`),
ADD CONSTRAINT `artist_musictype_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`);

--
-- Constraints for table `concert`
--
ALTER TABLE `concert`
ADD CONSTRAINT `concert_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`),
ADD CONSTRAINT `concert_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `venue` (`vid`);

--
-- Constraints for table `concert_musictype`
--
ALTER TABLE `concert_musictype`
ADD CONSTRAINT `concert_musictype_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `concert` (`cid`),
ADD CONSTRAINT `concert_musictype_ibfk_2` FOREIGN KEY (`type_name`) REFERENCES `musictype` (`type_name`);

--
-- Constraints for table `list`
--
ALTER TABLE `list`
ADD CONSTRAINT `list_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `musictype`
--
ALTER TABLE `musictype`
ADD CONSTRAINT `musictype_ibfk_1` FOREIGN KEY (`major`) REFERENCES `musictype` (`type_name`) ON DELETE CASCADE;

--
-- Constraints for table `user_artist`
--
ALTER TABLE `user_artist`
ADD CONSTRAINT `user_artist_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
ADD CONSTRAINT `user_artist_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`);

--
-- Constraints for table `user_concert`
--
ALTER TABLE `user_concert`
ADD CONSTRAINT `user_concert_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `concert` (`cid`),
ADD CONSTRAINT `user_concert_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `user_follow`
--
ALTER TABLE `user_follow`
ADD CONSTRAINT `user_follow_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
ADD CONSTRAINT `user_follow_ibfk_2` FOREIGN KEY (`fuid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `user_musictype`
--
ALTER TABLE `user_musictype`
ADD CONSTRAINT `user_musictype_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
ADD CONSTRAINT `user_musictype_ibfk_2` FOREIGN KEY (`type_name`) REFERENCES `musictype` (`type_name`),
ADD CONSTRAINT `user_musictype_ibfk_3` FOREIGN KEY (`type_name`) REFERENCES `musictype` (`type_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
