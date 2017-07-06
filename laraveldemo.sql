/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laraveldemo

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-06 18:01:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_06_20_062458_crate_tasks_table', '2');
INSERT INTO `migrations` VALUES ('5', '2017_06_20_072553_add_completed_to_tasks_table', '3');
INSERT INTO `migrations` VALUES ('6', '2017_06_21_064330_create_user_files_table', '4');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `tasks`
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES ('1', 'homework', '2017-06-20 06:29:42', '2017-06-20 06:29:42', '0');
INSERT INTO `tasks` VALUES ('2', 'shopping', '2017-06-20 06:30:33', '2017-06-20 06:30:33', '0');
INSERT INTO `tasks` VALUES ('3', 'gym', '2017-06-20 06:31:00', '2017-06-20 06:31:00', '0');
INSERT INTO `tasks` VALUES ('4', 'cooking', '2017-06-20 07:33:03', '2017-06-20 07:33:03', '1');
INSERT INTO `tasks` VALUES ('5', 'swimming', '2017-07-06 15:19:02', '2017-07-06 15:19:05', '0');
INSERT INTO `tasks` VALUES ('6', 'reading', '2017-07-06 15:19:17', '2017-07-06 15:19:20', '0');
INSERT INTO `tasks` VALUES ('7', 'pub', '2017-07-06 15:19:40', '2017-07-06 15:19:44', '0');
INSERT INTO `tasks` VALUES ('8', 'cleaningroom', '2017-07-06 15:19:57', '2017-07-06 15:19:59', '0');
INSERT INTO `tasks` VALUES ('9', 'learningFrench', '2017-07-06 15:20:29', '2017-07-06 15:20:32', '0');
INSERT INTO `tasks` VALUES ('10', 'watchingtv', '2017-07-06 15:21:54', '2017-07-06 15:21:57', '0');
INSERT INTO `tasks` VALUES ('11', 'fittingbody', '2017-07-06 15:22:17', '2017-07-06 15:22:20', '0');
INSERT INTO `tasks` VALUES ('12', 'washingclothe', '2017-07-06 15:23:57', '2017-07-06 15:24:02', '0');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `user_files`
-- ----------------------------
DROP TABLE IF EXISTS `user_files`;
CREATE TABLE `user_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `filepath` varchar(250) NOT NULL,
  `fileext` varchar(50) NOT NULL,
  `filesize` bigint(20) NOT NULL,
  `sizedisp` varchar(200) NOT NULL,
  `originname` varchar(250) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `sha1_hex` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_files
-- ----------------------------
