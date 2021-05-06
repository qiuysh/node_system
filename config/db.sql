/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 19/04/2021 13:36:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modified_time` datetime DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 0, '仪表盘', 'icondashboard', '/dashboard', 1, NULL, '2021-03-10 10:47:52', NULL, 'dashboard');
INSERT INTO `permissions` VALUES (2, 0, '表格页', 'iconmessage', '/table', 1, NULL, '2021-03-10 10:49:32', NULL, 'table');
INSERT INTO `permissions` VALUES (3, 0, '表单页', 'iconedit-square', '/form', 1, NULL, '2021-03-10 10:49:52', NULL, 'form');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `detail_info` json DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin@163.com', '123456', 'admin', '超级管理员', NULL, NULL, NULL, NULL, '18053479895');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
