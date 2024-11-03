/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiatingcaiwuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiatingcaiwuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiatingcaiwuguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-27 16:31:49'),(2,'sex_types','性别',2,'女',NULL,'2021-03-27 16:31:49'),(3,'leixing_types','类型',2,'支出',NULL,'2021-03-27 16:31:49'),(4,'leixing_types','类型',1,'收入',NULL,'2021-03-27 16:31:49'),(5,'lx_types','通知类型',1,'普通通知',NULL,'2021-03-27 16:31:49'),(6,'lx_types','通知类型',2,'日常通知',NULL,'2021-03-27 16:31:49'),(7,'lx_types','通知类型',3,'紧急通知',NULL,'2021-03-27 16:31:49'),(8,'jt_types','家庭名称',1,'家庭1',NULL,'2021-03-27 16:31:49'),(9,'jt_types','家庭名称',2,'家庭2',NULL,'2021-03-27 17:37:21'),(10,'jt_types','家庭名称',3,'家庭3',NULL,'2021-03-27 17:37:26'),(11,'jt_types','家庭名称',4,'家庭4',NULL,'2021-03-27 20:56:19');

/*Table structure for table `jiatingzhangben` */

DROP TABLE IF EXISTS `jiatingzhangben`;

CREATE TABLE `jiatingzhangben` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jt_types` int(200) DEFAULT NULL COMMENT '家庭名称',
  `zbname` varchar(11) DEFAULT NULL COMMENT '收入支出名称  Search111 ',
  `leixing_types` int(11) DEFAULT NULL COMMENT '支出收入类型  Search111 ',
  `expense` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '家庭成员',
  `riqi_time` timestamp NULL DEFAULT NULL COMMENT '日期  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='家庭账本';

/*Data for the table `jiatingzhangben` */

insert  into `jiatingzhangben`(`id`,`jt_types`,`zbname`,`leixing_types`,`expense`,`yonghu_id`,`riqi_time`,`create_time`) values (5,1,'买彩票中奖',1,'30000.00',2,'2021-03-29 09:51:03','2021-03-27 20:44:02'),(6,3,'123',2,'123.00',6,'2021-03-27 20:44:14','2021-03-27 20:44:16'),(7,2,'发工资了',1,'5000.00',7,'2021-03-27 20:57:07','2021-03-27 20:57:10'),(8,1,'买了一台新手机',2,'3000.00',2,'2021-03-29 09:50:36','2021-03-27 20:57:53'),(9,1,'123',2,'123.00',2,'2021-03-01 00:00:00','2021-03-29 09:57:35');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'admin','users','管理员','s6mmnpgvpgy7mq2bmqom8miyj07qsf3m','2021-03-23 14:15:15','2021-03-29 11:02:01'),(6,1,'111','yonghu','用户','j0ojxwdhul5wdzr920xyemjnrwx5q1qf','2021-03-23 16:55:29','2021-03-29 10:52:26'),(7,2,'222','yonghu','用户','bwrakg7zn3nn028rtwyp6chbmd4orj24','2021-03-23 16:58:43','2021-03-27 21:40:49'),(8,3,'333','yonghu','用户','fpw1k6281ezleb4blo1dg7nwxj3t77lc','2021-03-23 17:22:11','2021-03-23 18:23:03'),(9,6,'123','yonghu','用户','bvk62p7yobuq6plc7nokt2itww1l0coq','2021-03-27 20:44:43','2021-03-27 21:44:43'),(10,7,'333','yonghu','用户','fmtv1huwk3h7xubdn66pbaif93gy0jw3','2021-03-29 09:56:31','2021-03-29 10:56:50');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gname` varchar(200) DEFAULT NULL COMMENT '通知标题',
  `lx_types` int(11) DEFAULT NULL COMMENT '通知类型  Search111 ',
  `riqi_time` timestamp NULL DEFAULT NULL COMMENT '通知日期  Search111 ',
  `tongzhi_content` varchar(200) DEFAULT NULL COMMENT '通知内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`gname`,`lx_types`,`riqi_time`,`tongzhi_content`,`create_time`) values (1,'通知标题1',1,'2021-03-29 00:00:00','通知内容1\r\n\r\n','2021-03-29 09:51:51'),(2,'通知标题2',2,'2021-03-29 00:00:00','通知内容2\r\n','2021-03-29 09:52:06');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `jt_types` int(255) DEFAULT NULL COMMENT '家庭名称',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`id_number`,`jt_types`,`role`) values (1,'小金','111','111','http://localhost:8080/jiatingcaiwuguanli/file/download?fileName=1616845024873.jpg',1,'17796312333','410882200011231234',1,'用户'),(2,'小札','222','222','http://localhost:8080/jiatingcaiwuguanli/file/download?fileName=1616845015682.jpg',2,'17754548971','410882200011274855',1,'用户'),(6,'123','123','123456','http://localhost:8080/jiatingcaiwuguanli/file/download?fileName=1616849018765.jpg',1,'17712312312','410882200012121212',3,'用户'),(7,'小张','333','333','http://localhost:8080/jiatingcaiwuguanli/file/download?fileName=1616849647114.jpg',1,'17785566487','410882200011254755',2,'用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
