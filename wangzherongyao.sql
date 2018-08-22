/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : wangzherongyao

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-01-17 14:12:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `admin_pwd` varchar(32) NOT NULL,
  `admin_time` int(11) NOT NULL,
  `admin_status` int(1) NOT NULL DEFAULT '1' COMMENT '状态:1->开启  2->关闭',
  `admin_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1513849342', '1', 'http://localhost/php/Admin/public/image/5.jpg');
INSERT INTO `admin` VALUES ('2', 'admins', '2aefc34200a294a3cc7db81b43a81873', '1513849355', '1', 'http://localhost/php/Admin/public/image/1.jpg');

-- ----------------------------
-- Table structure for chuzhuang
-- ----------------------------
DROP TABLE IF EXISTS `chuzhuang`;
CREATE TABLE `chuzhuang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '英雄id',
  `hero_id` int(11) DEFAULT NULL,
  `daoju_one` varchar(255) DEFAULT NULL,
  `daoju_two` varchar(255) DEFAULT NULL,
  `daoju_three` varchar(255) DEFAULT NULL,
  `daoju_four` varchar(255) DEFAULT NULL,
  `daoju_five` varchar(255) DEFAULT NULL,
  `daoju_six` varchar(255) DEFAULT NULL,
  `miaosu` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuzhuang
-- ----------------------------
INSERT INTO `chuzhuang` VALUES ('8', '1', '博学者之怒', '打野刀', '梦魇之牙', '反伤刺甲', '魔女斗篷', '闪电匕首', 'Tips：全输出曹操，伤害爆炸，但是很脆，对操作要求较高\r\n英雄攻略');
INSERT INTO `chuzhuang` VALUES ('7', '1', '博学者之怒', '打野刀', '梦魇之牙', '反伤刺甲', '魔女斗篷', '闪电匕首', 'Tips：全输出曹操，伤害爆炸，但是很脆，对操作要求较高\r\n英雄攻略');
INSERT INTO `chuzhuang` VALUES ('6', '2', '博学者之怒', '打野刀', '梦魇之牙', '反伤刺甲', '魔女斗篷', '闪电匕首', 'Tips：射手出门装，末世配合后羿的被动技能可以大幅度提升后羿的普攻输出，超高爆发输出，破甲弓在中后期可以对敌方坦克构成较大威胁');
INSERT INTO `chuzhuang` VALUES ('5', '2', '博学者之怒', '打野刀', '梦魇之牙', '反伤刺甲', '魔女斗篷', '闪电匕首', 'Tips：射手出门装，末世配合后羿的被动技能可以大幅度提升后羿的普攻输出，超高爆发输出，破甲弓在中后期可以对敌方坦克构成较大威胁');
INSERT INTO `chuzhuang` VALUES ('9', '5', '博学者之怒', '打野刀', '梦魇之牙', '反伤刺甲', '魔女斗篷', '闪电匕首', 'Tips：全输出装备，团战能打出爆炸伤害，需要较高的操作技巧和队友的保护');
INSERT INTO `chuzhuang` VALUES ('10', '5', '急速之靴', '博学者之怒', '梦魇之牙', '反伤刺甲', '魔女斗篷', '闪电匕首', 'Tips：全输出装备，团战能打出爆炸伤害，需要较高的操作技巧和队友的保护');

-- ----------------------------
-- Table structure for daojuleixing
-- ----------------------------
DROP TABLE IF EXISTS `daojuleixing`;
CREATE TABLE `daojuleixing` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daojuleixing
-- ----------------------------
INSERT INTO `daojuleixing` VALUES ('1', '1', '攻击');
INSERT INTO `daojuleixing` VALUES ('2', '2', '防御');
INSERT INTO `daojuleixing` VALUES ('3', '3', '辅助');
INSERT INTO `daojuleixing` VALUES ('4', '4', '打野');
INSERT INTO `daojuleixing` VALUES ('5', '5', '法术');
INSERT INTO `daojuleixing` VALUES ('6', '6', '移动');
INSERT INTO `daojuleixing` VALUES ('7', '7', '攻击');

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL COMMENT '名称',
  `photo` varchar(50) NOT NULL COMMENT '头像',
  `image` varchar(50) NOT NULL COMMENT '导航介绍图',
  `vocation_id` int(11) NOT NULL COMMENT '职业id',
  `free_week` int(1) NOT NULL DEFAULT '1' COMMENT '是否为本周免费 1-是 2-否',
  `new_recommend` int(1) NOT NULL DEFAULT '1' COMMENT '新手推荐 1-是 2-否',
  `live` int(2) NOT NULL COMMENT '生存能力',
  `hurt` int(2) NOT NULL COMMENT '攻击伤害',
  `effect` int(2) NOT NULL COMMENT '技能效果',
  `difficulty` int(2) NOT NULL COMMENT '上手难度',
  `story` text NOT NULL COMMENT '英雄故事',
  `history` text NOT NULL COMMENT '历史上的它',
  `zhu_skill_id` int(11) NOT NULL COMMENT '主升',
  `fu_skill_id` int(11) DEFAULT NULL COMMENT '副升',
  `summoner_skill` varchar(10) DEFAULT NULL COMMENT '召唤师技能',
  `rune` varchar(20) DEFAULT NULL,
  `position` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('1', '曹操', 'upload/15142915465675.jpg', 'upload/15145191539309big.png', '4', '2', '1', '90', '90', '40', '70', '发的说法是', '防守打法', '2', '3', '5,8', null, '0,280');
INSERT INTO `hero` VALUES ('2', '后裔', 'upload/15142928666149.jpg', 'upload/15145192111408big.png', '6', '1', '1', '34', '89', '78', '87', '射手', '射手', '6', '7', '7,9', null, '0,70');
INSERT INTO `hero` VALUES ('3', '张飞', 'upload/15143437727695.jpg', 'upload/15145192235173big.png', '5', '1', '1', '95', '20', '25', '43', '发发士大夫士大夫是', '发大水发射点发射点发撒法', '2', '3', '4,1', null, '0,0');
INSERT INTO `hero` VALUES ('4', '小乔', 'upload/15143438458188.jpg', 'upload/15145192352620big.png', '3', '1', '1', '21', '12', '21', '21', '打发打发发', '阿斯顿发射点', '6', '6', '1,2', null, '0,350');
INSERT INTO `hero` VALUES ('5', '鲁班', 'upload/15143439275191.jpg', 'upload/15145192517321big.png', '6', '1', '1', '58', '10', '28', '29', '大热公司分管', '发大水发射点发射点发', '1', '2', '3,1', null, '0,70');
INSERT INTO `hero` VALUES ('6', '韩信', 'upload/15143439684469.jpg', 'upload/15145192517321big.png', '2', '1', '2', '23', '32', '32', '32', '问富翁啊范围', '发大水范德萨发生', '2', '2', '4,1', null, '0,140');
INSERT INTO `hero` VALUES ('7', '大桥', 'upload/15143440061189.jpg', 'upload/15145192517321big.png', '3', '2', '1', '50', '73', '43', '43', '发违法额挖法', '发大水发大水发', '3', '6', '6,1', null, '0,210');
INSERT INTO `hero` VALUES ('8', '明世隐', 'upload/15143440552856.jpg', 'upload/15145192517321big.png', '3', '1', '2', '34', '34', '43', '43', '啊单位发的发', '士大夫撒s', '2', '2', '4,1', null, '0,210');
INSERT INTO `hero` VALUES ('9', '刘备', 'upload/15143469712792.jpg', 'upload/15145192517321big.png', '4', '1', '2', '34', '43', '43', '43', '饿我去热污染', '法大师傅似的', '3', '1', '3,2', null, '0,280');
INSERT INTO `hero` VALUES ('10', '百里守约', 'upload/15143470116823.jpg', 'upload/15145192517321big.png', '5', '2', '1', '53', '38', '30', '39', '阿飞倒萨发', '的萨芬士大夫', '2', '3', '3,1', null, '0,70');
INSERT INTO `hero` VALUES ('11', '李白', 'upload/15143470514563.jpg', 'upload/15145192517321big.png', '2', '2', '2', '45', '54', '54', '54', '分为氛围阿飞', '阿斯顿发射点犯得上', '3', '3', '3,1', null, '0,140');
INSERT INTO `hero` VALUES ('12', '孟奇', 'upload/15144573209832.jpg', 'upload/15145168642237big.png', '2', '2', '1', '45', '43', '43', '43', '方式打发士大夫撒地方', '发大水发大水发是的', '11', '11', '2,3', null, '0,350');
INSERT INTO `hero` VALUES ('13', '庄周', 'upload/15145140413081.jpg', 'upload/15145168852883big.png', '4', '2', '1', '98', '23', '32', '56', '的撒法发的发射点发生', '是发士大夫士大夫士大夫但是', '2', '6', '3,1', null, '0,210');
INSERT INTO `hero` VALUES ('14', '鬼谷子', 'upload/15147963296227.jpg', 'upload/15147962778443big.png', '3', '2', '1', '50', '88', '88', '88', '的撒法大师傅', '发大水发大水发', '3', '3', '2,1', null, '0,210');
INSERT INTO `hero` VALUES ('15', '百里玄策', 'upload/15148581004252.jpg', 'upload/15148582369882big.png', '2', '2', '1', '50', '80', '14', '50', '玄策不会忘记那个日子：来历不明的马贼冲破边关的城镇，然而齐心协力的守卫军和民众守住城门。率先进入城镇的马\r\n贼走投无路，挟持了无力反抗的老弱们作为逃离的砝码。', '', '2', '7', '2,1', null, '0,140');

-- ----------------------------
-- Table structure for hero_guanxi
-- ----------------------------
DROP TABLE IF EXISTS `hero_guanxi`;
CREATE TABLE `hero_guanxi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `zhu_hero_id` int(11) NOT NULL COMMENT '主英雄id',
  `guanxi_hero_id` int(11) DEFAULT NULL COMMENT '关系英雄id',
  `guanxi` varchar(255) DEFAULT NULL COMMENT '1-最佳搭档，2-压制英雄，3-被压制英雄',
  `miaosu` varchar(255) DEFAULT NULL COMMENT 'miaosu',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero_guanxi
-- ----------------------------
INSERT INTO `hero_guanxi` VALUES ('1', '5', '7', '3', '\r\n鲁班七号：曹操的一套技能很少有脆皮能够承受的住。他的高机动性和强大控制能力，也让没有位移的脆皮十分头疼，即使鲁班的高伤害可以给予他一定的自保能力，曹操强大的大招回血效果也能抵消这个优势，可以轻松压制近乎无解。');
INSERT INTO `hero_guanxi` VALUES ('2', '5', '4', '3', '\r\n鲁班七号：曹操的一套技能很少有脆皮能够承受的住。他的高机动性和强大控制能力，也让没有位移的脆皮十分头疼，即使鲁班的高伤害可以给予他一定的自保能力，曹操强大的大招回血效果也能抵消这个优势，可以轻松压制近乎无解。');
INSERT INTO `hero_guanxi` VALUES ('5', '1', '4', '3', '发生大法师的');
INSERT INTO `hero_guanxi` VALUES ('6', '1', '5', '3', '\r\n庄周：利用2技能增加移动速度，增加己方突进的机动性，在gank的时候除了有加速增益外，还能使用1技能为敌人施加减速效果，这样更能帮助曹操留住敌人。在进行团战时，这时候庄周');
INSERT INTO `hero_guanxi` VALUES ('37', '1', '3', '1', '\r\n孙膑：孙膑在和曹操打配合时可以为他增加技能冷却以及移动速度加成。使用2技能加速可以让曹操贴近敌人进行打击，生命恢复可以很好的提高曹');
INSERT INTO `hero_guanxi` VALUES ('36', '1', '6', '1', '\r\n王昭君：王昭君的关键点于2技能的冰冻效果，冻住英雄大招打出极高的爆发。曹操的大招能够增加韧性、再加上抵抗之靴的增加的韧性，');
INSERT INTO `hero_guanxi` VALUES ('11', '2', '5', '2', '\r\n鲁班七号：曹操的一套技能很少有脆皮能够承受的住。他的高机动性和强大控制能力，也让没有位移的脆皮');
INSERT INTO `hero_guanxi` VALUES ('12', '2', '1', '2', '大幅升高身高');
INSERT INTO `hero_guanxi` VALUES ('31', '1', '6', '2', '\r\n刘邦的嘲讽技能能有效控制曹操输出');
INSERT INTO `hero_guanxi` VALUES ('30', '1', '5', '2', '\r\n王昭君的减速和控制技能限制曹操的输出能力');
INSERT INTO `hero_guanxi` VALUES ('17', '2', '5', '1', '的说法地方');
INSERT INTO `hero_guanxi` VALUES ('18', '2', '6', '1', '大幅升高身高');
INSERT INTO `hero_guanxi` VALUES ('19', '2', '3', '3', '发撒旦飞洒地方');
INSERT INTO `hero_guanxi` VALUES ('20', '2', '1', '3', '士大夫是');
INSERT INTO `hero_guanxi` VALUES ('21', '3', '4', '1', '阿斯顿发生');
INSERT INTO `hero_guanxi` VALUES ('22', '3', '2', '1', '阿三发射点');
INSERT INTO `hero_guanxi` VALUES ('23', '3', '6', '2', '发射点发生');
INSERT INTO `hero_guanxi` VALUES ('24', '3', '5', '2', '撒旦发的');
INSERT INTO `hero_guanxi` VALUES ('28', '3', '5', '3', '发射点发大水');
INSERT INTO `hero_guanxi` VALUES ('29', '3', '4', '3', '手动阀');
INSERT INTO `hero_guanxi` VALUES ('32', '6', '8', '2', 'fasdf ');
INSERT INTO `hero_guanxi` VALUES ('33', '6', '5', '2', 'dfsgfdsag ');
INSERT INTO `hero_guanxi` VALUES ('34', '8', '5', '2', 'fdsafsdf');
INSERT INTO `hero_guanxi` VALUES ('35', '8', '4', '2', 'fasdfsdf');
INSERT INTO `hero_guanxi` VALUES ('38', '6', '3', '1', 'wefadfa');
INSERT INTO `hero_guanxi` VALUES ('39', '6', '2', '1', 'fasdfsdf');

-- ----------------------------
-- Table structure for jineng
-- ----------------------------
DROP TABLE IF EXISTS `jineng`;
CREATE TABLE `jineng` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `image` varchar(50) DEFAULT NULL COMMENT '头像',
  `lengque` varchar(255) DEFAULT NULL COMMENT '冷却值',
  `xiaohao` varchar(255) DEFAULT NULL COMMENT '消耗',
  `miaosu` varchar(255) DEFAULT NULL COMMENT '描述',
  `hero_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `num` int(11) DEFAULT NULL COMMENT '技能顺序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jineng
-- ----------------------------
INSERT INTO `jineng` VALUES ('1', '争霸', 'upload/15144560987109.png', '0', '0', '被动：曹操每次施放技能会增加10%攻击速度，最多叠加5层，持续3秒', '1', '这个技能使得曹操非常灵活，连续释放三次可有以产生很远的位移和伤害.不论在追人或逃跑时都非常实用', '1');
INSERT INTO `jineng` VALUES ('2', '霸道之刃', 'upload/15144561669293.png', '10/9.4/8.8/8.2/7.6/7', '0', '曹操向指定方向发起斩击突袭，对路径上的敌人造成160/185/210/235/260/285（+84%物理加成）点物理伤害；最多可以发动3次，每次斩击间隔不能超过8秒，并且第三次斩击会将敌人击飞0.5秒', '1', '这个技能使得曹操非常灵活，连续释放三次可有以产生很远的位移和伤害.不论在追人或逃跑时都非常实用', '2');
INSERT INTO `jineng` VALUES ('3', '纵横天下', 'upload/15144562205578.png', '12/11/10/9/8/7', '0', '曹操剑指天下，向指定方向挥出强大剑气，对路径上的敌人造成240/300/360/420/480/540（+90%物理加成）点物理伤害并减少其50%移动速度，持续2秒；被动：普通攻击命中敌人时减少1秒纵横天下的冷却时间', '1', '对直线上敌人造成物理伤害，并减速，配合被动技能可以频繁使用', '3');
INSERT INTO `jineng` VALUES ('4', '浴血枭雄', 'upload/15144562561223.png', '30', '0', '曹操以鲜血意志强化大剑，持续8秒，施放时对附近敌人造成300/375/450（+100%物理加成）点物理伤害，强化的大剑会增加100/150/200物理攻击力和20%韧性；并且每次普通攻击或技能命中敌方将回复120/180/240（+40%物理加成）点生命值', '1', '这个技能在提升曹操伤害的同时，也增强了曹操在团战中的生存能力', '4');
INSERT INTO `jineng` VALUES ('5', '惩戒射击', 'upload/15144563099277.png', '0', '0', '这个技能在提升曹操伤害的同时，也增强了曹操在团战中的生存能力', '2', '后羿需要进行三次普攻命中来触发被动效果，一旦触发被动以后，将会造成高额伤害。', '1');
INSERT INTO `jineng` VALUES ('6', '多重箭矢', 'upload/15144563412041.png', '10', '60', '后羿强化自身攻击，每次攻击造成100/120/140/160/180/200（+50%物理加成）点物理伤害（若触发惩戒射击则每支箭矢造成原伤害的40%）并对面前区域内另外2名敌人造成50%伤害，该效果持续5秒。', '2', '主要输出技能，配合被动效果，每次普攻至多可发射9支箭矢，范围伤害能力极强。', '2');
INSERT INTO `jineng` VALUES ('7', '落日余晖', 'upload/15144563819748.png', '10/9/8/7/6/5', '60', '后羿命令日炙塔对指定区域进行攻击，短暂时间后召唤一束激光打击指定位置。对命中的敌人造成240/280/320/360/400/440（+80%物理加成）点法术伤害和50%减速效果，持续2秒，被中心点命中的敌人将受到额外50%的伤害。', '2', '后羿常规的控制技能，精准打击时也可以提供一定的爆发伤害。必要的时候可以在远处释放该技能骚扰敌人。', '4');
INSERT INTO `jineng` VALUES ('9', '食梦', 'upload/15144534526794.png', '0', '0', '被动：梦奇不断吞噬周围的噩梦，导致长胖；从最瘦到最胖总共会增加100点质量，耗时20秒；长胖会增加普通攻击和梦境萦绕、梦境漩涡攻击范围，并且最多可以增加150点物理攻击、200点物理和法术防御、92自然回血值；同时最多减少200点移动速度；梦奇使用技能会消耗质量，导致减肥；梦奇的第三次普通攻击将变更为横扫，横扫会造成更大范围的伤害', '12', '合理调整自身体积，在赶路和与敌人周旋时适当缩小体积提高移速，但要确保靠近敌人后拥有足够大的体积进行战斗', '1');
INSERT INTO `jineng` VALUES ('10', '灼日之矢', 'upload/15144564483801.png', '45/40/35', '130', '后羿向前方射出火焰箭。击中敌方英雄时造成500/625/750（+140%物理加成）点物理伤害并晕眩此目标(晕眩时长取决于火焰箭的飞行距离，最多造成3.5秒晕眩)。目标周围的敌人会受到爆炸伤害。', '2', '非常强力的开团技能，一旦命中远处的敌人将造成长时间的晕眩效果。另外这是一个全屏释放的技能，意味着后羿可以随时释放大招支援远处的队友，不过距离较远时，需要对释放方向进行一定的预判。', '1');
INSERT INTO `jineng` VALUES ('11', '梦境萦绕', 'upload/15144567316938.png', '3', '30', '梦奇消耗质量，形成可抵免525/630/735/840/945/1050（+120%法术加成）点伤害的护盾，护盾生成瞬间对周围敌人造成350/420/490/560/630/700（+80%法术加成）法术伤害并减少其50%移动速度，持续1.5秒。使用技能后7秒内下三次普通攻击命中敌人，每次均可回复5点质量', '12', '主要生存技能，也是调控质量的手段之一，带有减速效果。注意技能伤害范围会随质量提升。', '2');

-- ----------------------------
-- Table structure for mingwen
-- ----------------------------
DROP TABLE IF EXISTS `mingwen`;
CREATE TABLE `mingwen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `image` varchar(50) DEFAULT NULL COMMENT '头像',
  `miaosu` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mingwen
-- ----------------------------
INSERT INTO `mingwen` VALUES ('1', '异变', 'upload/15151324453328.png', '物理攻击力+2,物理穿透+3.6');
INSERT INTO `mingwen` VALUES ('2', '鹰眼', 'upload/15151324615248.png', '物理攻击力+0.9,物理穿透+6.4');
INSERT INTO `mingwen` VALUES ('3', '异变', 'upload/15151324716780.png', '物理攻击力+2,物理穿透+3.6');
INSERT INTO `mingwen` VALUES ('4', '鹰眼', 'upload/15151324837102.png', '物理攻击力+0.9物理穿透+6.4');
INSERT INTO `mingwen` VALUES ('6', '梦魇', 'upload/15148827163744.png', '法术攻击力+4.2  法术穿透+2.4');
INSERT INTO `mingwen` VALUES ('7', '献祭', 'upload/15148827597141.png', '法术攻击力+2.4  冷却缩减+0.7%');
INSERT INTO `mingwen` VALUES ('8', '调和', 'upload/15148827836095.png', '最大生命+45  生命回复+5.2  移速+0.4%');
INSERT INTO `mingwen` VALUES ('9', '宿命', 'upload/15148857962920.png', '攻速加成+1%最大生命+33.7攻速加成+1%最大生命+33.7物理防御力+2.3攻速加成+1%最大生命+33.7物理防御力+2.3');
INSERT INTO `mingwen` VALUES ('10', '虚空', 'upload/15148858315375.png', '最大生命+37.5  冷却缩减+0.6%');
INSERT INTO `mingwen` VALUES ('11', '怜悯', 'upload/15148858647392.png', '冷却缩减+1%');

-- ----------------------------
-- Table structure for mingwen_hero
-- ----------------------------
DROP TABLE IF EXISTS `mingwen_hero`;
CREATE TABLE `mingwen_hero` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hero_id` int(11) NOT NULL COMMENT '英雄id',
  `mingwen_one` varchar(255) DEFAULT NULL COMMENT '铭文1',
  `mingwen_two` varchar(255) DEFAULT NULL COMMENT '铭文2',
  `mingwen_three` varchar(255) DEFAULT NULL COMMENT '铭文3',
  `miaosu` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mingwen_hero
-- ----------------------------
INSERT INTO `mingwen_hero` VALUES ('1', '1', '3', '4', '6', 'Tips：曹操作为一名战士，宿命提高突进时的生存能力，鹰眼保证在切入后排时能有足够的伤害击杀脆皮，狩猎提供的移动速度提高机动性。');
INSERT INTO `mingwen_hero` VALUES ('2', '2', '3', '4', '7', 'Tips：后羿是一个高爆发型的射手，非常依赖普攻效果，攻速，暴击，移速，对于后羿都是非常关键的属性');
INSERT INTO `mingwen_hero` VALUES ('3', '3', '3', '4', '6', 'Tips：张飞是坦克，蓝色调和提升最大生命、回血；绿色虚空提供的冷却缩减可以更好多释放技能；红色宿命为变身后输出作保障，最大生命、物理防御还能增加张飞的肉度。');
INSERT INTO `mingwen_hero` VALUES ('4', '4', '3', '4', '6', 'Tips：狩猎提升10％移速加成，对于被动具有加速效果的小乔来说，适合放风筝，可以进行中远距离的输出，机动性高。心眼和梦魇提升法穿效果。对于小乔这种伤害比较高的英雄来说，增加法穿可以在对方出法抗时也打出高额伤害。');
INSERT INTO `mingwen_hero` VALUES ('5', '5', '3', '4', '6', 'Tips：鲁班七号的核心玩法是利用1技能后的被动扫射在短时间内打出超额爆发，百穿的增益可以确保鲁班七号的有效伤害，攻速收益可以帮鲁班七号更容易叠被动，移速可以帮鲁班增加逃生能力。');
INSERT INTO `mingwen_hero` VALUES ('22', '6', '3', '4', '6', 'Tips：红色纷争，物理攻击可以让韩信足够的输出，提升清野效率和与敌方的对抗能力；绿色鹰眼，物理穿透进一步提高韩信的穿甲输出能力；蓝色兽痕，暴击率的加成可以在一定程度上使得韩信的输出最大化。');

-- ----------------------------
-- Table structure for prop
-- ----------------------------
DROP TABLE IF EXISTS `prop`;
CREATE TABLE `prop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `image` varchar(70) DEFAULT NULL COMMENT '介绍图',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `typename` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT '售价',
  `total` int(11) DEFAULT NULL COMMENT '总价',
  `decribe` varchar(255) DEFAULT NULL COMMENT '描述',
  `attribute` varchar(255) DEFAULT NULL COMMENT '属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prop
-- ----------------------------
INSERT INTO `prop` VALUES ('8', '闪电匕首', 'upload/15141883528580.jpg', '1', '攻击', '654', '351456', '撒旦发顺丰是否', '法撒旦发射点');
INSERT INTO `prop` VALUES ('10', '魔女斗篷', 'upload/15144310566160.jpg', '3', '防御', '23423', '423', ' 我发大师傅的撒', '是打发十分');
INSERT INTO `prop` VALUES ('9', '反伤刺甲', 'upload/15141900977393.jpg', '3', '防御', '857', '32423', '撒服务端发送的', 'fdsaf');
INSERT INTO `prop` VALUES ('11', '梦魇之牙', 'upload/15144311162073.jpg', '6', '辅助', '2342', '4324', '发达的事实', '上电股份乳');
INSERT INTO `prop` VALUES ('12', '打野刀', 'upload/15144311807831.jpg', '5', '打野', '456', '45645', '是个十分的故事大纲', '地方还是如何s');
INSERT INTO `prop` VALUES ('13', '博学者之怒', 'upload/15144312062111.jpg', '2', '法术', '3453', '345345', '受到广泛大概', '单方事故s');
INSERT INTO `prop` VALUES ('14', '急速之靴', 'upload/15144312864812.jpg', '4', '移动', '343', '423423', '啊打发的说法', '的萨芬地方');
INSERT INTO `prop` VALUES ('6', '速击之强', 'upload/15141863615331.jpg', '1', '攻击', '33', '33', '啊撒旦范德萨发', '的萨芬');
INSERT INTO `prop` VALUES ('7', '破甲弓', 'upload/15141865114791.jpg', '1', '攻击', '34343', '344343', '幅度萨芬萨', '方法士大夫的');

-- ----------------------------
-- Table structure for skin
-- ----------------------------
DROP TABLE IF EXISTS `skin`;
CREATE TABLE `skin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `image` varchar(50) DEFAULT NULL COMMENT '头像',
  `big_image` varchar(50) DEFAULT NULL COMMENT '大图',
  `hero_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `num` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skin
-- ----------------------------
INSERT INTO `skin` VALUES ('1', '鲜血枭雄', 'upload/15148576366195.jpg', 'upload/15148575997539big.jpg', '1', '1');
INSERT INTO `skin` VALUES ('2', '超能战警', 'upload/15148576213972.jpg', 'upload/15148576212662big.jpg', '1', '2');
INSERT INTO `skin` VALUES ('3', '幽灵船长', 'upload/15148576579057.jpg', 'upload/15148576572399big.jpg', '1', '3');
INSERT INTO `skin` VALUES ('4', '死神来了', 'upload/15148576743148.jpg', 'upload/15148576741166big.jpg', '1', '4');
INSERT INTO `skin` VALUES ('5', '半神之弓', 'upload/15148577023337.jpg', 'upload/15148577021814big.jpg', '2', '1');
INSERT INTO `skin` VALUES ('6', '静谧之眼', 'upload/15148577996615.jpg', 'upload/15148577993311big.jpg', '10', '1');
INSERT INTO `skin` VALUES ('7', '绝影神枪', 'upload/15148579845322.jpg', 'upload/15148579849311big.jpg', '10', '2');
INSERT INTO `skin` VALUES ('8', '嚣狂之镰', 'upload/15148582987623.jpg', 'upload/15148582981780big.jpg', '15', '1');
INSERT INTO `skin` VALUES ('9', '威尼斯狂欢', 'upload/15148583288418.jpg', 'upload/15148583281553big.jpg', '15', '2');
INSERT INTO `skin` VALUES ('10', '阿尔法小队', 'upload/15160627599442.jpg', 'upload/15160627594620big.jpg', '2', '3');
INSERT INTO `skin` VALUES ('11', '精灵王', 'upload/15160628072939.jpg', 'upload/15160628075492big.jpg', '2', '2');

-- ----------------------------
-- Table structure for summoner_skill
-- ----------------------------
DROP TABLE IF EXISTS `summoner_skill`;
CREATE TABLE `summoner_skill` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `image` varchar(70) DEFAULT NULL COMMENT '介绍图',
  `big_image` varchar(70) DEFAULT NULL COMMENT '技能大图',
  `decribe` varchar(255) DEFAULT NULL COMMENT '描述',
  `unlock_level` int(30) DEFAULT NULL COMMENT '解锁等级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summoner_skill
-- ----------------------------
INSERT INTO `summoner_skill` VALUES ('1', '治疗术', 'upload/15141939461088.jpg', 'upload/15145186951046big.jpg', '120秒CD：回复自己与附近队友15%生命值，提高附近友军移动速度15%持续2秒', '9');
INSERT INTO `summoner_skill` VALUES ('7', '闪现', 'upload/15144299622023.jpg', 'upload/15145125151520big.jpg', '120秒CD：向指定方向位移一段距离', '19');
INSERT INTO `summoner_skill` VALUES ('6', '狂暴', 'upload/15144299414696.jpg', 'upload/15145125456897big.jpg', '60秒CD：增加攻击速度60%，并增加物理攻击力10%持续5秒', '5');
INSERT INTO `summoner_skill` VALUES ('3', '干扰', 'upload/15144298598461.jpg', 'upload/15145125586407big.jpg', '60秒CD：沉默机关持续5秒', '11');
INSERT INTO `summoner_skill` VALUES ('5', '终结', 'upload/15144299016525.jpg', 'upload/15145125704296big.jpg', '90秒CD：立即对身边敌军英雄造成其已损失生命值14%的真实伤害', '3');
INSERT INTO `summoner_skill` VALUES ('4', '眩晕', 'upload/15141931842806.jpg', 'upload/15145125843179big.jpg', '90秒CD：晕眩身边所有敌人0.75秒，并附带持续1秒的减速效果', '13');
INSERT INTO `summoner_skill` VALUES ('8', '弱化', 'upload/15144299722011.jpg', 'upload/15145125973713big.jpg', '90秒CD：减少身边敌人伤害输出30%持续2.5秒', '17');
INSERT INTO `summoner_skill` VALUES ('9', '疾跑', 'upload/15144299989773.jpg', 'upload/15145126101527big.jpg', '100秒CD：增加30%移动速度持续10秒', '7');
INSERT INTO `summoner_skill` VALUES ('10', '净化', 'upload/15144300299604.jpg', 'upload/15145126327899big.jpg', '120秒CD：解除自身所有负面和控制效果并免疫控制持续1.5秒', '15');
INSERT INTO `summoner_skill` VALUES ('11', '惩击', 'upload/15144301121780.jpg', 'upload/15145126484385big.jpg', '30秒CD：对身边的野怪和小兵造成真实伤害并眩晕1秒', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  `userimage` varchar(50) DEFAULT NULL,
  `is_show` int(2) NOT NULL DEFAULT '1' COMMENT '1--不封  2 --封',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'huxiaole', '1111', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('2', 'huxiaole', '1111', 'http://localhost/php/king/images/logo.png', '2');
INSERT INTO `user` VALUES ('3', '2312313', '12312312', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('4', '2312313', '12312312', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('5', '2312313', '12312312', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('6', '2312313', '12312312', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('7', '452344', '234234', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('8', '324324', '4324234', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('9', '1231212', '212121', 'http://localhost/php/king/images/logo.png', '1');
INSERT INTO `user` VALUES ('10', '1231212', '212121', 'http://localhost/php/king/images/logo.png', '1');

-- ----------------------------
-- Table structure for vocation
-- ----------------------------
DROP TABLE IF EXISTS `vocation`;
CREATE TABLE `vocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL COMMENT '名称',
  `eng_name` varchar(15) NOT NULL COMMENT '英文名称',
  `image` varchar(50) NOT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vocation
-- ----------------------------
INSERT INTO `vocation` VALUES ('1', '法师', 'sdfsdfa', 'upload/15142922436683.jpg');
INSERT INTO `vocation` VALUES ('2', '刺客', '荆轲', 'upload/15142922654725.jpg');
INSERT INTO `vocation` VALUES ('3', '战士', 'zhanshi', 'upload/15142922258022.jpg');
INSERT INTO `vocation` VALUES ('4', '坦克', 'tanke', 'upload/15142922811528.jpg');
INSERT INTO `vocation` VALUES ('5', '射手', '射手', 'upload/15142923013824.jpg');
INSERT INTO `vocation` VALUES ('6', '辅助', '手动阀', 'upload/15142923013824.jpg');
INSERT INTO `vocation` VALUES ('7', '射手', '射手', 'upload/15142923013824.jpg');
