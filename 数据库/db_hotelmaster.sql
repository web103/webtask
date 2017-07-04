/*
Navicat MySQL Data Transfer

Source Server         : sjs
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : db_hotelmaster

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-06-28 16:23:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_balancement
-- ----------------------------
DROP TABLE IF EXISTS `tb_balancement`;
CREATE TABLE `tb_balancement` (
  `BMID` varchar(32) NOT NULL,
  `BMCHECKINORDERID` varchar(32) NOT NULL,
  `BMGUESTID` varchar(32) DEFAULT NULL,
  `BMTYPE` varchar(16) NOT NULL,
  `BMTOTALRATE` decimal(14,2) NOT NULL,
  `BMPAIDMONEY` decimal(14,2) NOT NULL,
  `BMRECEIVMONEY` decimal(14,2) NOT NULL,
  `BMCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BMOPERATOR` varchar(20) NOT NULL,
  `BMPAYMENTMODEL` varchar(16) NOT NULL,
  `BMREMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_balancement
-- ----------------------------
INSERT INTO `tb_balancement` VALUES ('402881e51a448696011a4489783f0003', '402881e51a448696011a4489373e0001', '402881e51a39c232011a39da4d3e0005', '结单', '320.00', '1000.00', '200.00', '2008-06-01 22:30:37', 'admin', '现金', 'remark');
INSERT INTO `tb_balancement` VALUES ('402881e51a53efae011a53f874550004', '402881e51a53efae011a53f77fc40001', '402881e51a39c232011a39da4d3e0005', '结单', '350.00', '0.00', '0.00', '2008-06-04 22:26:09', 'admin', '现金', 'fdsafdsa');
INSERT INTO `tb_balancement` VALUES ('402881e625636b70012563767c6c0001', '402881e625587aa7012559003f2d0003', '402881e625587aa7012558e59ffa0001', '结单', '260.00', '0.00', '0.00', '2009-12-06 18:08:47', 'admin', '现金', '');
INSERT INTO `tb_balancement` VALUES ('40289fac5ce9c9df015ce9cb35200001', '402881e6254e53a001254e64b91d0007', '402881e6254e53a001254e63196c0006', '结单', '260.00', '0.00', '0.00', '2017-06-27 21:43:47', 'admin', '现金', '');
INSERT INTO `tb_balancement` VALUES ('40289fac5ce9c9df015ce9cc8c7d0005', '40289fac5ce8ce63015ce8d64bea0001', '402881e6254e53a001254e63196c0006', '结单', '260.00', '0.00', '0.00', '2017-06-27 21:45:15', 'admin', '现金', '');

-- ----------------------------
-- Table structure for tb_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_baseinfo`;
CREATE TABLE `tb_baseinfo` (
  `BIOID` varchar(32) NOT NULL,
  `BIONAME` varchar(32) NOT NULL,
  `BIOVALUE` varchar(200) NOT NULL,
  PRIMARY KEY (`BIOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_baseinfo
-- ----------------------------
INSERT INTO `tb_baseinfo` VALUES ('BIO0011234', 'CheckinOrderID', '18');
INSERT INTO `tb_baseinfo` VALUES ('BIO0011323', 'ReservOrderID', '4');
INSERT INTO `tb_baseinfo` VALUES ('BIO0056859', 'ReservUpdated', '2008-06-05 00:52:57.375');

-- ----------------------------
-- Table structure for tb_checkinitem
-- ----------------------------
DROP TABLE IF EXISTS `tb_checkinitem`;
CREATE TABLE `tb_checkinitem` (
  `CIMID` varchar(32) NOT NULL,
  `CHECKINORDER_CIOID` varchar(32) NOT NULL,
  `ROOM_RMID` varchar(32) NOT NULL,
  `CIMPRCTPRICE` decimal(14,2) NOT NULL,
  `CIMDISCOUNT` decimal(5,2) DEFAULT '100.00',
  `CIMINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CIMOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIMSTATE` varchar(16) NOT NULL,
  PRIMARY KEY (`CIMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_checkinitem
-- ----------------------------
INSERT INTO `tb_checkinitem` VALUES ('402881e51a448696011a4489376d0002', '402881e51a448696011a4489373e0001', '8109', '320.00', '100.00', '2008-06-01 21:15:00', '2008-06-02 12:00:00', '已结账');
INSERT INTO `tb_checkinitem` VALUES ('402881e51a53efae011a53f77fd30002', '402881e51a53efae011a53f77fc40001', '8308', '100.00', '31.25', '2008-06-04 22:24:00', '2008-06-05 12:00:00', '已结账');
INSERT INTO `tb_checkinitem` VALUES ('402881e51a53efae011a53f77fd30003', '402881e51a53efae011a53f77fc40001', '8209', '250.00', '96.15', '2008-06-04 22:24:00', '2008-06-05 12:00:00', '已结账');
INSERT INTO `tb_checkinitem` VALUES ('402881e51a579a4b011a57d29eb50004', '402881e51a579a4b011a57d29ea50003', '8208', '320.00', '100.00', '2008-06-05 16:22:00', '2008-06-06 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('402881e5267907ec01267915e3390005', '402881e5267907ec01267915e32e0004', '8101', '260.00', '100.00', '2010-01-29 15:53:00', '2010-01-30 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('402881e6254e53a001254e58d94e0002', '402881e6254e53a001254e58d93e0001', '8106', '260.00', '100.00', '2009-12-02 15:43:00', '2009-12-03 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('402881e6254e53a001254e58d94e0003', '402881e6254e53a001254e58d93e0001', '8107', '0.00', '0.00', '2009-12-02 15:43:00', '2009-12-03 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('402881e6254e53a001254e5be9230005', '402881e6254e53a001254e5be9230004', '8118', '260.00', '100.00', '2009-12-02 15:46:00', '2009-12-03 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('402881e6254e53a001254e64b91d0008', '402881e6254e53a001254e64b91d0007', '8106', '260.00', '100.00', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '已结账');
INSERT INTO `tb_checkinitem` VALUES ('402881e625587aa7012559003f440004', '402881e625587aa7012559003f2d0003', '8104', '260.00', '100.00', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '已结账');
INSERT INTO `tb_checkinitem` VALUES ('402881e625587aa70125590883f60006', '402881e625587aa70125590883f60005', '8103', '260.00', '100.00', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('40289fac5ce8ce63015ce8d64bec0002', '40289fac5ce8ce63015ce8d64bea0001', '8106', '260.00', '100.00', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '已结账');
INSERT INTO `tb_checkinitem` VALUES ('40289fac5ce8dad1015ce8ea3c6d0013', '40289fac5ce8dad1015ce8ea3c6d0012', '8101', '260.00', '100.00', '2010-01-29 15:53:00', '2010-01-30 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('40289fac5ce9c9df015ce9cc6c980004', '40289fac5ce9c9df015ce9cc6c980003', '8106', '260.00', '100.00', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '已入住');
INSERT INTO `tb_checkinitem` VALUES ('ff808081012a13dc01012a1aff9b0002', 'ff808081012a13dc01012a1aff7c0001', '8109', '320.00', '100.00', '2005-01-01 01:06:00', '2005-01-02 12:00:00', '已入住');

-- ----------------------------
-- Table structure for tb_checkinorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_checkinorder`;
CREATE TABLE `tb_checkinorder` (
  `CIOID` varchar(32) NOT NULL,
  `CIOGUESTNAME` varchar(20) NOT NULL,
  `CIOMANNUMBER` int(10) unsigned NOT NULL,
  `CIOGUESTCATALOG` varchar(16) NOT NULL,
  `CIOGUESTTYPE` varchar(16) NOT NULL,
  `CIOGROUPNAME` varchar(32) DEFAULT NULL,
  `CIOGUESTCARDCATALOG` varchar(16) NOT NULL,
  `CIOGUESTCARDID` varchar(32) NOT NULL,
  `CIOCAUSE` varchar(100) DEFAULT NULL,
  `CIOSTATE` varchar(16) NOT NULL,
  `CIOINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CIOPREOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIOPRCTOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIOPAYMENTMODEL` varchar(16) NOT NULL,
  `CIOPAIDMONEY` decimal(14,2) NOT NULL,
  `CIOISRESERVID` varchar(32) DEFAULT NULL,
  `CIOOPERATOR` varchar(20) NOT NULL,
  `CIOGUESTGENDER` varchar(6) NOT NULL,
  `CIOTOTALRATE` decimal(14,2) NOT NULL,
  `CIOBEDRATE` decimal(14,2) DEFAULT NULL,
  `CIOORDERID` varchar(32) NOT NULL,
  PRIMARY KEY (`CIOID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_checkinorder
-- ----------------------------
INSERT INTO `tb_checkinorder` VALUES ('402881e51a448696011a4489373e0001', 'esperamier', '2', '散客', '普通客人', null, '身份证', '362422198611160012', null, '已结账', '2008-06-01 21:15:00', '2008-06-02 12:00:00', '2008-06-01 22:30:37', '现金', '0.00', null, 'FoGhost', '男', '320.00', '0.00', 'CIO00000001');
INSERT INTO `tb_checkinorder` VALUES ('402881e51a53efae011a53f77fc40001', 'esperamier', '2', '散客', '普通客人', null, '身份证', '362422198611160012', null, '已结账', '2008-06-04 22:24:00', '2008-06-05 12:00:00', '2008-06-04 22:26:09', '现金', '0.00', null, 'FoGhost', '男', '350.00', '0.00', 'CIO00000001');
INSERT INTO `tb_checkinorder` VALUES ('402881e51a579a4b011a57d29ea50003', 'esperamier', '2', '散客', '普通客人', null, '身份证', '362422198611160012', null, '已入住', '2008-06-05 16:22:00', '2008-06-06 12:00:00', '2008-06-06 12:00:00', '现金', '0.00', null, 'Admin', '男', '320.00', '0.00', 'CIO00000002');
INSERT INTO `tb_checkinorder` VALUES ('402881e5267907ec01267915e32e0004', '刘明', '2', '散客', '普通客人', null, '身份证', '123456789789123', null, '已入住', '2010-01-29 15:53:00', '2010-01-30 12:00:00', '2010-01-30 12:00:00', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000009');
INSERT INTO `tb_checkinorder` VALUES ('402881e6254e53a001254e58d93e0001', '庞永庆', '2', '散客', '普通客人', null, '身份证', '1234567891234567', null, '已入住', '2009-12-02 15:43:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000004');
INSERT INTO `tb_checkinorder` VALUES ('402881e6254e53a001254e5be9230004', '庞永庆', '2', '散客', '普通客人', null, '身份证', '12345678945465151', null, '已入住', '2009-12-02 15:46:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000005');
INSERT INTO `tb_checkinorder` VALUES ('402881e6254e53a001254e64b91d0007', '庞永庆', '2', '散客', '普通客人', null, '身份证', '123456789123456', null, '已结账', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '2017-06-27 21:43:47', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000006');
INSERT INTO `tb_checkinorder` VALUES ('402881e625587aa7012559003f2d0003', '刘明', '2', '散客', '普通客人', null, '身份证', '123456789789456', null, '已结账', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '2009-12-06 18:08:47', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000007');
INSERT INTO `tb_checkinorder` VALUES ('402881e625587aa70125590883f60005', '刘明', '2', '散客', '普通客人', null, '身份证', '123456789789456', null, '已入住', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '2009-12-05 12:00:00', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000008');
INSERT INTO `tb_checkinorder` VALUES ('40289fac5ce8ce63015ce8d64bea0001', '庞永庆', '2', '散客', '普通客人', null, '身份证', '123456789123456', null, '已结账', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '2017-06-27 21:45:15', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000010');
INSERT INTO `tb_checkinorder` VALUES ('40289fac5ce8dad1015ce8ea3c6d0012', '刘明', '2', '散客', '普通客人', null, '身份证', '123456789789123', null, '已入住', '2010-01-29 15:53:00', '2010-01-30 12:00:00', '2010-01-30 12:00:00', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000016');
INSERT INTO `tb_checkinorder` VALUES ('40289fac5ce9c9df015ce9cc6c980003', '庞永庆', '2', '散客', '普通客人', null, '身份证', '123456789123456', null, '已入住', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', '0.00', null, 'Admin', '男', '260.00', '0.00', 'CIO00000017');
INSERT INTO `tb_checkinorder` VALUES ('ff808081012a13dc01012a1aff7c0001', 'esperamier', '2', '散客', '普通客人', null, '身份证', '362422198611160012', null, '已入住', '2005-01-01 01:06:00', '2005-01-02 12:00:00', '2005-01-02 12:00:00', '现金', '0.00', null, 'Admin', '男', '320.00', '0.00', 'CIO00000003');

-- ----------------------------
-- Table structure for tb_guest
-- ----------------------------
DROP TABLE IF EXISTS `tb_guest`;
CREATE TABLE `tb_guest` (
  `GTID` varchar(32) NOT NULL,
  `GTNAME` varchar(20) NOT NULL,
  `GTTYPE` varchar(16) NOT NULL,
  `GTCARDCATALOG` varchar(16) NOT NULL,
  `GTCARDID` varchar(32) NOT NULL,
  `GTCOUNTRY` varchar(32) DEFAULT NULL,
  `GTADDRESS` varchar(100) DEFAULT NULL,
  `GTZIP` varchar(10) DEFAULT NULL,
  `GTCOMPANY` varchar(50) DEFAULT NULL,
  `GTTELPHONE` varchar(16) DEFAULT NULL,
  `GTMOBILE` varchar(16) DEFAULT NULL,
  `GTGENDER` varchar(4) NOT NULL,
  `GTEMAIL` varchar(32) DEFAULT NULL,
  `GTCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_guest
-- ----------------------------
INSERT INTO `tb_guest` VALUES ('402881e6254e53a001254e63196c0006', '庞小庆', '普通客人', '身份证', '123456789123456', '中国', '', '', '', '', '', '男', '', '2009-12-02 15:55:35');
INSERT INTO `tb_guest` VALUES ('402881e6256404d20125641b17560001', '李立明', '普通客人', '身份证', '456789123456789', '中国', '中国上海', '', '', '', '', '男', '', '2009-12-06 21:08:34');
INSERT INTO `tb_guest` VALUES ('40289fac5ce8a4e1015ce8a63ee10001', 'sjs', '普通客人', '身份证', '220181199601210020', 'sjs', '', '', '', '', '', '男', '', '2017-06-27 16:23:48');
INSERT INTO `tb_guest` VALUES ('40289fac5ce8dad1015ce8ded0170001', '1212', '普通客人', '身份证', '100000000000000', 'sss', '', '', '', '', '', '男', '', '2017-06-27 17:25:35');
INSERT INTO `tb_guest` VALUES ('40289fac5ce8dad1015ce8e4b5f60011', 'sjs103', '普通客人', '身份证', '', '', '', '', '', '', '', '男', '', '2017-06-27 17:32:01');
INSERT INTO `tb_guest` VALUES ('40289fac5ced242c015ced27ded10001', '小红', '贵宾', '身份证', '2000000000000000', '俄罗斯', '', '', '', '', '', '男', '', '2017-06-28 13:23:52');

-- ----------------------------
-- Table structure for tb_guesthistory
-- ----------------------------
DROP TABLE IF EXISTS `tb_guesthistory`;
CREATE TABLE `tb_guesthistory` (
  `GHID` varchar(32) NOT NULL,
  `GHBALANCEMENTID` varchar(32) NOT NULL,
  `GHREMARK` varchar(100) NOT NULL,
  `GHGUESTID` varchar(45) NOT NULL,
  `GHGUESTNAME` varchar(32) NOT NULL,
  PRIMARY KEY (`GHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_guesthistory
-- ----------------------------
INSERT INTO `tb_guesthistory` VALUES ('402881e51a448696011a4489790a0004', '402881e51a448696011a4489783f0003', '<div align=\"center\">1.<b>remark test for edit controll</b><br></div>', '402881e51a39c232011a39da4d3e0005', 'esperamier');
INSERT INTO `tb_guesthistory` VALUES ('402881e51a53efae011a53f874e20005', '402881e51a53efae011a53f874550004', 'fdsafdsa', '402881e51a39c232011a39da4d3e0005', 'esperamier');
INSERT INTO `tb_guesthistory` VALUES ('402881e625636b70012563767f580002', '402881e625636b70012563767c6c0001', '', '402881e625587aa7012558e59ffa0001', '刘明');
INSERT INTO `tb_guesthistory` VALUES ('40289fac5ce9c9df015ce9cb35520002', '40289fac5ce9c9df015ce9cb35200001', '', '402881e6254e53a001254e63196c0006', '庞永庆');
INSERT INTO `tb_guesthistory` VALUES ('40289fac5ce9c9df015ce9cc8c9e0006', '40289fac5ce9c9df015ce9cc8c7d0005', '', '402881e6254e53a001254e63196c0006', '庞永庆');

-- ----------------------------
-- Table structure for tb_operator
-- ----------------------------
DROP TABLE IF EXISTS `tb_operator`;
CREATE TABLE `tb_operator` (
  `OPUSERNAME` varchar(20) NOT NULL,
  `OPPASSWORD` varchar(32) NOT NULL,
  `OPPRIVILEGE` int(10) unsigned NOT NULL,
  `OPADDRESS` varchar(100) DEFAULT NULL,
  `OPNAME` varchar(20) NOT NULL,
  `OPTELEPHONE` varchar(16) DEFAULT NULL,
  `OPMOBILE` varchar(16) DEFAULT NULL,
  `OPZIP` varchar(10) DEFAULT NULL,
  `OPCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OPUSERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_operator
-- ----------------------------
INSERT INTO `tb_operator` VALUES ('admin', 'admin', '255', null, 'NeoStudio', null, null, null, '2017-06-01 16:32:22');
INSERT INTO `tb_operator` VALUES ('FoGhost', '330022', '0', null, 'Liang', null, null, null, '2017-06-19 08:32:21');
INSERT INTO `tb_operator` VALUES ('user', '', '0', '', '', '0', '0', '0', '2017-06-01 15:52:59');

-- ----------------------------
-- Table structure for tb_reservitem
-- ----------------------------
DROP TABLE IF EXISTS `tb_reservitem`;
CREATE TABLE `tb_reservitem` (
  `RIMID` varchar(32) NOT NULL,
  `RESERVORDER_ROID` varchar(32) NOT NULL,
  `ROOM_RMID` varchar(32) NOT NULL,
  `RIMINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RIMOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RIMSTATE` varchar(16) NOT NULL,
  PRIMARY KEY (`RIMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reservitem
-- ----------------------------
INSERT INTO `tb_reservitem` VALUES ('297e12bf1a1f79b8011a1f7fd52c0002', '297e12bf1a1f79b8011a1f7fd4bf0001', '8106', '2008-05-25 12:00:00', '2008-05-26 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e41a1396da011a13aa651a0008', '402881e41a1396da011a13aa651a0007', '8109', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e51a570114011a570b85d50002', '402881e51a570114011a570b85390001', '8118', '2008-06-05 12:00:00', '2008-06-06 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e51a579a4b011a57eb1ac60006', '402881e51a579a4b011a57eb1ac60005', '8308', '2008-06-05 12:00:00', '2008-06-06 12:00:00', '已确认');
INSERT INTO `tb_reservitem` VALUES ('402881e51a5958a3011a5977e94b0003', '402881e51a5958a3011a5977e94b0002', '8109', '2008-06-06 12:00:00', '2008-06-07 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a0a09e2011a0a618c43000c', '402881e61a0a09e2011a0a618c43000b', '8308', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a0a09e2011a0a62c494000e', '402881e61a0a09e2011a0a62c494000d', '8106', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a0a09e2011a0a63647d0010', '402881e61a0a09e2011a0a63647d000f', '8109', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a0a09e2011a0a677c670012', '402881e61a0a09e2011a0a677c670011', '8118', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a0a09e2011a0a692e9b0014', '402881e61a0a09e2011a0a692e9b0013', '8208', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a15d2a9011a15d668270002', '402881e41a1396da011a13aa651a0007', '8109', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a15d2a9011a15d668a40003', '402881e41a1396da011a13aa651a0007', '8106', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a18cda0011a18dbaf510009', '402881e61a18cda0011a18dbaf510008', '8109', '2008-05-24 12:00:00', '2008-05-25 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e61a18cda0011a18e75919000b', '402881e61a18ca48011a18cb73bd0001', '8106', '2008-05-24 12:00:00', '2008-05-25 12:00:00', '预定中');
INSERT INTO `tb_reservitem` VALUES ('402881e6254e53a001254e6c32670010', '402881e6254e53a001254e69c1440009', '8109', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临');
INSERT INTO `tb_reservitem` VALUES ('402881e6254e53a001254e6c32670011', '402881e6254e53a001254e69c1440009', '8208', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临');
INSERT INTO `tb_reservitem` VALUES ('402881e6254e53a001254e6c32670012', '402881e6254e53a001254e69c1440009', '8209', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临');

-- ----------------------------
-- Table structure for tb_reservorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_reservorder`;
CREATE TABLE `tb_reservorder` (
  `ROID` varchar(32) NOT NULL,
  `ROGROUPNAME` varchar(50) DEFAULT NULL,
  `ROGUESTNAME` varchar(20) NOT NULL,
  `ROTELPHONE` varchar(16) NOT NULL,
  `ROEMAIL` varchar(45) DEFAULT NULL,
  `ROINDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ROEARLIESTTIME` time DEFAULT NULL,
  `ROLATESTTIME` time DEFAULT NULL,
  `ROPREOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RORESERVMODEL` varchar(16) NOT NULL,
  `ROPAYMENTMODEL` varchar(16) NOT NULL,
  `ROPAIDMONEY` decimal(14,2) NOT NULL,
  `ROREMARK` varchar(200) DEFAULT NULL,
  `ROPREASSIGNROOM` varchar(32) DEFAULT NULL,
  `RORESERVSTATE` varchar(16) NOT NULL,
  `ROOPERATOR` varchar(32) NOT NULL,
  `ROCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ROFAX` varchar(16) DEFAULT NULL,
  `ROGUESTGENDER` varchar(6) NOT NULL,
  `ROGUESTCARDCATALOG` varchar(16) DEFAULT NULL,
  `ROGUESTCARDID` varchar(32) DEFAULT NULL,
  `ROTOTALRATE` decimal(14,2) NOT NULL,
  `ROORDERID` varchar(32) NOT NULL,
  PRIMARY KEY (`ROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reservorder
-- ----------------------------
INSERT INTO `tb_reservorder` VALUES ('297e12bf1a1f79b8011a1f7fd4bf0001', '', 'dfa', 'sfdsfd', '', '2008-05-25 12:00:00', '12:00:00', '12:00:00', '2008-05-26 12:00:00', '电话预定', '现金', '0.00', '', '', '预定中', 'admin', '2008-05-25 17:54:08', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e41a1396da011a13aa651a0007', null, 'fsfds', 'fsdfds', '', '2008-05-23 12:00:00', '12:00:00', '12:00:00', '2008-05-24 12:00:00', '电话预定', '现金', '0.00', '', null, '预定中', 'admin', '2008-05-23 10:45:11', '', '男', '身份证', '412728168690466030', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e51a570114011a570b85390001', '', 'esperamier', '123456789231', 'dddddd@domain.com', '2008-06-05 12:00:00', '01:15:00', '01:15:00', '2008-06-06 12:00:00', '电话预定', '现金', '200.00', '', '', '预定中', 'admin', '2008-06-05 12:45:50', '', '男', '身份证', '362422198611160012', '300.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e51a579a4b011a57eb1ac60005', '', 'esperamier', 'esperamier', 'kof@yahoo.com.cn', '2008-06-05 12:00:00', '01:00:00', '01:00:00', '2008-06-06 12:00:00', '领导安排', '支付卡', '0.00', '', '', '已确认', 'admin', '2008-06-05 16:50:02', '432432432432', '男', '身份证', '362422198611160012', '1000.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e51a5958a3011a5977e94b0002', '', 'ref', 'dffd', '', '2008-06-06 12:00:00', '12:00:00', '12:00:00', '2008-06-07 12:00:00', '电话预定', '现金', '0.00', '', '', '预定中', 'Admin', '2008-06-06 00:03:27', '', '男', '身份证', '', '0.00', 'RO00000002');
INSERT INTO `tb_reservorder` VALUES ('402881e61a0a09e2011a0a618c43000b', null, 'DFS', 'FDS', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', '0.00', '', null, '预定中', 'admin', '2008-05-21 15:29:02', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e61a0a09e2011a0a62c494000d', null, 'dfs', 'fds', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', '0.00', '', null, '预定中', 'admin', '2008-05-21 15:30:22', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e61a0a09e2011a0a63647d000f', null, 'fd', 'fd', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', '0.00', '', null, '预定中', 'admin', '2008-05-21 15:31:03', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e61a0a09e2011a0a677c670011', null, 'dfs', 'fdsf', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', '0.00', '', null, '预定中', 'admin', '2008-05-21 15:35:31', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e61a0a09e2011a0a692e9b0013', null, 'dsadad', 'sds', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', '0.00', '', null, '预定中', 'admin', '2008-05-21 15:37:22', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e61a18ca48011a18cb73bd0001', '', 'fsf', 'fsfd', '', '2008-05-24 12:00:00', '12:00:00', '12:00:00', '2008-05-25 12:00:00', '电话预定', '现金', '0.00', '', '', '预定中', 'admin', '2008-05-24 10:39:24', 'sdfsafd@', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e61a18cda0011a18dbaf510008', '', 'fsf', 'fdsfsf', '', '2008-05-24 12:00:00', '12:00:00', '12:00:00', '2008-05-25 12:00:00', '电话预定', '现金', '0.00', '', '', '预定中', 'admin', '2008-05-24 10:57:07', '', '男', '身份证', '', '0.00', '');
INSERT INTO `tb_reservorder` VALUES ('402881e6254e53a001254e69c1440009', '', 'ddddddd', '020-26568911-15', 'dddd@yahoo.com.cn', '2009-12-02 12:00:00', '01:00:00', '08:30:00', '2009-12-03 12:00:00', '电话预定', '现金', '0.00', '', '', '已光临', 'Admin', '2009-12-02 16:02:51', '', '男', '身份证', '123456789123456', '0.00', 'RO00000001');

-- ----------------------------
-- Table structure for tb_room
-- ----------------------------
DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE `tb_room` (
  `RMID` varchar(12) NOT NULL,
  `RMAREA` varchar(10) DEFAULT NULL,
  `RMFLOOR` varchar(10) NOT NULL,
  `RMPRCTPRICE` decimal(14,2) NOT NULL,
  `RMTELPHONE` varchar(24) DEFAULT NULL,
  `RMSTATE` tinyint(3) unsigned NOT NULL,
  `RMAVAILABLE` tinyint(1) NOT NULL,
  `RMCATALOG` varchar(32) NOT NULL,
  `RMPICTURE` varchar(100) NOT NULL,
  `RMPRCTDISCOUNT` decimal(14,2) NOT NULL DEFAULT '100.00',
  PRIMARY KEY (`RMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_room
-- ----------------------------
INSERT INTO `tb_room` VALUES ('8101', '8', '1', '260.00', '101', '2', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8102', '8', '1', '260.00', '100', '0', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8103', '8', '1', '260.00', '103', '0', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8104', '8', '1', '260.00', '104', '0', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8106', '8', '1', '268.00', '123', '3', '1', '单人间', 'public/images/rooms/single.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8109', '8', '1', '320.00', '126', '0', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8118', '8', '1', '260.00', '127', '0', '1', '单人间', 'public/images/rooms/single.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8208', '8', '2', '320.00', '128', '0', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8209', '8', '2', '260.00', '129', '0', '1', '单人间', 'public/images/rooms/single.gif', '100.00');
INSERT INTO `tb_room` VALUES ('8308', '8', '3', '320.00', '130', '0', '1', '标准间', 'public/images/rooms/standardroom.gif', '100.00');
INSERT INTO `tb_room` VALUES ('9101', '9', '1', '300.00', '9101', '0', '1', '超级豪华间', 'public/images/rooms/single.gif', '100.00');

-- ----------------------------
-- Table structure for tb_roomcatalog
-- ----------------------------
DROP TABLE IF EXISTS `tb_roomcatalog`;
CREATE TABLE `tb_roomcatalog` (
  `RCID` varchar(32) NOT NULL,
  `RCNAME` varchar(12) NOT NULL,
  `RCBEDNUMBER` int(10) unsigned NOT NULL,
  `RCPREPRICE` decimal(14,2) NOT NULL,
  `RCPREDISCOUNT` decimal(14,2) DEFAULT '100.00',
  `RCHOURBASEPRICE` decimal(14,2) DEFAULT NULL,
  `RCPERHOURPRICE` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`RCID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_roomcatalog
-- ----------------------------
INSERT INTO `tb_roomcatalog` VALUES ('402881e51a5472f8011a547548440001', '单人间', '1', '200.00', '20.00', '50.00', '50.00');
INSERT INTO `tb_roomcatalog` VALUES ('402881e5267907ec0126790f5ec40003', '总统套房', '3', '50000.00', '300.00', '3000.00', '300.00');
INSERT INTO `tb_roomcatalog` VALUES ('402881e6255344820125538694350001', '豪华间', '2', '360.00', '0.00', '200.00', '100.00');
INSERT INTO `tb_roomcatalog` VALUES ('402881e625576bea0125578a63ba0002', '超级豪华间', '3', '1188.00', '100.00', '200.00', '200.00');
INSERT INTO `tb_roomcatalog` VALUES ('RC889', '标准间', '2', '260.00', '100.00', '150.00', '40.00');
SET FOREIGN_KEY_CHECKS=1;
