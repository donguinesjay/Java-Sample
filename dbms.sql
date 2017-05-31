/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : dbms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-10-12 09:21:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Course');
INSERT INTO `course` VALUES ('2', 'BSIT');
INSERT INTO `course` VALUES ('3', 'ACT');
INSERT INTO `course` VALUES ('4', 'CHS');

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mi` varchar(1) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of list
-- ----------------------------

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(25) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', 'admin', 'admin', 'admin');
INSERT INTO `log` VALUES ('4', 'user', 'user', 'user');

-- ----------------------------
-- Table structure for `year`
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year` (
  `cid` int(1) NOT NULL AUTO_INCREMENT,
  `year` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of year
-- ----------------------------
INSERT INTO `year` VALUES ('0', 'Year');
INSERT INTO `year` VALUES ('1', '1st');
INSERT INTO `year` VALUES ('2', '2nd');
INSERT INTO `year` VALUES ('3', '3rd');
INSERT INTO `year` VALUES ('4', '4th');
