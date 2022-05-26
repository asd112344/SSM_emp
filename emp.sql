/*
MySQL Backup
Database: company
Backup Time: 2022-05-26 10:28:21
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `company`.`t_dept`;
DROP TABLE IF EXISTS `company`.`t_emp`;
DROP TABLE IF EXISTS `company`.`t_test`;
DROP TABLE IF EXISTS `company`.`t_user`;
DROP TABLE IF EXISTS `company`.`t_visitor`;
CREATE TABLE `t_dept` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deptId` varchar(20) NOT NULL COMMENT '部门号',
  `deptName` varchar(20) NOT NULL COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `t_emp` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '员工表的主键',
  `empId` varchar(20) NOT NULL COMMENT '员工号',
  `name` varchar(30) DEFAULT NULL COMMENT '员工姓名',
  `email` varchar(30) DEFAULT NULL COMMENT '员工的邮箱',
  `gender` bit(1) DEFAULT NULL COMMENT '员工性别',
  `birth` datetime DEFAULT NULL COMMENT '员工生日',
  `deptId` int DEFAULT NULL COMMENT '员工所属的部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `t_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(60) NOT NULL COMMENT '用户密码',
  `identity` bit(1) DEFAULT NULL COMMENT '0 代表员工 1 代表管理员',
  `telNumber` char(11) DEFAULT NULL COMMENT '手机号',
  `idCard` char(18) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `t_visitor` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) DEFAULT NULL COMMENT '名字',
  `identity` bit(1) DEFAULT NULL COMMENT '是否是管理员 1 是 0 否',
  `telPhone` char(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `visitTime` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
BEGIN;
LOCK TABLES `company`.`t_dept` WRITE;
DELETE FROM `company`.`t_dept`;
INSERT INTO `company`.`t_dept` (`id`,`deptId`,`deptName`) VALUES (1, 'D1001', '开发部'),(2, 'D1002', '测试部'),(3, 'D1003', '后勤部'),(4, 'D1004', '人事部'),(5, 'D1005', '财务部'),(6, 'D1006', '保安部'),(9, 'D1007', '行政部');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `company`.`t_emp` WRITE;
DELETE FROM `company`.`t_emp`;
INSERT INTO `company`.`t_emp` (`id`,`empId`,`name`,`email`,`gender`,`birth`,`deptId`) VALUES (1, 'E2001', '王志', 'wz@163.com', b'1', '1993-04-06 00:00:00', 2),(2, 'E2002', '刘倩', '11156789@qq.com', b'0', '1999-01-26 00:00:00', 4),(3, 'E2003', '李思', '18112341234@163.com', b'0', '1995-07-12 00:00:00', 6),(4, 'E2004', '赵笑', 'zxx@163.com', b'0', '1996-01-15 00:00:00', 5),(9, 'E2005', '赵丽', 'zhaoli@163.com', b'0', '2001-06-17 00:00:00', 1),(10, 'E2006', '子文', 'ziwen@163.com', b'1', '1989-08-24 00:00:00', 1);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `company`.`t_test` WRITE;
DELETE FROM `company`.`t_test`;
INSERT INTO `company`.`t_test` (`id`,`num`) VALUES (1, '1'),(2, '2'),(3, '3'),(4, '4'),(5, '5'),(6, '6'),(7, '7'),(8, '8'),(9, '9'),(10, '10'),(11, '11'),(12, '12'),(13, '13');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `company`.`t_user` WRITE;
DELETE FROM `company`.`t_user`;
INSERT INTO `company`.`t_user` (`id`,`name`,`password`,`identity`,`telNumber`,`idCard`,`email`) VALUES (1, 'admin', 'admin123', b'1', '13712341234', '130122196412120512', 'admin@163.com'),(2, 'tom', 'e10adc3949ba59abbe56e057f20f883e', b'0', '13111223344', '610322199712100712', '1546558782@qq.com'),(3, '赵飞', 'e10adc3949ba59abbe56e057f20f883e', b'0', '17718911891', '610322188412100112', 'zhao@163.com'),(4, '刘云', '1e48c4420b7073bc11916c6c1de226bb', b'0', '18112341234', '310322199812120101', 'liuyun@163.com'),(5, 'tom', 'c4ca4238a0b923820dcc509a6f75849b', b'0', NULL, NULL, 'tom@163.com'),(6, 'root', '5f4dcc3b5aa765d61d8327deb882cf99', b'1', '18255591740', '156566994452', '2642593983@qq.com');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `company`.`t_visitor` WRITE;
DELETE FROM `company`.`t_visitor`;
INSERT INTO `company`.`t_visitor` (`id`,`name`,`identity`,`telPhone`,`email`,`visitTime`) VALUES (1, 'tom', b'0', '1785511922', '1546558782@qq.com', '2022-05-26 12:30:01'),(2, 'tom', b'0', '1785511922', '1546558782@qq.com', '2022-05-26 12:55:27'),(3, 'tom', b'0', '1785511922', '1546558782@qq.com', '2022-05-26 12:57:13'),(4, 'tom', b'0', '1785511922', '3057706134@qq.com', '2022-05-26 13:15:25'),(5, 'tom', b'0', '1785511922', '3057706134@qq.com', '2022-05-26 13:30:35'),(6, 'tom', b'0', '1785511922', '3057706134@qq.com', '2022-05-26 13:45:45'),(7, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 14:30:42'),(8, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 14:45:40'),(9, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 14:50:20'),(10, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 15:15:15'),(11, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 15:30:25'),(12, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 15:45:35'),(13, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 15:50:02'),(14, 'tom', b'0', '17555018561', '3057706134@qq.com', '2022-05-26 15:55:25'),(33, 'root', b'1', '17375087787', '3056044542@qq.com', '2022-05-26 16:00:01');
UNLOCK TABLES;
COMMIT;
