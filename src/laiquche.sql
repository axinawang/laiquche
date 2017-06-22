DROP DATABASE laiquche;
CREATE DATABASE IF NOT EXISTS laiquche CHARACTER SET 'utf8';  
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
  `password` varchar(32) DEFAULT NULL,
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

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(32) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



		
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

INSERT INTO `brand`(`brand_name`,`is_hot`,`brand_image`) VALUES
 ('本田',1,'brand/bentian.png'),('现代',1,'brand/xiandai.png'),('别克',1,'brand/bieke.png'),('大众',0,'brand/bentian.png'),
('丰田',1,'brand/bentian.png'),('标致',1,'brand/bentian.png'),('雷克萨斯',1,'brand/bentian.png'),('讴歌',0,'brand/bentian.png'),
('宝马',1,'brand/bentian.png'),('奥迪',1,'brand/bentian.png'),('法拉利',1,'brand/bentian.png'),('保时捷',0,'brand/bentian.png'),
('玛莎拉蒂',1,'brand/bentian.png'),('福特',1,'brand/bentian.png'),('雪佛兰',1,'brand/bentian.png'),('jeep',0,'brand/bentian.png');

UNLOCK TABLES;

DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `model_id` int  NOT NULL auto_increment,
  `model_name` varchar(20) DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0,
`model_image` varchar(200) DEFAULT NULL,
  `description` text,
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
`series_image` varchar(200) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `series` WRITE;

INSERT INTO `series`(`series_name`,`is_hot`) VALUES ('本田凌派',1),('本田缤智',1),('现代领动',1),('现代朗动',1),('现代悦纳',1),('现代ix35',1),('现代名图',1),('别克英朗',1),('别克威朗',1),('别克君威',1);

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
`brand_id` int,
`model_id` int,
`series_id` int,
  PRIMARY KEY (`car_id`),
  KEY `sfk_0001` (`brand_id`),
  CONSTRAINT `sfk_0001` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  KEY `sfk_0002` (`model_id`),
  CONSTRAINT `sfk_0002` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  KEY `sfk_0003` (`series_id`),
  CONSTRAINT `sfk_0003` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `car` WRITE;

INSERT INTO `car` VALUES 
('1','2016款 广汽本田凌派 1.8L CVT舒适版','2015-11-02',1,0,124800,12480,10988,3988,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,1,1),
('2','2016款 广汽本田凌派 1.8L CVT豪华版','2015-11-02',1,0,134800,13480,11888,4366,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,1,1),
('3','2016款 广汽本田凌派 1.8L CVT领先版','2015-11-02',1,0,139800,13980,12388,4488,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,1,1),
('4','2017款 广汽本田缤智 1.5L CVT两驱舒适版','2015-11-02',1,0,136800,13680,12088,4388,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,2,2),
('5','2017款 广汽本田缤智 1.8L CVT两驱精英版','2015-11-02',1,0,146800,14680,12988,4688,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,2,2),
('6','2017款 广汽本田缤智 1.8L CVT两驱先锋版','2015-11-02',1,0,153800,15380,13588,4988,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,2,2),
('7','2017款 广汽本田缤智 1.8L CVT两驱豪华版','2015-11-02',1,0,163800,16380,14488,5288,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',1,2,2),
('8','2016款 北京现代领动 1.6L CVT手动智炫青春型','2015-11-02',1,0,99800,9980,8800,3188,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,3),
('9','2016款 北京现代领动 1.6L CVT手动智炫活力型','2015-11-02',1,0,109800,10980,9666,3518,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,3),
('10','2016款 北京现代朗动 1.6L 自动智能型','2015-11-02',1,0,115800,11580,10188,3699,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,4),
('11','2016款 北京现代朗动 1.6L 自动尊贵型','2015-11-02',1,0,115800,11580,10188,3699,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,4),
('12','2016款 北京现代朗动 1.6L 自动尊贵型','2015-11-02',1,0,127800,12780,11258,4088,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,4),
('13','2016款 北京现代悦纳 1.4L 手动青春GS','2015-11-02',1,0,72800,7280,6666,2388,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,5),
('14','2016款 北京现代悦纳 1.4L 手动酷炫版GLS','2015-11-02',1,0,77800,7780,6888,2488,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,5),
('15','2016款 北京现代悦纳 1.4L 手动炫酷版GLS','2015-11-02',1,0,87800,8780,7766,2818,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,5),
('16','2016款 北京现代悦纳 1.4L 自动活力版SPORT','2015-11-02',1,0,90800,9080,7999,2988,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,5),
('17','2015款 北京现代ix35 2.0L 手动两驱舒适型','2015-11-02',1,0,149800,14980,13188,4788,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,6),
('18','2015款 北京现代ix35 2.0L 自动两驱舒适型','2015-11-02',1,0,163800,16380,14466,5266,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,6),
('19','2015款 北京现代ix35 2.0L 自动两驱智能型','2015-11-02',1,0,176800,17680,15588,5688,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,6),
('20','2017款 北京现代名图 1.8L 手动舒适型GL','2015-11-02',1,0,129800,12980,11488,4188,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,7),
('21','2017款 北京现代名图 1.8L 自动智能型GLS','2015-11-02',1,0,149800,14980,13188,4788,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,7),
('22','2016款 北京现代名图 1.8L 手动舒适型GL','2015-11-02',1,0,129800,12980,11488,4188,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',2,2,7),
('23','2017款 别克英朗 15N自动精英版','2015-11-02',1,0,126900,12690,11888,4088,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',3,2,8),
('24','2017款 别克威朗 15S自动进取版','2015-11-02',1,0,146900,14690,12888,4698,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',3,2,9),
('25','2017款 别克威朗 15S自动领先版','2015-11-02',1,0,154900,15490,13688,4958,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',3,2,9),
('26','2015款 别克君威 1.6T领先技术版','2015-11-02',1,0,189900,18990,16788,6066,'含购置税首保','car/primaryexample.png','car/hot/example.jpg','三厢',4000,2000,1700,'2.5L 200马力 L4','CVT无级变速','前置前驱','汽油','6.1L/100km(工信部)','月光银/内饰浅','在中国，如果能将一个汽车细分市场与一个车型关联起来，恐怕只有一款车型能担当此任，那就是别克GL8，在国内别克GL8几乎是商务车的别称。能做到如此成功除了出道早之外，与别克GL8过硬的汽车品质也是分不开的。',3,2,10);
UNLOCK TABLES;

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `city` WRITE;

INSERT INTO `city`(`city_id` ,`name`) VALUES ('1','绍兴');
INSERT INTO `city`(`city_id` ,`name`) VALUES ('2','杭州');
UNLOCK TABLES;

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `shop_id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `tel` varchar(40) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `city_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `cityfk` (`city_id`),
  CONSTRAINT `cityfk` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `shop` WRITE;

INSERT INTO `shop`(`shop_id` ,`name`,`city`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('md1','绍兴4s1','shaoxing','addr','tel','image','des','1');
INSERT INTO `shop`(`shop_id` ,`name`,`city`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('md2','绍兴4s2','shaoxing','addr','tel','image','des','1');
INSERT INTO `shop`(`shop_id` ,`name`,`city`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('md3','杭州4s1','shaoxing','addr','tel','image','des','2');
INSERT INTO `shop`(`shop_id` ,`name`,`city`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('md4','杭州4s2','shaoxing','addr','tel','image','des','2');
UNLOCK TABLES;



DROP TABLE IF EXISTS `appointment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_info` (
  `appointment_id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `arrive_time` date DEFAULT NULL,
  `selected_city` varchar(40) DEFAULT NULL,
  `shop_id` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` timestamp,
  `admin_id`	varchar(32) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `adminfk` (`admin_id`),
  CONSTRAINT `adminfk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  KEY `shopfk` (`shop_id`),
  CONSTRAINT `shopfk` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `appointment_info` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `intent_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intent_series` (
  `intent_series_id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `brand_name` varchar(20) DEFAULT NULL,  
  `series_name` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `admin_id`	varchar(32) DEFAULT NULL,
  PRIMARY KEY (`intent_series_id`),
KEY `intfk_0001` (`admin_id`),
  CONSTRAINT `intfk_0001` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
