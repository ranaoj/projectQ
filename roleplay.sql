/*
Navicat MySQL Data Transfer

Source Server         : database
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : roleplay

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2023-02-21 19:19:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `admin` int(11) NOT NULL DEFAULT '0',
  `helper` int(11) NOT NULL DEFAULT '0',
  `serial` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `limit` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('23', 'test', '123', '0', '0', 'B5D767EFFB542805FE49564D79C68A54', '3');

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL DEFAULT '0',
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '5',
  `int` int(11) NOT NULL DEFAULT '0',
  `dim` int(11) NOT NULL DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '18',
  `height` int(11) NOT NULL DEFAULT '175',
  `weight` int(11) NOT NULL DEFAULT '65',
  `gender` int(1) NOT NULL DEFAULT '1',
  `model` int(11) NOT NULL DEFAULT '170',
  `money` bigint(11) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('12', '23', 'Clementine_Alighieri', '0', '0', '5', '0', '0', '18', '175', '65', '2', '193', '1000');
INSERT INTO `characters` VALUES ('13', '23', 'dddd', '0', '0', '5', '0', '0', '18', '175', '65', '1', '170', '1000');
