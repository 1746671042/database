/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : weixin

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-01-14 15:51:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wx_config
-- ----------------------------
DROP TABLE IF EXISTS `wx_config`;
CREATE TABLE `wx_config` (
  `wx_token` text,
  `wx_expires` int(5) DEFAULT NULL,
  `wx_time` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_config
-- ----------------------------
INSERT INTO `wx_config` VALUES ('5_qrL5nThsQ_kMaI_BIVpyGzqZmmsUAs4CR_95gBX11APRtTlK-z9033M1Kx75B_wRQOnP_Ja-PE3frROM4mhZoggxkPV55qEIdlHbs-9Hp2VF1y8S06zGhTgdEv5OZpFRImhNXI_akEEmuVPyLQRjAIAYDE', '7200', '1515900733');
