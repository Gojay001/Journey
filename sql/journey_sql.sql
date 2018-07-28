/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : journey

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 27/07/2018 11:32:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `country_id` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `winter_temp` varchar(255) NOT NULL DEFAULT '10',
  `winter_temp_score` varchar(255) NOT NULL DEFAULT '0',
  `summer_temp` varchar(255) NOT NULL DEFAULT '20',
  `summer_temp_score` varchar(255) NOT NULL DEFAULT '0',
  `live_cost` varchar(255) NOT NULL DEFAULT '100',
  `live_score` varchar(255) NOT NULL DEFAULT '0',
  `daily_cost` varchar(255) NOT NULL DEFAULT '100',
  `daily_score` varchar(255) NOT NULL DEFAULT '0',
  `winter_score` varchar(255) NOT NULL DEFAULT '0',
  `summer_score` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
BEGIN;
INSERT INTO `info` VALUES ('1', '重庆', '11.615551', '1.9615551', '34.292627', '1.7707372999999995', '370', '3.06', '588', '3.412', '2.108388775', '2.108388775');
INSERT INTO `info` VALUES ('10', '青海', '3.774892', '1.1774892000000001', '24.711982', '2.7288018000000003', '350', '3.1', '1087', '2.913', '1.7976223', '1.7976223');
INSERT INTO `info` VALUES ('11', '内蒙', '-2.541126', '0.5458873999999998', '28.016129', '2.3983871', '350', '3.1', '888', '3.112', '1.6894718499999999', '1.6894718499999999');
INSERT INTO `info` VALUES ('12', '武汉', '9.751082', '1.7751082', '32.781106', '1.9218893999999997', '350', '3.1', '1071', '2.929', '1.95102705', '1.95102705');
INSERT INTO `info` VALUES ('2', '青岛', '4.075758', '1.2075757999999999', '28.48037', '2.351963', '380', '3.04', '1780', '2.2199999999999998', '1.61689395', '1.61689395');
INSERT INTO `info` VALUES ('3', '西藏', '9.78355', '1.778355', '23.12212', '2.887788', '350', '3.1', '300', '3.7', '2.14458875', '2.14458875');
INSERT INTO `info` VALUES ('4', '上海', '9.318182', '1.7318182', '33.228111', '1.8771889000000002', '500', '2.8', '1272', '2.7279999999999998', '1.81495455', '1.81495455');
INSERT INTO `info` VALUES ('5', '北京', '3.660907', '1.1660907', '31.269585', '2.0730415', '500', '2.8', '1767', '2.233', '1.5497726749999998', '1.5497726749999998');
INSERT INTO `info` VALUES ('6', '昆明', '17.201299', '2.5201298999999997', '24.824885', '2.7175115', '380', '3.04', '1061', '2.939', '2.124782475', '2.124782475');
INSERT INTO `info` VALUES ('7', '厦门', '17.307359', '2.5307359000000003', '32.548387', '1.9451613', '400', '3', '1430', '2.57', '2.025183975', '2.025183975');
INSERT INTO `info` VALUES ('8', '长沙', '10.515152', '1.8515152', '33.845622', '1.8154378', '350', '3.1', '1233', '2.767', '1.9296288000000001', '1.9296288000000001');
INSERT INTO `info` VALUES ('9', '成都', '10.971861', '1.8971861', '30.631336', '2.1368663999999997', '370', '3.06', '1237', '2.763', '1.930046525', '1.930046525');
COMMIT;

-- ----------------------------
-- Table structure for roadfare
-- ----------------------------
DROP TABLE IF EXISTS `roadfare`;
CREATE TABLE `roadfare` (
  `fare_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_id` varchar(255) NOT NULL,
  `start_name` varchar(255) NOT NULL,
  `aim_id` varchar(255) NOT NULL,
  `aim_name` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL DEFAULT '100',
  PRIMARY KEY (`fare_id`),
  KEY `fk_fare_id` (`start_id`),
  KEY `fk_fare_aim_id` (`aim_id`),
  CONSTRAINT `fk_fare_aim_id` FOREIGN KEY (`aim_id`) REFERENCES `info` (`country_id`),
  CONSTRAINT `fk_fare_id` FOREIGN KEY (`start_id`) REFERENCES `info` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roadfare
-- ----------------------------
BEGIN;
INSERT INTO `roadfare` VALUES (1, '1', '重庆', '1', '重庆', '0');
INSERT INTO `roadfare` VALUES (2, '1', '重庆', '2', '青岛', '940');
INSERT INTO `roadfare` VALUES (3, '1', '重庆', '3', '西藏', '1100');
INSERT INTO `roadfare` VALUES (4, '1', '重庆', '4', '上海', '820');
INSERT INTO `roadfare` VALUES (5, '1', '重庆', '5', '北京', '990');
INSERT INTO `roadfare` VALUES (6, '1', '重庆', '6', '昆明', '610');
INSERT INTO `roadfare` VALUES (7, '1', '重庆', '7', '厦门', '770');
INSERT INTO `roadfare` VALUES (8, '1', '重庆', '8', '长沙', '420');
INSERT INTO `roadfare` VALUES (9, '1', '重庆', '9', '成都', '96');
INSERT INTO `roadfare` VALUES (10, '1', '重庆', '10', '青海', '1010');
INSERT INTO `roadfare` VALUES (11, '1', '重庆', '11', '内蒙', '890');
INSERT INTO `roadfare` VALUES (12, '1', '重庆', '12', '武汉', '410');
INSERT INTO `roadfare` VALUES (13, '2', '青岛', '1', '重庆', '840');
INSERT INTO `roadfare` VALUES (14, '2', '青岛', '2', '青岛', '0');
INSERT INTO `roadfare` VALUES (15, '2', '青岛', '3', '西藏', '1430');
INSERT INTO `roadfare` VALUES (16, '2', '青岛', '4', '上海', '410');
INSERT INTO `roadfare` VALUES (17, '2', '青岛', '5', '北京', '470');
INSERT INTO `roadfare` VALUES (18, '2', '青岛', '6', '昆明', '1120');
INSERT INTO `roadfare` VALUES (19, '2', '青岛', '7', '厦门', '480');
INSERT INTO `roadfare` VALUES (20, '2', '青岛', '8', '长沙', '680');
INSERT INTO `roadfare` VALUES (21, '2', '青岛', '9', '成都', '1110');
INSERT INTO `roadfare` VALUES (22, '2', '青岛', '10', '青海', '1400');
INSERT INTO `roadfare` VALUES (23, '2', '青岛', '11', '内蒙', '820');
INSERT INTO `roadfare` VALUES (24, '2', '青岛', '12', '武汉', '730');
INSERT INTO `roadfare` VALUES (25, '3', '西藏', '1', '重庆', '1480');
INSERT INTO `roadfare` VALUES (26, '3', '西藏', '2', '青岛', '2210');
INSERT INTO `roadfare` VALUES (27, '3', '西藏', '3', '西藏', '0');
INSERT INTO `roadfare` VALUES (28, '3', '西藏', '4', '上海', '3270');
INSERT INTO `roadfare` VALUES (29, '3', '西藏', '5', '北京', '2390');
INSERT INTO `roadfare` VALUES (30, '3', '西藏', '6', '昆明', '1530');
INSERT INTO `roadfare` VALUES (31, '3', '西藏', '7', '厦门', '2124');
INSERT INTO `roadfare` VALUES (32, '3', '西藏', '8', '长沙', '1750');
INSERT INTO `roadfare` VALUES (33, '3', '西藏', '9', '成都', '1480');
INSERT INTO `roadfare` VALUES (34, '3', '西藏', '10', '青海', '920');
INSERT INTO `roadfare` VALUES (35, '3', '西藏', '11', '内蒙', '2220');
INSERT INTO `roadfare` VALUES (36, '3', '西藏', '12', '武汉', '2210');
INSERT INTO `roadfare` VALUES (37, '4', '上海', '1', '重庆', '760');
INSERT INTO `roadfare` VALUES (38, '4', '上海', '2', '青岛', '600');
INSERT INTO `roadfare` VALUES (39, '4', '上海', '3', '西藏', '2820');
INSERT INTO `roadfare` VALUES (40, '4', '上海', '4', '上海', '0');
INSERT INTO `roadfare` VALUES (41, '4', '上海', '5', '北京', '590');
INSERT INTO `roadfare` VALUES (42, '4', '上海', '6', '昆明', '910');
INSERT INTO `roadfare` VALUES (43, '4', '上海', '7', '厦门', '498');
INSERT INTO `roadfare` VALUES (44, '4', '上海', '8', '长沙', '500');
INSERT INTO `roadfare` VALUES (45, '4', '上海', '9', '成都', '820');
INSERT INTO `roadfare` VALUES (46, '4', '上海', '10', '青海', '1110');
INSERT INTO `roadfare` VALUES (47, '4', '上海', '11', '内蒙', '920');
INSERT INTO `roadfare` VALUES (48, '4', '上海', '12', '武汉', '360');
INSERT INTO `roadfare` VALUES (49, '5', '北京', '1', '重庆', '930');
INSERT INTO `roadfare` VALUES (50, '5', '北京', '2', '青岛', '420');
INSERT INTO `roadfare` VALUES (51, '5', '北京', '3', '西藏', '1880');
INSERT INTO `roadfare` VALUES (52, '5', '北京', '4', '上海', '460');
INSERT INTO `roadfare` VALUES (53, '5', '北京', '5', '北京', '0');
INSERT INTO `roadfare` VALUES (54, '5', '北京', '6', '昆明', '1010');
INSERT INTO `roadfare` VALUES (55, '5', '北京', '7', '厦门', '670');
INSERT INTO `roadfare` VALUES (56, '5', '北京', '8', '长沙', '660');
INSERT INTO `roadfare` VALUES (57, '5', '北京', '9', '成都', '820');
INSERT INTO `roadfare` VALUES (58, '5', '北京', '10', '青海', '970');
INSERT INTO `roadfare` VALUES (59, '5', '北京', '11', '内蒙', '720');
INSERT INTO `roadfare` VALUES (60, '5', '北京', '12', '武汉', '530');
INSERT INTO `roadfare` VALUES (61, '6', '昆明', '1', '重庆', '390');
INSERT INTO `roadfare` VALUES (62, '6', '昆明', '2', '青岛', '1120');
INSERT INTO `roadfare` VALUES (63, '6', '昆明', '3', '西藏', '1530');
INSERT INTO `roadfare` VALUES (64, '6', '昆明', '4', '上海', '840');
INSERT INTO `roadfare` VALUES (65, '6', '昆明', '5', '北京', '980');
INSERT INTO `roadfare` VALUES (66, '6', '昆明', '6', '昆明', '0');
INSERT INTO `roadfare` VALUES (67, '6', '昆明', '7', '厦门', '690');
INSERT INTO `roadfare` VALUES (68, '6', '昆明', '8', '长沙', '580');
INSERT INTO `roadfare` VALUES (69, '6', '昆明', '9', '成都', '538');
INSERT INTO `roadfare` VALUES (70, '6', '昆明', '10', '青海', '798');
INSERT INTO `roadfare` VALUES (71, '6', '昆明', '11', '内蒙', '960');
INSERT INTO `roadfare` VALUES (72, '6', '昆明', '12', '武汉', '885');
INSERT INTO `roadfare` VALUES (73, '7', '厦门', '1', '重庆', '710');
INSERT INTO `roadfare` VALUES (74, '7', '厦门', '2', '青岛', '550');
INSERT INTO `roadfare` VALUES (75, '7', '厦门', '3', '西藏', '1570');
INSERT INTO `roadfare` VALUES (76, '7', '厦门', '4', '上海', '492');
INSERT INTO `roadfare` VALUES (77, '7', '厦门', '5', '北京', '740');
INSERT INTO `roadfare` VALUES (78, '7', '厦门', '6', '昆明', '750');
INSERT INTO `roadfare` VALUES (79, '7', '厦门', '7', '厦门', '0');
INSERT INTO `roadfare` VALUES (80, '7', '厦门', '8', '长沙', '480');
INSERT INTO `roadfare` VALUES (81, '7', '厦门', '9', '成都', '1000');
INSERT INTO `roadfare` VALUES (82, '7', '厦门', '10', '青海', '1080');
INSERT INTO `roadfare` VALUES (83, '7', '厦门', '11', '内蒙', '990');
INSERT INTO `roadfare` VALUES (84, '7', '厦门', '12', '武汉', '490');
INSERT INTO `roadfare` VALUES (85, '8', '长沙', '1', '重庆', '540');
INSERT INTO `roadfare` VALUES (86, '8', '长沙', '2', '青岛', '900');
INSERT INTO `roadfare` VALUES (87, '8', '长沙', '3', '西藏', '1490');
INSERT INTO `roadfare` VALUES (88, '8', '长沙', '4', '上海', '590');
INSERT INTO `roadfare` VALUES (89, '8', '长沙', '5', '北京', '670');
INSERT INTO `roadfare` VALUES (90, '8', '长沙', '6', '昆明', '650');
INSERT INTO `roadfare` VALUES (91, '8', '长沙', '7', '厦门', '596');
INSERT INTO `roadfare` VALUES (92, '8', '长沙', '8', '长沙', '0');
INSERT INTO `roadfare` VALUES (93, '8', '长沙', '9', '成都', '868');
INSERT INTO `roadfare` VALUES (94, '8', '长沙', '10', '青海', '1069');
INSERT INTO `roadfare` VALUES (95, '8', '长沙', '11', '内蒙', '750');
INSERT INTO `roadfare` VALUES (96, '8', '长沙', '12', '武汉', '630');
INSERT INTO `roadfare` VALUES (97, '9', '成都', '1', '重庆', '96');
INSERT INTO `roadfare` VALUES (98, '9', '成都', '2', '青岛', '1250');
INSERT INTO `roadfare` VALUES (99, '9', '成都', '3', '西藏', '1290');
INSERT INTO `roadfare` VALUES (100, '9', '成都', '4', '上海', '840');
INSERT INTO `roadfare` VALUES (101, '9', '成都', '5', '北京', '840');
INSERT INTO `roadfare` VALUES (102, '9', '成都', '6', '昆明', '580');
INSERT INTO `roadfare` VALUES (103, '9', '成都', '7', '厦门', '1000');
INSERT INTO `roadfare` VALUES (104, '9', '成都', '8', '长沙', '630');
INSERT INTO `roadfare` VALUES (105, '9', '成都', '9', '成都', '0');
INSERT INTO `roadfare` VALUES (106, '9', '成都', '10', '青海', '850');
INSERT INTO `roadfare` VALUES (107, '9', '成都', '11', '内蒙', '720');
INSERT INTO `roadfare` VALUES (108, '9', '成都', '12', '武汉', '628');
INSERT INTO `roadfare` VALUES (109, '10', '青海', '1', '重庆', '1010');
INSERT INTO `roadfare` VALUES (110, '10', '青海', '2', '青岛', '1800');
INSERT INTO `roadfare` VALUES (111, '10', '青海', '3', '西藏', '1060');
INSERT INTO `roadfare` VALUES (112, '10', '青海', '4', '上海', '1190');
INSERT INTO `roadfare` VALUES (113, '10', '青海', '5', '北京', '1270');
INSERT INTO `roadfare` VALUES (114, '10', '青海', '6', '昆明', '725');
INSERT INTO `roadfare` VALUES (115, '10', '青海', '7', '厦门', '1100');
INSERT INTO `roadfare` VALUES (116, '10', '青海', '8', '长沙', '1060');
INSERT INTO `roadfare` VALUES (117, '10', '青海', '9', '成都', '900');
INSERT INTO `roadfare` VALUES (118, '10', '青海', '10', '青海', '0');
INSERT INTO `roadfare` VALUES (119, '10', '青海', '11', '内蒙', '1030');
INSERT INTO `roadfare` VALUES (120, '10', '青海', '12', '武汉', '1010');
INSERT INTO `roadfare` VALUES (121, '11', '内蒙', '1', '重庆', '880');
INSERT INTO `roadfare` VALUES (122, '11', '内蒙', '2', '青岛', '870');
INSERT INTO `roadfare` VALUES (123, '11', '内蒙', '3', '西藏', '1350');
INSERT INTO `roadfare` VALUES (124, '11', '内蒙', '4', '上海', '950');
INSERT INTO `roadfare` VALUES (125, '11', '内蒙', '5', '北京', '490');
INSERT INTO `roadfare` VALUES (126, '11', '内蒙', '6', '昆明', '995');
INSERT INTO `roadfare` VALUES (127, '11', '内蒙', '7', '厦门', '923');
INSERT INTO `roadfare` VALUES (128, '11', '内蒙', '8', '长沙', '505');
INSERT INTO `roadfare` VALUES (129, '11', '内蒙', '9', '成都', '1020');
INSERT INTO `roadfare` VALUES (130, '11', '内蒙', '10', '青海', '730');
INSERT INTO `roadfare` VALUES (131, '11', '内蒙', '11', '内蒙', '0');
INSERT INTO `roadfare` VALUES (132, '11', '内蒙', '12', '武汉', '570');
INSERT INTO `roadfare` VALUES (133, '12', '武汉', '1', '重庆', '530');
INSERT INTO `roadfare` VALUES (134, '12', '武汉', '2', '青岛', '780');
INSERT INTO `roadfare` VALUES (135, '12', '武汉', '3', '西藏', '1460');
INSERT INTO `roadfare` VALUES (136, '12', '武汉', '4', '上海', '310');
INSERT INTO `roadfare` VALUES (137, '12', '武汉', '5', '北京', '500');
INSERT INTO `roadfare` VALUES (138, '12', '武汉', '6', '昆明', '650');
INSERT INTO `roadfare` VALUES (139, '12', '武汉', '7', '厦门', '440');
INSERT INTO `roadfare` VALUES (140, '12', '武汉', '8', '长沙', '630');
INSERT INTO `roadfare` VALUES (141, '12', '武汉', '9', '成都', '780');
INSERT INTO `roadfare` VALUES (142, '12', '武汉', '10', '青海', '940');
INSERT INTO `roadfare` VALUES (143, '12', '武汉', '11', '内蒙', '770');
INSERT INTO `roadfare` VALUES (144, '12', '武汉', '12', '武汉', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
