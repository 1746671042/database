/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : weixin

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-01-14 15:50:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for getuser
-- ----------------------------
DROP TABLE IF EXISTS `getuser`;
CREATE TABLE `getuser` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` text,
  `json` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of getuser
-- ----------------------------
