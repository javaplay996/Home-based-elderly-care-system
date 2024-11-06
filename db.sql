/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmvr18o
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmvr18o` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmvr18o`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618579248222 DEFAULT CHARSET=utf8 COMMENT='客服咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (141,'2021-04-16 15:10:07',1,1,'提问1','回复1',1),(142,'2021-04-16 15:10:07',2,2,'提问2','回复2',2),(143,'2021-04-16 15:10:07',3,3,'提问3','回复3',3),(144,'2021-04-16 15:10:07',4,4,'提问4','回复4',4),(145,'2021-04-16 15:10:07',5,5,'提问5','回复5',5),(146,'2021-04-16 15:10:07',6,6,'提问6','回复6',6),(1618579248221,'2021-04-16 21:20:47',11,NULL,'测试',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmvr18o/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmvr18o/upload/1618579102716.jpg'),(3,'picture3','http://localhost:8080/ssmvr18o/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanshenqing` */

DROP TABLE IF EXISTS `dingdanshenqing`;

CREATE TABLE `dingdanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `jianchajianyanxiangmu` varchar(200) DEFAULT NULL COMMENT '检查检验项目',
  `weixiufuwu` varchar(200) DEFAULT NULL COMMENT '维修服务',
  `dingdanneirong` longtext COMMENT '订单内容',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `laorenzhanghao` varchar(200) NOT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `laorendangqianzhuangtai` varchar(200) DEFAULT NULL COMMENT '老人当前状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618579204006 DEFAULT CHARSET=utf8 COMMENT='订单申请';

/*Data for the table `dingdanshenqing` */

insert  into `dingdanshenqing`(`id`,`addtime`,`dingdanbianhao`,`jianchajianyanxiangmu`,`weixiufuwu`,`dingdanneirong`,`shenqingshijian`,`laorenzhanghao`,`laorenxingming`,`laorenxingbie`,`laorennianling`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`laorendangqianzhuangtai`,`sfsh`,`shhf`,`userid`) values (41,'2021-04-16 15:10:06','订单编号1','检查检验项目1','维修服务1','订单内容1','2021-04-16 15:10:06','老人账号1','老人姓名1','老人性别1','老人年龄1','http://localhost:8080/ssmvr18o/upload/dingdanshenqing_laorenzhaopian1.jpg','联系电话1','联系地址1','老人当前状态1','是','',1),(42,'2021-04-16 15:10:06','订单编号2','检查检验项目2','维修服务2','订单内容2','2021-04-16 15:10:06','老人账号2','老人姓名2','老人性别2','老人年龄2','http://localhost:8080/ssmvr18o/upload/dingdanshenqing_laorenzhaopian2.jpg','联系电话2','联系地址2','老人当前状态2','是','',2),(43,'2021-04-16 15:10:06','订单编号3','检查检验项目3','维修服务3','订单内容3','2021-04-16 15:10:06','老人账号3','老人姓名3','老人性别3','老人年龄3','http://localhost:8080/ssmvr18o/upload/dingdanshenqing_laorenzhaopian3.jpg','联系电话3','联系地址3','老人当前状态3','是','',3),(44,'2021-04-16 15:10:06','订单编号4','检查检验项目4','维修服务4','订单内容4','2021-04-16 15:10:06','老人账号4','老人姓名4','老人性别4','老人年龄4','http://localhost:8080/ssmvr18o/upload/dingdanshenqing_laorenzhaopian4.jpg','联系电话4','联系地址4','老人当前状态4','是','',4),(45,'2021-04-16 15:10:06','订单编号5','检查检验项目5','维修服务5','订单内容5','2021-04-16 15:10:06','老人账号5','老人姓名5','老人性别5','老人年龄5','http://localhost:8080/ssmvr18o/upload/dingdanshenqing_laorenzhaopian5.jpg','联系电话5','联系地址5','老人当前状态5','是','',5),(46,'2021-04-16 15:10:06','订单编号6','检查检验项目6','维修服务6','订单内容6','2021-04-16 15:10:06','老人账号6','老人姓名6','老人性别6','老人年龄6','http://localhost:8080/ssmvr18o/upload/dingdanshenqing_laorenzhaopian6.jpg','联系电话6','联系地址6','老人当前状态6','是','',6),(1618578925667,'2021-04-16 21:15:25','1618578918524','','','测试','2021-04-16 21:15:18','老人账号1','老人姓名1','男','100','http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian1.jpg','13823888881','联系地址1','在家','是','测试',1),(1618579204005,'2021-04-16 21:20:03','202141621195195269291','检查检验项目1','维修服务40',NULL,'2021-04-16 21:19:52','老人账号1','老人姓名1','男','100','http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian1.jpg','13823888881','联系地址1','在家','否',NULL,11);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jianchajianyanxiangmu` varchar(200) DEFAULT NULL COMMENT '检查检验项目',
  `weixiufuwu` varchar(200) DEFAULT NULL COMMENT '维修服务',
  `dingdanneirong` longtext COMMENT '订单内容',
  `dingdanxuzhi` longtext COMMENT '订单须知',
  `paidanshijian` datetime DEFAULT NULL COMMENT '派单时间',
  `laorenzhanghao` varchar(200) NOT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `laorendangqianzhuangtai` varchar(200) DEFAULT NULL COMMENT '老人当前状态',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618578952301 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`jianchajianyanxiangmu`,`weixiufuwu`,`dingdanneirong`,`dingdanxuzhi`,`paidanshijian`,`laorenzhanghao`,`laorenxingming`,`laorenxingbie`,`laorennianling`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`laorendangqianzhuangtai`,`renyuanzhanghao`,`renyuanxingming`,`shoujihao`,`userid`) values (71,'2021-04-16 15:10:06','订单编号1','检查检验项目1','维修服务1','订单内容1','订单须知1','2021-04-16 15:10:06','老人账号1','老人姓名1','老人性别1','老人年龄1','http://localhost:8080/ssmvr18o/upload/dingdanxinxi_laorenzhaopian1.jpg','联系电话1','联系地址1','老人当前状态1','人员账号1','人员姓名1','手机号1',1),(72,'2021-04-16 15:10:06','订单编号2','检查检验项目2','维修服务2','订单内容2','订单须知2','2021-04-16 15:10:06','老人账号2','老人姓名2','老人性别2','老人年龄2','http://localhost:8080/ssmvr18o/upload/dingdanxinxi_laorenzhaopian2.jpg','联系电话2','联系地址2','老人当前状态2','人员账号2','人员姓名2','手机号2',2),(73,'2021-04-16 15:10:06','订单编号3','检查检验项目3','维修服务3','订单内容3','订单须知3','2021-04-16 15:10:06','老人账号3','老人姓名3','老人性别3','老人年龄3','http://localhost:8080/ssmvr18o/upload/dingdanxinxi_laorenzhaopian3.jpg','联系电话3','联系地址3','老人当前状态3','人员账号3','人员姓名3','手机号3',3),(74,'2021-04-16 15:10:06','订单编号4','检查检验项目4','维修服务4','订单内容4','订单须知4','2021-04-16 15:10:06','老人账号4','老人姓名4','老人性别4','老人年龄4','http://localhost:8080/ssmvr18o/upload/dingdanxinxi_laorenzhaopian4.jpg','联系电话4','联系地址4','老人当前状态4','人员账号4','人员姓名4','手机号4',4),(75,'2021-04-16 15:10:06','订单编号5','检查检验项目5','维修服务5','订单内容5','订单须知5','2021-04-16 15:10:06','老人账号5','老人姓名5','老人性别5','老人年龄5','http://localhost:8080/ssmvr18o/upload/dingdanxinxi_laorenzhaopian5.jpg','联系电话5','联系地址5','老人当前状态5','人员账号5','人员姓名5','手机号5',5),(76,'2021-04-16 15:10:06','订单编号6','检查检验项目6','维修服务6','订单内容6','订单须知6','2021-04-16 15:10:06','老人账号6','老人姓名6','老人性别6','老人年龄6','http://localhost:8080/ssmvr18o/upload/dingdanxinxi_laorenzhaopian6.jpg','联系电话6','联系地址6','老人当前状态6','人员账号6','人员姓名6','手机号6',6),(1618578952300,'2021-04-16 21:15:51','1618578918524','','','测试','测试','2021-04-16 21:15:42','老人账号1','老人姓名1','男','100','http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian1.jpg','13823888881','联系地址1','在家','工作人员1','人员姓名1','13823888881',1);

/*Table structure for table `fuwujilu` */

DROP TABLE IF EXISTS `fuwujilu`;

CREATE TABLE `fuwujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `fuwumude` varchar(200) DEFAULT NULL COMMENT '服务目的',
  `shenghuowupinxuqiu` varchar(200) DEFAULT NULL COMMENT '生活物品需求',
  `yaopinxuqiu` varchar(200) DEFAULT NULL COMMENT '药品需求',
  `shipinxuqiu` varchar(200) DEFAULT NULL COMMENT '食品需求',
  `beizhu` longtext COMMENT '备注',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `renyuanleixing` varchar(200) DEFAULT NULL COMMENT '人员类型',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618579155201 DEFAULT CHARSET=utf8 COMMENT='服务记录';

/*Data for the table `fuwujilu` */

insert  into `fuwujilu`(`id`,`addtime`,`laorenzhanghao`,`laorenxingming`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`fuwumude`,`shenghuowupinxuqiu`,`yaopinxuqiu`,`shipinxuqiu`,`beizhu`,`xiadanshijian`,`renyuanzhanghao`,`renyuanxingming`,`renyuanleixing`,`shoujihao`,`wanchengshijian`) values (101,'2021-04-16 15:10:06','老人账号1','老人姓名1','http://localhost:8080/ssmvr18o/upload/fuwujilu_laorenzhaopian1.jpg','联系电话1','联系地址1','服务目的1','生活物品需求1','药品需求1','食品需求1','备注1','2021-04-16 15:10:06','人员账号1','人员姓名1','人员类型1','手机号1','2021-04-16 15:10:06'),(102,'2021-04-16 15:10:06','老人账号2','老人姓名2','http://localhost:8080/ssmvr18o/upload/fuwujilu_laorenzhaopian2.jpg','联系电话2','联系地址2','服务目的2','生活物品需求2','药品需求2','食品需求2','备注2','2021-04-16 15:10:06','人员账号2','人员姓名2','人员类型2','手机号2','2021-04-16 15:10:06'),(103,'2021-04-16 15:10:06','老人账号3','老人姓名3','http://localhost:8080/ssmvr18o/upload/fuwujilu_laorenzhaopian3.jpg','联系电话3','联系地址3','服务目的3','生活物品需求3','药品需求3','食品需求3','备注3','2021-04-16 15:10:06','人员账号3','人员姓名3','人员类型3','手机号3','2021-04-16 15:10:06'),(104,'2021-04-16 15:10:06','老人账号4','老人姓名4','http://localhost:8080/ssmvr18o/upload/fuwujilu_laorenzhaopian4.jpg','联系电话4','联系地址4','服务目的4','生活物品需求4','药品需求4','食品需求4','备注4','2021-04-16 15:10:06','人员账号4','人员姓名4','人员类型4','手机号4','2021-04-16 15:10:06'),(105,'2021-04-16 15:10:06','老人账号5','老人姓名5','http://localhost:8080/ssmvr18o/upload/fuwujilu_laorenzhaopian5.jpg','联系电话5','联系地址5','服务目的5','生活物品需求5','药品需求5','食品需求5','备注5','2021-04-16 15:10:06','人员账号5','人员姓名5','人员类型5','手机号5','2021-04-16 15:10:06'),(106,'2021-04-16 15:10:06','老人账号6','老人姓名6','http://localhost:8080/ssmvr18o/upload/fuwujilu_laorenzhaopian6.jpg','联系电话6','联系地址6','服务目的6','生活物品需求6','药品需求6','食品需求6','备注6','2021-04-16 15:10:06','人员账号6','人员姓名6','人员类型6','手机号6','2021-04-16 15:10:06'),(1618579023892,'2021-04-16 21:17:03','老人账号1','老人姓名1','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian1.jpg','联系电话1','联系地址1','服务目的1','','药品需求1','食品需求1','备注1','2021-04-16 15:10:06','工作人员1','','','','2021-04-16 21:16:51'),(1618579155200,'2021-04-16 21:19:15','老人账号6','老人姓名6','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian6.jpg','联系电话6','联系地址6','服务目的6','','药品需求6','食品需求6','备注6','2021-04-16 15:10:06','工作人员1','人员姓名1','工作人员','13823888881','2021-04-16 21:19:09');

/*Table structure for table `gongzuorenyuan` */

DROP TABLE IF EXISTS `gongzuorenyuan`;

CREATE TABLE `gongzuorenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renyuanzhanghao` varchar(200) NOT NULL COMMENT '人员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `renyuanleixing` varchar(200) DEFAULT NULL COMMENT '人员类型',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `renyuanzhanghao` (`renyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='工作人员';

/*Data for the table `gongzuorenyuan` */

insert  into `gongzuorenyuan`(`id`,`addtime`,`renyuanzhanghao`,`mima`,`renyuanxingming`,`xingbie`,`nianling`,`renyuanleixing`,`zhaopian`,`shoujihao`,`youxiang`) values (21,'2021-04-16 15:10:06','工作人员1','123456','人员姓名1','男',1,'工作人员','http://localhost:8080/ssmvr18o/upload/gongzuorenyuan_zhaopian1.jpg','13823888881','773890001@qq.com'),(22,'2021-04-16 15:10:06','工作人员2','123456','人员姓名2','男',2,'工作人员','http://localhost:8080/ssmvr18o/upload/gongzuorenyuan_zhaopian2.jpg','13823888882','773890002@qq.com'),(23,'2021-04-16 15:10:06','工作人员3','123456','人员姓名3','男',3,'工作人员','http://localhost:8080/ssmvr18o/upload/gongzuorenyuan_zhaopian3.jpg','13823888883','773890003@qq.com'),(25,'2021-04-16 15:10:06','工作人员5','123456','人员姓名5','男',5,'工作人员','http://localhost:8080/ssmvr18o/upload/gongzuorenyuan_zhaopian5.jpg','13823888885','773890005@qq.com'),(26,'2021-04-16 15:10:06','工作人员6','123456','人员姓名6','男',6,'工作人员','http://localhost:8080/ssmvr18o/upload/gongzuorenyuan_zhaopian6.jpg','13823888886','773890006@qq.com');

/*Table structure for table `jianchajianyanxiangmu` */

DROP TABLE IF EXISTS `jianchajianyanxiangmu`;

CREATE TABLE `jianchajianyanxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianchajianyanxiangmu` varchar(200) DEFAULT NULL COMMENT '检查检验项目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='检查检验项目';

/*Data for the table `jianchajianyanxiangmu` */

insert  into `jianchajianyanxiangmu`(`id`,`addtime`,`jianchajianyanxiangmu`) values (51,'2021-04-16 15:10:06','检查检验项目1'),(52,'2021-04-16 15:10:06','检查检验项目2'),(53,'2021-04-16 15:10:06','检查检验项目3'),(55,'2021-04-16 15:10:06','检查检验项目5'),(56,'2021-04-16 15:10:06','检查检验项目6');

/*Table structure for table `laorendangan` */

DROP TABLE IF EXISTS `laorendangan`;

CREATE TABLE `laorendangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) NOT NULL COMMENT '档案编号',
  `laorenzhanghao` varchar(200) NOT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `shentizhuangkuang` varchar(200) NOT NULL COMMENT '身体状况',
  `shengao` varchar(200) NOT NULL COMMENT '身高',
  `tizhong` varchar(200) NOT NULL COMMENT '体重',
  `laorendangqianzhuangtai` varchar(200) DEFAULT NULL COMMENT '老人当前状态',
  `jiwangbingshi` longtext COMMENT '既往病史',
  `jinjilianxirenxingming` varchar(200) NOT NULL COMMENT '紧急联系人姓名',
  `jinjilianxirenhaoma` varchar(200) DEFAULT NULL COMMENT '紧急联系人号码',
  `jinjilianxirenguanxi` varchar(200) DEFAULT NULL COMMENT '紧急联系人关系',
  `jujiayanglaofuwufanwei` varchar(200) DEFAULT NULL COMMENT '居家养老服务范围',
  `dangangengxinriqi` date DEFAULT NULL COMMENT '档案更新日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618578867659 DEFAULT CHARSET=utf8 COMMENT='老人档案';

/*Data for the table `laorendangan` */

insert  into `laorendangan`(`id`,`addtime`,`danganbianhao`,`laorenzhanghao`,`laorenxingming`,`laorenxingbie`,`laorennianling`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`shentizhuangkuang`,`shengao`,`tizhong`,`laorendangqianzhuangtai`,`jiwangbingshi`,`jinjilianxirenxingming`,`jinjilianxirenhaoma`,`jinjilianxirenguanxi`,`jujiayanglaofuwufanwei`,`dangangengxinriqi`,`userid`) values (31,'2021-04-16 15:10:06','档案编号1','老人账号1','老人姓名1','男','老人年龄1','http://localhost:8080/ssmvr18o/upload/laorendangan_laorenzhaopian1.jpg','联系电话1','联系地址1','良好','身高1','体重1','在家','既往病史1','紧急联系人姓名1','13823888881','紧急联系人关系1','居家养老服务范围1','2021-04-16',1),(32,'2021-04-16 15:10:06','档案编号2','老人账号2','老人姓名2','男','老人年龄2','http://localhost:8080/ssmvr18o/upload/laorendangan_laorenzhaopian2.jpg','联系电话2','联系地址2','良好','身高2','体重2','在家','既往病史2','紧急联系人姓名2','13823888882','紧急联系人关系2','居家养老服务范围2','2021-04-16',2),(33,'2021-04-16 15:10:06','档案编号3','老人账号3','老人姓名3','男','老人年龄3','http://localhost:8080/ssmvr18o/upload/laorendangan_laorenzhaopian3.jpg','联系电话3','联系地址3','良好','身高3','体重3','在家','既往病史3','紧急联系人姓名3','13823888883','紧急联系人关系3','居家养老服务范围3','2021-04-16',3),(34,'2021-04-16 15:10:06','档案编号4','老人账号4','老人姓名4','男','老人年龄4','http://localhost:8080/ssmvr18o/upload/laorendangan_laorenzhaopian4.jpg','联系电话4','联系地址4','良好','身高4','体重4','在家','既往病史4','紧急联系人姓名4','13823888884','紧急联系人关系4','居家养老服务范围4','2021-04-16',4),(35,'2021-04-16 15:10:06','档案编号5','老人账号5','老人姓名5','男','老人年龄5','http://localhost:8080/ssmvr18o/upload/laorendangan_laorenzhaopian5.jpg','联系电话5','联系地址5','良好','身高5','体重5','在家','既往病史5','紧急联系人姓名5','13823888885','紧急联系人关系5','居家养老服务范围5','2021-04-16',5),(36,'2021-04-16 15:10:06','档案编号6','老人账号6','老人姓名6','男','老人年龄6','http://localhost:8080/ssmvr18o/upload/laorendangan_laorenzhaopian6.jpg','联系电话6','联系地址6','良好','身高6','体重6','在家','既往病史6','紧急联系人姓名6','13823888886','紧急联系人关系6','居家养老服务范围6','2021-04-16',6),(1618578867658,'2021-04-16 21:14:27','1618578832733','老人账号1','老人姓名1','男','100','http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian1.jpg','13823888881','联系地址1','良好','155','48','在家','测试','11','13800138055','cs','cs','2021-04-16',1);

/*Table structure for table `laorenzhanghao` */

DROP TABLE IF EXISTS `laorenzhanghao`;

CREATE TABLE `laorenzhanghao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) NOT NULL COMMENT '老人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` int(11) NOT NULL COMMENT '老人年龄',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='老人账号';

/*Data for the table `laorenzhanghao` */

insert  into `laorenzhanghao`(`id`,`addtime`,`laorenzhanghao`,`mima`,`laorenxingming`,`laorenxingbie`,`laorennianling`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`userid`) values (11,'2021-04-16 15:10:06','老人账号1','123456','老人姓名1','女',100,'http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian1.jpg','13823888881','联系地址1',1),(12,'2021-04-16 15:10:06','老人账号2','123456','老人姓名2','男',2,'http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian2.jpg','13823888882','联系地址2',2),(13,'2021-04-16 15:10:06','老人账号3','123456','老人姓名3','男',3,'http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian3.jpg','13823888883','联系地址3',3),(14,'2021-04-16 15:10:06','老人账号4','123456','老人姓名4','男',4,'http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian4.jpg','13823888884','联系地址4',4),(15,'2021-04-16 15:10:06','老人账号5','123456','老人姓名5','男',5,'http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian5.jpg','13823888885','联系地址5',5);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618579087147 DEFAULT CHARSET=utf8 COMMENT='通告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (151,'2021-04-16 15:10:07','标题1','简介1','http://localhost:8080/ssmvr18o/upload/news_picture1.jpg','内容1'),(152,'2021-04-16 15:10:07','标题2','简介2','http://localhost:8080/ssmvr18o/upload/news_picture2.jpg','内容2'),(153,'2021-04-16 15:10:07','标题3','简介3','http://localhost:8080/ssmvr18o/upload/news_picture3.jpg','内容3'),(154,'2021-04-16 15:10:07','标题4','简介4','http://localhost:8080/ssmvr18o/upload/news_picture4.jpg','内容4'),(156,'2021-04-16 15:10:07','标题6','简介6','http://localhost:8080/ssmvr18o/upload/news_picture6.jpg','内容6'),(1618579087146,'2021-04-16 21:18:06','测试','测试','http://localhost:8080/ssmvr18o/upload/1618579079950.jpg','<h1>测试</h1>');

/*Table structure for table `shenghuofuwu` */

DROP TABLE IF EXISTS `shenghuofuwu`;

CREATE TABLE `shenghuofuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `fuwumude` varchar(200) DEFAULT NULL COMMENT '服务目的',
  `shenghuoyongpinxuqiu` varchar(200) DEFAULT NULL COMMENT '生活用品需求',
  `yaopinxuqiu` varchar(200) DEFAULT NULL COMMENT '药品需求',
  `shipinxuqiu` varchar(200) DEFAULT NULL COMMENT '食品需求',
  `beizhu` longtext COMMENT '备注',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='生活服务';

/*Data for the table `shenghuofuwu` */

insert  into `shenghuofuwu`(`id`,`addtime`,`laorenzhanghao`,`laorenxingming`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`fuwumude`,`shenghuoyongpinxuqiu`,`yaopinxuqiu`,`shipinxuqiu`,`beizhu`,`xiadanshijian`,`userid`) values (91,'2021-04-16 15:10:06','老人账号1','老人姓名1','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian1.jpg','联系电话1','联系地址1','服务目的1','生活用品需求1','药品需求1','食品需求1','备注1','2021-04-16 15:10:06',1),(92,'2021-04-16 15:10:06','老人账号2','老人姓名2','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian2.jpg','联系电话2','联系地址2','服务目的2','生活用品需求2','药品需求2','食品需求2','备注2','2021-04-16 15:10:06',2),(93,'2021-04-16 15:10:06','老人账号3','老人姓名3','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian3.jpg','联系电话3','联系地址3','服务目的3','生活用品需求3','药品需求3','食品需求3','备注3','2021-04-16 15:10:06',3),(94,'2021-04-16 15:10:06','老人账号4','老人姓名4','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian4.jpg','联系电话4','联系地址4','服务目的4','生活用品需求4','药品需求4','食品需求4','备注4','2021-04-16 15:10:06',4),(95,'2021-04-16 15:10:06','老人账号5','老人姓名5','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian5.jpg','联系电话5','联系地址5','服务目的5','生活用品需求5','药品需求5','食品需求5','备注5','2021-04-16 15:10:06',5),(96,'2021-04-16 15:10:06','老人账号6','老人姓名6','http://localhost:8080/ssmvr18o/upload/shenghuofuwu_laorenzhaopian6.jpg','联系电话6','联系地址6','服务目的6','生活用品需求6','药品需求6','食品需求6','备注6','2021-04-16 15:10:06',6);

/*Table structure for table `shenghuoyongpinxinxi` */

DROP TABLE IF EXISTS `shenghuoyongpinxinxi`;

CREATE TABLE `shenghuoyongpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenghuoyongpin` varchar(200) DEFAULT NULL COMMENT '生活用品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='生活用品信息';

/*Data for the table `shenghuoyongpinxinxi` */

insert  into `shenghuoyongpinxinxi`(`id`,`addtime`,`shenghuoyongpin`) values (111,'2021-04-16 15:10:06','生活用品1'),(112,'2021-04-16 15:10:06','生活用品2'),(113,'2021-04-16 15:10:06','生活用品3'),(114,'2021-04-16 15:10:06','生活用品4'),(115,'2021-04-16 15:10:06','生活用品5'),(116,'2021-04-16 15:10:06','生活用品6');

/*Table structure for table `shiwuxinxi` */

DROP TABLE IF EXISTS `shiwuxinxi`;

CREATE TABLE `shiwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwu` varchar(200) DEFAULT NULL COMMENT '食物',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618579057899 DEFAULT CHARSET=utf8 COMMENT='食物信息';

/*Data for the table `shiwuxinxi` */

insert  into `shiwuxinxi`(`id`,`addtime`,`shiwu`) values (131,'2021-04-16 15:10:06','食物1'),(132,'2021-04-16 15:10:06','食物2'),(133,'2021-04-16 15:10:06','食物3'),(134,'2021-04-16 15:10:06','食物4'),(135,'2021-04-16 15:10:06','食物5'),(136,'2021-04-16 15:10:06','食物6'),(1618579057898,'2021-04-16 21:17:37','测试');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'老人账号1','laorenzhanghao','老人账号','opdnah1l91wepnbpwum9l6zos9vcsyfh','2021-04-16 15:36:28','2021-04-16 22:19:43'),(2,1,'abo','users','管理员','1xkic9xe4rp5lbt6d1z3ya9pw9gh1nsc','2021-04-16 21:13:34','2021-04-16 22:13:35'),(3,21,'工作人员1','gongzuorenyuan','工作人员','wl5s4z2q8c9ilt7rng595u8crosz4f2g','2021-04-16 21:18:35','2021-04-16 22:18:35');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 15:10:07');

/*Table structure for table `weixiufuwu` */

DROP TABLE IF EXISTS `weixiufuwu`;

CREATE TABLE `weixiufuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiufuwu` varchar(200) DEFAULT NULL COMMENT '维修服务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='维修服务';

/*Data for the table `weixiufuwu` */

insert  into `weixiufuwu`(`id`,`addtime`,`weixiufuwu`) values (61,'2021-04-16 15:10:06','维修服务1'),(62,'2021-04-16 15:10:06','维修服务2'),(63,'2021-04-16 15:10:06','维修服务3'),(64,'2021-04-16 15:10:06','维修服务40'),(65,'2021-04-16 15:10:06','维修服务5'),(66,'2021-04-16 15:10:06','维修服务6');

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopin` varchar(200) DEFAULT NULL COMMENT '药品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618579049029 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopin`) values (121,'2021-04-16 15:10:06','药品1'),(122,'2021-04-16 15:10:06','药品2'),(123,'2021-04-16 15:10:06','药品3'),(124,'2021-04-16 15:10:06','药品4'),(125,'2021-04-16 15:10:06','药品5'),(1618579049028,'2021-04-16 21:17:28','测试');

/*Table structure for table `zhuanzhenxinxi` */

DROP TABLE IF EXISTS `zhuanzhenxinxi`;

CREATE TABLE `zhuanzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) NOT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `zhuanzhenyuanyin` longtext COMMENT '转诊原因',
  `zhuyaoxianbingshi` longtext COMMENT '主要现病史',
  `jiwangbingshi` longtext COMMENT '既往病史',
  `bingli` varchar(200) DEFAULT NULL COMMENT '病例',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yuanyiyuan` varchar(200) DEFAULT NULL COMMENT '原医院',
  `xianyiyuan` varchar(200) DEFAULT NULL COMMENT '现医院',
  `zhuanzhenyiyuan` varchar(200) DEFAULT NULL COMMENT '转诊医院',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618578914465 DEFAULT CHARSET=utf8 COMMENT='转诊信息';

/*Data for the table `zhuanzhenxinxi` */

insert  into `zhuanzhenxinxi`(`id`,`addtime`,`laorenzhanghao`,`laorenxingming`,`laorenxingbie`,`laorennianling`,`laorenzhaopian`,`lianxidianhua`,`lianxidizhi`,`zhuanzhenyuanyin`,`zhuyaoxianbingshi`,`jiwangbingshi`,`bingli`,`riqi`,`yuanyiyuan`,`xianyiyuan`,`zhuanzhenyiyuan`,`userid`) values (81,'2021-04-16 15:10:06','老人账号1','老人姓名1','男','老人年龄1','http://localhost:8080/ssmvr18o/upload/zhuanzhenxinxi_laorenzhaopian1.jpg','联系电话1','联系地址1','转诊原因1','主要现病史1','既往病史1','','2021-04-16','原医院1','现医院1','转诊医院1',1),(82,'2021-04-16 15:10:06','老人账号2','老人姓名2','男','老人年龄2','http://localhost:8080/ssmvr18o/upload/zhuanzhenxinxi_laorenzhaopian2.jpg','联系电话2','联系地址2','转诊原因2','主要现病史2','既往病史2','','2021-04-16','原医院2','现医院2','转诊医院2',2),(83,'2021-04-16 15:10:06','老人账号3','老人姓名3','男','老人年龄3','http://localhost:8080/ssmvr18o/upload/zhuanzhenxinxi_laorenzhaopian3.jpg','联系电话3','联系地址3','转诊原因3','主要现病史3','既往病史3','','2021-04-16','原医院3','现医院3','转诊医院3',3),(84,'2021-04-16 15:10:06','老人账号4','老人姓名4','男','老人年龄4','http://localhost:8080/ssmvr18o/upload/zhuanzhenxinxi_laorenzhaopian4.jpg','联系电话4','联系地址4','转诊原因4','主要现病史4','既往病史4','','2021-04-16','原医院4','现医院4','转诊医院4',4),(85,'2021-04-16 15:10:06','老人账号5','老人姓名5','男','老人年龄5','http://localhost:8080/ssmvr18o/upload/zhuanzhenxinxi_laorenzhaopian5.jpg','联系电话5','联系地址5','转诊原因5','主要现病史5','既往病史5','','2021-04-16','原医院5','现医院5','转诊医院5',5),(86,'2021-04-16 15:10:06','老人账号6','老人姓名6','男','老人年龄6','http://localhost:8080/ssmvr18o/upload/zhuanzhenxinxi_laorenzhaopian6.jpg','联系电话6','联系地址6','转诊原因6','主要现病史6','既往病史6','','2021-04-16','原医院6','现医院6','转诊医院6',6),(1618578914464,'2021-04-16 21:15:13','老人账号1','老人姓名1','男','100','http://localhost:8080/ssmvr18o/upload/laorenzhanghao_laorenzhaopian1.jpg','13823888881','联系地址1','测试','测试','测试','http://localhost:8080/ssmvr18o/upload/1618578904291.docx','2021-04-16','测试','测试','测试',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
