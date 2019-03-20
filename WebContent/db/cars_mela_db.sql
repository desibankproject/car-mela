/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : cars_mela_db
Target Host     : localhost:3306
Target Database : cars_mela_db
Date: 2019-03-20 15:17:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for car_news_tbl
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
-- Table structure for car_slider_tbl
-- ----------------------------
DROP TABLE IF EXISTS `car_slider_tbl`;
CREATE TABLE `car_slider_tbl` (
  `scid` int(30) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `subtitle` varchar(100) default NULL,
  `image` varchar(300) default NULL,
  `description` varchar(500) default NULL,
  `doe` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`scid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_slider_tbl
-- ----------------------------
INSERT INTO `car_slider_tbl` VALUES ('1', 'FirstCar', 'Racing1', 'images/banner2.jpg', 'Sports Ferrari blue', '2019-03-13 18:23:14');
INSERT INTO `car_slider_tbl` VALUES ('2', 'SecondCar', 'Racing2', 'images/banner1.jpg', 'Sports Koenigsegg  Black & Gray', '2019-03-13 18:24:48');
INSERT INTO `car_slider_tbl` VALUES ('3', 'ThirdCar', 'Racing3', 'images/banner3.jpg', 'Sports BMW Black', '2019-03-13 18:23:34');
INSERT INTO `car_slider_tbl` VALUES ('4', 'FourthCar', 'Racing4', 'images/banner4.jpg', 'Sports Subru Blue', '2019-03-13 18:23:52');
INSERT INTO `car_slider_tbl` VALUES ('5', 'FifthCar', 'Racing5', 'images/banner5.jpg', 'Sports Porsche Yellow', '2019-03-13 18:53:36');
INSERT INTO `car_slider_tbl` VALUES ('6', null, null, null, null, null);

-- ----------------------------
-- Table structure for gallery_tbl
-- ----------------------------
DROP TABLE IF EXISTS `gallery_tbl`;
CREATE TABLE `gallery_tbl` (
  `galid` int(30) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `subtitle` varchar(50) default NULL,
  `year` int(4) default NULL,
  `description` varchar(500) default NULL,
  `image` varchar(500) default NULL,
  `doe` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`galid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gallery_tbl
-- ----------------------------
INSERT INTO `gallery_tbl` VALUES ('1', 'Sports Car', 'BMW', '2019', 'Blue color sport BMW', 'images/t-pic5.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('2', 'Sports Car', 'BMW2', '2010', 'Black', 'images/t-pic11.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('3', 'Sports Car', 'BMW3', '2009', 'Pink', 'images/t-pic10.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('4', 'Sports Car', 'BMW4', '2008', 'Green', 'images/t-pic10.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('6', 'Sports Car', 'AUDI', '2010', 'Red Carr', 'images/t-pic5.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('7', 'Sports Car', 'AUDI', '2010', 'Red Carr', 'images/t-pic5.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('8', 'Sports Car', 'AUDI', '2010', 'Red Carr', 'images/t-pic5.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('9', 'Sports Car', 'OPAO', '2018', 'Red Carr', 'images/t-pic5.jpg', null);
INSERT INTO `gallery_tbl` VALUES ('10', 'Sports Car', 'OPAO', '2018', 'Red Carr', 'images/t-pic5.jpg', null);

-- ----------------------------
-- Table structure for login_tbl
-- ----------------------------
DROP TABLE IF EXISTS `login_tbl`;
CREATE TABLE `login_tbl` (
  `klog` int(30) NOT NULL auto_increment,
  `username` varchar(100) default NULL,
  `password` varchar(50) default NULL,
  `email` varchar(300) default NULL,
  PRIMARY KEY  (`klog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_tbl
-- ----------------------------
INSERT INTO `login_tbl` VALUES ('1', 'reetu', '123', 'reetu@gmail.com');
INSERT INTO `login_tbl` VALUES ('2', 'minnie', '1234', 'minnie@gmail.com');

-- ----------------------------
-- Table structure for our_club_tbl
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
