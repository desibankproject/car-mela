/*
Navicat MySQL Data Transfer

Source Server         : Mahakal
Source Server Version : 50013
Source Host           : localhost:3306
Source Database       : cars_mela_db

Target Server Type    : MYSQL
Target Server Version : 50013
File Encoding         : 65001

Date: 2019-03-13 15:53:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car_news_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `car_news_tbl`;
CREATE TABLE `car_news_tbl` (
  `cnid` int(11) NOT NULL auto_increment,
  `title` varchar(30) default NULL,
  `subtitle` varchar(40) default NULL,
  `image` varchar(200) default NULL,
  `details` varchar(500) default NULL,
  `doe` timestamp NULL default NULL,
  PRIMARY KEY  (`cnid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_news_tbl
-- ----------------------------
INSERT INTO `car_news_tbl` VALUES ('100', 'Racing', 'Cars sport news', 'images/pic3.jpg', 'NA', '2019-03-13 15:38:55');

-- ----------------------------
-- Table structure for `our_club_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `our_club_tbl`;
CREATE TABLE `our_club_tbl` (
  `ocid` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `image` varchar(300) default NULL,
  `description` varchar(500) default NULL,
  `doe` timestamp NULL default NULL,
  PRIMARY KEY  (`ocid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of our_club_tbl
-- ----------------------------
INSERT INTO `our_club_tbl` VALUES ('1', 'Car Race', 'images/pic.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. To thank you for coming, who nostrud', '2019-03-13 15:12:38');
INSERT INTO `our_club_tbl` VALUES ('2', 'Rotary', 'images/pic1.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud', '2019-03-13 15:12:38');
INSERT INTO `our_club_tbl` VALUES ('3', 'Car Sports', 'images/pic2.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud', '2019-03-13 15:15:12');
