/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : aqsiqdv

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-01-26 12:00:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_system_action
-- ----------------------------
DROP TABLE IF EXISTS `tb_system_action`;
CREATE TABLE `tb_system_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_name` varchar(64) NOT NULL COMMENT '操作名',
  `action_type` tinyint(4) NOT NULL COMMENT '节点类型 1 目录 2 菜单 3 操作',
  `parent_id` int(11) NOT NULL COMMENT '父节点ID',
  `url` varchar(256) DEFAULT NULL COMMENT 'url',
  `icon_css` varchar(256) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL COMMENT '操作描述',
  `weight` int(11) NOT NULL COMMENT '权重',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='功能表';

-- ----------------------------
-- Records of tb_system_action
-- ----------------------------
INSERT INTO `tb_system_action` VALUES ('1', 'Home', '2', '0', '/index.jhtml', 'menu-icon fa fa-dashboard', 'Home', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('2', '用户管理', '1', '0', '', 'menu-icon fa  fa-user', '用户管理根节点', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('3', '用户列表', '2', '2', '/system/userList.jhtml', ' ', '用户列表', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('4', '角色管理', '2', '2', '/system/roleList.jhtml', null, '角色列表', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('6', '礼品卡管理', '1', '0', '', 'menu-icon glyphicon glyphicon-gift', '礼品卡根节点', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('7', '礼品卡列表', '2', '6', '/roleList.jhtml', null, '礼品卡列表', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('8', '商户管理', '1', '0', '', 'menu-icon fa fa-desktop', '商户管理根节点', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('9', '商户信息', '2', '8', '/roleList.jhtml', null, '商户信息', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('10', '账号安全', '2', '8', '/roleList.jhtml', null, '账号安全', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('11', '订单管理', '1', '0', '', 'menu-icon fa fa-bar-chart-o', '订单管理根节点', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('12', '订单列表', '2', '11', '/roleList.jhtml', null, '订单列表', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('13', '补货单列表', '2', '11', '/roleList.jhtml', null, '补货单列表', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('14', '系统管理', '1', '0', '', 'menu-icon fa fa-cog', '系统管理根节点', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('15', '系统配置', '2', '14', '/system/configList.jhtml', null, '系统配置', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('16', '操作日志', '2', '14', '/roleList.jhtml', null, '操作日志', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('17', '菜单列表', '2', '14', '/system/actionList.jhtml', null, '菜单列表', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('18', '财务流水', '2', '14', '/roleList.jhtml', null, '财务流水', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('19', '菜单详情', '2', '17', '/system/actionDetail.jhtml', '', '菜单详情', '999999', '2014-12-03 12:20:20');
INSERT INTO `tb_system_action` VALUES ('20', '质量基础', '1', '0', '', '', '质量基础', '999999', '2017-12-01 11:33:19');
INSERT INTO `tb_system_action` VALUES ('21', '标准化能力', '1', '20', '', '', '标准化能力', '999999', '2017-12-01 11:33:19');
INSERT INTO `tb_system_action` VALUES ('22', '地方标准制修订情况', '2', '21', '/statistical/standardRevise.jhtml', '', '地方标准制修订情况', '999999', '2017-12-01 11:33:19');
INSERT INTO `tb_system_action` VALUES ('23', '计量标准', '2', '21', '/statistical/measurement.jhtml', null, '计量标准', '999999', '2017-12-23 10:02:53');
INSERT INTO `tb_system_action` VALUES ('24', '计量标准2', '2', '21', '/statistical/measurement2.jhtml', null, '计量标准2', '999999', '2018-01-17 15:59:11');
