/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-01-08 08:02:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '2222222222222', '22222');
INSERT INTO `admin` VALUES ('2', '342322', '42323432');
INSERT INTO `admin` VALUES ('3', '11111111', '2132214');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `click` int(11) NOT NULL,
  `data` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1-开启 2-关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '在强者的眼中，没有最好，只有更好。在强者的眼中，没有最好，只有更好。上有天，下有地，中间站着你自己，做一天人，尽一天人事儿在强者的眼中，没有最好，只有更好。', '34', '2018-01-03', '萨瓦迪卡', '1', '2');
INSERT INTO `blog` VALUES ('2', '盆景秀木正因为被人溺爱，才破灭了成为栋梁之材的梦。', '23', '2018-01-01', 'asdfadsfs', '7', '2');
INSERT INTO `blog` VALUES ('3', '永远都不要放弃自己，勇往直前，直至成功！想而奋进的过程，其意义远大于未知的结果。', '89', '2017-11-28', 'fasdfadf', '2', '1');
INSERT INTO `blog` VALUES ('4', '上有天，下有地，中间站着你自己，做一天人，尽一天人事儿', '34', '2018-01-03', 'dfdsafsad', '3', '2');
INSERT INTO `blog` VALUES ('6', '萤火虫的光点虽然微弱，但亮着便是向黑暗挑战。想而奋进的过程，其意义远大于未知的结果。', '77', '2017-12-06', 'fasdfadf', '3', '1');
INSERT INTO `blog` VALUES ('7', '想而奋进的过程，其意义远大于未知的结果。在强者的眼中，没有最好，只有更好。', '34', '2018-01-03', '萨瓦迪卡', '6', '1');
INSERT INTO `blog` VALUES ('8', '上有天，下有地，中间站着你自己，做一天人，尽一天人事儿在强者的眼中，没有最好，只有更好。', '288', '2017-12-20', 'asdfadsfs', '4', '2');
INSERT INTO `blog` VALUES ('10', '上有天，下有地，中间站着你自己，做一天人，尽一天人事儿在强者的眼中，没有最好，只有更好。', '288', '2017-12-20', 'asdfadsfs', '5', '1');
INSERT INTO `blog` VALUES ('11', '上有天，下有地，中间站着你自己，做一天人，尽一天人事儿在强者的眼中，没有最好，只有更好。', '288', '2017-12-20', 'asdfadsfs', '8', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL COMMENT '账号',
  `pwd` varchar(32) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `status` int(2) DEFAULT '1' COMMENT '1-开启 2-关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1231231', '12313123', '浪过一群鸭', '1');
INSERT INTO `user` VALUES ('2', '1231231', '12313123', '浪过一群鸭', '1');
INSERT INTO `user` VALUES ('3', '8888', '8888', '888', '2');
INSERT INTO `user` VALUES ('4', '123123', '1231312', '浪过一群', '1');
INSERT INTO `user` VALUES ('5', '234242', '23423423', '魏汝稳确认', '2');
INSERT INTO `user` VALUES ('6', '12312', '12313123', '浪过一群鸭', '1');
INSERT INTO `user` VALUES ('7', '123456', '123456', '怀仁', '1');
INSERT INTO `user` VALUES ('8', '1234567', '1234567', '好人', '1');
