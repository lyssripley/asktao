/*
Navicat MySQL Data Transfer

Source Server         : 111.111.111.111_3306
Source Server Version : 50173
Source Host           : 111.111.111.111:3306
Source Database       : dl_mdb_all

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 936

Date: 2025-04-07 03:13:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acc_info
-- ----------------------------
DROP TABLE IF EXISTS `acc_info`;
CREATE TABLE `acc_info` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of acc_info
-- ----------------------------

-- ----------------------------
-- Table structure for acc_info_copy
-- ----------------------------
DROP TABLE IF EXISTS `acc_info_copy`;
CREATE TABLE `acc_info_copy` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of acc_info_copy
-- ----------------------------

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '',
  `blocked_reason` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `permit_ip` varchar(15) NOT NULL DEFAULT '',
  `permit_id` varchar(16) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for arena_user_info
-- ----------------------------
DROP TABLE IF EXISTS `arena_user_info`;
CREATE TABLE `arena_user_info` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `tt_score` int(32) NOT NULL DEFAULT '0',
  `w_score` int(32) NOT NULL DEFAULT '0',
  `tao` int(32) NOT NULL DEFAULT '0',
  `wcoin` int(32) NOT NULL DEFAULT '0',
  `family` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`),
  KEY `tt_score` (`tt_score`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arena_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for char_info
-- ----------------------------
DROP TABLE IF EXISTS `char_info`;
CREATE TABLE `char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `charge_items_value` int(11) NOT NULL DEFAULT '0',
  `glory` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_ip` varchar(16) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `last_login_mac` varchar(32) NOT NULL DEFAULT '',
  `service_member_end_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `family_title` varchar(32) NOT NULL DEFAULT '',
  `activity_info` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `month_tao` int(11) NOT NULL DEFAULT '0',
  `month_tao_ti` char(14) NOT NULL DEFAULT '',
  `total_score` int(11) NOT NULL DEFAULT '0',
  `char_status` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_job` varchar(32) NOT NULL DEFAULT '',
  `party_contrib` int(11) DEFAULT NULL,
  `portrait` int(11) NOT NULL DEFAULT '0',
  `deny_login` int(11) NOT NULL DEFAULT '0',
  `last_privilege` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `auto_stall` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `nice` int(11) NOT NULL DEFAULT '0',
  `title` varchar(32) NOT NULL DEFAULT '',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `tortoise` int(11) NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `wrestle_score` int(11) DEFAULT NULL,
  `newbie_survey_answer` int(11) NOT NULL DEFAULT '0',
  `tower_num` int(11) NOT NULL DEFAULT '0',
  `tower_time` int(11) NOT NULL DEFAULT '0',
  `tongtt_num` int(11) NOT NULL DEFAULT '0',
  `vip_score` int(11) NOT NULL DEFAULT '0',
  `tongtt_time` int(11) NOT NULL DEFAULT '0',
  `question_score` int(11) NOT NULL DEFAULT '0',
  `question_cost` int(11) NOT NULL DEFAULT '0',
  `last_question_time` int(11) NOT NULL DEFAULT '0',
  `arena_level` int(11) NOT NULL DEFAULT '0',
  `arena_exp` int(11) NOT NULL DEFAULT '0',
  `arena_score` int(11) NOT NULL DEFAULT '0',
  `kill_pkers` int(11) NOT NULL DEFAULT '0',
  `kill_officers` int(11) NOT NULL DEFAULT '0',
  `achieve` int(11) NOT NULL DEFAULT '0',
  `qixjh_round` int(11) NOT NULL DEFAULT '0',
  `qixjh_type` int(11) NOT NULL DEFAULT '0',
  `qixjh_time` int(11) NOT NULL DEFAULT '0',
  `tunt_name` varchar(32) NOT NULL DEFAULT '',
  `tunt_time` int(11) NOT NULL DEFAULT '0',
  `shid_name` varchar(32) NOT NULL DEFAULT '',
  `shid_time` int(11) NOT NULL DEFAULT '0',
  `kuilw_name` varchar(32) NOT NULL DEFAULT '',
  `kuilw_time` int(11) NOT NULL DEFAULT '0',
  `acc_blocked_time` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of char_info
-- ----------------------------

-- ----------------------------
-- Table structure for child_info
-- ----------------------------
DROP TABLE IF EXISTS `child_info`;
CREATE TABLE `child_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `wisdom` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `physique` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str_effect` int(11) NOT NULL DEFAULT '0',
  `wit_effect` int(11) NOT NULL DEFAULT '0',
  `dex_effect` int(11) NOT NULL DEFAULT '0',
  `phy_effect` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`iid`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of child_info
-- ----------------------------

-- ----------------------------
-- Table structure for city_info
-- ----------------------------
DROP TABLE IF EXISTS `city_info`;
CREATE TABLE `city_info` (
  `city` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `level` int(8) NOT NULL DEFAULT '1',
  `buildings` text,
  `memo` text,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of city_info
-- ----------------------------

-- ----------------------------
-- Table structure for citywar_info
-- ----------------------------
DROP TABLE IF EXISTS `citywar_info`;
CREATE TABLE `citywar_info` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `city_name` varchar(32) NOT NULL DEFAULT '',
  `defense_dist` varchar(32) NOT NULL DEFAULT '',
  `attack_dist` varchar(128) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`start_time`,`city_name`),
  KEY `start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of citywar_info
-- ----------------------------

-- ----------------------------
-- Table structure for combat_recording
-- ----------------------------
DROP TABLE IF EXISTS `combat_recording`;
CREATE TABLE `combat_recording` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `combat_id` varchar(32) NOT NULL DEFAULT '',
  `msg_index` int(32) NOT NULL DEFAULT '0',
  `content` text,
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`combat_id`,`msg_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of combat_recording
-- ----------------------------

-- ----------------------------
-- Table structure for csc_sign_info
-- ----------------------------
DROP TABLE IF EXISTS `csc_sign_info`;
CREATE TABLE `csc_sign_info` (
  `csc` varchar(128) NOT NULL DEFAULT '',
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`csc`,`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csc_sign_info
-- ----------------------------

-- ----------------------------
-- Table structure for csl_dist_info
-- ----------------------------
DROP TABLE IF EXISTS `csl_dist_info`;
CREATE TABLE `csl_dist_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`dist`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csl_dist_info
-- ----------------------------

-- ----------------------------
-- Table structure for csl_match_info
-- ----------------------------
DROP TABLE IF EXISTS `csl_match_info`;
CREATE TABLE `csl_match_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `matchday` int(11) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `home_point` tinyint(4) NOT NULL DEFAULT '0',
  `away_point` tinyint(4) NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`),
  KEY `home_dist` (`home_dist`) USING BTREE,
  KEY `away_dist` (`away_dist`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csl_match_info
-- ----------------------------

-- ----------------------------
-- Table structure for csl_person_info
-- ----------------------------
DROP TABLE IF EXISTS `csl_person_info`;
CREATE TABLE `csl_person_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `contrib` int(11) NOT NULL DEFAULT '0',
  `combat` int(11) NOT NULL DEFAULT '0',
  `victory` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`,`dist`,`level_section`,`gid`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csl_person_info
-- ----------------------------

-- ----------------------------
-- Table structure for csw_sign_info
-- ----------------------------
DROP TABLE IF EXISTS `csw_sign_info`;
CREATE TABLE `csw_sign_info` (
  `csw_name` varchar(128) DEFAULT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `time` varchar(64) DEFAULT NULL,
  `para1` varchar(128) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csw_sign_info
-- ----------------------------

-- ----------------------------
-- Table structure for draft_info
-- ----------------------------
DROP TABLE IF EXISTS `draft_info`;
CREATE TABLE `draft_info` (
  `season` varchar(32) NOT NULL DEFAULT '',
  `stage` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `gender` int(8) NOT NULL DEFAULT '1',
  `cur_votes` int(32) NOT NULL DEFAULT '0',
  `total_votes` int(32) NOT NULL DEFAULT '0',
  `flowers` int(32) NOT NULL DEFAULT '0',
  `di_declare` varchar(255) NOT NULL DEFAULT '',
  `images` text,
  `memo` text,
  PRIMARY KEY (`season`,`stage`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of draft_info
-- ----------------------------

-- ----------------------------
-- Table structure for important_pet_info
-- ----------------------------
DROP TABLE IF EXISTS `important_pet_info`;
CREATE TABLE `important_pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of important_pet_info
-- ----------------------------

-- ----------------------------
-- Table structure for item_info
-- ----------------------------
DROP TABLE IF EXISTS `item_info`;
CREATE TABLE `item_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `durability` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `rebuild_level` int(11) NOT NULL DEFAULT '0',
  `color` varchar(16) NOT NULL DEFAULT '0',
  `suit_level` int(11) NOT NULL DEFAULT '0',
  `req_level` int(11) NOT NULL DEFAULT '0',
  `perfect_degree` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`owner`,`dist`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_info
-- ----------------------------

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_info
-- ----------------------------

-- ----------------------------
-- Table structure for ns_top_info
-- ----------------------------
DROP TABLE IF EXISTS `ns_top_info`;
CREATE TABLE `ns_top_info` (
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ns_top_info
-- ----------------------------

-- ----------------------------
-- Table structure for paonan_user_info
-- ----------------------------
DROP TABLE IF EXISTS `paonan_user_info`;
CREATE TABLE `paonan_user_info` (
  `account` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `daily_task` varchar(128) NOT NULL DEFAULT '',
  `achieve_task` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(128) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paonan_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for party_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `party_basic_info`;
CREATE TABLE `party_basic_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `creator` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `icon_state` tinyint(2) NOT NULL DEFAULT '0',
  `temp_icon` text NOT NULL,
  `construct` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `last_give_party_money_time` varchar(16) NOT NULL DEFAULT '',
  `base_construct` int(11) NOT NULL DEFAULT '0',
  `last_pay_score_time` varchar(16) NOT NULL DEFAULT '',
  `last_save_time` varchar(16) NOT NULL DEFAULT '',
  `annouce` text NOT NULL,
  `skill_state` int(11) NOT NULL DEFAULT '0',
  `last_activity_time` varchar(16) NOT NULL DEFAULT '',
  `war_victory` int(11) NOT NULL DEFAULT '0',
  `pay_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of party_basic_info
-- ----------------------------

-- ----------------------------
-- Table structure for party_members_info
-- ----------------------------
DROP TABLE IF EXISTS `party_members_info`;
CREATE TABLE `party_members_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `party_job` varchar(100) NOT NULL DEFAULT '',
  `party_activity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `member_gid` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`member_gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of party_members_info
-- ----------------------------

-- ----------------------------
-- Table structure for party_skills_info
-- ----------------------------
DROP TABLE IF EXISTS `party_skills_info`;
CREATE TABLE `party_skills_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `skill_score` int(11) NOT NULL DEFAULT '0',
  `skill_level` int(11) NOT NULL DEFAULT '0',
  `skill_next_level_score` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of party_skills_info
-- ----------------------------

-- ----------------------------
-- Table structure for pet_info
-- ----------------------------
DROP TABLE IF EXISTS `pet_info`;
CREATE TABLE `pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pet_info
-- ----------------------------

-- ----------------------------
-- Table structure for server_status
-- ----------------------------
DROP TABLE IF EXISTS `server_status`;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of server_status
-- ----------------------------

-- ----------------------------
-- Table structure for shop_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_info`;
CREATE TABLE `shop_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `shop_id` varchar(128) NOT NULL DEFAULT '',
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_owner` varchar(32) NOT NULL DEFAULT '',
  `shop_counters` int(11) NOT NULL DEFAULT '0',
  `shop_base_money` int(11) NOT NULL DEFAULT '0',
  `shop_run_money` int(11) NOT NULL DEFAULT '0',
  `shop_state` varchar(20) NOT NULL DEFAULT '',
  `shop_level` int(11) NOT NULL DEFAULT '0',
  `shop_type` varchar(20) NOT NULL DEFAULT '',
  `shop_credit_rank` int(11) NOT NULL DEFAULT '0',
  `shop_credit_value` int(11) NOT NULL DEFAULT '0',
  `shop_rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`owner`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop_info
-- ----------------------------

-- ----------------------------
-- Table structure for sync_info
-- ----------------------------
DROP TABLE IF EXISTS `sync_info`;
CREATE TABLE `sync_info` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sync_info
-- ----------------------------

-- ----------------------------
-- Table structure for top_char
-- ----------------------------
DROP TABLE IF EXISTS `top_char`;
CREATE TABLE `top_char` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of top_char
-- ----------------------------

-- ----------------------------
-- Table structure for top_pet
-- ----------------------------
DROP TABLE IF EXISTS `top_pet`;
CREATE TABLE `top_pet` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of top_pet
-- ----------------------------

-- ----------------------------
-- Table structure for top_tongtt
-- ----------------------------
DROP TABLE IF EXISTS `top_tongtt`;
CREATE TABLE `top_tongtt` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `over_lv` int(11) NOT NULL DEFAULT '0',
  `used_ti` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of top_tongtt
-- ----------------------------

-- ----------------------------
-- Table structure for upgrade_char_info
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_char_info`;
CREATE TABLE `upgrade_char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `upgrade_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upgrade_char_info
-- ----------------------------
