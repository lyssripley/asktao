/*
Navicat MySQL Data Transfer

Source Server         : 111.111.111.111_3306
Source Server Version : 50173
Source Host           : 111.111.111.111:3306
Source Database       : dl_tdb_all

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 936

Date: 2025-04-07 03:15:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lottery
-- ----------------------------
DROP TABLE IF EXISTS `lottery`;
CREATE TABLE `lottery` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `lottery_iid` varchar(32) NOT NULL DEFAULT '',
  `lottery_no` varchar(32) NOT NULL DEFAULT '',
  `lottery_info` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lottery
-- ----------------------------

-- ----------------------------
-- Table structure for merge_treasure_ids
-- ----------------------------
DROP TABLE IF EXISTS `merge_treasure_ids`;
CREATE TABLE `merge_treasure_ids` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of merge_treasure_ids
-- ----------------------------

-- ----------------------------
-- Table structure for trading_log
-- ----------------------------
DROP TABLE IF EXISTS `trading_log`;
CREATE TABLE `trading_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trading_log
-- ----------------------------

-- ----------------------------
-- Table structure for trading_platform_log
-- ----------------------------
DROP TABLE IF EXISTS `trading_platform_log`;
CREATE TABLE `trading_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_id` varchar(64) NOT NULL DEFAULT '',
  `commodity_iid` varchar(128) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `service_costs` float NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE,
  KEY `commodity_id` (`commodity_id`) USING BTREE,
  KEY `time_account` (`update_time`,`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trading_platform_log
-- ----------------------------

-- ----------------------------
-- Table structure for trading_record
-- ----------------------------
DROP TABLE IF EXISTS `trading_record`;
CREATE TABLE `trading_record` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `seller` varchar(32) NOT NULL DEFAULT '',
  `seller_account` varchar(32) NOT NULL DEFAULT '',
  `seller_dist` varchar(32) NOT NULL DEFAULT '',
  `buyer` varchar(32) NOT NULL DEFAULT '',
  `buyer_account` varchar(32) NOT NULL DEFAULT '',
  `buyer_dist` varchar(32) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT '0',
  `service_charge` float NOT NULL DEFAULT '0',
  `item_order_id` varchar(255) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trading_record
-- ----------------------------

-- ----------------------------
-- Table structure for transaction_log
-- ----------------------------
DROP TABLE IF EXISTS `transaction_log`;
CREATE TABLE `transaction_log` (
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `goods_id` varchar(255) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `content` mediumtext,
  `module` varchar(32) DEFAULT NULL,
  `func` varchar(32) DEFAULT NULL,
  `para` varchar(255) DEFAULT NULL,
  `result` text,
  `http_got` tinyint(4) NOT NULL DEFAULT '0',
  `repeat_times` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaction_log
-- ----------------------------

-- ----------------------------
-- Table structure for treasure_info
-- ----------------------------
DROP TABLE IF EXISTS `treasure_info`;
CREATE TABLE `treasure_info` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `sale_duration` int(11) NOT NULL DEFAULT '0',
  `org_price` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `org_upset_price` int(11) NOT NULL DEFAULT '0',
  `upset_price` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `change_time` int(11) NOT NULL DEFAULT '0',
  `buyer` varchar(32) DEFAULT NULL,
  `buyer_account` varchar(32) DEFAULT NULL,
  `buyer_dist` varchar(32) NOT NULL DEFAULT '',
  `seller` varchar(32) NOT NULL DEFAULT '',
  `seller_account` varchar(32) NOT NULL DEFAULT '',
  `seller_dist` varchar(32) NOT NULL DEFAULT '',
  `simple_info` varchar(255) NOT NULL DEFAULT '',
  `particular_info` text,
  `snapshot` text,
  `xml` mediumtext NOT NULL,
  `unique_id` varchar(128) NOT NULL DEFAULT '',
  `issue_time` varchar(32) NOT NULL DEFAULT '',
  `appointer` varchar(32) NOT NULL DEFAULT '',
  `sale_method` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `snapshot_upgrade` text,
  `snapshot_equip` text,
  `snapshot_upg_equip` text,
  `snapshot_item` text,
  `snapshot_pet` text,
  `snapshot_guard` text,
  `snapshot_child` text,
  PRIMARY KEY (`id`),
  KEY `seller` (`seller`) USING BTREE,
  KEY `buyer` (`buyer`) USING BTREE,
  KEY `appointer` (`appointer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of treasure_info
-- ----------------------------
