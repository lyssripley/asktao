/*
Navicat MySQL Data Transfer

Source Server         : 111.111.111.111_3306
Source Server Version : 50173
Source Host           : 111.111.111.111:3306
Source Database       : dl_ddb_all

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 936

Date: 2025-04-07 03:08:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activate_user_data
-- ----------------------------
DROP TABLE IF EXISTS `activate_user_data`;
CREATE TABLE `activate_user_data` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name` (`name`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of activate_user_data
-- ----------------------------

-- ----------------------------
-- Table structure for admin_recognize
-- ----------------------------
DROP TABLE IF EXISTS `admin_recognize`;
CREATE TABLE `admin_recognize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `owner_gid` varchar(16) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `data` text,
  `reason` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin_recognize
-- ----------------------------

-- ----------------------------
-- Table structure for attention_data
-- ----------------------------
DROP TABLE IF EXISTS `attention_data`;
CREATE TABLE `attention_data` (
  `attention_type` varchar(32) NOT NULL DEFAULT '',
  `attention_id` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`attention_type`,`attention_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of attention_data
-- ----------------------------

-- ----------------------------
-- Table structure for basic_char_info
-- ----------------------------
DROP TABLE IF EXISTS `basic_char_info`;
CREATE TABLE `basic_char_info` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `polar` tinyint(4) NOT NULL DEFAULT '0',
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `tt_weibo_name` varchar(128) NOT NULL DEFAULT '',
  `hide_tt_weibo` tinyint(4) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_char_info
-- ----------------------------

-- ----------------------------
-- Table structure for bottle_data
-- ----------------------------
DROP TABLE IF EXISTS `bottle_data`;
CREATE TABLE `bottle_data` (
  `bid` varchar(48) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `recv_dist` varchar(32) NOT NULL DEFAULT '',
  `recv_gid` char(16) NOT NULL DEFAULT '',
  `recv_name` varchar(32) NOT NULL DEFAULT '',
  `recv_level` int(11) NOT NULL DEFAULT '0',
  `recv_polar` tinyint(4) NOT NULL DEFAULT '0',
  `recv_gender` tinyint(4) NOT NULL DEFAULT '0',
  `recv_time` char(14) NOT NULL DEFAULT '',
  `recv_read` tinyint(4) NOT NULL DEFAULT '0',
  `send_dist` varchar(32) NOT NULL DEFAULT '',
  `send_gid` char(16) NOT NULL DEFAULT '',
  `send_name` varchar(32) NOT NULL DEFAULT '',
  `send_level` int(11) NOT NULL DEFAULT '0',
  `send_polar` tinyint(4) NOT NULL DEFAULT '0',
  `send_gender` tinyint(4) NOT NULL DEFAULT '0',
  `send_time` char(14) NOT NULL DEFAULT '',
  `send_read` tinyint(4) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `destroy_time` char(14) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `recv_gid` (`recv_dist`,`recv_gid`) USING BTREE,
  KEY `send_gid` (`send_dist`,`send_gid`) USING BTREE,
  KEY `recv_time` (`recv_time`) USING BTREE,
  KEY `send_time` (`send_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bottle_data
-- ----------------------------

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name_path` (`name`,`path`) USING BTREE,
  KEY `path_time` (`path`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data
-- ----------------------------

-- ----------------------------
-- Table structure for data1
-- ----------------------------
DROP TABLE IF EXISTS `data1`;
CREATE TABLE `data1` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name_path` (`name`,`path`) USING BTREE,
  KEY `path_time` (`path`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data1
-- ----------------------------

-- ----------------------------
-- Table structure for gid_info
-- ----------------------------
DROP TABLE IF EXISTS `gid_info`;
CREATE TABLE `gid_info` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`gid`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gid_info
-- ----------------------------

-- ----------------------------
-- Table structure for item_deposit
-- ----------------------------
DROP TABLE IF EXISTS `item_deposit`;
CREATE TABLE `item_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(128) NOT NULL DEFAULT '',
  `item_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `item_data` text NOT NULL,
  `org_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `org_owner_name` varchar(32) NOT NULL DEFAULT '',
  `new_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `new_owner_name` varchar(32) NOT NULL DEFAULT '',
  `deposit_owner` varchar(32) NOT NULL DEFAULT '',
  `deposit_time` varchar(14) NOT NULL DEFAULT '',
  `deposit_reason` text NOT NULL,
  `take_owner` varchar(32) NOT NULL DEFAULT '',
  `take_time` varchar(14) NOT NULL DEFAULT '',
  `take_reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for online_update
-- ----------------------------
DROP TABLE IF EXISTS `online_update`;
CREATE TABLE `online_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_name` varchar(128) NOT NULL DEFAULT '',
  `server_ver` varchar(32) NOT NULL DEFAULT '',
  `server_type` varchar(16) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`update_name`,`server_ver`,`server_type`),
  KEY `ver_type` (`server_ver`,`server_type`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of online_update
-- ----------------------------

-- ----------------------------
-- Table structure for pet_deposit
-- ----------------------------
DROP TABLE IF EXISTS `pet_deposit`;
CREATE TABLE `pet_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(128) NOT NULL DEFAULT '',
  `pet_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `pet_data` text NOT NULL,
  `org_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `org_owner_name` varchar(32) NOT NULL DEFAULT '',
  `new_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `new_owner_name` varchar(32) NOT NULL DEFAULT '',
  `deposit_owner` varchar(32) NOT NULL DEFAULT '',
  `deposit_time` varchar(14) NOT NULL DEFAULT '',
  `deposit_reason` text NOT NULL,
  `take_owner` varchar(32) NOT NULL DEFAULT '',
  `take_time` varchar(14) NOT NULL DEFAULT '',
  `take_reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_iid` (`pet_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pet_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for property_recall
-- ----------------------------
DROP TABLE IF EXISTS `property_recall`;
CREATE TABLE `property_recall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT '',
  `ob_type` tinyint(4) unsigned DEFAULT NULL,
  `take` tinyint(4) unsigned DEFAULT NULL,
  `exchange` tinyint(4) unsigned DEFAULT '0',
  `depend` varchar(16) DEFAULT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `owner` (`update_time`,`owner`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of property_recall
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_store
-- ----------------------------
DROP TABLE IF EXISTS `purchase_store`;
CREATE TABLE `purchase_store` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '0',
  `content` text,
  `sub_amount` int(11) unsigned DEFAULT NULL,
  `amount` int(11) unsigned DEFAULT NULL,
  `type` tinyint(2) unsigned DEFAULT NULL,
  `end_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `owner` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of purchase_store
-- ----------------------------

-- ----------------------------
-- Table structure for red_envelope
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope`;
CREATE TABLE `red_envelope` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `total_coin` int(11) NOT NULL DEFAULT '0',
  `cur_coin` int(11) NOT NULL DEFAULT '0',
  `total_num` int(11) NOT NULL DEFAULT '0',
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `deadline` int(11) NOT NULL DEFAULT '0',
  `use` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`name`,`iid`,`use`),
  KEY `iid` (`iid`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of red_envelope
-- ----------------------------

-- ----------------------------
-- Table structure for top_data
-- ----------------------------
DROP TABLE IF EXISTS `top_data`;
CREATE TABLE `top_data` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `top_key` varchar(128) NOT NULL DEFAULT '',
  `top_content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`top_index`,`top_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of top_data
-- ----------------------------

-- ----------------------------
-- Table structure for transfer_data
-- ----------------------------
DROP TABLE IF EXISTS `transfer_data`;
CREATE TABLE `transfer_data` (
  `transfer_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `class` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `mesg_ok` varchar(255) NOT NULL DEFAULT '',
  `mesg_cht` varchar(255) NOT NULL DEFAULT '',
  `tip` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `limit_day` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `transfer_account` varchar(16) NOT NULL DEFAULT '',
  `transfer_time` varchar(14) NOT NULL DEFAULT '',
  `request_gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transfer_id`),
  KEY `owner` (`owner`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE,
  KEY `class` (`class`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transfer_data
-- ----------------------------

-- ----------------------------
-- Table structure for xg_name
-- ----------------------------
DROP TABLE IF EXISTS `xg_name`;
CREATE TABLE `xg_name` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `xg_type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`xg_type`),
  KEY `xg_type` (`xg_type`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of xg_name
-- ----------------------------
