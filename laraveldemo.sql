/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laraveldemo

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-13 17:16:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-user', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '8', 'Helpers', 'fa-gears', '', null, null);
INSERT INTO `admin_menu` VALUES ('9', '8', '9', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', null, null);
INSERT INTO `admin_menu` VALUES ('10', '8', '10', 'Database terminal', 'fa-database', 'helpers/terminal/database', null, null);
INSERT INTO `admin_menu` VALUES ('11', '8', '11', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', null, null);

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=828 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 02:52:33', '2017-07-13 02:52:33');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:29', '2017-07-13 03:06:29');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:33', '2017-07-13 03:06:33');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:35', '2017-07-13 03:06:35');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:38', '2017-07-13 03:06:38');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:40', '2017-07-13 03:06:40');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:44', '2017-07-13 03:06:44');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:51', '2017-07-13 03:06:51');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:53', '2017-07-13 03:06:53');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'ladmin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:06:58', '2017-07-13 03:06:58');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:07:01', '2017-07-13 03:07:01');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:09:40', '2017-07-13 03:09:40');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'ladmin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 03:09:46', '2017-07-13 03:09:46');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'ladmin/auth/users/create', 'GET', '127.0.0.1', '[]', '2017-07-13 05:42:08', '2017-07-13 05:42:08');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:42:12', '2017-07-13 05:42:12');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'ladmin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:42:14', '2017-07-13 05:42:14');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'ladmin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"12345678\",\"password_confirmation\":\"12345678\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 05:43:52', '2017-07-13 05:43:52');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 05:43:53', '2017-07-13 05:43:53');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:46:56', '2017-07-13 05:46:56');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:47:02', '2017-07-13 05:47:02');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'ladmin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:47:03', '2017-07-13 05:47:03');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:47:06', '2017-07-13 05:47:06');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'ladmin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:47:09', '2017-07-13 05:47:09');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:47:28', '2017-07-13 05:47:28');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:47:31', '2017-07-13 05:47:31');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:56:00', '2017-07-13 05:56:00');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:56:02', '2017-07-13 05:56:02');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"key\":\"0\",\"avatar\":null,\"__del__\":null,\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\"}', '2017-07-13 05:56:10', '2017-07-13 05:56:10');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 05:56:45', '2017-07-13 05:56:45');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 05:56:45', '2017-07-13 05:56:45');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 05:56:48', '2017-07-13 05:56:48');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2017-07-13 05:56:58', '2017-07-13 05:56:58');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2017-07-13 06:01:10', '2017-07-13 06:01:10');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:01:33', '2017-07-13 06:01:33');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:01:40', '2017-07-13 06:01:40');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:01:51', '2017-07-13 06:01:51');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"1\"}', '2017-07-13 06:05:33', '2017-07-13 06:05:33');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'ladmin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:05:37', '2017-07-13 06:05:37');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:05:45', '2017-07-13 06:05:45');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:05:48', '2017-07-13 06:05:48');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:05:54', '2017-07-13 06:05:54');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:05:54', '2017-07-13 06:05:54');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:06:16', '2017-07-13 06:06:16');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:06:20', '2017-07-13 06:06:20');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:06:21', '2017-07-13 06:06:21');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'ladmin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Admin.Users\",\"name\":\"Admin.Users\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/permissions\"}', '2017-07-13 06:06:43', '2017-07-13 06:06:43');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 06:06:43', '2017-07-13 06:06:43');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:06:48', '2017-07-13 06:06:48');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'ladmin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Admin.Roles\",\"name\":\"Admin.Roles\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/permissions\"}', '2017-07-13 06:06:57', '2017-07-13 06:06:57');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 06:06:58', '2017-07-13 06:06:58');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:07:03', '2017-07-13 06:07:03');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'ladmin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Admin.Permission\",\"name\":\"Admin.Permission\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/permissions\"}', '2017-07-13 06:07:16', '2017-07-13 06:07:16');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 06:07:16', '2017-07-13 06:07:16');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:07:51', '2017-07-13 06:07:51');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'ladmin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Admin.Menu\",\"name\":\"Admin.Menu\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/permissions\"}', '2017-07-13 06:08:00', '2017-07-13 06:08:00');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 06:08:01', '2017-07-13 06:08:01');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:08:04', '2017-07-13 06:08:04');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'ladmin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Admin.log\",\"name\":\"Admin.log\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/permissions\"}', '2017-07-13 06:08:11', '2017-07-13 06:08:11');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 06:08:11', '2017-07-13 06:08:11');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'ladmin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:08:14', '2017-07-13 06:08:14');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'ladmin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Admin.all\",\"name\":\"Admin.all\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/permissions\"}', '2017-07-13 06:08:21', '2017-07-13 06:08:21');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 06:08:21', '2017-07-13 06:08:21');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:08:24', '2017-07-13 06:08:24');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:08:30', '2017-07-13 06:08:30');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'ladmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:08:37', '2017-07-13 06:08:37');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:08:50', '2017-07-13 06:08:50');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:00', '2017-07-13 06:09:00');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:03', '2017-07-13 06:09:03');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'ladmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:04', '2017-07-13 06:09:04');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:14', '2017-07-13 06:09:14');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:18', '2017-07-13 06:09:18');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'ladmin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:21', '2017-07-13 06:09:21');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:27', '2017-07-13 06:09:27');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'ladmin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:09:41', '2017-07-13 06:09:41');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'ladmin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"Admin.log\",\"name\":\"Admin.log\",\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/roles\"}', '2017-07-13 06:10:01', '2017-07-13 06:10:01');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-07-13 06:10:01', '2017-07-13 06:10:01');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:10:10', '2017-07-13 06:10:10');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:10:13', '2017-07-13 06:10:13');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:10:15', '2017-07-13 06:10:15');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:10:21', '2017-07-13 06:10:21');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:10:38', '2017-07-13 06:10:38');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:10:38', '2017-07-13 06:10:38');
INSERT INTO `admin_operation_log` VALUES ('83', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:11:39', '2017-07-13 06:11:39');
INSERT INTO `admin_operation_log` VALUES ('84', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:11:46', '2017-07-13 06:11:46');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:11:54', '2017-07-13 06:11:54');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:11:57', '2017-07-13 06:11:57');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 06:12:05', '2017-07-13 06:12:05');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:12:05', '2017-07-13 06:12:05');
INSERT INTO `admin_operation_log` VALUES ('89', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:09', '2017-07-13 06:12:09');
INSERT INTO `admin_operation_log` VALUES ('90', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:12:21', '2017-07-13 06:12:21');
INSERT INTO `admin_operation_log` VALUES ('91', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:26', '2017-07-13 06:12:26');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:33', '2017-07-13 06:12:33');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:41', '2017-07-13 06:12:41');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:45', '2017-07-13 06:12:45');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:53', '2017-07-13 06:12:53');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:12:56', '2017-07-13 06:12:56');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:00', '2017-07-13 06:13:00');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:13:04', '2017-07-13 06:13:04');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:13:05', '2017-07-13 06:13:05');
INSERT INTO `admin_operation_log` VALUES ('100', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:08', '2017-07-13 06:13:08');
INSERT INTO `admin_operation_log` VALUES ('101', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:13:16', '2017-07-13 06:13:16');
INSERT INTO `admin_operation_log` VALUES ('102', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:34', '2017-07-13 06:13:34');
INSERT INTO `admin_operation_log` VALUES ('103', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:37', '2017-07-13 06:13:37');
INSERT INTO `admin_operation_log` VALUES ('104', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:38', '2017-07-13 06:13:38');
INSERT INTO `admin_operation_log` VALUES ('105', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:39', '2017-07-13 06:13:39');
INSERT INTO `admin_operation_log` VALUES ('106', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:40', '2017-07-13 06:13:40');
INSERT INTO `admin_operation_log` VALUES ('107', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:42', '2017-07-13 06:13:42');
INSERT INTO `admin_operation_log` VALUES ('108', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:42', '2017-07-13 06:13:42');
INSERT INTO `admin_operation_log` VALUES ('109', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:43', '2017-07-13 06:13:43');
INSERT INTO `admin_operation_log` VALUES ('110', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:13:43', '2017-07-13 06:13:43');
INSERT INTO `admin_operation_log` VALUES ('111', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:43', '2017-07-13 06:13:43');
INSERT INTO `admin_operation_log` VALUES ('112', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:46', '2017-07-13 06:13:46');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:51', '2017-07-13 06:13:51');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:53', '2017-07-13 06:13:53');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:13:56', '2017-07-13 06:13:56');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:14:02', '2017-07-13 06:14:02');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:14:02', '2017-07-13 06:14:02');
INSERT INTO `admin_operation_log` VALUES ('118', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:08', '2017-07-13 06:14:08');
INSERT INTO `admin_operation_log` VALUES ('119', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:09', '2017-07-13 06:14:09');
INSERT INTO `admin_operation_log` VALUES ('120', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:10', '2017-07-13 06:14:10');
INSERT INTO `admin_operation_log` VALUES ('121', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:10', '2017-07-13 06:14:10');
INSERT INTO `admin_operation_log` VALUES ('122', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:10', '2017-07-13 06:14:10');
INSERT INTO `admin_operation_log` VALUES ('123', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:12', '2017-07-13 06:14:12');
INSERT INTO `admin_operation_log` VALUES ('124', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:14:20', '2017-07-13 06:14:20');
INSERT INTO `admin_operation_log` VALUES ('125', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:14:23', '2017-07-13 06:14:23');
INSERT INTO `admin_operation_log` VALUES ('126', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:15:55', '2017-07-13 06:15:55');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:03', '2017-07-13 06:16:03');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:07', '2017-07-13 06:16:07');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:14', '2017-07-13 06:16:14');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:17', '2017-07-13 06:16:17');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 06:16:23', '2017-07-13 06:16:23');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:16:23', '2017-07-13 06:16:23');
INSERT INTO `admin_operation_log` VALUES ('133', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:26', '2017-07-13 06:16:26');
INSERT INTO `admin_operation_log` VALUES ('134', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:16:28', '2017-07-13 06:16:28');
INSERT INTO `admin_operation_log` VALUES ('135', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:31', '2017-07-13 06:16:31');
INSERT INTO `admin_operation_log` VALUES ('136', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:32', '2017-07-13 06:16:32');
INSERT INTO `admin_operation_log` VALUES ('137', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:32', '2017-07-13 06:16:32');
INSERT INTO `admin_operation_log` VALUES ('138', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:33', '2017-07-13 06:16:33');
INSERT INTO `admin_operation_log` VALUES ('139', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:33', '2017-07-13 06:16:33');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:35', '2017-07-13 06:16:35');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:38', '2017-07-13 06:16:38');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:42', '2017-07-13 06:16:42');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:47', '2017-07-13 06:16:47');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:53', '2017-07-13 06:16:53');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:16:56', '2017-07-13 06:16:56');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:03', '2017-07-13 06:17:03');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:12', '2017-07-13 06:17:12');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:15', '2017-07-13 06:17:15');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:15', '2017-07-13 06:17:15');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:16', '2017-07-13 06:17:16');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:16', '2017-07-13 06:17:16');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:18', '2017-07-13 06:17:18');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:17:19', '2017-07-13 06:17:19');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:21:05', '2017-07-13 06:21:05');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:21:10', '2017-07-13 06:21:10');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:22:47', '2017-07-13 06:22:47');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:23:07', '2017-07-13 06:23:07');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:23:14', '2017-07-13 06:23:14');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:23:18', '2017-07-13 06:23:18');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:23:29', '2017-07-13 06:23:29');
INSERT INTO `admin_operation_log` VALUES ('161', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:47', '2017-07-13 06:26:47');
INSERT INTO `admin_operation_log` VALUES ('162', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:48', '2017-07-13 06:26:48');
INSERT INTO `admin_operation_log` VALUES ('163', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:48', '2017-07-13 06:26:48');
INSERT INTO `admin_operation_log` VALUES ('164', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:49', '2017-07-13 06:26:49');
INSERT INTO `admin_operation_log` VALUES ('165', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:51', '2017-07-13 06:26:51');
INSERT INTO `admin_operation_log` VALUES ('166', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:57', '2017-07-13 06:26:57');
INSERT INTO `admin_operation_log` VALUES ('167', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:58', '2017-07-13 06:26:58');
INSERT INTO `admin_operation_log` VALUES ('168', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:58', '2017-07-13 06:26:58');
INSERT INTO `admin_operation_log` VALUES ('169', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:59', '2017-07-13 06:26:59');
INSERT INTO `admin_operation_log` VALUES ('170', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:26:59', '2017-07-13 06:26:59');
INSERT INTO `admin_operation_log` VALUES ('171', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:00', '2017-07-13 06:27:00');
INSERT INTO `admin_operation_log` VALUES ('172', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:00', '2017-07-13 06:27:00');
INSERT INTO `admin_operation_log` VALUES ('173', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:01', '2017-07-13 06:27:01');
INSERT INTO `admin_operation_log` VALUES ('174', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:02', '2017-07-13 06:27:02');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:07', '2017-07-13 06:27:07');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:10', '2017-07-13 06:27:10');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:11', '2017-07-13 06:27:11');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'ladmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:16', '2017-07-13 06:27:16');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'ladmin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:27:25', '2017-07-13 06:27:25');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:27:26', '2017-07-13 06:27:26');
INSERT INTO `admin_operation_log` VALUES ('181', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:29', '2017-07-13 06:27:29');
INSERT INTO `admin_operation_log` VALUES ('182', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:27:35', '2017-07-13 06:27:35');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'ladmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:44', '2017-07-13 06:27:44');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:48', '2017-07-13 06:27:48');
INSERT INTO `admin_operation_log` VALUES ('185', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:52', '2017-07-13 06:27:52');
INSERT INTO `admin_operation_log` VALUES ('186', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:53', '2017-07-13 06:27:53');
INSERT INTO `admin_operation_log` VALUES ('187', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:54', '2017-07-13 06:27:54');
INSERT INTO `admin_operation_log` VALUES ('188', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:27:55', '2017-07-13 06:27:55');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:28:01', '2017-07-13 06:28:01');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'ladmin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Helpers\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:28:09', '2017-07-13 06:28:09');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:28:09', '2017-07-13 06:28:09');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'ladmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:28:12', '2017-07-13 06:28:12');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'ladmin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:28:16', '2017-07-13 06:28:16');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:28:16', '2017-07-13 06:28:16');
INSERT INTO `admin_operation_log` VALUES ('195', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:28:19', '2017-07-13 06:28:19');
INSERT INTO `admin_operation_log` VALUES ('196', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:28:42', '2017-07-13 06:28:42');
INSERT INTO `admin_operation_log` VALUES ('197', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:08', '2017-07-13 06:29:08');
INSERT INTO `admin_operation_log` VALUES ('198', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:09', '2017-07-13 06:29:09');
INSERT INTO `admin_operation_log` VALUES ('199', '2', 'ladmin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:10', '2017-07-13 06:29:10');
INSERT INTO `admin_operation_log` VALUES ('200', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:12', '2017-07-13 06:29:12');
INSERT INTO `admin_operation_log` VALUES ('201', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:13', '2017-07-13 06:29:13');
INSERT INTO `admin_operation_log` VALUES ('202', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:14', '2017-07-13 06:29:14');
INSERT INTO `admin_operation_log` VALUES ('203', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:16', '2017-07-13 06:29:16');
INSERT INTO `admin_operation_log` VALUES ('204', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:16', '2017-07-13 06:29:16');
INSERT INTO `admin_operation_log` VALUES ('205', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:17', '2017-07-13 06:29:17');
INSERT INTO `admin_operation_log` VALUES ('206', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:17', '2017-07-13 06:29:17');
INSERT INTO `admin_operation_log` VALUES ('207', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:17', '2017-07-13 06:29:17');
INSERT INTO `admin_operation_log` VALUES ('208', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:18', '2017-07-13 06:29:18');
INSERT INTO `admin_operation_log` VALUES ('209', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:19', '2017-07-13 06:29:19');
INSERT INTO `admin_operation_log` VALUES ('210', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:19', '2017-07-13 06:29:19');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:21', '2017-07-13 06:29:21');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:29:23', '2017-07-13 06:29:23');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:29:23', '2017-07-13 06:29:23');
INSERT INTO `admin_operation_log` VALUES ('214', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:26', '2017-07-13 06:29:26');
INSERT INTO `admin_operation_log` VALUES ('215', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:26', '2017-07-13 06:29:26');
INSERT INTO `admin_operation_log` VALUES ('216', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:29:27', '2017-07-13 06:29:27');
INSERT INTO `admin_operation_log` VALUES ('217', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:29', '2017-07-13 06:29:29');
INSERT INTO `admin_operation_log` VALUES ('218', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:30', '2017-07-13 06:29:30');
INSERT INTO `admin_operation_log` VALUES ('219', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:30', '2017-07-13 06:29:30');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'ladmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:34', '2017-07-13 06:29:34');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'ladmin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:29:40', '2017-07-13 06:29:40');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:29:41', '2017-07-13 06:29:41');
INSERT INTO `admin_operation_log` VALUES ('223', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:44', '2017-07-13 06:29:44');
INSERT INTO `admin_operation_log` VALUES ('224', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:29:51', '2017-07-13 06:29:51');
INSERT INTO `admin_operation_log` VALUES ('225', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:54', '2017-07-13 06:29:54');
INSERT INTO `admin_operation_log` VALUES ('226', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:55', '2017-07-13 06:29:55');
INSERT INTO `admin_operation_log` VALUES ('227', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:55', '2017-07-13 06:29:55');
INSERT INTO `admin_operation_log` VALUES ('228', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:29:55', '2017-07-13 06:29:55');
INSERT INTO `admin_operation_log` VALUES ('229', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:29:57', '2017-07-13 06:29:57');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:31:00', '2017-07-13 06:31:00');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:31:02', '2017-07-13 06:31:02');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:31:04', '2017-07-13 06:31:04');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 06:34:08', '2017-07-13 06:34:08');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:34:08', '2017-07-13 06:34:08');
INSERT INTO `admin_operation_log` VALUES ('235', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:13', '2017-07-13 06:34:13');
INSERT INTO `admin_operation_log` VALUES ('236', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:34:22', '2017-07-13 06:34:22');
INSERT INTO `admin_operation_log` VALUES ('237', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:25', '2017-07-13 06:34:25');
INSERT INTO `admin_operation_log` VALUES ('238', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:27', '2017-07-13 06:34:27');
INSERT INTO `admin_operation_log` VALUES ('239', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:28', '2017-07-13 06:34:28');
INSERT INTO `admin_operation_log` VALUES ('240', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:29', '2017-07-13 06:34:29');
INSERT INTO `admin_operation_log` VALUES ('241', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:30', '2017-07-13 06:34:30');
INSERT INTO `admin_operation_log` VALUES ('242', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:30', '2017-07-13 06:34:30');
INSERT INTO `admin_operation_log` VALUES ('243', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:31', '2017-07-13 06:34:31');
INSERT INTO `admin_operation_log` VALUES ('244', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:31', '2017-07-13 06:34:31');
INSERT INTO `admin_operation_log` VALUES ('245', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:31', '2017-07-13 06:34:31');
INSERT INTO `admin_operation_log` VALUES ('246', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:31', '2017-07-13 06:34:31');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:33', '2017-07-13 06:34:33');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:43', '2017-07-13 06:34:43');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:34:45', '2017-07-13 06:34:45');
INSERT INTO `admin_operation_log` VALUES ('250', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:34:58', '2017-07-13 06:34:58');
INSERT INTO `admin_operation_log` VALUES ('251', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:00', '2017-07-13 06:35:00');
INSERT INTO `admin_operation_log` VALUES ('252', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:01', '2017-07-13 06:35:01');
INSERT INTO `admin_operation_log` VALUES ('253', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:01', '2017-07-13 06:35:01');
INSERT INTO `admin_operation_log` VALUES ('254', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:02', '2017-07-13 06:35:02');
INSERT INTO `admin_operation_log` VALUES ('255', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:02', '2017-07-13 06:35:02');
INSERT INTO `admin_operation_log` VALUES ('256', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:03', '2017-07-13 06:35:03');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:18', '2017-07-13 06:35:18');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:20', '2017-07-13 06:35:20');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:25', '2017-07-13 06:35:25');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:28', '2017-07-13 06:35:28');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:51', '2017-07-13 06:35:51');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:35:58', '2017-07-13 06:35:58');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:36:02', '2017-07-13 06:36:02');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:36:05', '2017-07-13 06:36:05');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'ladmin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Scaffold\",\"icon\":\"fa-keyboard-o\",\"uri\":\"helpers\\/scaffold\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:36:08', '2017-07-13 06:36:08');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:36:08', '2017-07-13 06:36:08');
INSERT INTO `admin_operation_log` VALUES ('267', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:36:12', '2017-07-13 06:36:12');
INSERT INTO `admin_operation_log` VALUES ('268', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:36:20', '2017-07-13 06:36:20');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:36:37', '2017-07-13 06:36:37');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:36:39', '2017-07-13 06:36:39');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'ladmin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:36:41', '2017-07-13 06:36:41');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'ladmin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Database terminal\",\"icon\":\"fa-database\",\"uri\":\"helpers\\/terminal\\/database\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:36:45', '2017-07-13 06:36:45');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:36:45', '2017-07-13 06:36:45');
INSERT INTO `admin_operation_log` VALUES ('274', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:36:55', '2017-07-13 06:36:55');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'ladmin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:37:00', '2017-07-13 06:37:00');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'ladmin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Laravel artisan\",\"icon\":\"fa-terminal\",\"uri\":\"helpers\\/terminal\\/artisan\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:37:03', '2017-07-13 06:37:03');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:37:03', '2017-07-13 06:37:03');
INSERT INTO `admin_operation_log` VALUES ('278', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:37:05', '2017-07-13 06:37:05');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:37:11', '2017-07-13 06:37:11');
INSERT INTO `admin_operation_log` VALUES ('280', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:37:18', '2017-07-13 06:37:18');
INSERT INTO `admin_operation_log` VALUES ('281', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:37:24', '2017-07-13 06:37:24');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'ladmin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Helpers\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:37:27', '2017-07-13 06:37:27');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:37:27', '2017-07-13 06:37:27');
INSERT INTO `admin_operation_log` VALUES ('284', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:37:29', '2017-07-13 06:37:29');
INSERT INTO `admin_operation_log` VALUES ('285', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:06', '2017-07-13 06:38:06');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'ladmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:10', '2017-07-13 06:38:10');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'ladmin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:38:14', '2017-07-13 06:38:14');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:38:14', '2017-07-13 06:38:14');
INSERT INTO `admin_operation_log` VALUES ('289', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:38:16', '2017-07-13 06:38:16');
INSERT INTO `admin_operation_log` VALUES ('290', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:19', '2017-07-13 06:38:19');
INSERT INTO `admin_operation_log` VALUES ('291', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:21', '2017-07-13 06:38:21');
INSERT INTO `admin_operation_log` VALUES ('292', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:22', '2017-07-13 06:38:22');
INSERT INTO `admin_operation_log` VALUES ('293', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:23', '2017-07-13 06:38:23');
INSERT INTO `admin_operation_log` VALUES ('294', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:24', '2017-07-13 06:38:24');
INSERT INTO `admin_operation_log` VALUES ('295', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:24', '2017-07-13 06:38:24');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:27', '2017-07-13 06:38:27');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:31', '2017-07-13 06:38:31');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:34', '2017-07-13 06:38:34');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:36', '2017-07-13 06:38:36');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:38', '2017-07-13 06:38:38');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:41', '2017-07-13 06:38:41');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'ladmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:44', '2017-07-13 06:38:44');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'ladmin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:38:47', '2017-07-13 06:38:47');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:38:47', '2017-07-13 06:38:47');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'ladmin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:50', '2017-07-13 06:38:50');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'ladmin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Roles\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:38:55', '2017-07-13 06:38:55');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:38:55', '2017-07-13 06:38:55');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'ladmin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:38:58', '2017-07-13 06:38:58');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'ladmin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Permission\",\"icon\":\"fa-user\",\"uri\":\"auth\\/permissions\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:39:02', '2017-07-13 06:39:02');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:02', '2017-07-13 06:39:02');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'ladmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:04', '2017-07-13 06:39:04');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'ladmin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:39:08', '2017-07-13 06:39:08');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:08', '2017-07-13 06:39:08');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:10', '2017-07-13 06:39:10');
INSERT INTO `admin_operation_log` VALUES ('315', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:14', '2017-07-13 06:39:14');
INSERT INTO `admin_operation_log` VALUES ('316', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:17', '2017-07-13 06:39:17');
INSERT INTO `admin_operation_log` VALUES ('317', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:19', '2017-07-13 06:39:19');
INSERT INTO `admin_operation_log` VALUES ('318', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:19', '2017-07-13 06:39:19');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:39:22', '2017-07-13 06:39:22');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:22', '2017-07-13 06:39:22');
INSERT INTO `admin_operation_log` VALUES ('321', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:25', '2017-07-13 06:39:25');
INSERT INTO `admin_operation_log` VALUES ('322', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:27', '2017-07-13 06:39:27');
INSERT INTO `admin_operation_log` VALUES ('323', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:29', '2017-07-13 06:39:29');
INSERT INTO `admin_operation_log` VALUES ('324', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:29', '2017-07-13 06:39:29');
INSERT INTO `admin_operation_log` VALUES ('325', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:30', '2017-07-13 06:39:30');
INSERT INTO `admin_operation_log` VALUES ('326', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:30', '2017-07-13 06:39:30');
INSERT INTO `admin_operation_log` VALUES ('327', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:30', '2017-07-13 06:39:30');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:32', '2017-07-13 06:39:32');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:39:35', '2017-07-13 06:39:35');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:36', '2017-07-13 06:39:36');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:40', '2017-07-13 06:39:40');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:39:43', '2017-07-13 06:39:43');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:43', '2017-07-13 06:39:43');
INSERT INTO `admin_operation_log` VALUES ('334', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:45', '2017-07-13 06:39:45');
INSERT INTO `admin_operation_log` VALUES ('335', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:39:54', '2017-07-13 06:39:54');
INSERT INTO `admin_operation_log` VALUES ('336', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:39:56', '2017-07-13 06:39:56');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:01', '2017-07-13 06:40:01');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:40:11', '2017-07-13 06:40:11');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:11', '2017-07-13 06:40:11');
INSERT INTO `admin_operation_log` VALUES ('340', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:13', '2017-07-13 06:40:13');
INSERT INTO `admin_operation_log` VALUES ('341', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:16', '2017-07-13 06:40:16');
INSERT INTO `admin_operation_log` VALUES ('342', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:17', '2017-07-13 06:40:17');
INSERT INTO `admin_operation_log` VALUES ('343', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:18', '2017-07-13 06:40:18');
INSERT INTO `admin_operation_log` VALUES ('344', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:18', '2017-07-13 06:40:18');
INSERT INTO `admin_operation_log` VALUES ('345', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:18', '2017-07-13 06:40:18');
INSERT INTO `admin_operation_log` VALUES ('346', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:18', '2017-07-13 06:40:18');
INSERT INTO `admin_operation_log` VALUES ('347', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:19', '2017-07-13 06:40:19');
INSERT INTO `admin_operation_log` VALUES ('348', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:19', '2017-07-13 06:40:19');
INSERT INTO `admin_operation_log` VALUES ('349', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:19', '2017-07-13 06:40:19');
INSERT INTO `admin_operation_log` VALUES ('350', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:20', '2017-07-13 06:40:20');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:26', '2017-07-13 06:40:26');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:40:32', '2017-07-13 06:40:32');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:33', '2017-07-13 06:40:33');
INSERT INTO `admin_operation_log` VALUES ('354', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:36', '2017-07-13 06:40:36');
INSERT INTO `admin_operation_log` VALUES ('355', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:49', '2017-07-13 06:40:49');
INSERT INTO `admin_operation_log` VALUES ('356', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:50', '2017-07-13 06:40:50');
INSERT INTO `admin_operation_log` VALUES ('357', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:50', '2017-07-13 06:40:50');
INSERT INTO `admin_operation_log` VALUES ('358', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:51', '2017-07-13 06:40:51');
INSERT INTO `admin_operation_log` VALUES ('359', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:51', '2017-07-13 06:40:51');
INSERT INTO `admin_operation_log` VALUES ('360', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:40:57', '2017-07-13 06:40:57');
INSERT INTO `admin_operation_log` VALUES ('361', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:40:59', '2017-07-13 06:40:59');
INSERT INTO `admin_operation_log` VALUES ('362', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:00', '2017-07-13 06:41:00');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:02', '2017-07-13 06:41:02');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:07', '2017-07-13 06:41:07');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:10', '2017-07-13 06:41:10');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:41:13', '2017-07-13 06:41:13');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:13', '2017-07-13 06:41:13');
INSERT INTO `admin_operation_log` VALUES ('368', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:16', '2017-07-13 06:41:16');
INSERT INTO `admin_operation_log` VALUES ('369', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:18', '2017-07-13 06:41:18');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:22', '2017-07-13 06:41:22');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:27', '2017-07-13 06:41:27');
INSERT INTO `admin_operation_log` VALUES ('372', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:32', '2017-07-13 06:41:32');
INSERT INTO `admin_operation_log` VALUES ('373', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:40', '2017-07-13 06:41:40');
INSERT INTO `admin_operation_log` VALUES ('374', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:43', '2017-07-13 06:41:43');
INSERT INTO `admin_operation_log` VALUES ('375', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:46', '2017-07-13 06:41:46');
INSERT INTO `admin_operation_log` VALUES ('376', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:48', '2017-07-13 06:41:48');
INSERT INTO `admin_operation_log` VALUES ('377', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:50', '2017-07-13 06:41:50');
INSERT INTO `admin_operation_log` VALUES ('378', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:41:51', '2017-07-13 06:41:51');
INSERT INTO `admin_operation_log` VALUES ('379', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:53', '2017-07-13 06:41:53');
INSERT INTO `admin_operation_log` VALUES ('380', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:54', '2017-07-13 06:41:54');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'ladmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:56', '2017-07-13 06:41:56');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:41:59', '2017-07-13 06:41:59');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:06', '2017-07-13 06:42:06');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:09', '2017-07-13 06:42:09');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:12', '2017-07-13 06:42:12');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:13', '2017-07-13 06:42:13');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:33', '2017-07-13 06:42:33');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:46', '2017-07-13 06:42:46');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:48', '2017-07-13 06:42:48');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:51', '2017-07-13 06:42:51');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:42:53', '2017-07-13 06:42:53');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:42:59', '2017-07-13 06:42:59');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:42:59', '2017-07-13 06:42:59');
INSERT INTO `admin_operation_log` VALUES ('394', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:02', '2017-07-13 06:43:02');
INSERT INTO `admin_operation_log` VALUES ('395', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:03', '2017-07-13 06:43:03');
INSERT INTO `admin_operation_log` VALUES ('396', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:03', '2017-07-13 06:43:03');
INSERT INTO `admin_operation_log` VALUES ('397', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:03', '2017-07-13 06:43:03');
INSERT INTO `admin_operation_log` VALUES ('398', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:04', '2017-07-13 06:43:04');
INSERT INTO `admin_operation_log` VALUES ('399', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:43:05', '2017-07-13 06:43:05');
INSERT INTO `admin_operation_log` VALUES ('400', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:07', '2017-07-13 06:43:07');
INSERT INTO `admin_operation_log` VALUES ('401', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:09', '2017-07-13 06:43:09');
INSERT INTO `admin_operation_log` VALUES ('402', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:10', '2017-07-13 06:43:10');
INSERT INTO `admin_operation_log` VALUES ('403', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:10', '2017-07-13 06:43:10');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:43:22', '2017-07-13 06:43:22');
INSERT INTO `admin_operation_log` VALUES ('405', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:45:13', '2017-07-13 06:45:13');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:45:16', '2017-07-13 06:45:16');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:45:24', '2017-07-13 06:45:24');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:45:27', '2017-07-13 06:45:27');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[null],\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 06:45:47', '2017-07-13 06:45:47');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:45:47', '2017-07-13 06:45:47');
INSERT INTO `admin_operation_log` VALUES ('411', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:45:50', '2017-07-13 06:45:50');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:45:57', '2017-07-13 06:45:57');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 06:46:01', '2017-07-13 06:46:01');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:01', '2017-07-13 06:46:01');
INSERT INTO `admin_operation_log` VALUES ('415', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:03', '2017-07-13 06:46:03');
INSERT INTO `admin_operation_log` VALUES ('416', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:05', '2017-07-13 06:46:05');
INSERT INTO `admin_operation_log` VALUES ('417', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:06', '2017-07-13 06:46:06');
INSERT INTO `admin_operation_log` VALUES ('418', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:07', '2017-07-13 06:46:07');
INSERT INTO `admin_operation_log` VALUES ('419', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:07', '2017-07-13 06:46:07');
INSERT INTO `admin_operation_log` VALUES ('420', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:07', '2017-07-13 06:46:07');
INSERT INTO `admin_operation_log` VALUES ('421', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:07', '2017-07-13 06:46:07');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:10', '2017-07-13 06:46:10');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:13', '2017-07-13 06:46:13');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:46:20', '2017-07-13 06:46:20');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:20', '2017-07-13 06:46:20');
INSERT INTO `admin_operation_log` VALUES ('426', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:23', '2017-07-13 06:46:23');
INSERT INTO `admin_operation_log` VALUES ('427', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:25', '2017-07-13 06:46:25');
INSERT INTO `admin_operation_log` VALUES ('428', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:26', '2017-07-13 06:46:26');
INSERT INTO `admin_operation_log` VALUES ('429', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:26', '2017-07-13 06:46:26');
INSERT INTO `admin_operation_log` VALUES ('430', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:26', '2017-07-13 06:46:26');
INSERT INTO `admin_operation_log` VALUES ('431', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:26', '2017-07-13 06:46:26');
INSERT INTO `admin_operation_log` VALUES ('432', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:28', '2017-07-13 06:46:28');
INSERT INTO `admin_operation_log` VALUES ('433', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:29', '2017-07-13 06:46:29');
INSERT INTO `admin_operation_log` VALUES ('434', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:33', '2017-07-13 06:46:33');
INSERT INTO `admin_operation_log` VALUES ('435', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:36', '2017-07-13 06:46:36');
INSERT INTO `admin_operation_log` VALUES ('436', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:39', '2017-07-13 06:46:39');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:43', '2017-07-13 06:46:43');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:46:48', '2017-07-13 06:46:48');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:48', '2017-07-13 06:46:48');
INSERT INTO `admin_operation_log` VALUES ('440', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:46:51', '2017-07-13 06:46:51');
INSERT INTO `admin_operation_log` VALUES ('441', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:46:54', '2017-07-13 06:46:54');
INSERT INTO `admin_operation_log` VALUES ('442', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:47:11', '2017-07-13 06:47:11');
INSERT INTO `admin_operation_log` VALUES ('443', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:13', '2017-07-13 06:47:13');
INSERT INTO `admin_operation_log` VALUES ('444', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:15', '2017-07-13 06:47:15');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:18', '2017-07-13 06:47:18');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:22', '2017-07-13 06:47:22');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:31', '2017-07-13 06:47:31');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'ladmin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:38', '2017-07-13 06:47:38');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:48', '2017-07-13 06:47:48');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:52', '2017-07-13 06:47:52');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:47:54', '2017-07-13 06:47:54');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'ladmin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"Admin.log\",\"name\":\"Admin.log\",\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/roles\"}', '2017-07-13 06:48:02', '2017-07-13 06:48:02');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-07-13 06:48:02', '2017-07-13 06:48:02');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:48:04', '2017-07-13 06:48:04');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:48:06', '2017-07-13 06:48:06');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 06:48:20', '2017-07-13 06:48:20');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:48:20', '2017-07-13 06:48:20');
INSERT INTO `admin_operation_log` VALUES ('458', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:48:23', '2017-07-13 06:48:23');
INSERT INTO `admin_operation_log` VALUES ('459', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:48:25', '2017-07-13 06:48:25');
INSERT INTO `admin_operation_log` VALUES ('460', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:48:26', '2017-07-13 06:48:26');
INSERT INTO `admin_operation_log` VALUES ('461', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:48:28', '2017-07-13 06:48:28');
INSERT INTO `admin_operation_log` VALUES ('462', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:48:28', '2017-07-13 06:48:28');
INSERT INTO `admin_operation_log` VALUES ('463', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:48:31', '2017-07-13 06:48:31');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 06:50:06', '2017-07-13 06:50:06');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:50:22', '2017-07-13 06:50:22');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:50:38', '2017-07-13 06:50:38');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:50:42', '2017-07-13 06:50:42');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:50:49', '2017-07-13 06:50:49');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:02', '2017-07-13 06:51:02');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:05', '2017-07-13 06:51:05');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:08', '2017-07-13 06:51:08');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'ladmin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:13', '2017-07-13 06:51:13');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:16', '2017-07-13 06:51:16');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:18', '2017-07-13 06:51:18');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'ladmin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"Admin.log\",\"name\":\"Admin.log\",\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/roles\"}', '2017-07-13 06:51:22', '2017-07-13 06:51:22');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-07-13 06:51:22', '2017-07-13 06:51:22');
INSERT INTO `admin_operation_log` VALUES ('477', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:51:24', '2017-07-13 06:51:24');
INSERT INTO `admin_operation_log` VALUES ('478', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:27', '2017-07-13 06:51:27');
INSERT INTO `admin_operation_log` VALUES ('479', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:28', '2017-07-13 06:51:28');
INSERT INTO `admin_operation_log` VALUES ('480', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:28', '2017-07-13 06:51:28');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:31', '2017-07-13 06:51:31');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'ladmin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"Admin.log\",\"name\":\"Admin.log\",\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/roles\"}', '2017-07-13 06:51:38', '2017-07-13 06:51:38');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-07-13 06:51:38', '2017-07-13 06:51:38');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:44', '2017-07-13 06:51:44');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:51:47', '2017-07-13 06:51:47');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:52:07', '2017-07-13 06:52:07');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:52:07', '2017-07-13 06:52:07');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:32', '2017-07-13 06:53:32');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 06:53:38', '2017-07-13 06:53:38');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 06:53:38', '2017-07-13 06:53:38');
INSERT INTO `admin_operation_log` VALUES ('491', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 06:53:40', '2017-07-13 06:53:40');
INSERT INTO `admin_operation_log` VALUES ('492', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:43', '2017-07-13 06:53:43');
INSERT INTO `admin_operation_log` VALUES ('493', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:44', '2017-07-13 06:53:44');
INSERT INTO `admin_operation_log` VALUES ('494', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:44', '2017-07-13 06:53:44');
INSERT INTO `admin_operation_log` VALUES ('495', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:44', '2017-07-13 06:53:44');
INSERT INTO `admin_operation_log` VALUES ('496', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:44', '2017-07-13 06:53:44');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'ladmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:50', '2017-07-13 06:53:50');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:53:53', '2017-07-13 06:53:53');
INSERT INTO `admin_operation_log` VALUES ('499', '2', 'ladmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:54:16', '2017-07-13 06:54:16');
INSERT INTO `admin_operation_log` VALUES ('500', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 06:54:23', '2017-07-13 06:54:23');
INSERT INTO `admin_operation_log` VALUES ('501', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 06:54:26', '2017-07-13 06:54:26');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:03:21', '2017-07-13 07:03:21');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:04:35', '2017-07-13 07:04:35');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:04:39', '2017-07-13 07:04:39');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:04:42', '2017-07-13 07:04:42');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:04:44', '2017-07-13 07:04:44');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:04:46', '2017-07-13 07:04:46');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[null],\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 07:04:57', '2017-07-13 07:04:57');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 07:04:57', '2017-07-13 07:04:57');
INSERT INTO `admin_operation_log` VALUES ('510', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:05:03', '2017-07-13 07:05:03');
INSERT INTO `admin_operation_log` VALUES ('511', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:05:04', '2017-07-13 07:05:04');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:05:07', '2017-07-13 07:05:07');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[\"5\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 07:05:11', '2017-07-13 07:05:11');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 07:05:11', '2017-07-13 07:05:11');
INSERT INTO `admin_operation_log` VALUES ('515', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 07:05:13', '2017-07-13 07:05:13');
INSERT INTO `admin_operation_log` VALUES ('516', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:05:17', '2017-07-13 07:05:17');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:05:22', '2017-07-13 07:05:22');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:05:24', '2017-07-13 07:05:24');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:05:46', '2017-07-13 07:05:46');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:05:46', '2017-07-13 07:05:46');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:05:53', '2017-07-13 07:05:53');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:05:58', '2017-07-13 07:05:58');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:05:58', '2017-07-13 07:05:58');
INSERT INTO `admin_operation_log` VALUES ('524', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:06:00', '2017-07-13 07:06:00');
INSERT INTO `admin_operation_log` VALUES ('525', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:06:02', '2017-07-13 07:06:02');
INSERT INTO `admin_operation_log` VALUES ('526', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:06:03', '2017-07-13 07:06:03');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:06:13', '2017-07-13 07:06:13');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'ladmin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Helpers\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:06:19', '2017-07-13 07:06:19');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:06:19', '2017-07-13 07:06:19');
INSERT INTO `admin_operation_log` VALUES ('530', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:06:21', '2017-07-13 07:06:21');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:07:53', '2017-07-13 07:07:53');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:07:55', '2017-07-13 07:07:55');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:07:58', '2017-07-13 07:07:58');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'ladmin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Scaffold\",\"icon\":\"fa-keyboard-o\",\"uri\":\"helpers\\/scaffold\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:08:01', '2017-07-13 07:08:01');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:08:01', '2017-07-13 07:08:01');
INSERT INTO `admin_operation_log` VALUES ('536', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:08:04', '2017-07-13 07:08:04');
INSERT INTO `admin_operation_log` VALUES ('537', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:08:07', '2017-07-13 07:08:07');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:09:51', '2017-07-13 07:09:51');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:09:53', '2017-07-13 07:09:53');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:09:56', '2017-07-13 07:09:56');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:10:00', '2017-07-13 07:10:00');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:00', '2017-07-13 07:10:00');
INSERT INTO `admin_operation_log` VALUES ('543', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:02', '2017-07-13 07:10:02');
INSERT INTO `admin_operation_log` VALUES ('544', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:04', '2017-07-13 07:10:04');
INSERT INTO `admin_operation_log` VALUES ('545', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:07', '2017-07-13 07:10:07');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'ladmin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:10', '2017-07-13 07:10:10');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'ladmin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Database terminal\",\"icon\":\"fa-database\",\"uri\":\"helpers\\/terminal\\/database\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:10:14', '2017-07-13 07:10:14');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:14', '2017-07-13 07:10:14');
INSERT INTO `admin_operation_log` VALUES ('549', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:17', '2017-07-13 07:10:17');
INSERT INTO `admin_operation_log` VALUES ('550', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:19', '2017-07-13 07:10:19');
INSERT INTO `admin_operation_log` VALUES ('551', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:20', '2017-07-13 07:10:20');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:24', '2017-07-13 07:10:24');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:26', '2017-07-13 07:10:26');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:28', '2017-07-13 07:10:28');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:10:32', '2017-07-13 07:10:32');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:32', '2017-07-13 07:10:32');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:34', '2017-07-13 07:10:34');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:36', '2017-07-13 07:10:36');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:39', '2017-07-13 07:10:39');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:41', '2017-07-13 07:10:41');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:44', '2017-07-13 07:10:44');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:10:46', '2017-07-13 07:10:46');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:46', '2017-07-13 07:10:46');
INSERT INTO `admin_operation_log` VALUES ('564', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 07:10:47', '2017-07-13 07:10:47');
INSERT INTO `admin_operation_log` VALUES ('565', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:50', '2017-07-13 07:10:50');
INSERT INTO `admin_operation_log` VALUES ('566', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:51', '2017-07-13 07:10:51');
INSERT INTO `admin_operation_log` VALUES ('567', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:51', '2017-07-13 07:10:51');
INSERT INTO `admin_operation_log` VALUES ('568', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:51', '2017-07-13 07:10:51');
INSERT INTO `admin_operation_log` VALUES ('569', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:52', '2017-07-13 07:10:52');
INSERT INTO `admin_operation_log` VALUES ('570', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:10:52', '2017-07-13 07:10:52');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:14:01', '2017-07-13 07:14:01');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:16:33', '2017-07-13 07:16:33');
INSERT INTO `admin_operation_log` VALUES ('573', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:21', '2017-07-13 07:17:21');
INSERT INTO `admin_operation_log` VALUES ('574', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:21', '2017-07-13 07:17:21');
INSERT INTO `admin_operation_log` VALUES ('575', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:23', '2017-07-13 07:17:23');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'ladmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:28', '2017-07-13 07:17:28');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'ladmin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:17:31', '2017-07-13 07:17:31');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:17:31', '2017-07-13 07:17:31');
INSERT INTO `admin_operation_log` VALUES ('579', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:17:33', '2017-07-13 07:17:33');
INSERT INTO `admin_operation_log` VALUES ('580', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:35', '2017-07-13 07:17:35');
INSERT INTO `admin_operation_log` VALUES ('581', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:37', '2017-07-13 07:17:37');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:41', '2017-07-13 07:17:41');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:45', '2017-07-13 07:17:45');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:17:48', '2017-07-13 07:17:48');
INSERT INTO `admin_operation_log` VALUES ('585', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:19:47', '2017-07-13 07:19:47');
INSERT INTO `admin_operation_log` VALUES ('586', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:19:49', '2017-07-13 07:19:49');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:19:50', '2017-07-13 07:19:50');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:19:56', '2017-07-13 07:19:56');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:07', '2017-07-13 07:20:07');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:16', '2017-07-13 07:20:16');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:20', '2017-07-13 07:20:20');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:22', '2017-07-13 07:20:22');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:25', '2017-07-13 07:20:25');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:38', '2017-07-13 07:20:38');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:20:42', '2017-07-13 07:20:42');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:44', '2017-07-13 07:20:44');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:48', '2017-07-13 07:20:48');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:53', '2017-07-13 07:20:53');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:20:58', '2017-07-13 07:20:58');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:04', '2017-07-13 07:21:04');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:06', '2017-07-13 07:21:06');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:08', '2017-07-13 07:21:08');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:18', '2017-07-13 07:21:18');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:19', '2017-07-13 07:21:19');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:21', '2017-07-13 07:21:21');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:29', '2017-07-13 07:21:29');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:31', '2017-07-13 07:21:31');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:46', '2017-07-13 07:21:46');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'ladmin/auth/permissions/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\"}', '2017-07-13 07:21:53', '2017-07-13 07:21:53');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:53', '2017-07-13 07:21:53');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'ladmin/auth/permissions/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\"}', '2017-07-13 07:21:55', '2017-07-13 07:21:55');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:55', '2017-07-13 07:21:55');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'ladmin/auth/permissions/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\"}', '2017-07-13 07:21:57', '2017-07-13 07:21:57');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:21:57', '2017-07-13 07:21:57');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'ladmin/auth/permissions/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\"}', '2017-07-13 07:21:59', '2017-07-13 07:21:59');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:00', '2017-07-13 07:22:00');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'ladmin/auth/permissions/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\"}', '2017-07-13 07:22:07', '2017-07-13 07:22:07');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:07', '2017-07-13 07:22:07');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'ladmin/auth/permissions/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\"}', '2017-07-13 07:22:09', '2017-07-13 07:22:09');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:10', '2017-07-13 07:22:10');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2017-07-13 07:22:13', '2017-07-13 07:22:13');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:15', '2017-07-13 07:22:15');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:16', '2017-07-13 07:22:16');
INSERT INTO `admin_operation_log` VALUES ('624', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:22:18', '2017-07-13 07:22:18');
INSERT INTO `admin_operation_log` VALUES ('625', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:22', '2017-07-13 07:22:22');
INSERT INTO `admin_operation_log` VALUES ('626', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:23', '2017-07-13 07:22:23');
INSERT INTO `admin_operation_log` VALUES ('627', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:24', '2017-07-13 07:22:24');
INSERT INTO `admin_operation_log` VALUES ('628', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:27', '2017-07-13 07:22:27');
INSERT INTO `admin_operation_log` VALUES ('629', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:28', '2017-07-13 07:22:28');
INSERT INTO `admin_operation_log` VALUES ('630', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:29', '2017-07-13 07:22:29');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:32', '2017-07-13 07:22:32');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:32', '2017-07-13 07:22:32');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:33', '2017-07-13 07:22:33');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:34', '2017-07-13 07:22:34');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:36', '2017-07-13 07:22:36');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:36', '2017-07-13 07:22:36');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:36', '2017-07-13 07:22:36');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:37', '2017-07-13 07:22:37');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:40', '2017-07-13 07:22:40');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:42', '2017-07-13 07:22:42');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:22:44', '2017-07-13 07:22:44');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:22:45', '2017-07-13 07:22:45');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'ladmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:48', '2017-07-13 07:22:48');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'ladmin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:22:49', '2017-07-13 07:22:49');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:22:50', '2017-07-13 07:22:50');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:22:52', '2017-07-13 07:22:52');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:22:53', '2017-07-13 07:22:53');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:22:53', '2017-07-13 07:22:53');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'ladmin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2017-07-13 07:23:03', '2017-07-13 07:23:03');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:23:03', '2017-07-13 07:23:03');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:23:05', '2017-07-13 07:23:05');
INSERT INTO `admin_operation_log` VALUES ('652', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:23:07', '2017-07-13 07:23:07');
INSERT INTO `admin_operation_log` VALUES ('653', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:23:09', '2017-07-13 07:23:09');
INSERT INTO `admin_operation_log` VALUES ('654', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:23:10', '2017-07-13 07:23:10');
INSERT INTO `admin_operation_log` VALUES ('655', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:23:11', '2017-07-13 07:23:11');
INSERT INTO `admin_operation_log` VALUES ('656', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:23:12', '2017-07-13 07:23:12');
INSERT INTO `admin_operation_log` VALUES ('657', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:17', '2017-07-13 07:26:17');
INSERT INTO `admin_operation_log` VALUES ('658', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:19', '2017-07-13 07:26:19');
INSERT INTO `admin_operation_log` VALUES ('659', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:20', '2017-07-13 07:26:20');
INSERT INTO `admin_operation_log` VALUES ('660', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:23', '2017-07-13 07:26:23');
INSERT INTO `admin_operation_log` VALUES ('661', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:27', '2017-07-13 07:26:27');
INSERT INTO `admin_operation_log` VALUES ('662', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:28', '2017-07-13 07:26:28');
INSERT INTO `admin_operation_log` VALUES ('663', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:29', '2017-07-13 07:26:29');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:36', '2017-07-13 07:26:36');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:41', '2017-07-13 07:26:41');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:26:55', '2017-07-13 07:26:55');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:00', '2017-07-13 07:27:00');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:01', '2017-07-13 07:27:01');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:05', '2017-07-13 07:27:05');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:05', '2017-07-13 07:27:05');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:06', '2017-07-13 07:27:06');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:15', '2017-07-13 07:27:15');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:17', '2017-07-13 07:27:17');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:21', '2017-07-13 07:27:21');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'ladmin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:25', '2017-07-13 07:27:25');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:32', '2017-07-13 07:27:32');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:36', '2017-07-13 07:27:36');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:27:40', '2017-07-13 07:27:40');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:37:10', '2017-07-13 07:37:10');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:37:28', '2017-07-13 07:37:28');
INSERT INTO `admin_operation_log` VALUES ('681', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:21', '2017-07-13 07:42:21');
INSERT INTO `admin_operation_log` VALUES ('682', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:23', '2017-07-13 07:42:23');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:28', '2017-07-13 07:42:28');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:31', '2017-07-13 07:42:31');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:42', '2017-07-13 07:42:42');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:42:44', '2017-07-13 07:42:44');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:42:45', '2017-07-13 07:42:45');
INSERT INTO `admin_operation_log` VALUES ('688', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:42:47', '2017-07-13 07:42:47');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:53', '2017-07-13 07:42:53');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:42:56', '2017-07-13 07:42:56');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:42:56', '2017-07-13 07:42:56');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'ladmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:42:58', '2017-07-13 07:42:58');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'ladmin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:43:01', '2017-07-13 07:43:01');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:43:01', '2017-07-13 07:43:01');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'ladmin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:03', '2017-07-13 07:43:03');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:06', '2017-07-13 07:43:06');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:11', '2017-07-13 07:43:11');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:43:15', '2017-07-13 07:43:15');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:43:15', '2017-07-13 07:43:15');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'ladmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:17', '2017-07-13 07:43:17');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'ladmin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 07:43:21', '2017-07-13 07:43:21');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 07:43:21', '2017-07-13 07:43:21');
INSERT INTO `admin_operation_log` VALUES ('703', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 07:43:24', '2017-07-13 07:43:24');
INSERT INTO `admin_operation_log` VALUES ('704', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:26', '2017-07-13 07:43:26');
INSERT INTO `admin_operation_log` VALUES ('705', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:27', '2017-07-13 07:43:27');
INSERT INTO `admin_operation_log` VALUES ('706', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 07:43:28', '2017-07-13 07:43:28');
INSERT INTO `admin_operation_log` VALUES ('707', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:28', '2017-07-13 07:43:28');
INSERT INTO `admin_operation_log` VALUES ('708', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:31', '2017-07-13 07:43:31');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:35', '2017-07-13 07:43:35');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:37', '2017-07-13 07:43:37');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:37', '2017-07-13 07:43:37');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:40', '2017-07-13 07:43:40');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:43:59', '2017-07-13 07:43:59');
INSERT INTO `admin_operation_log` VALUES ('714', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:27', '2017-07-13 07:59:27');
INSERT INTO `admin_operation_log` VALUES ('715', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:28', '2017-07-13 07:59:28');
INSERT INTO `admin_operation_log` VALUES ('716', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:28', '2017-07-13 07:59:28');
INSERT INTO `admin_operation_log` VALUES ('717', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:28', '2017-07-13 07:59:28');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:44', '2017-07-13 07:59:44');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:56', '2017-07-13 07:59:56');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:57', '2017-07-13 07:59:57');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 07:59:59', '2017-07-13 07:59:59');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:02', '2017-07-13 08:00:02');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'ladmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 08:00:06', '2017-07-13 08:00:06');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:06', '2017-07-13 08:00:06');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'ladmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:08', '2017-07-13 08:00:08');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:11', '2017-07-13 08:00:11');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'ladmin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:13', '2017-07-13 08:00:13');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'ladmin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Roles\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 08:00:16', '2017-07-13 08:00:16');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:17', '2017-07-13 08:00:17');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'ladmin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:19', '2017-07-13 08:00:19');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'ladmin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Permission\",\"icon\":\"fa-user\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 08:00:22', '2017-07-13 08:00:22');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:22', '2017-07-13 08:00:22');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'ladmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:24', '2017-07-13 08:00:24');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'ladmin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 08:00:27', '2017-07-13 08:00:27');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:27', '2017-07-13 08:00:27');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'ladmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:29', '2017-07-13 08:00:29');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'ladmin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Operation log\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 08:00:32', '2017-07-13 08:00:32');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:32', '2017-07-13 08:00:32');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:35', '2017-07-13 08:00:35');
INSERT INTO `admin_operation_log` VALUES ('740', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:37', '2017-07-13 08:00:37');
INSERT INTO `admin_operation_log` VALUES ('741', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:40', '2017-07-13 08:00:40');
INSERT INTO `admin_operation_log` VALUES ('742', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:41', '2017-07-13 08:00:41');
INSERT INTO `admin_operation_log` VALUES ('743', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:41', '2017-07-13 08:00:41');
INSERT INTO `admin_operation_log` VALUES ('744', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:42', '2017-07-13 08:00:42');
INSERT INTO `admin_operation_log` VALUES ('745', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:42', '2017-07-13 08:00:42');
INSERT INTO `admin_operation_log` VALUES ('746', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:43', '2017-07-13 08:00:43');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'ladmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:46', '2017-07-13 08:00:46');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:51', '2017-07-13 08:00:51');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:00:53', '2017-07-13 08:00:53');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 08:00:59', '2017-07-13 08:00:59');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 08:00:59', '2017-07-13 08:00:59');
INSERT INTO `admin_operation_log` VALUES ('752', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 08:01:01', '2017-07-13 08:01:01');
INSERT INTO `admin_operation_log` VALUES ('753', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:01:07', '2017-07-13 08:01:07');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'ladmin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:01:10', '2017-07-13 08:01:10');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'ladmin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"yanghong\",\"name\":\"YangHong\",\"password\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"password_confirmation\":\"$2y$10$YmX2gwodr6Z13\\/dyDtvhJeDf\\/KA6jHI8YgajeqA7ycPoiFx47M0Ze\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/users\"}', '2017-07-13 08:01:15', '2017-07-13 08:01:15');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 08:01:16', '2017-07-13 08:01:16');
INSERT INTO `admin_operation_log` VALUES ('757', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '[]', '2017-07-13 08:01:18', '2017-07-13 08:01:18');
INSERT INTO `admin_operation_log` VALUES ('758', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:09', '2017-07-13 08:02:09');
INSERT INTO `admin_operation_log` VALUES ('759', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:11', '2017-07-13 08:02:11');
INSERT INTO `admin_operation_log` VALUES ('760', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:12', '2017-07-13 08:02:12');
INSERT INTO `admin_operation_log` VALUES ('761', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:14', '2017-07-13 08:02:14');
INSERT INTO `admin_operation_log` VALUES ('762', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:15', '2017-07-13 08:02:15');
INSERT INTO `admin_operation_log` VALUES ('763', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:16', '2017-07-13 08:02:16');
INSERT INTO `admin_operation_log` VALUES ('764', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:02:16', '2017-07-13 08:02:16');
INSERT INTO `admin_operation_log` VALUES ('765', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '[]', '2017-07-13 08:25:55', '2017-07-13 08:25:55');
INSERT INTO `admin_operation_log` VALUES ('766', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:25:57', '2017-07-13 08:25:57');
INSERT INTO `admin_operation_log` VALUES ('767', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:25:58', '2017-07-13 08:25:58');
INSERT INTO `admin_operation_log` VALUES ('768', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:25:59', '2017-07-13 08:25:59');
INSERT INTO `admin_operation_log` VALUES ('769', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:00', '2017-07-13 08:26:00');
INSERT INTO `admin_operation_log` VALUES ('770', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:01', '2017-07-13 08:26:01');
INSERT INTO `admin_operation_log` VALUES ('771', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:02', '2017-07-13 08:26:02');
INSERT INTO `admin_operation_log` VALUES ('772', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:03', '2017-07-13 08:26:03');
INSERT INTO `admin_operation_log` VALUES ('773', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:03', '2017-07-13 08:26:03');
INSERT INTO `admin_operation_log` VALUES ('774', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:04', '2017-07-13 08:26:04');
INSERT INTO `admin_operation_log` VALUES ('775', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:05', '2017-07-13 08:26:05');
INSERT INTO `admin_operation_log` VALUES ('776', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:06', '2017-07-13 08:26:06');
INSERT INTO `admin_operation_log` VALUES ('777', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:06', '2017-07-13 08:26:06');
INSERT INTO `admin_operation_log` VALUES ('778', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:07', '2017-07-13 08:26:07');
INSERT INTO `admin_operation_log` VALUES ('779', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:26:07', '2017-07-13 08:26:07');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:29:36', '2017-07-13 08:29:36');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:29:37', '2017-07-13 08:29:37');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:29:38', '2017-07-13 08:29:38');
INSERT INTO `admin_operation_log` VALUES ('783', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:51:19', '2017-07-13 08:51:19');
INSERT INTO `admin_operation_log` VALUES ('784', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:51:20', '2017-07-13 08:51:20');
INSERT INTO `admin_operation_log` VALUES ('785', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:51:29', '2017-07-13 08:51:29');
INSERT INTO `admin_operation_log` VALUES ('786', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:51:40', '2017-07-13 08:51:40');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:51:45', '2017-07-13 08:51:45');
INSERT INTO `admin_operation_log` VALUES ('788', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:40', '2017-07-13 08:59:40');
INSERT INTO `admin_operation_log` VALUES ('789', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:41', '2017-07-13 08:59:41');
INSERT INTO `admin_operation_log` VALUES ('790', '2', 'ladmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:42', '2017-07-13 08:59:42');
INSERT INTO `admin_operation_log` VALUES ('791', '2', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:43', '2017-07-13 08:59:43');
INSERT INTO `admin_operation_log` VALUES ('792', '2', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:44', '2017-07-13 08:59:44');
INSERT INTO `admin_operation_log` VALUES ('793', '2', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:44', '2017-07-13 08:59:44');
INSERT INTO `admin_operation_log` VALUES ('794', '2', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 08:59:45', '2017-07-13 08:59:45');
INSERT INTO `admin_operation_log` VALUES ('795', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:04:39', '2017-07-13 09:04:39');
INSERT INTO `admin_operation_log` VALUES ('796', '2', 'ladmin', 'GET', '127.0.0.1', '[]', '2017-07-13 09:04:47', '2017-07-13 09:04:47');
INSERT INTO `admin_operation_log` VALUES ('797', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:05:15', '2017-07-13 09:05:15');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:05:27', '2017-07-13 09:05:27');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:05:29', '2017-07-13 09:05:29');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'ladmin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Scaffold\",\"icon\":\"fa-keyboard-o\",\"uri\":\"helpers\\/scaffold\",\"roles\":[\"1\",null],\"_token\":\"etluvCE89eYpVdVgdifm5r7P6FDCLOjxn1k7H4tu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.laraveldemo.com\\/ladmin\\/auth\\/menu\"}', '2017-07-13 09:05:33', '2017-07-13 09:05:33');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-07-13 09:05:33', '2017-07-13 09:05:33');
INSERT INTO `admin_operation_log` VALUES ('802', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:05:37', '2017-07-13 09:05:37');
INSERT INTO `admin_operation_log` VALUES ('803', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:05:41', '2017-07-13 09:05:41');
INSERT INTO `admin_operation_log` VALUES ('804', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:05:45', '2017-07-13 09:05:45');
INSERT INTO `admin_operation_log` VALUES ('805', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:05:56', '2017-07-13 09:05:56');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'ladmin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:06:24', '2017-07-13 09:06:24');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:06:27', '2017-07-13 09:06:27');
INSERT INTO `admin_operation_log` VALUES ('808', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:06:42', '2017-07-13 09:06:42');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'ladmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:06:55', '2017-07-13 09:06:55');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:06:58', '2017-07-13 09:06:58');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'ladmin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:07:03', '2017-07-13 09:07:03');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:07:06', '2017-07-13 09:07:06');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'ladmin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:07:07', '2017-07-13 09:07:07');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:07:09', '2017-07-13 09:07:09');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:07:14', '2017-07-13 09:07:14');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:07:14', '2017-07-13 09:07:14');
INSERT INTO `admin_operation_log` VALUES ('817', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:11:35', '2017-07-13 09:11:35');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:11:39', '2017-07-13 09:11:39');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'ladmin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:11:42', '2017-07-13 09:11:42');
INSERT INTO `admin_operation_log` VALUES ('820', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:11:56', '2017-07-13 09:11:56');
INSERT INTO `admin_operation_log` VALUES ('821', '2', 'ladmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:12:01', '2017-07-13 09:12:01');
INSERT INTO `admin_operation_log` VALUES ('822', '2', 'ladmin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:12:03', '2017-07-13 09:12:03');
INSERT INTO `admin_operation_log` VALUES ('823', '2', 'ladmin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2017-07-13 09:12:13', '2017-07-13 09:12:13');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'ladmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:13:25', '2017-07-13 09:13:25');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'ladmin/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:13:27', '2017-07-13 09:13:27');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'ladmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-07-13 09:13:29', '2017-07-13 09:13:29');
INSERT INTO `admin_operation_log` VALUES ('827', '2', 'ladmin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2017-07-13 09:13:53', '2017-07-13 09:13:53');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2017-07-13 02:51:31', '2017-07-13 02:51:31');
INSERT INTO `admin_roles` VALUES ('2', 'Admin.log', 'Admin.log', '2017-07-13 06:10:01', '2017-07-13 06:10:01');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('2', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$nHrgVojZFuBpAvGPFjqWb.50gBZTB/B18MyUWJkHWn6S1fzadkVkq', 'Administrator', null, null, '2017-07-13 02:51:31', '2017-07-13 02:51:31');
INSERT INTO `admin_users` VALUES ('2', 'yanghong', '$2y$10$YmX2gwodr6Z13/dyDtvhJeDf/KA6jHI8YgajeqA7ycPoiFx47M0Ze', 'YangHong', 'image/B_IYpXuWsAEZM4u.png', 'unm9jMLACJYnINB0lK5o8y4SiRDrJr3QKgScZRpvkykj9gZCcrHYbyA4uNmH', '2017-07-13 05:43:52', '2017-07-13 05:43:52');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_06_20_062458_crate_tasks_table', '2');
INSERT INTO `migrations` VALUES ('5', '2017_06_20_072553_add_completed_to_tasks_table', '3');
INSERT INTO `migrations` VALUES ('6', '2017_06_21_064330_create_user_files_table', '4');
INSERT INTO `migrations` VALUES ('7', '2016_01_04_173148_create_admin_tables', '5');

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
