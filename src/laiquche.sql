create database laiquche;
		use laiquche;
		
DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` varchar(32) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('1','手机数码'),('172934bd636d485c98fd2d3d9cccd409','运动户外'),('2','电脑办公'),('3','家具家居'),('4','鞋靴箱包'),('5','图书音像'),('59f56ba6ccb84cb591c66298766b83b5','aaaa'),('6','母婴孕婴'),('afdba41a139b4320a74904485bdb7719','汽车用品');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
		
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` varchar(32) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('373eb242933b4f5ca3bd43503c34668b','ccc','ccc','aaa','bbb@store.com','15723689921','2015-11-04','男',0,'9782f3e837ff422b9aee8b6381ccf927bdd9d2ced10d48f4ba4b9f187edf7738'),('3ca76a75e4f64db2bacd0974acc7c897','bb','bb','张三','bbb@store.com','15723689921','1990-02-01','男',0,'1258e96181a9457987928954825189000bae305094a042d6bd9d2d35674684e6'),('62145f6e66ea4f5cbe7b6f6b954917d3','cc','cc','张三','bbb@store.com','15723689921','2015-11-03','男',0,'19f100aa81184c03951c4b840a725b6a98097aa1106a4a38ba1c29f1a496c231'),('c95b15a864334adab3d5bb6604c6e1fc','bbb','bbb','老王','bbb@store.com','15712344823','2000-02-01','男',0,'71a3a933353347a4bcacff699e6baa9c950a02f6b84e4f6fb8404ca06febfd6f'),('f55b7d3a352a4f0782c910b2c70f1ea4','aaa','aaa','小王','aaa@store.com','15712344823','2000-02-01','男',1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
		
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_id` int  NOT NULL auto_increment,
  `brand_name` varchar(20) DEFAULT NULL,
  `is_hot` int DEFAULT 0,
  `brand_image` varchar(200) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `brand` WRITE;

INSERT INTO `brand`(`brand_name`,`is_hot`,`brand_image`) VALUES ('本田',1,'brand/bentian.png'),('现代',1,'brand/bentian.png'),('别克',1,'brand/bentian.png'),('大众',0,'brand/bentian.png');

UNLOCK TABLES;

DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `model_id` int  NOT NULL auto_increment,
  `model_name` varchar(20) DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `model` WRITE;

INSERT INTO `model`(`model_name`,`is_hot`) VALUES ('微小型车',1),('紧凑型车',1),('中型车',0),('中大型车',0),('SUV',1),('MPV',1),('跑车',0);

UNLOCK TABLES;

DROP TABLE IF EXISTS `series`;
CREATE TABLE `series` (
  `series_id` int  NOT NULL auto_increment,
  `series_name` varchar(20) DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `series` WRITE;

INSERT INTO `series`(`series_name`,`is_hot`) VALUES ('本田凌派',1),('本田缤智',1),('现代领动',0),('现代朗动',0),('现代悦纳',1),('现代ix35',1),('现代名图',0),('别克英朗',0),('别克威朗',0),('别克君威',0);

UNLOCK TABLES;

DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` varchar(32)  NOT NULL,
  `car_name` varchar(100) DEFAULT NULL,
  `car_date` date DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0,
`car_flag` int(11) DEFAULT 0,
`guide_price` double DEFAULT NULL,
`deposit` double DEFAULT NULL,
`down_payment` double DEFAULT NULL,
`month_payment` double DEFAULT NULL,
`pay_description` text DEFAULT NULL,
`car_image` varchar(200) DEFAULT NULL,
`hot_image` varchar(200) DEFAULT NULL,
`body_structure` varchar(100) DEFAULT NULL,
`length` int(11) DEFAULT 0,
`width` int(11) DEFAULT 0,
`height` int(11) DEFAULT 0,
`engine` varchar(100) DEFAULT NULL,
`gearbox` varchar(100) DEFAULT NULL,
`drive_mode` varchar(100) DEFAULT NULL,
`fuel_form` varchar(20) DEFAULT NULL,
`com_fuel_consumption` varchar(100) DEFAULT NULL,
`body_color` varchar(100) DEFAULT NULL,
`description` text DEFAULT NULL,
`brand_id` int
`model_id` int
`series_id` int
  PRIMARY KEY (`car_id`),
  KEY `sfk_0001` (`brand_id`),
  CONSTRAINT `sfk_0001` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  KEY `sfk_0002` (`model_id`),
  CONSTRAINT `sfk_0002` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  KEY `sfk_0003` (`series_id`),
  CONSTRAINT `sfk_0003` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `car` WRITE;

INSERT INTO `car`
(`car_name`,`is_hot`,`brand_id`,`model_id`,`series_id`) VALUES 
('本田凌派',1),('本田缤智',1),('现代领动',0),('现代朗动',0),('现代悦纳',1),('现代ix35',1),('现代名图',0),('别克英朗',0),('别克威朗',0),('别克君威',0);

UNLOCK TABLES;