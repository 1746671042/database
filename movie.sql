/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-01-15 11:02:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(20) NOT NULL COMMENT '管理员名称',
  `pwd` varchar(32) NOT NULL COMMENT '管理员密码;Md5加密',
  `state` char(1) NOT NULL COMMENT '管理员状态;0禁用1启用',
  `rank` char(1) DEFAULT NULL COMMENT '管理员等级;0普通1高级2超级(不可删除)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '2');

-- ----------------------------
-- Table structure for buy
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `m_id` int(11) NOT NULL COMMENT 'money_id',
  `schedule` char(1) NOT NULL COMMENT '购票进度;1订票成功 2付款成功3出票成功4退票中5退票成功',
  `time` varchar(255) NOT NULL COMMENT '时间',
  `seat` varchar(255) DEFAULT NULL COMMENT '买的座位号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES ('42', '1', '1', '1', '2018年01月15日', '1');
INSERT INTO `buy` VALUES ('43', '1', '1', '1', '2018年01月15日', '6');
INSERT INTO `buy` VALUES ('44', '1', '1', '1', '2018年01月15日', '7');
INSERT INTO `buy` VALUES ('45', '1', '1', '1', '2018年01月15日', '8');
INSERT INTO `buy` VALUES ('46', '1', '1', '1', '2018年01月15日', '4');
INSERT INTO `buy` VALUES ('47', '1', '1', '1', '2018年01月15日', '5');
INSERT INTO `buy` VALUES ('48', '1', '1', '1', '2018年01月15日', '20');
INSERT INTO `buy` VALUES ('49', '1', '1', '1', '2018年01月15日', '36');
INSERT INTO `buy` VALUES ('50', '1', '1', '1', '2018年01月15日', '1');
INSERT INTO `buy` VALUES ('51', '1', '1', '1', '2018年01月15日', '6');
INSERT INTO `buy` VALUES ('52', '1', '1', '1', '2018年01月15日', '7');
INSERT INTO `buy` VALUES ('53', '1', '1', '1', '2018年01月15日', '8');
INSERT INTO `buy` VALUES ('54', '1', '1', '1', '2018年01月15日', '4');
INSERT INTO `buy` VALUES ('55', '1', '1', '1', '2018年01月15日', '5');
INSERT INTO `buy` VALUES ('56', '1', '1', '1', '2018年01月15日', '20');
INSERT INTO `buy` VALUES ('57', '1', '1', '1', '2018年01月15日', '36');
INSERT INTO `buy` VALUES ('58', '1', '1', '1', '2018年01月15日', '29');
INSERT INTO `buy` VALUES ('59', '1', '1', '1', '2018年01月15日', '30');
INSERT INTO `buy` VALUES ('60', '1', '1', '1', '2018年01月15日', '46');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `content` varchar(11) NOT NULL COMMENT '评论内容',
  `date` varchar(50) NOT NULL COMMENT '评论时间;格式01-06 03:26',
  `good` varchar(255) NOT NULL COMMENT '评论点赞;默认为0',
  `state` char(1) NOT NULL COMMENT '评论状态;0禁止显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '0', '1', 'ffff', '01-06 03:26', '0', '');
INSERT INTO `comment` VALUES ('2', '0', '2', '发过火', '01-06 03:26', '0', '');

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '大厅id',
  `name` varchar(20) DEFAULT NULL COMMENT '大厅名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES ('1', 'A厅');
INSERT INTO `hall` VALUES ('2', 'B厅');
INSERT INTO `hall` VALUES ('3', 'C厅');
INSERT INTO `hall` VALUES ('4', 'D厅');

-- ----------------------------
-- Table structure for hint
-- ----------------------------
DROP TABLE IF EXISTS `hint`;
CREATE TABLE `hint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `centent` varchar(11) NOT NULL COMMENT '提示内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hint
-- ----------------------------
INSERT INTO `hint` VALUES ('1', '1', '还有15分钟就要开始演');
INSERT INTO `hint` VALUES ('2', '2', '赶快进场');

-- ----------------------------
-- Table structure for look
-- ----------------------------
DROP TABLE IF EXISTS `look`;
CREATE TABLE `look` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '电影观看id',
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `look` varchar(255) NOT NULL COMMENT '想看人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of look
-- ----------------------------
INSERT INTO `look` VALUES ('1', '1', '666');
INSERT INTO `look` VALUES ('2', '2', '999');

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '票价id',
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `t_id` int(11) NOT NULL COMMENT '影院id',
  `h_id` char(1) NOT NULL COMMENT '大厅信息',
  `seat` char(4) DEFAULT NULL COMMENT '电影大厅座位数',
  `time` varchar(255) NOT NULL COMMENT '时间段',
  `people` varchar(255) NOT NULL COMMENT '已选座位数;12345显示对应座位',
  `date` varchar(255) NOT NULL COMMENT '时间日期格式 2017-09-21',
  `money` char(5) DEFAULT NULL COMMENT '票价',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money
-- ----------------------------
INSERT INTO `money` VALUES ('1', '2', '1', '1', '66', '12:21-13:51', '1,6,7,8,4,5,20,36,29,30,46', '2018-01-12', '36.5');
INSERT INTO `money` VALUES ('2', '1', '2', '2', '56', '18:00-22:00', '1,6,7,8,4,5,20,36', '2018-06-09', '40.5');
INSERT INTO `money` VALUES ('3', '2', '1', '3', '45', '15:20-17:00', '1,6,7,8,4,5,20,36', '2018-09-21', '30.5');
INSERT INTO `money` VALUES ('4', '2', '2', '4', '30', '06:20-08:20', '1,6,7,8,4,5,20,36', '2018-01-13', '20');
INSERT INTO `money` VALUES ('5', '1', '1', '2', '45', '06:20-08:20', '1,6,7,8,4,5,20,36', '2018-01-14', '38.5');

-- ----------------------------
-- Table structure for move_type
-- ----------------------------
DROP TABLE IF EXISTS `move_type`;
CREATE TABLE `move_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '影片类型选择id',
  `m_id` int(11) NOT NULL COMMENT '影片id',
  `t_id` int(11) NOT NULL COMMENT '类型id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of move_type
-- ----------------------------
INSERT INTO `move_type` VALUES ('1', '1', '1');
INSERT INTO `move_type` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '电影id',
  `name` varchar(20) NOT NULL COMMENT '电影名称',
  `director` varchar(5) NOT NULL COMMENT '主导演名称',
  `performer_id` varchar(50) NOT NULL COMMENT '主演id；用,隔开间距',
  `shows` varchar(50) NOT NULL COMMENT '上映时间(地区)；地区:大陆香港等',
  `duration` varchar(20) NOT NULL COMMENT '播放时长;(按分钟计数)',
  `photo` varchar(255) NOT NULL COMMENT '电影图标;图标的路径',
  `state` char(2) NOT NULL COMMENT '电影状态;0未上映 1已经上映',
  `abstract` varchar(255) NOT NULL COMMENT '电影简介',
  `language` varchar(255) NOT NULL COMMENT '影片语言',
  `english` varchar(255) NOT NULL COMMENT '电影英文名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '前任3', '郑凯,韩庚', '1', '2017', '180', 'Public/img/qianren.jpg', '1', '《前任3：再见前任》是“前任”系列的第三部电影作品，由韩庚、郑恺、于文文、曾梦雪、罗米、韩文亮主演。该系列的前两部作品都取得了不错的票房，并凭借爆笑走肾的喜剧风格和颇具传播力的“金句”台词，成为了“爆款”电影。', '中文', '');
INSERT INTO `movie` VALUES ('2', '妖玲玲', '吴君如', '2', '2017', '240', 'Public/img/qianren.jpg', '1', '无良地产商父子徐大富（沈腾饰）和徐天宇（岳云鹏饰）一心想争夺豪华CBD中一幢破旧居民楼“萌贵坊”的产权，但萌贵坊内仍存四户怪咖不愿搬出—神医王保健（张译饰）和他的儿子鸡丁（李亦航饰）、民间发明家夫妇李菊花（papi饰）和金三（潘斌龙饰）', '中文', '');

-- ----------------------------
-- Table structure for movie_theatre
-- ----------------------------
DROP TABLE IF EXISTS `movie_theatre`;
CREATE TABLE `movie_theatre` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '影院id',
  `name` varchar(255) NOT NULL COMMENT '影院名称',
  `abstract` varchar(255) NOT NULL COMMENT '影院简介',
  `city` varchar(255) NOT NULL COMMENT '所在地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_theatre
-- ----------------------------
INSERT INTO `movie_theatre` VALUES ('1', '四通影院', '河北省保定市莲池区四通商场4层', '保定');
INSERT INTO `movie_theatre` VALUES ('2', '华隶影城', '河北省石家庄莲池区四通商场4层', '石家庄');

-- ----------------------------
-- Table structure for performer
-- ----------------------------
DROP TABLE IF EXISTS `performer`;
CREATE TABLE `performer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `performer_id` int(11) NOT NULL COMMENT '演员id',
  `people` varchar(20) NOT NULL COMMENT '饰演名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of performer
-- ----------------------------
INSERT INTO `performer` VALUES ('1', '1', '1', '于飞');

-- ----------------------------
-- Table structure for performer_info
-- ----------------------------
DROP TABLE IF EXISTS `performer_info`;
CREATE TABLE `performer_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '演员id',
  `name` varchar(20) NOT NULL COMMENT '演员名称',
  `english` varchar(255) NOT NULL COMMENT '演员英文名',
  `date` varchar(255) NOT NULL COMMENT '出生日期',
  `city` varchar(255) NOT NULL COMMENT '出生城市',
  `abstract` varchar(255) NOT NULL COMMENT '影人简介',
  `photo` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of performer_info
-- ----------------------------
INSERT INTO `performer_info` VALUES ('2', '吴君如', 'wujunru', '1889', '香港', '逗比', 'Public/img/电影图/前任3/hangeng.jpg');
INSERT INTO `performer_info` VALUES ('1', '韩庚', 'hangeng', '1990', '北京', '他是一个练习生', 'Uploade/20180111152313450.jpg');
INSERT INTO `performer_info` VALUES ('4', '郑凯', 'zhengkai', '1995', '北京一套房', '人生赢家啦啦啦啦啦', 'Uploade/20180111103657822.jpg');

-- ----------------------------
-- Table structure for remark
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评分id',
  `u_id` int(11) NOT NULL COMMENT '主评用户id',
  `user_id` int(11) NOT NULL COMMENT '追评用户id',
  `content` varchar(11) NOT NULL COMMENT '追评内容',
  `date` varchar(50) NOT NULL COMMENT '追评时间;格式01-06 03:26',
  `c_id` int(11) NOT NULL COMMENT '追评内容id;对于那一条评论进行追评',
  `state` char(1) NOT NULL COMMENT '评论状态;0禁止显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remark
-- ----------------------------
INSERT INTO `remark` VALUES ('1', '0', '0', '分分看', '01-06 03:26', '111', '');
INSERT INTO `remark` VALUES ('2', '0', '0', '你好', '01-06 03:26', '333', '');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评分id',
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `score` char(3) NOT NULL COMMENT '电影评分;如3.6',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '1', '9.9', '0');
INSERT INTO `score` VALUES ('2', '2', '6.6', '0');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `name` varchar(5) NOT NULL COMMENT '影片类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '爱情');
INSERT INTO `type` VALUES ('2', '喜剧');
INSERT INTO `type` VALUES ('3', '动作');
INSERT INTO `type` VALUES ('4', '科幻');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(20) NOT NULL COMMENT '用户名称;手机号，微信号',
  `photo` varchar(255) DEFAULT NULL COMMENT '用户头像地址',
  `city` varchar(255) DEFAULT NULL COMMENT '地区显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangkang', 'http://localhost/wangzherongyao/admin/uplode/20180102092443821.jpg', null);
