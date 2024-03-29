/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-06-11 17:37:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `purpleflowers`
-- ----------------------------
DROP TABLE IF EXISTS `purpleflowers`;
CREATE TABLE `purpleflowers` (
  `flower_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `dollar` varchar(10) NOT NULL,
  `star` varchar(5) DEFAULT NULL,
  `Introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productdetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purpleflowers
-- ----------------------------
INSERT INTO purpleflowers VALUES ('1', 'flowers/white01.jpg', '白花#1', '5', '3', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('2', 'flowers/white02.jpg', '白花#2', '8', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('3', 'flowers/white03.jpg', '白花#3', '11', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('4', 'flowers/white04.jpg', '白花#4', '11', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('5', 'flowers/white05.jpg', '白花#5', '11', '4', 'good', 'good', 'good');
INSERT INTO purpleflowers VALUES ('7', 'flowers/white01.jpg', 'test', 'NTD$4', null, null, null, null);
