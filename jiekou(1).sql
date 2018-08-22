/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : jiekou

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-08-07 16:33:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text,
  `click` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=428 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('169', '3小时掌握Docker最佳实战925695', null, '179', '1498925695');
INSERT INTO `news` VALUES ('170', '物联网安全存在巨大隐患 美国政府不镇定了1499017240', null, '1208', '1499017240');
INSERT INTO `news` VALUES ('171', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103335', null, '1147', '1499103335');
INSERT INTO `news` VALUES ('172', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501779860', null, '772', '1501779860');
INSERT INTO `news` VALUES ('173', 'JVM并不是那么重量级1502239610', null, '6322', '1502239610');
INSERT INTO `news` VALUES ('174', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022253', null, '3476', '1502225380');
INSERT INTO `news` VALUES ('175', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687430', null, '4046', '1491687430');
INSERT INTO `news` VALUES ('176', '进行 Kotlin 实战开发前，你应了解的那些技术点1498925730', null, '186', '1498925730');
INSERT INTO `news` VALUES ('177', '物联网安全存在巨大隐患 美国政府不镇定了1499017275', null, '1215', '1499017275');
INSERT INTO `news` VALUES ('178', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103370', null, '1154', '1499103370');
INSERT INTO `news` VALUES ('179', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501779895', null, '779', '1501779895');
INSERT INTO `news` VALUES ('180', 'JVM并不是那么重量级1502239645', null, '6329', '1502239645');
INSERT INTO `news` VALUES ('181', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022254', null, '3483', '1502225415');
INSERT INTO `news` VALUES ('182', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687465', null, '4053', '1491687465');
INSERT INTO `news` VALUES ('183', '进行 Kotlin 实战开发前，你应了解的那些技术点1498925765', null, '193', '1498925765');
INSERT INTO `news` VALUES ('184', '物联网安全存在巨大隐患 美国政府不镇定了1499017310', null, '1222', '1499017310');
INSERT INTO `news` VALUES ('185', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103405', null, '1161', '1499103405');
INSERT INTO `news` VALUES ('186', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501779930', null, '786', '1501779930');
INSERT INTO `news` VALUES ('187', 'JVM并不是那么重量级1502239680', null, '6336', '1502239680');
INSERT INTO `news` VALUES ('188', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022254', null, '3490', '1502225450');
INSERT INTO `news` VALUES ('189', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687500', null, '4060', '1491687500');
INSERT INTO `news` VALUES ('190', '进行 Kotlin 实战开发前，你应了解的那些技术点1498925800', null, '200', '1498925800');
INSERT INTO `news` VALUES ('191', '物联网安全存在巨大隐患 美国政府不镇定了1499017345', null, '1229', '1499017345');
INSERT INTO `news` VALUES ('192', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103440', null, '1168', '1499103440');
INSERT INTO `news` VALUES ('193', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501779965', null, '793', '1501779965');
INSERT INTO `news` VALUES ('194', 'JVM并不是那么重量级1502239715', null, '6343', '1502239715');
INSERT INTO `news` VALUES ('195', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022254', null, '3497', '1502225485');
INSERT INTO `news` VALUES ('196', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687535', null, '4067', '1491687535');
INSERT INTO `news` VALUES ('197', '进行 Kotlin 实战开发前，你应了解的那些技术点1498925835', null, '207', '1498925835');
INSERT INTO `news` VALUES ('198', '物联网安全存在巨大隐患 美国政府不镇定了1499017380', null, '1236', '1499017380');
INSERT INTO `news` VALUES ('199', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103475', null, '1175', '1499103475');
INSERT INTO `news` VALUES ('200', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501780000', null, '800', '1501780000');
INSERT INTO `news` VALUES ('201', 'JVM并不是那么重量级1502239750', null, '6350', '1502239750');
INSERT INTO `news` VALUES ('202', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022255', null, '3504', '1502225520');
INSERT INTO `news` VALUES ('203', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687570', null, '4074', '1491687570');
INSERT INTO `news` VALUES ('204', '进行 Kotlin 实战开发前，你应了解的那些技术点1498925870', null, '214', '1498925870');
INSERT INTO `news` VALUES ('205', '物联网安全存在巨大隐患 美国政府不镇定了1499017415', null, '1243', '1499017415');
INSERT INTO `news` VALUES ('206', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103510', null, '1182', '1499103510');
INSERT INTO `news` VALUES ('207', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501780035', null, '807', '1501780035');
INSERT INTO `news` VALUES ('208', 'JVM并不是那么重量级1502239785', null, '6357', '1502239785');
INSERT INTO `news` VALUES ('209', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022255', null, '3511', '1502225555');
INSERT INTO `news` VALUES ('210', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687605', null, '4081', '1491687605');
INSERT INTO `news` VALUES ('211', '进行 Kotlin 实战开发前，你应了解的那些技术点1498925905', null, '221', '1498925905');
INSERT INTO `news` VALUES ('212', '物联网安全存在巨大隐患 美国政府不镇定了1499017450', null, '1250', '1499017450');
INSERT INTO `news` VALUES ('213', '\r\n致力技术民主化，开源新贵BigDL的进阶之路1499103545', null, '1189', '1499103545');
INSERT INTO `news` VALUES ('214', '机器学习填坑：你知道模型参数和超参数之间的区别吗？1501780070', null, '814', '1501780070');
INSERT INTO `news` VALUES ('215', 'JVM并不是那么重量级1502239820', null, '6364', '1502239820');
INSERT INTO `news` VALUES ('216', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化15022255', null, '3518', '1502225590');
INSERT INTO `news` VALUES ('217', '《程序员》8月精彩内容：VR与AR开发实战 & 容器1491687640', null, '4088', '1491687640');
INSERT INTO `news` VALUES ('218', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('219', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('220', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('221', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('222', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('223', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('224', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('225', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('226', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('227', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('228', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('229', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('230', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('231', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('232', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('233', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('234', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('235', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('236', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('237', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('238', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('239', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('240', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('241', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('242', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('243', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('244', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('245', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('246', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('247', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('248', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('249', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('250', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('251', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('252', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('253', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('254', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('255', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('256', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('257', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('258', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('259', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('260', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('261', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('262', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('263', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('264', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('265', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('266', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('267', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('268', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('269', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('270', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('271', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('272', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('273', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('274', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('275', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('276', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('277', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('278', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('279', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('280', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('281', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('282', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('283', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('284', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('285', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('286', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('287', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('288', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('289', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('290', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('291', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('292', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('293', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('294', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('295', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('296', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('297', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('298', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('299', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('300', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('301', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('302', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('303', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('304', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('305', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('306', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('307', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('308', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('309', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('310', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('311', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('312', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('313', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('314', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('315', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('316', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('317', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('318', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('319', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('320', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('321', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('322', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('323', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('324', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('325', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('326', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('327', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('328', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('329', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('330', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('331', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('332', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('333', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('334', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('335', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('336', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('337', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('338', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('339', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('340', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('341', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('342', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('343', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('344', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('345', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('346', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('347', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('348', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('349', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('350', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('351', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('352', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('353', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('354', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('355', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('356', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('357', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('358', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('359', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('360', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('361', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('362', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('363', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('364', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('365', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('366', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('367', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('368', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('369', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('370', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('371', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('372', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('373', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('374', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('375', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('376', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('377', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('378', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('379', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('380', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('381', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('382', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('383', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('384', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('385', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('386', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('387', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('388', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('389', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('390', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('391', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('392', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('393', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('394', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('395', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('396', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('397', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('398', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('399', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('400', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('401', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('402', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('403', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('404', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('405', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('406', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('407', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('408', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('409', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('410', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('411', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('412', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('413', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('414', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('415', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('416', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('417', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('418', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('419', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('420', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');
INSERT INTO `news` VALUES ('421', '进行 Kotlin 实战开发前，你应了解的那些技术点', null, '10', '1498924800');
INSERT INTO `news` VALUES ('422', '物联网安全存在巨大隐患 美国政府不镇定了', null, '1038', '1499011200');
INSERT INTO `news` VALUES ('423', '\r\n致力技术民主化，开源新贵BigDL的进阶之路', null, '976', '1499097600');
INSERT INTO `news` VALUES ('424', '机器学习填坑：你知道模型参数和超参数之间的区别吗？', null, '600', '1501776000');
INSERT INTO `news` VALUES ('425', 'JVM并不是那么重量级', null, '6149', '1502208000');
INSERT INTO `news` VALUES ('426', '移动周刊第 201 期：Android 组件化探索与思考、深入剖析 iOS 性能优化', null, '3302', '1502208000');
INSERT INTO `news` VALUES ('427', '《程序员》8月精彩内容：VR与AR开发实战 & 容器', null, '3871', '1491667200');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'yonghuming', '3f572fcb0f9af03848738946954b8c43');
