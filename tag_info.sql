/*
Navicat MySQL Data Transfer

Source Server         : fd
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : neusoft_system

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-06-19 06:27:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tag_info
-- ----------------------------
DROP TABLE IF EXISTS `tag_info`;
CREATE TABLE `tag_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) NOT NULL DEFAULT '',
  `tag_picpath` varchar(200) NOT NULL DEFAULT '',
  `tag_desc` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag_info
-- ----------------------------
INSERT INTO `tag_info` VALUES ('10', 'java刚发的', 'f04ac4db-5acd-4793-be7c-899c3ad3a4d5.jpg', '');
INSERT INTO `tag_info` VALUES ('11', 'java高级', '', '');
INSERT INTO `tag_info` VALUES ('12', 'javascript', '', '');
INSERT INTO `tag_info` VALUES ('14', 'html/css', '', '');
INSERT INTO `tag_info` VALUES ('16', 'jquery', '', '');
INSERT INTO `tag_info` VALUES ('17', 'servlet/jsp', '', '');
INSERT INTO `tag_info` VALUES ('18', 'spring', '', '');
INSERT INTO `tag_info` VALUES ('19', 'springmvc', '', '');
INSERT INTO `tag_info` VALUES ('20', 'mybatis', '', '');
INSERT INTO `tag_info` VALUES ('22', '新技术', '', '');
INSERT INTO `tag_info` VALUES ('23', '工具', '', '');
INSERT INTO `tag_info` VALUES ('25', 'struts', '', '');
INSERT INTO `tag_info` VALUES ('26', 'Hibernate', '', '');
