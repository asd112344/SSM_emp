-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sp_emp
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_dept`
--

DROP TABLE IF EXISTS `t_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dept` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deptId` varchar(20) NOT NULL COMMENT '部门号',
  `deptName` varchar(20) NOT NULL COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

LOCK TABLES `t_dept` WRITE;
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` VALUES (1,'D1001','开发部'),(2,'D1002','测试部'),(3,'D1003','后勤部'),(4,'D1004','人事部'),(5,'D1005','财务部'),(6,'D1006','保安部'),(9,'D1007','行政部');
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_emp`
--

DROP TABLE IF EXISTS `t_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工表的主键',
  `empId` varchar(20) NOT NULL COMMENT '员工号',
  `name` varchar(30) DEFAULT NULL COMMENT '员工姓名',
  `email` varchar(30) DEFAULT NULL COMMENT '员工的邮箱',
  `gender` bit(1) DEFAULT NULL COMMENT '员工性别',
  `birth` datetime DEFAULT NULL COMMENT '员工生日',
  `deptId` int(11) DEFAULT NULL COMMENT '员工所属的部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_emp`
--

LOCK TABLES `t_emp` WRITE;
/*!40000 ALTER TABLE `t_emp` DISABLE KEYS */;
INSERT INTO `t_emp` VALUES (1,'E2001','王志','wz@163.com','','1993-04-06 00:00:00',2),(2,'E2002','刘倩','11156789@qq.com','\0','1999-01-26 00:00:00',4),(3,'E2003','李思','18112341234@163.com','\0','1995-07-12 00:00:00',6),(4,'E2004','赵笑','zxx@163.com','\0','1996-01-15 00:00:00',5),(9,'E2005','赵丽','zhaoli@163.com','\0','2001-06-17 00:00:00',1),(10,'E2006','子文','ziwen@163.com','','1989-08-24 00:00:00',1);
/*!40000 ALTER TABLE `t_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_test`
--

DROP TABLE IF EXISTS `t_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_test`
--

LOCK TABLES `t_test` WRITE;
/*!40000 ALTER TABLE `t_test` DISABLE KEYS */;
INSERT INTO `t_test` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12'),(13,'13');
/*!40000 ALTER TABLE `t_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(60) NOT NULL COMMENT '用户密码',
  `identity` bit(1) DEFAULT NULL COMMENT '0 代表员工 1 代表管理员',
  `telNumber` char(11) DEFAULT NULL COMMENT '手机号',
  `idCard` char(18) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','admin123','','13712341234','130122196412120512','admin@163.com'),(2,'tom','e10adc3949ba59abbe56e057f20f883e','\0','13111223344','610322199712100712','1546558782@qq.com'),(3,'赵飞','e10adc3949ba59abbe56e057f20f883e','\0','17718911891','610322188412100112','zhao@163.com'),(4,'刘云','1e48c4420b7073bc11916c6c1de226bb','\0','18112341234','310322199812120101','liuyun@163.com'),(5,'tom','c4ca4238a0b923820dcc509a6f75849b','\0',NULL,NULL,'tom@163.com');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_visitor`
--

DROP TABLE IF EXISTS `t_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) DEFAULT NULL COMMENT '名字',
  `identity` bit(1) DEFAULT NULL COMMENT '是否是管理员 1 是 0 否',
  `telPhone` char(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `visitTime` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_visitor`
--

LOCK TABLES `t_visitor` WRITE;
/*!40000 ALTER TABLE `t_visitor` DISABLE KEYS */;
INSERT INTO `t_visitor` VALUES (1,'tom','\0','13112312312','1546558782@qq.com','2021-07-09 22:15:01'),(2,'tom','\0','13112312312','1546558782@qq.com','2021-07-10 17:55:27'),(3,'tom','\0','13112312312','1546558782@qq.com','2021-07-10 17:57:13'),(4,'tom','\0','13112312312','1546558782@qq.com','2021-07-10 18:00:14'),(5,'tom','\0','13112312312','1546558782@qq.com','2021-07-10 18:09:17'),(6,'tom','\0','13112341234','1546558782@qq.com','2021-07-10 22:29:36'),(7,'tom','\0','13112341234','1546558782@qq.com','2021-07-12 13:37:30'),(8,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 09:54:11'),(9,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 10:08:27'),(10,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 10:11:28'),(11,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 10:13:39'),(12,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 10:19:17'),(13,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 11:38:34'),(14,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 15:15:22'),(15,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 15:30:27'),(16,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 15:35:16'),(17,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 15:51:35'),(18,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 15:53:28'),(19,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 16:13:48'),(20,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 16:21:20'),(21,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 16:25:45'),(22,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 16:32:54'),(23,'tom','\0','13112341234','1546558782@qq.com','2021-07-13 16:34:56'),(24,'赵飞','\0','17718911891','zhao@163.com','2021-07-13 16:40:22'),(25,'赵飞','\0','17718911891','zhao@163.com','2021-07-13 16:50:19'),(26,'赵飞','\0','17718911891','zhao@163.com','2021-07-13 16:52:42'),(27,'赵飞','\0','17718911891','zhao@163.com','2021-07-13 16:57:45'),(28,'赵飞','\0','17718911891','zhao@163.com','2021-07-13 16:59:23'),(29,'刘云','\0','18114561456','liu@163.com','2021-07-13 17:31:22'),(30,'刘云','\0','18112341234','liuyun@163.com','2021-07-13 17:34:20'),(31,'刘云','\0','18112341234','liuyun@163.com','2021-07-13 17:36:07'),(32,'刘云','\0','18112341234','liuyun@163.com','2021-07-13 17:37:23');
/*!40000 ALTER TABLE `t_visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25 15:40:59
