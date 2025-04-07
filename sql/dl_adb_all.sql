/*
Navicat MySQL Data Transfer

Source Server         : 111.111.111.111_3306
Source Server Version : 50173
Source Host           : 111.111.111.111:3306
Source Database       : dl_adb_all

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 936

Date: 2025-04-07 03:36:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aaa
-- ----------------------------
DROP TABLE IF EXISTS `aaa`;
CREATE TABLE `aaa` (
  `aaa` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `attrib` varchar(255) DEFAULT NULL,
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `error_password_times` int(11) NOT NULL DEFAULT '5',
  `busy_time` int(11) NOT NULL DEFAULT '600',
  `client_per_ip` int(11) NOT NULL DEFAULT '0',
  `activate_url` varchar(255) NOT NULL DEFAULT '',
  `activate_aaa_ip` varchar(15) NOT NULL DEFAULT '',
  `ecard_fill_url` varchar(255) NOT NULL DEFAULT '',
  `ecard_resend_url` varchar(255) NOT NULL DEFAULT '',
  `ecard_web_status_url` varchar(255) NOT NULL DEFAULT '',
  `antibot_server` varchar(255) DEFAULT NULL,
  `antibot_action` varchar(255) DEFAULT NULL,
  `passpod_server` varchar(255) DEFAULT NULL,
  `auth_server` varchar(255) DEFAULT NULL,
  `coin_trade_server` varchar(255) DEFAULT 'transfer.gyyx.cn:81',
  `recharge_url` varchar(255) NOT NULL DEFAULT '',
  `inquiry_url` varchar(255) NOT NULL DEFAULT '',
  `sms_auth_url` varchar(255) NOT NULL DEFAULT 'http://interface.message.gyyx.cn/v1/Send/Account',
  `memo` text,
  PRIMARY KEY (`aaa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of aaa
-- ----------------------------
INSERT INTO `aaa` VALUES ('aaa_coding', '10.2.50.30', '8300', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_daili', '111.111.111.111', '8101', null, '', '1', '1', '5', '30', '0', 'http://127.0.0.1/', '', '127.0.0.1', '127.0.0.1', '127.0.0.1', null, null, '127.0.0.1', null, 'transfer.gyyx.cn:81', '127.0.0.1', '127.0.0.1', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_dongsh', '10.3.4.35', '8300', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_jiangw_30', '10.2.50.30', '8001', null, '', '1', '1', '3', '600', '0', 'http://10.2.50.58/simulateforum/vipsms_jiangw.php', '10.2.50.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_jiangw_pk', '10.2.50.30', '8003', null, '', '1', '2', '5', '30', '0', 'http://10.2.50.58/simulateforum/vipsms_jiangw.php', '', '127.0.0.1', '127.0.0.1', '127.0.0.1', null, null, '127.0.0.1', null, 'transfer.gyyx.cn:81', '127.0.0.1', '127.0.0.1', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_liy', '10.3.102.75', '8000', null, '', '1', '1', '3', '600', '0', '', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_luoyh', '10.3.4.25', '8001', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_quls_30', '10.3.4.5', '8300', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_test', '10.2.50.57', '12054', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.50.57', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_weism', '10.3.35.4', '8300', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_wuxl', '10.3.4.20', '8001', null, '', '0', '0', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_xg_liy', '10.3.4.22', '8001', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_xg_quls', '10.3.4.5', '9300', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_xuj', '10.3.4.10', '8300', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_xuj_30', '10.2.50.30', '8300', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_yugq', '10.3.4.26', '8021', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_zenghh', '10.3.4.30', '8001', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_zenghh_1', '10.3.4.30', '9001', null, '', '1', '1', '3', '600', '0', '', '10.3.4.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('aaa_zhangq3_30', '10.3.102.39', '8300', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('p01g_aaa_pack', '10.2.50.57', '8857', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, 'http://10.2.50.58/simulateforum/passpod.php', null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('p01g_aaa_pack58', '10.2.50.58', '8857', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('p01_aaa_hong', '10.3.4.4', '10001', null, '', '1', '1', '3', '600', '0', '', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('p01_aaa_hongjs', '10.3.4.4', '8001', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('p01_aaa_shuxx', '10.3.4.12', '8001', null, '', '1', '1', '30', '1', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);
INSERT INTO `aaa` VALUES ('p01_aaa_yeyh2', '10.3.102.24', '8054', null, '', '1', '1', '3', '600', '0', 'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx', '10.2.48.30', '', '', '', null, null, null, null, 'transfer.gyyx.cn:81', '', '', 'http:// interface.message.gyyx.cn/v1/Send/Account', null);

-- ----------------------------
-- Table structure for acc_comp
-- ----------------------------
DROP TABLE IF EXISTS `acc_comp`;
CREATE TABLE `acc_comp` (
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `comp` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`account`,`branch`,`comp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of acc_comp
-- ----------------------------

-- ----------------------------
-- Table structure for acc_log
-- ----------------------------
DROP TABLE IF EXISTS `acc_log`;
CREATE TABLE `acc_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of acc_log
-- ----------------------------

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '0',
  `blocked_reason` varchar(128) NOT NULL DEFAULT '',
  `temp_blocked_time` varchar(14) NOT NULL DEFAULT '',
  `temp_blocked_reason` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `auto_lock` int(11) NOT NULL DEFAULT '0',
  `locked` varchar(14) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `limit_trade_coin` int(11) NOT NULL DEFAULT '0',
  `trade_lock_time` varchar(14) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `active_time` varchar(14) NOT NULL DEFAULT '',
  `first_login_time` varchar(14) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `permit_ip` varchar(128) NOT NULL DEFAULT '',
  `permit_id` varchar(128) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `adult` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `coin_password` varchar(32) NOT NULL DEFAULT '',
  `unlock_coin_password_time` varchar(14) NOT NULL DEFAULT '',
  `org_password` varchar(32) NOT NULL DEFAULT '',
  `org_permit_ip` varchar(128) NOT NULL DEFAULT '',
  `last_login_time` varchar(14) NOT NULL DEFAULT '',
  `last_login_ip` varchar(128) NOT NULL DEFAULT '',
  `last_login_id` varchar(32) NOT NULL DEFAULT '',
  `presentee` tinyint(4) NOT NULL DEFAULT '0',
  `reg_date` varchar(14) NOT NULL DEFAULT '',
  `active_path` tinyint(4) NOT NULL DEFAULT '0',
  `trade_coin` int(11) NOT NULL DEFAULT '0',
  `last_trade_coin` char(14) NOT NULL DEFAULT '',
  `consum_coin` int(11) NOT NULL DEFAULT '0',
  `last_consum_coin` char(14) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo` text,
  PRIMARY KEY (`account`),
  KEY `last_login_time` (`last_login_time`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `active_time` (`active_time`) USING BTREE,
  KEY `reg_date` (`reg_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for account_code
-- ----------------------------
DROP TABLE IF EXISTS `account_code`;
CREATE TABLE `account_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_code` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_code
-- ----------------------------

-- ----------------------------
-- Table structure for account_coin_trade
-- ----------------------------
DROP TABLE IF EXISTS `account_coin_trade`;
CREATE TABLE `account_coin_trade` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account_coin_trade
-- ----------------------------

-- ----------------------------
-- Table structure for activity_account
-- ----------------------------
DROP TABLE IF EXISTS `activity_account`;
CREATE TABLE `activity_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of activity_account
-- ----------------------------

-- ----------------------------
-- Table structure for add_coin_log
-- ----------------------------
DROP TABLE IF EXISTS `add_coin_log`;
CREATE TABLE `add_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `add_time` varchar(14) NOT NULL DEFAULT '',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `add_silver_coin` int(11) NOT NULL DEFAULT '0',
  `add_gold_coin` int(11) NOT NULL DEFAULT '0',
  `cur_gold_coin` int(11) NOT NULL DEFAULT '0',
  `cur_silver_coin` int(11) NOT NULL DEFAULT '0',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of add_coin_log
-- ----------------------------

-- ----------------------------
-- Table structure for add_gold_coin_log
-- ----------------------------
DROP TABLE IF EXISTS `add_gold_coin_log`;
CREATE TABLE `add_gold_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `cost_time` varchar(14) NOT NULL DEFAULT '',
  `cost_platform` tinyint(4) NOT NULL DEFAULT '0',
  `cost_coin` int(11) NOT NULL DEFAULT '0',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `buy_item` varchar(32) NOT NULL DEFAULT '',
  `buy_item_amount` int(11) NOT NULL DEFAULT '0',
  `silver_coin_cost` int(11) NOT NULL DEFAULT '0',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_cost` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `cur_state` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `cost_time` (`cost_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of add_gold_coin_log
-- ----------------------------

-- ----------------------------
-- Table structure for admin_acc
-- ----------------------------
DROP TABLE IF EXISTS `admin_acc`;
CREATE TABLE `admin_acc` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `privilege` text NOT NULL,
  `permit_ip` varchar(128) NOT NULL DEFAULT '',
  `permit_id` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin_acc
-- ----------------------------

-- ----------------------------
-- Table structure for ahserver
-- ----------------------------
DROP TABLE IF EXISTS `ahserver`;
CREATE TABLE `ahserver` (
  `ahserver` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`ahserver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ahserver
-- ----------------------------
INSERT INTO `ahserver` VALUES ('apex1', '127.0.0.1', '15001', '');
INSERT INTO `ahserver` VALUES ('apex10', '127.0.0.1', '15010', '');
INSERT INTO `ahserver` VALUES ('apex11', '127.0.0.1', '15011', '');
INSERT INTO `ahserver` VALUES ('apex12', '127.0.0.1', '15012', '');
INSERT INTO `ahserver` VALUES ('apex13', '127.0.0.1', '15013', '');
INSERT INTO `ahserver` VALUES ('apex14', '127.0.0.1', '15014', '');
INSERT INTO `ahserver` VALUES ('apex15', '127.0.0.1', '15015', '');
INSERT INTO `ahserver` VALUES ('apex16', '127.0.0.1', '15016', '');
INSERT INTO `ahserver` VALUES ('apex17', '127.0.0.1', '15017', '');
INSERT INTO `ahserver` VALUES ('apex18', '127.0.0.1', '15018', '');
INSERT INTO `ahserver` VALUES ('apex19', '127.0.0.1', '15019', '');
INSERT INTO `ahserver` VALUES ('apex2', '127.0.0.1', '15002', '');
INSERT INTO `ahserver` VALUES ('apex20', '127.0.0.1', '15020', '');
INSERT INTO `ahserver` VALUES ('apex21', '127.0.0.1', '15021', '');
INSERT INTO `ahserver` VALUES ('apex22', '127.0.0.1', '15022', '');
INSERT INTO `ahserver` VALUES ('apex23', '127.0.0.1', '15023', '');
INSERT INTO `ahserver` VALUES ('apex24', '127.0.0.1', '15024', '');
INSERT INTO `ahserver` VALUES ('apex25', '127.0.0.1', '15025', '');
INSERT INTO `ahserver` VALUES ('apex26', '127.0.0.1', '15026', '');
INSERT INTO `ahserver` VALUES ('apex27', '127.0.0.1', '15027', '');
INSERT INTO `ahserver` VALUES ('apex28', '127.0.0.1', '15028', '');
INSERT INTO `ahserver` VALUES ('apex29', '127.0.0.1', '15029', '');
INSERT INTO `ahserver` VALUES ('apex3', '127.0.0.1', '15003', '');
INSERT INTO `ahserver` VALUES ('apex30', '127.0.0.1', '15030', '');
INSERT INTO `ahserver` VALUES ('apex31', '127.0.0.1', '15031', '');
INSERT INTO `ahserver` VALUES ('apex32', '127.0.0.1', '15032', '');
INSERT INTO `ahserver` VALUES ('apex33', '127.0.0.1', '15033', '');
INSERT INTO `ahserver` VALUES ('apex34', '127.0.0.1', '15034', '');
INSERT INTO `ahserver` VALUES ('apex35', '127.0.0.1', '15035', '');
INSERT INTO `ahserver` VALUES ('apex36', '127.0.0.1', '15036', '');
INSERT INTO `ahserver` VALUES ('apex37', '127.0.0.1', '15037', '');
INSERT INTO `ahserver` VALUES ('apex38', '127.0.0.1', '15038', '');
INSERT INTO `ahserver` VALUES ('apex39', '127.0.0.1', '15039', '');
INSERT INTO `ahserver` VALUES ('apex4', '127.0.0.1', '15004', '');
INSERT INTO `ahserver` VALUES ('apex40', '127.0.0.1', '15040', '');
INSERT INTO `ahserver` VALUES ('apex41', '127.0.0.1', '15041', '');
INSERT INTO `ahserver` VALUES ('apex42', '127.0.0.1', '15042', '');
INSERT INTO `ahserver` VALUES ('apex43', '127.0.0.1', '15043', '');
INSERT INTO `ahserver` VALUES ('apex44', '127.0.0.1', '15044', '');
INSERT INTO `ahserver` VALUES ('apex45', '127.0.0.1', '15045', '');
INSERT INTO `ahserver` VALUES ('apex46', '127.0.0.1', '15046', '');
INSERT INTO `ahserver` VALUES ('apex47', '127.0.0.1', '15047', '');
INSERT INTO `ahserver` VALUES ('apex48', '127.0.0.1', '15048', '');
INSERT INTO `ahserver` VALUES ('apex49', '127.0.0.1', '15049', '');
INSERT INTO `ahserver` VALUES ('apex5', '127.0.0.1', '15005', '');
INSERT INTO `ahserver` VALUES ('apex50', '127.0.0.1', '15050', '');
INSERT INTO `ahserver` VALUES ('apex51', '127.0.0.1', '15051', '');
INSERT INTO `ahserver` VALUES ('apex52', '127.0.0.1', '15052', '');
INSERT INTO `ahserver` VALUES ('apex53', '127.0.0.1', '15053', '');
INSERT INTO `ahserver` VALUES ('apex54', '127.0.0.1', '15054', '');
INSERT INTO `ahserver` VALUES ('apex55', '127.0.0.1', '15055', '');
INSERT INTO `ahserver` VALUES ('apex56', '127.0.0.1', '15056', '');
INSERT INTO `ahserver` VALUES ('apex6', '127.0.0.1', '15006', '');
INSERT INTO `ahserver` VALUES ('apex7', '127.0.0.1', '15007', '');
INSERT INTO `ahserver` VALUES ('apex8', '127.0.0.1', '15008', '');
INSERT INTO `ahserver` VALUES ('apex9', '127.0.0.1', '15009', '');

-- ----------------------------
-- Table structure for alipay_account
-- ----------------------------
DROP TABLE IF EXISTS `alipay_account`;
CREATE TABLE `alipay_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `alipay_account` varchar(255) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alipay_account
-- ----------------------------

-- ----------------------------
-- Table structure for antiaddiction
-- ----------------------------
DROP TABLE IF EXISTS `antiaddiction`;
CREATE TABLE `antiaddiction` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `last_offline` int(10) NOT NULL DEFAULT '0',
  `total_offline` int(10) NOT NULL DEFAULT '0',
  `total_online` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of antiaddiction
-- ----------------------------

-- ----------------------------
-- Table structure for antibot_log
-- ----------------------------
DROP TABLE IF EXISTS `antibot_log`;
CREATE TABLE `antibot_log` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `bot_type` varchar(16) DEFAULT NULL,
  `bot_content` text,
  `time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`no`),
  KEY `bot_type` (`bot_type`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of antibot_log
-- ----------------------------

-- ----------------------------
-- Table structure for app_bind
-- ----------------------------
DROP TABLE IF EXISTS `app_bind`;
CREATE TABLE `app_bind` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_type` tinyint(4) NOT NULL DEFAULT '1',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app_bind
-- ----------------------------

-- ----------------------------
-- Table structure for arena_account
-- ----------------------------
DROP TABLE IF EXISTS `arena_account`;
CREATE TABLE `arena_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arena_account
-- ----------------------------

-- ----------------------------
-- Table structure for card_info
-- ----------------------------
DROP TABLE IF EXISTS `card_info`;
CREATE TABLE `card_info` (
  `number` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `used` int(11) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of card_info
-- ----------------------------

-- ----------------------------
-- Table structure for ccs
-- ----------------------------
DROP TABLE IF EXISTS `ccs`;
CREATE TABLE `ccs` (
  `ccs` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(31) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ccs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ccs
-- ----------------------------
INSERT INTO `ccs` VALUES ('ccs_coding', '10.2.50.30', '8100', 'coding', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_daili', '111.111.111.111', '8110', '版本内测', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_dongsh', '10.3.4.35', '8100', 'dongsh', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_jiangw_30', '10.2.50.30', '8010', 'jiangw_30', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_jiangw_pk', '10.2.50.30', '8012', 'pk', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_luoyh', '10.3.4.25', '8010', 'luoyh', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_quls_30', '10.3.4.5', '8100', 'quls_30', '0', '', null);
INSERT INTO `ccs` VALUES ('ccs_test', '10.2.50.57', '12087', 'test', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_weism', '10.3.35.4', '8100', 'weism', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_wuxl', '10.3.4.20', '8004', 'wuxl', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_wuxl2', '10.3.4.20', '8014', 'wuxl2', '2', '', null);
INSERT INTO `ccs` VALUES ('ccs_xg_liy', '10.3.4.22', '8303', 'xg_liy', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_xg_quls', '10.3.4.5', '9100', 'quls_xg', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_xg_zenghh', '10.3.4.2', '9100', 'zenghh_xg', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_xuj', '10.3.4.10', '8100', 'xuj', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_xuj_30', '10.2.50.30', '8100', 'xuj_30', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_yugq', '10.3.4.26', '8002', 'yugq', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_zenghh', '10.3.4.30', '8005', 'zenghh', '1', '', null);
INSERT INTO `ccs` VALUES ('ccs_zhangq3_30', '10.3.102.39', '8100', 'zhangq3', '1', '', null);
INSERT INTO `ccs` VALUES ('p01g_ccs_pack', '10.2.50.57', '9887', 'gy_pack', '1', '', null);
INSERT INTO `ccs` VALUES ('p01g_ccs_pack58', '10.2.50.58', '9887', 'gy_pack58', '1', '', null);
INSERT INTO `ccs` VALUES ('p01_ccs_hong', '10.3.4.4', '10005', 'hong', '1', '', null);
INSERT INTO `ccs` VALUES ('p01_ccs_hongjs', '10.3.4.4', '8005', 'hongjs', '1', '', null);
INSERT INTO `ccs` VALUES ('p01_ccs_shuxx', '10.3.4.12', '8005', 'shuxx', '1', '', null);
INSERT INTO `ccs` VALUES ('p01_ccs_yeyh2', '10.3.4.2', '8087', 'yeyh2', '1', '', null);

-- ----------------------------
-- Table structure for charge
-- ----------------------------
DROP TABLE IF EXISTS `charge`;
CREATE TABLE `charge` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `card_bonus` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of charge
-- ----------------------------

-- ----------------------------
-- Table structure for charge_encourage
-- ----------------------------
DROP TABLE IF EXISTS `charge_encourage`;
CREATE TABLE `charge_encourage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `encourage` varchar(128) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '0',
  `end_time` char(14) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gold_coin` (`gold_coin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of charge_encourage
-- ----------------------------

-- ----------------------------
-- Table structure for charge_log
-- ----------------------------
DROP TABLE IF EXISTS `charge_log`;
CREATE TABLE `charge_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `src_ip` varchar(15) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `number` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `delta_count` int(11) NOT NULL DEFAULT '0',
  `delta_time` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of charge_log
-- ----------------------------

-- ----------------------------
-- Table structure for citywar_account
-- ----------------------------
DROP TABLE IF EXISTS `citywar_account`;
CREATE TABLE `citywar_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of citywar_account
-- ----------------------------

-- ----------------------------
-- Table structure for coin_red_packets_log
-- ----------------------------
DROP TABLE IF EXISTS `coin_red_packets_log`;
CREATE TABLE `coin_red_packets_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `gold_coin_before` int(11) NOT NULL DEFAULT '0',
  `gold_coin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coin_red_packets_log
-- ----------------------------

-- ----------------------------
-- Table structure for coin_trade_log
-- ----------------------------
DROP TABLE IF EXISTS `coin_trade_log`;
CREATE TABLE `coin_trade_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `gold_coin_before` int(11) NOT NULL DEFAULT '0',
  `gold_coin_after` int(11) NOT NULL DEFAULT '0',
  `store_coin_before` int(11) NOT NULL DEFAULT '0',
  `store_coin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coin_trade_log
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`version`,`dist`,`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('', '版本内测', 'global', '门派比武大会', '斗转星移三线:金系/斗转星移三线:木系/斗转星移二线:水系/斗转星移二线:火系/斗转星移三线:土系', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'baishou_shengyan', '([\"斗转星移一线\":({40,79,}),\"斗转星移一线\":({80,99,}),\"斗转星移一线\":({100,119,}),\"斗转星移一线\":({120,159,}),])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'chongzhi_fanli', '({\"2017-03-18-00:00:00\",\"2017-03-20-17:14:59\", 1})', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'CITY_WAR_SERVER', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'dongfu_tiaozhan', '斗转星移一线', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'douchong_dahui', '斗转星移一线', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', '试道大会', '斗转星移三线:60-69,70-79,80-89/斗转星移三线:90-99,100-109,110-119/斗转星移二线:120-129,130-139,140-149,150-159,160-169', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'fishing_server', '({\"斗转星移一线\",\"斗转星移二线\" })', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'group_buying_server', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'hero_boss_server', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'journey_of_asktao', '([ \"date\" : \"20160713\", \"checksum\" : \"5FA8074842CF18DF6DDBEEB02BC8E289\" ])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'ldb_host', '127.0.0.1:', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'lgxy_server', '斗转星移一线', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'longxue_boss_server', '斗转星移一线', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'map_decorate_server', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'mdb_host', '127.0.0.1:', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'party_qkbgz', '([4:\"斗转星移三线\",3:\"斗转星移二线\",2:\"斗转星移一线\",])', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'party_qql', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'party_sell_servers', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'red_envelope', '([ \"start_time\" : \"2016-01-09-00:00:00\", \"sort_end_time\" : \"2016-02-27-23:59:59\", \"end_time\" : \"2016-02-28-23:59:59\", \"envelope_list\" : ({ ([\"time\" : \"2016-01-18-14:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-18-16:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-23-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-23-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]) }), \"sys_name\" : \"ê??ü?ê\", \"version\" : 3 ])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'send_exp_online', '([\"end_time\":\"2010-06-29-12:00:00\",\"start_time\":\"2010-06-29-10:00:00\",\"interval\":0,\"duration\":0,])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'shengsidou', '1', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'sncbc_open_gs', '({\"斗转星移一线\",\"斗转星移二线\" })', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'super_boss_server', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'task_control_server', '斗转星移一线', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'vendue_place', '斗转星移一线', '', 'NULL');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'WAR_GROUP_A', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'WAR_GROUP_B', '斗转星移二线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'WAR_GROUP_C', '斗转星移三线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'wedding_server', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'world_boss_server', '斗转星移一线', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'world_level_config', '0', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'wuzhuangyuan', '斗转星移一线:60-69,70-79/斗转星移一线:80-89,90-99/斗转星移一线:100-109,110-119/斗转星移一线:120-129,130-139,140-149,150-159,160-169', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'xinfjjwz', '([ \"start_time\" : \"2017-07-01-20:00:00\", \"end_time\" : \"版本内测-08-21-19:59:59\" ])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'xinfu_chongbang', '([ \"start_time\" : \"2016-08-08-00:00:00\", \"end_time\" : \"2016-08-31-23:59:59\", \"bonus_time\" : \"2016-09-06-23:59:59\", \"order_end_time\" : \"2016-09-10-23:59:59\", \"url\" : \"http://wd.gyyx.cn/huodong/wdxf/tf/bwcx/cbbs/index.html\" ])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'xiygc_zhenyz', '({\"斗转星移一线\"})', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'xiygc_zhenyzb', '([\"40-69\":1,\"70-79\":1,\"80-89\":1,\"90-99\":1,\"100-109\":1,\"110-119\":1,\"120-129\":1,\"130-139\":1,\"140-149\":1,\"150-159\":1,\"160-169\":1])', '', '');
INSERT INTO `config` VALUES ('', '版本内测', 'global', 'yuqing_shandian_challenge', '斗转星移一线', '', null);
INSERT INTO `config` VALUES ('', '版本内测', 'global', '比武大会', '斗转星移三线:60-69,70-79/斗转星移一线:80-89,90-99/斗转星移二线:100-109,110-119/斗转星移三线:120-129,130-139,140-149', '', null);

-- ----------------------------
-- Table structure for cost_log
-- ----------------------------
DROP TABLE IF EXISTS `cost_log`;
CREATE TABLE `cost_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `cost_time` varchar(14) NOT NULL DEFAULT '',
  `cost_platform` tinyint(4) NOT NULL DEFAULT '0',
  `cost_coin` int(11) NOT NULL DEFAULT '0',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `buy_item` varchar(32) NOT NULL DEFAULT '',
  `buy_item_amount` int(11) NOT NULL DEFAULT '0',
  `silver_coin_cost` int(11) NOT NULL DEFAULT '0',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_cost` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `cur_state` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `cost_time` (`cost_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cost_log
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `coupon_info`;
CREATE TABLE `coupon_info` (
  `code` varchar(32) NOT NULL DEFAULT '',
  `gid` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coupon_info
-- ----------------------------

-- ----------------------------
-- Table structure for credit_log
-- ----------------------------
DROP TABLE IF EXISTS `credit_log`;
CREATE TABLE `credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `coupon_gold_used` int(11) NOT NULL DEFAULT '0',
  `coupon_silver_used` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`,`transaction_id`),
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of credit_log
-- ----------------------------

-- ----------------------------
-- Table structure for cs_ccs
-- ----------------------------
DROP TABLE IF EXISTS `cs_ccs`;
CREATE TABLE `cs_ccs` (
  `ccs` varchar(32) NOT NULL DEFAULT '',
  `role` text NOT NULL,
  `privilege` text NOT NULL,
  `ip` varchar(31) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ccs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cs_ccs
-- ----------------------------
INSERT INTO `cs_ccs` VALUES ('ccs_daili', 'LEAGUE_SOURCE/PARTYWAR_SOURCE/ARENA_SOURCE/BOTTLE_SOURCE/DRAFT_SOURCE/SDDH_SOURCE/EVERYONE_PK_SOURCE/CELEBRITY_SOURCE/SAMSUNG_SOURCE/CITYWAR_SOURCE/XGAME_SOURCE/ACTIVITY_SOURCE\r\n', '*', '111.111.111.111', '8110', '1', '版本内测', '', null);
INSERT INTO `cs_ccs` VALUES ('ccs_pk', 'LEAGUE_COMPETE/PARTYWAR_COMPETE/ARENA_COMPETE/SDDH_COMPETE/CELEBRITY_COMPETE/SAMSUNG_COMPETE/CITYWAR_COMPETE/XGAME_COMPETE/EVERYONE_PK_COMPETE/ACTIVITY_COMPETE\r\n', '*', '111.111.111.111', '8012', '1', 'pk', '', null);
INSERT INTO `cs_ccs` VALUES ('ccs_quls_30', 'ARENA_SOURCE', '*', '10.3.4.5', '8100', '1', 'quls_30', '', null);
INSERT INTO `cs_ccs` VALUES ('ccs_xuj', 'ARENA_COMPETE', 'cmd_league_oper/cmd_partywar_oper/cmd_bottle_oper/cmd_arena_oper/cmd_draft_oper/cmd_sddh_oper   ', '10.3.4.10', '8100', '1', 'xuj', '', null);
INSERT INTO `cs_ccs` VALUES ('ccs_yugq', '', '*', '10.3.4.9', '8002', '1', 'yugq', '', null);
INSERT INTO `cs_ccs` VALUES ('p01_ccs_shuxx', '', '*', '10.3.4.12', '8005', '1', 'shuxx', '', null);

-- ----------------------------
-- Table structure for cs_everyone_pk_account
-- ----------------------------
DROP TABLE IF EXISTS `cs_everyone_pk_account`;
CREATE TABLE `cs_everyone_pk_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cs_everyone_pk_account
-- ----------------------------

-- ----------------------------
-- Table structure for csa
-- ----------------------------
DROP TABLE IF EXISTS `csa`;
CREATE TABLE `csa` (
  `csa` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `port` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `cs_dist` varchar(255) NOT NULL DEFAULT '',
  `http_ip` varchar(255) NOT NULL DEFAULT '',
  `http_port` int(11) NOT NULL DEFAULT '0',
  `http_plat` varchar(255) NOT NULL DEFAULT '',
  `httpd_enable` int(1) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`csa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csa
-- ----------------------------
INSERT INTO `csa` VALUES ('csa_daili', '111.111.111.111', '6101', '7', '版本内测', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_dongsh', '10.3.4.35', '6001', '3', 'csa_dongsh', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_hongjs', '10.3.4.4', '9051', '2', 'csa_hongjs', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_luoyh', '10.3.4.25', '6001', '9', 'csa_luoyh', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_quls', '10.3.4.5', '6001', '1', 'csa_quls', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_shuxx', '10.3.4.12', '4052', '4', 'csa_shuxx', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_xuj', '10.3.4.10', '9999', '8', 'csa_xuj', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_yugq', '10.3.4.26', '6001', '6', 'csa_yugq', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('csa_zenghh', '10.3.4.30', '8051', '5', 'csa_zenghh', '', '0', '', '0', '');
INSERT INTO `csa` VALUES ('p01_csa_yeyh2', '10.3.102.24', '4080', '1', 'p01_csa_yeyh2', '', '0', '', '0', '');

-- ----------------------------
-- Table structure for csw_account
-- ----------------------------
DROP TABLE IF EXISTS `csw_account`;
CREATE TABLE `csw_account` (
  `account` varchar(64) NOT NULL DEFAULT '',
  `dist` varchar(64) NOT NULL DEFAULT '',
  `gid` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csw_account
-- ----------------------------

-- ----------------------------
-- Table structure for csw_config
-- ----------------------------
DROP TABLE IF EXISTS `csw_config`;
CREATE TABLE `csw_config` (
  `csw_name` varchar(128) NOT NULL DEFAULT '',
  `csw_key` varchar(128) NOT NULL DEFAULT '',
  `csw_value` text,
  `memo` text,
  PRIMARY KEY (`csw_name`,`csw_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csw_config
-- ----------------------------

-- ----------------------------
-- Table structure for csw_party_info
-- ----------------------------
DROP TABLE IF EXISTS `csw_party_info`;
CREATE TABLE `csw_party_info` (
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(64) NOT NULL DEFAULT '',
  `party` varchar(128) NOT NULL DEFAULT '',
  `score` int(8) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`dist`,`party`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csw_party_info
-- ----------------------------

-- ----------------------------
-- Table structure for cta
-- ----------------------------
DROP TABLE IF EXISTS `cta`;
CREATE TABLE `cta` (
  `cta` varchar(32) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `access_adb_user` varchar(32) NOT NULL DEFAULT '',
  `access_adb_password` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`cta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cta
-- ----------------------------
INSERT INTO `cta` VALUES ('chenqs', '*', '10.3.4.7', '0', 'yugq', 'chenqs', '81DC9BDB52D04DC20036DBD8313ED055', null);
INSERT INTO `cta` VALUES ('dongsh', '*', '10.3.4.35', '0', '普天同庆', 'dongsh', '81DC9BDB52D04DC20036DBD8313ED055', null);
INSERT INTO `cta` VALUES ('hongjs', '*', '10.3.4.4,10.3.4.7', '0', 'hongjs', 'hongjs', '81DC9BDB52D04DC20036DBD8313ED055', null);
INSERT INTO `cta` VALUES ('shuxx', '*', '10.3.4.12', '0', 'shuxx', 'shuxx', '81DC9BDB52D04DC20036DBD8313ED055', null);
INSERT INTO `cta` VALUES ('xuj', '*', '10.3.102.191,10.3.102.62', '0', 'xuj', 'xuj', '81DC9BDB52D04DC20036DBD8313ED055', null);
INSERT INTO `cta` VALUES ('yugq', '*', '10.3.4.26', '0', 'yugq', 'yugq', '81DC9BDB52D04DC20036DBD8313ED055', null);
INSERT INTO `cta` VALUES ('普天同庆', '*', '111.111.111.111', '0', '普天同庆', 'root', '81DC9BDB52D04DC20036DBD8313ED055', null);

-- ----------------------------
-- Table structure for dba
-- ----------------------------
DROP TABLE IF EXISTS `dba`;
CREATE TABLE `dba` (
  `dba` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dba
-- ----------------------------
INSERT INTO `dba` VALUES ('dba_coding', '10.2.50.30', '8200', 'coding', '', '1', null);
INSERT INTO `dba` VALUES ('dba_daili', '111.111.111.111', '8120', '版本内测', '', '1', null);
INSERT INTO `dba` VALUES ('dba_dongsh', '10.3.4.35', '8200', 'dongsh', '', '1', null);
INSERT INTO `dba` VALUES ('dba_jiangw_30', '10.2.50.30', '8020', 'jiangw_30', '', '1', null);
INSERT INTO `dba` VALUES ('dba_jiangw_pk', '111.111.111.111', '8022', 'pk', '', '2', null);
INSERT INTO `dba` VALUES ('dba_liy', '10.3.102.75', '8020', 'liy', '', '1', null);
INSERT INTO `dba` VALUES ('dba_luoyh', '10.3.4.25', '8020', 'luoyh', '', '1', null);
INSERT INTO `dba` VALUES ('dba_quls_30', '10.3.4.5', '8200', 'quls_30', '', '1', null);
INSERT INTO `dba` VALUES ('dba_test', '10.2.50.57', '12065', 'test', '', '1', null);
INSERT INTO `dba` VALUES ('dba_weism', '10.3.35.4', '8200', 'weism', '', '1', null);
INSERT INTO `dba` VALUES ('dba_wuxl', '10.3.4.20', '8003', 'wuxl', '', '1', null);
INSERT INTO `dba` VALUES ('dba_xg_quls', '10.3.4.5', '9200', 'quls_xg', '', '1', null);
INSERT INTO `dba` VALUES ('dba_xuj', '10.3.4.10', '8200', 'xuj', '', '1', '');
INSERT INTO `dba` VALUES ('dba_xuj_30', '10.2.50.30', '8200', 'xuj_30', '', '1', null);
INSERT INTO `dba` VALUES ('dba_zenghh', '10.3.4.30', '8003', 'zenghh', '', '1', null);
INSERT INTO `dba` VALUES ('dba_zhangq3_30', '10.3.102.39', '8200', 'zhangq3', '', '1', null);
INSERT INTO `dba` VALUES ('p01d_dba_yugq32', '10.3.4.26', '8005', 'yugq', '', '1', null);
INSERT INTO `dba` VALUES ('p01g_dba_pack', '10.2.50.57', '9867', 'gy_pack', '', '1', null);
INSERT INTO `dba` VALUES ('p01g_dba_pack58', '10.2.50.58', '9867', 'gy_pack58', '', '1', null);
INSERT INTO `dba` VALUES ('p01_dba_hong', '10.3.4.4', '10003', 'hong', '', '1', null);
INSERT INTO `dba` VALUES ('p01_dba_hongjs', '10.3.4.4', '8003', 'hongjs', '', '1', null);
INSERT INTO `dba` VALUES ('p01_dba_shuxx', '10.3.4.12', '8003', 'shuxx', '', '1', null);
INSERT INTO `dba` VALUES ('p01_dba_yeyh2', '10.3.102.24', '8076', 'yeyh2', '', '1', null);

-- ----------------------------
-- Table structure for ddb
-- ----------------------------
DROP TABLE IF EXISTS `ddb`;
CREATE TABLE `ddb` (
  `ddb` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `driver` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ddb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ddb
-- ----------------------------

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `dist` varchar(32) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `service` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `spa` varchar(32) NOT NULL DEFAULT '',
  `csa` varchar(32) NOT NULL DEFAULT '',
  `party_war_server` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES ('coding', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_coding', '', '', null);
INSERT INTO `district` VALUES ('dongsh', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_dongsh', '', '', null);
INSERT INTO `district` VALUES ('gy_pack', '', 'login/new_char/permit_wizard/new_account', '1', 'p01g_spa_pack', '', '', null);
INSERT INTO `district` VALUES ('gy_pack58', '', 'login/new_char/permit_wizard/new_account', '1', 'p01g_spa_pack58', '', '', null);
INSERT INTO `district` VALUES ('hong', '', 'login/new_char/permit_wizard/new_account', '1', 'p01_spa_hong', 'p01_csa_hong', '', null);
INSERT INTO `district` VALUES ('hongjs', '', 'login/new_char/permit_wizard/new_account', '1', 'p01_spa_hongjs', 'csa_hongjs', '', null);
INSERT INTO `district` VALUES ('jiangw_30', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_jiangw_30', 'csa_jiangw', '', null);
INSERT INTO `district` VALUES ('jiangw_pk', '', 'login/new_char/permit_wizard/new_account', '2', 'spa_jiangw_pk', 'csa_jiangw', '', null);
INSERT INTO `district` VALUES ('luoyh', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_luoyh', 'csa_luoyh', '', null);
INSERT INTO `district` VALUES ('quls_30', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_quls_30', 'csa_quls', '', null);
INSERT INTO `district` VALUES ('shuxx', '', 'login/new_char/permit_wizard/new_account/new_party', '1', 'p01_spa_shuxx', 'csa_shuxx', 'p01_gs_shuxx', null);
INSERT INTO `district` VALUES ('test', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_test', '', '', null);
INSERT INTO `district` VALUES ('weism', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_weism', '', '', null);
INSERT INTO `district` VALUES ('wuxl', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_wuxl', '', '', null);
INSERT INTO `district` VALUES ('xg_liy', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_xg_liy', 'csa_xg_liy', '', null);
INSERT INTO `district` VALUES ('xuj', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_xuj', 'csa_xuj', '', null);
INSERT INTO `district` VALUES ('xuj_30', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_xuj_30', '', '', null);
INSERT INTO `district` VALUES ('yeyh2', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_yeyh2', 'p01_csa_yeyh2', '', null);
INSERT INTO `district` VALUES ('yugq', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_yugq', 'csa_yugq', '', null);
INSERT INTO `district` VALUES ('zenghh', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_zenghh', 'csa_zenghh', '', null);
INSERT INTO `district` VALUES ('zenghh_1', '', 'login/new_char/permit_wizard/new_account', '2', 'spa_zenghh_1', '', '', null);
INSERT INTO `district` VALUES ('zhangq3', '', 'login/new_char/permit_wizard/new_account', '1', 'spa_zhangq3_30', '', '', '(NULL)');
INSERT INTO `district` VALUES ('版本内测', '', 'login/new_char/permit_wizard/new_account/new_party', '1', 'spa_jiangw', 'csa_daili', '', null);

-- ----------------------------
-- Table structure for ecard_business
-- ----------------------------
DROP TABLE IF EXISTS `ecard_business`;
CREATE TABLE `ecard_business` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `action` varchar(10) DEFAULT NULL,
  `buyer_done` int(11) DEFAULT NULL,
  `seller_done` int(11) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ecard_seller` (`ecard_seller`,`seller_done`) USING BTREE,
  KEY `ecard_buyer` (`ecard_buyer`,`buyer_done`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ecard_business
-- ----------------------------

-- ----------------------------
-- Table structure for ecard_log
-- ----------------------------
DROP TABLE IF EXISTS `ecard_log`;
CREATE TABLE `ecard_log` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_pwd` varchar(20) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `direction` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ecard_id` (`ecard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ecard_log
-- ----------------------------

-- ----------------------------
-- Table structure for ecard_need_to_resend
-- ----------------------------
DROP TABLE IF EXISTS `ecard_need_to_resend`;
CREATE TABLE `ecard_need_to_resend` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_pwd` varchar(20) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_dist` varchar(30) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `ecard_order_id` text,
  `send_result` int(11) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ecard_id` (`ecard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ecard_need_to_resend
-- ----------------------------

-- ----------------------------
-- Table structure for encourage
-- ----------------------------
DROP TABLE IF EXISTS `encourage`;
CREATE TABLE `encourage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `encourage_type` varchar(255) NOT NULL DEFAULT '',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `locked` int(11) NOT NULL DEFAULT '0',
  `insert_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `insert_time` (`insert_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of encourage
-- ----------------------------

-- ----------------------------
-- Table structure for encourage_log
-- ----------------------------
DROP TABLE IF EXISTS `encourage_log`;
CREATE TABLE `encourage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `encourage_id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `request_time` (`request_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of encourage_log
-- ----------------------------

-- ----------------------------
-- Table structure for express_recharge
-- ----------------------------
DROP TABLE IF EXISTS `express_recharge`;
CREATE TABLE `express_recharge` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(2) DEFAULT NULL,
  `result_code` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `inquiry_times` int(11) DEFAULT NULL,
  `card_no` varchar(30) DEFAULT NULL,
  `card_pwd` varchar(20) DEFAULT NULL,
  `user_name` varchar(128) DEFAULT NULL,
  `char_name` varchar(32) DEFAULT NULL,
  `server_name` varchar(30) DEFAULT NULL,
  `sales_name` varchar(128) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `par_value` int(11) DEFAULT NULL,
  `pay_type` varchar(30) DEFAULT NULL,
  `card_type` tinyint(4) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`order_id`),
  KEY `result_inquiry` (`result`,`inquiry_times`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of express_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for gbuy_coin_log
-- ----------------------------
DROP TABLE IF EXISTS `gbuy_coin_log`;
CREATE TABLE `gbuy_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gcoin_before` int(11) NOT NULL DEFAULT '0',
  `gcoin_after` int(11) NOT NULL DEFAULT '0',
  `scoin_before` int(11) NOT NULL DEFAULT '0',
  `scoin_after` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin_before` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin_after` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin_before` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gbuy_coin_log
-- ----------------------------

-- ----------------------------
-- Table structure for gift_coin_log
-- ----------------------------
DROP TABLE IF EXISTS `gift_coin_log`;
CREATE TABLE `gift_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `coupon_gold_used` int(11) NOT NULL DEFAULT '0',
  `coupon_silver_used` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`,`transaction_id`),
  KEY `account` (`account`) USING BTREE,
  KEY `transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gift_coin_log
-- ----------------------------

-- ----------------------------
-- Table structure for gift_valid_time
-- ----------------------------
DROP TABLE IF EXISTS `gift_valid_time`;
CREATE TABLE `gift_valid_time` (
  `gift_type` varchar(30) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gift_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gift_valid_time
-- ----------------------------

-- ----------------------------
-- Table structure for ip
-- ----------------------------
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
  `start_ip` varchar(32) NOT NULL DEFAULT '',
  `end_ip` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) DEFAULT NULL,
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `memo` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`start_ip`,`end_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ip
-- ----------------------------

-- ----------------------------
-- Table structure for ip_card
-- ----------------------------
DROP TABLE IF EXISTS `ip_card`;
CREATE TABLE `ip_card` (
  `card_no` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`card_no`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ip_card
-- ----------------------------

-- ----------------------------
-- Table structure for ip_info
-- ----------------------------
DROP TABLE IF EXISTS `ip_info`;
CREATE TABLE `ip_info` (
  `start_ip_desc` varchar(16) NOT NULL DEFAULT '',
  `end_ip_desc` varchar(16) NOT NULL DEFAULT '',
  `start_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `end_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `country` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`start_ip_desc`,`end_ip_desc`,`start_ip`,`end_ip`),
  KEY `start_ip` (`start_ip`) USING BTREE,
  KEY `end_ip` (`end_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ip_info
-- ----------------------------

-- ----------------------------
-- Table structure for ldba
-- ----------------------------
DROP TABLE IF EXISTS `ldba`;
CREATE TABLE `ldba` (
  `ldba` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`ldba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ldba
-- ----------------------------
INSERT INTO `ldba` VALUES ('ldba_jiangw', '111.111.111.111', '8040', '内部测试', '', '2', null);
INSERT INTO `ldba` VALUES ('ldba_jiangw_30', '10.2.50.30', '8040', 'jiangw_30', '', '2', null);
INSERT INTO `ldba` VALUES ('ldba_jiangw_pk', '111.111.111.111', '8050', 'pk', '', '2', null);

-- ----------------------------
-- Table structure for league_account
-- ----------------------------
DROP TABLE IF EXISTS `league_account`;
CREATE TABLE `league_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of league_account
-- ----------------------------

-- ----------------------------
-- Table structure for local_encrypt
-- ----------------------------
DROP TABLE IF EXISTS `local_encrypt`;
CREATE TABLE `local_encrypt` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(64) NOT NULL DEFAULT '',
  `local_encrypt_info` text NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `time` varchar(32) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of local_encrypt
-- ----------------------------

-- ----------------------------
-- Table structure for matrix
-- ----------------------------
DROP TABLE IF EXISTS `matrix`;
CREATE TABLE `matrix` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `matrix` text NOT NULL,
  `bind_time` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(32) NOT NULL DEFAULT '',
  `claim_lost_off_time` varchar(32) NOT NULL DEFAULT '',
  `enable` int(11) NOT NULL DEFAULT '1',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of matrix
-- ----------------------------

-- ----------------------------
-- Table structure for mp_device
-- ----------------------------
DROP TABLE IF EXISTS `mp_device`;
CREATE TABLE `mp_device` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `device` varchar(128) NOT NULL DEFAULT '',
  `os` tinyint(4) NOT NULL DEFAULT '0',
  `bind_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mp_device
-- ----------------------------

-- ----------------------------
-- Table structure for partywar_account
-- ----------------------------
DROP TABLE IF EXISTS `partywar_account`;
CREATE TABLE `partywar_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of partywar_account
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
-- Table structure for phone_auth
-- ----------------------------
DROP TABLE IF EXISTS `phone_auth`;
CREATE TABLE `phone_auth` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_info` text,
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phone_auth
-- ----------------------------

-- ----------------------------
-- Table structure for phone_bind
-- ----------------------------
DROP TABLE IF EXISTS `phone_bind`;
CREATE TABLE `phone_bind` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phone_bind
-- ----------------------------

-- ----------------------------
-- Table structure for privilege_group
-- ----------------------------
DROP TABLE IF EXISTS `privilege_group`;
CREATE TABLE `privilege_group` (
  `privilege_group` varchar(15) NOT NULL DEFAULT '',
  `class` varchar(15) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`privilege_group`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of privilege_group
-- ----------------------------
INSERT INTO `privilege_group` VALUES ('CS1', 'admintool', 'block_character/fetch_keywords/chat_attr/channel_silence/set_inspect_area/query_ddb/query_adb/query_mdb/query_ldb/query_tdb/monitor_signature/query_online_char', '');
INSERT INTO `privilege_group` VALUES ('CS2', 'admintool', 'polling_char/ip_query/trace_iid/restrict_char/polling_account/throw_in_jail/jail_and_silence', '');
INSERT INTO `privilege_group` VALUES ('CS3', 'admintool', 'control_account/oper_check/release_protected/transfer_pet/transfer_item/bind_roll_back/delete_pet/delete_item/polling_account/transfer_cash/delete_cash', '');
INSERT INTO `privilege_group` VALUES ('CS4', 'admintool', 'update_keywords/add_keywords/delete_keywords', '');
INSERT INTO `privilege_group` VALUES ('G1', 'admintool', 'query_ddb/query_adb/query_mdb/oper_character/block_account/block_character/delete_character/recover_character/release_character/delete_item/control_account/delete_pet/polling_char', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of property_recall
-- ----------------------------

-- ----------------------------
-- Table structure for protect_bonus
-- ----------------------------
DROP TABLE IF EXISTS `protect_bonus`;
CREATE TABLE `protect_bonus` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `branch` varchar(7) NOT NULL DEFAULT '',
  `dist` varchar(32) DEFAULT NULL,
  `matrix_time` text,
  `passpod_time` text,
  `phone_time` text,
  `sm_time` text,
  `bonus_time` varchar(14) DEFAULT NULL,
  `bonus_type` varchar(10) DEFAULT NULL,
  `bonus_info` text,
  `insert_time` varchar(14) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo` text,
  PRIMARY KEY (`account`,`branch`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of protect_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for protect_range
-- ----------------------------
DROP TABLE IF EXISTS `protect_range`;
CREATE TABLE `protect_range` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `p_range` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of protect_range
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
-- Table structure for pwd_protect
-- ----------------------------
DROP TABLE IF EXISTS `pwd_protect`;
CREATE TABLE `pwd_protect` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `protect_info` text,
  `checksum` varchar(32) DEFAULT NULL,
  `bind_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`account`,`protect_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pwd_protect
-- ----------------------------

-- ----------------------------
-- Table structure for qr_runtime
-- ----------------------------
DROP TABLE IF EXISTS `qr_runtime`;
CREATE TABLE `qr_runtime` (
  `qrid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`qrid`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of qr_runtime
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
-- Table structure for relative_acc
-- ----------------------------
DROP TABLE IF EXISTS `relative_acc`;
CREATE TABLE `relative_acc` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `last_add_coin_cookie` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of relative_acc
-- ----------------------------

-- ----------------------------
-- Table structure for safe_ctrl
-- ----------------------------
DROP TABLE IF EXISTS `safe_ctrl`;
CREATE TABLE `safe_ctrl` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `protect_info` text,
  `checksum` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`account`,`protect_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of safe_ctrl
-- ----------------------------

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '1500',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `enable` int(11) NOT NULL DEFAULT '0',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `when_iid_duplicated` varchar(32) NOT NULL DEFAULT '',
  `when_challenge_failed` varchar(32) NOT NULL DEFAULT 'punish_ex',
  `when_found_cheater` varchar(32) NOT NULL DEFAULT '',
  `punish_id` int(11) NOT NULL DEFAULT '0',
  `save_when_coin_cost` int(11) NOT NULL DEFAULT '0',
  `charge_level` int(11) NOT NULL DEFAULT '0',
  `charge_interval` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ahserver` varchar(32) NOT NULL DEFAULT '',
  `ip_wt` varchar(15) NOT NULL DEFAULT '',
  `ip_dx` varchar(15) NOT NULL DEFAULT '',
  `enable_multi_ip` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES ('斗转星移一线', '', '111.111.111.111', '8160', '1200', '版本内测', '1', 'network', '', '', '', '0', '0', '0', '600', '1', 'apex1', '', '', '0', null);
INSERT INTO `server` VALUES ('斗转星移二线', '', '111.111.111.111', '8161', '1200', '版本内测', '1', 'network', '', '', '', '0', '0', '0', '600', '2', 'apex2', '', '', '0', '');

-- ----------------------------
-- Table structure for server_status
-- ----------------------------
DROP TABLE IF EXISTS `server_status`;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_status
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `permit` varchar(255) NOT NULL DEFAULT '',
  `forbid` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for spa
-- ----------------------------
DROP TABLE IF EXISTS `spa`;
CREATE TABLE `spa` (
  `spa` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) DEFAULT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `port` int(11) NOT NULL DEFAULT '0',
  `http_plat` varchar(255) DEFAULT NULL,
  `http_ip` varchar(255) DEFAULT NULL,
  `httpd_enable` int(1) DEFAULT NULL,
  `httpd_port` int(16) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`spa`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spa
-- ----------------------------
INSERT INTO `spa` VALUES ('p01g_spa_pack', 'gy_pack', null, '10.2.50.57', '1', '9877', null, null, null, null, null);
INSERT INTO `spa` VALUES ('p01g_spa_pack58', 'gy_pack58', null, '10.2.50.58', '1', '9877', null, null, null, null, null);
INSERT INTO `spa` VALUES ('p01_spa_hong', 'hong', null, '10.3.4.4', '1', '10011', null, null, null, null, null);
INSERT INTO `spa` VALUES ('p01_spa_hongjs', 'hongjs', null, '10.3.4.4', '1', '8011', null, null, null, null, null);
INSERT INTO `spa` VALUES ('p01_spa_shuxx', 'shuxx', null, '10.3.4.12', '1', '8009', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_coding', 'coding', null, '10.2.50.30', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_dongsh', 'dongsh', null, '10.3.4.35', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_jiangw', '普天同庆', null, '111.111.111.111', '1', '8030', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_jiangw_30', 'jiangw_30', null, '10.2.50.30', '1', '8030', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_jiangw_pk', 'jiangw_pk', null, '111.111.111.111', '2', '8032', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_luoyh', 'luoyh', null, '10.3.4.25', '1', '8030', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_quls_30', 'quls_30', null, '10.3.4.5', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_test', 'test', null, '10.2.50.57', '1', '12076', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_weism', 'weism', null, '10.3.35.4', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_wuxl', 'wuxl', null, '10.3.4.20', '1', '9877', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_xuj', 'xuj', null, '10.3.4.10', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_xuj_30', 'xuj_30', null, '10.2.50.30', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_yeyh2', 'yeyh2', null, '10.3.102.24', '1', '8066', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_yugq', 'yugq', null, '10.3.4.26', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_zenghh', 'zenghh', null, '10.3.4.30', '1', '8400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_zenghh_1', 'zenghh_1', null, '10.3.4.30', '1', '9400', null, null, null, null, null);
INSERT INTO `spa` VALUES ('spa_zhangq3_30', 'zhangq3', null, '10.3.102.39', '1', '8400', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_9apay
-- ----------------------------
DROP TABLE IF EXISTS `t_9apay`;
CREATE TABLE `t_9apay` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orderno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cardno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GameCurrency` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appid` int(255) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `server_id` int(255) DEFAULT NULL,
  `Processing` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_9apay
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
-- Table structure for tts
-- ----------------------------
DROP TABLE IF EXISTS `tts`;
CREATE TABLE `tts` (
  `tts` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `trading_url` varchar(255) NOT NULL DEFAULT '',
  `web_status_url` varchar(32) NOT NULL DEFAULT '',
  `http_ip` varchar(255) NOT NULL DEFAULT '',
  `http_plat` varchar(255) NOT NULL DEFAULT '',
  `httpd_enable` int(1) NOT NULL DEFAULT '0',
  `httpd_port` int(16) NOT NULL DEFAULT '0',
  `check_sum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`tts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tts
-- ----------------------------
INSERT INTO `tts` VALUES ('p01g_tts_pack', '10.2.50.57', '9897', '1', 'gy_pack', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('p01g_tts_pack58', '10.2.50.58', '9897', '1', 'gy_pack58', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('p01_tts_hongjs', '10.3.4.4', '8071', '1', 'hongjs', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('p01_tts_yeyh2', '10.3.102.24', '8600', '1', 'yeyh2', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('tte_test', '10.2.50.57', '12011', '1', 'test', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('tts_jiangw', '111.111.111.111', '8600', '1', '普天同庆', 'http://10.2.50.58/simulateforum/trading.php', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('tts_quls', '10.3.102.203', '8600', '1', 'quls_30', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');
INSERT INTO `tts` VALUES ('tts_shuxx', '10.3.4.12', '9000', '1', 'shuxx', 'http://10.2.16.7', 'http://treasure.gyyx.com', '*', '1aó?', '0', '85', '');
INSERT INTO `tts` VALUES ('tts_xuj', '10.3.4.10', '8600', '1', 'xuj', '', '', '', '', '0', '9550', '');
INSERT INTO `tts` VALUES ('tts_yugq', '10.3.4.26', '9001', '1', 'yugq', '', '', '', '', '0', '0', '');
INSERT INTO `tts` VALUES ('tts_zhangq3_30', '10.3.102.39', '8600', '1', 'zhangq3', 'http://10.3.102.49', 'http://treasure.gyyx.com', '*', '1aó?', '1', '85', '');

-- ----------------------------
-- Table structure for vip_sms_protect
-- ----------------------------
DROP TABLE IF EXISTS `vip_sms_protect`;
CREATE TABLE `vip_sms_protect` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `p_coin_trade` int(11) NOT NULL DEFAULT '0',
  `p_coin_consum` int(11) NOT NULL DEFAULT '0',
  `p_prop_trade` int(11) NOT NULL DEFAULT '0',
  `p_block_account` int(11) NOT NULL DEFAULT '0',
  `p_oper_role` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vip_sms_protect
-- ----------------------------

-- ----------------------------
-- Table structure for wba
-- ----------------------------
DROP TABLE IF EXISTS `wba`;
CREATE TABLE `wba` (
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `force_count` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`user`,`ip`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wba
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
