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
INSERT INTO `user` VALUES ('1','ccc','ccc','aaa','bbb@store.com','15723689921','2015-11-04','男',0,'9782f3e837ff422b9aee8b6381ccf927bdd9d2ced10d48f4ba4b9f187edf7738'),
('2','bb','bb','张三','bbb@store.com','15723689921','1990-02-01','男',0,'1258e96181a9457987928954825189000bae305094a042d6bd9d2d35674684e6'),
('3','cc','cc','张三','bbb@store.com','15723689921','2015-11-03','男',0,'19f100aa81184c03951c4b840a725b6a98097aa1106a4a38ba1c29f1a496c231'),
('4','bbb','bbb','老王','bbb@store.com','15712344823','2000-02-01','男',0,'71a3a933353347a4bcacff699e6baa9c950a02f6b84e4f6fb8404ca06febfd6f'),
('5','aaa','aaa','小王','aaa@store.com','15712344823','2000-02-01','男',1,NULL);
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

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1','admin','de43e169358552cc24bbd1564e7dc586','小王','ynlqcba@163.com','15757818156','2000-02-01','男',1,NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
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
`date` timestamp,   -- 更新时间
  `car_id` varchar(32)  NOT NULL,
  `car_name` varchar(100) DEFAULT NULL,
  `car_date` datetime DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0,
`car_flag` int(11) DEFAULT 0,
`guide_price` double DEFAULT NULL,
`deposit` double DEFAULT NULL,
`down_payment` double DEFAULT NULL,
`month_payment` double DEFAULT NULL,
`pay_description` text DEFAULT NULL,
`car_image` text DEFAULT NULL,
`hot_image` varchar(200) DEFAULT NULL,
`whole_image` varchar(200) DEFAULT NULL,   
`whole_title` varchar(200) DEFAULT NULL,       
`whole_description` text DEFAULT NULL,
`part_image1` varchar(200) DEFAULT NULL,
`part_title1` varchar(200) DEFAULT NULL,  
`part_description1` text DEFAULT NULL,
`part_image2` varchar(200) DEFAULT NULL,
`part_title2` varchar(200) DEFAULT NULL,
`part_description2` text DEFAULT NULL,
`part_image3` varchar(200) DEFAULT NULL,
`part_title3` varchar(200) DEFAULT NULL,
`part_description3` text DEFAULT NULL,
`part_image4` varchar(200) DEFAULT NULL,
`part_title4` varchar(200) DEFAULT NULL,
`part_description4` text DEFAULT NULL,
									-- 基本参数
`length` int(11) DEFAULT 0,						   -- 长	
`width` int(11) DEFAULT 0,						   -- 宽
`height` int(11) DEFAULT 0,						   -- 高
`fadongji` varchar(100) DEFAULT NULL,					   -- 发动机
`biansuxiang` varchar(100) DEFAULT NULL,				   -- 变速箱
`zongheyouhao` varchar(100) DEFAULT NULL,				   -- 综合油耗
`cheliangpeise` varchar(100) DEFAULT NULL,                                 -- 车辆配色
									-- 车身配置
`zhouju` int DEFAULT NULL,                                                       -- 轴距(mm)                         
                                                                                 -- 2670
`qianlunju` int DEFAULT NULL,                                                    -- 前轮距(mm)                       
                                                                                 -- 1560
`houlunju`  int DEFAULT NULL,                                                    -- 后轮距(mm)                       
                                                                                 -- 1561
 `zuixiaolidijianxi` int DEFAULT NULL,                                           -- 最小离地间隙(mm)                 
                                                                                 -- -
 `zhengchezhiliang` int DEFAULT NULL,                                            -- 整车质量(kg)                     
                                                                                 -- 1446
  `cheshenjiegou` varchar(100) DEFAULT NULL,                                     -- 车身结构                         
                                                                                 -- 两厢车
  `chemenshu` int DEFAULT NULL,                                                  -- 车门数(个)                       
                                                                                 -- 6
   `zuoweishu` int DEFAULT NULL,                                                 -- 座位数(个)                       
                                                                                 -- 5
    `youxiangrongji` int DEFAULT NULL,                                           -- 油箱容积(L)                      
                                                                                 -- 48
    `xinglixiangrongji` int DEFAULT NULL,                                        -- 行李厢容积(L)                    
                                                                                 -- -
                                                                             
                                                                             -- 发动机配置
                                                                             
     `fadongjixinghao` varchar(100) DEFAULT NULL,                                -- 发动机型号                       
                                                                                 -- B38A15A
      `pailiang` int DEFAULT NULL,                                               -- 排量(mL)                         
                                                                                 -- 1499
	`jinqixingshi` varchar(100) DEFAULT NULL,                                    -- 进气形式							
                                                                                 -- -
	`qigangpailiexingshi` varchar(10) DEFAULT NULL,                              -- 气缸排列形式						
                                                                                 -- L
	`qigangshu` int DEFAULT NULL,                                                -- 气缸数(个)						
                                                                                 -- 3
	`meigangqimenshu` int DEFAULT NULL,                                          -- 每缸气门数(个)					
                                                                                 -- 4
	`gangjing` double DEFAULT NULL,                                              -- 缸径(mm)   						
                                                                                 -- 82.00
	`xingcheng` double DEFAULT NULL,                                             -- 行程(mm)							
                                                                                 -- -
	`zuidamali` int DEFAULT NULL,                                                -- 最大马力(Ps)						
                                                                                 -- 136
	`zuidagonglv` int DEFAULT NULL,                                              -- 最大功率(kW)						
                                                                                 -- 100
	`zuidagonglvzhuansu` int DEFAULT NULL,                                       -- 最大功率转速(rpm)				
                                                                                 -- 4500-6000
	`zuidaniuju` int DEFAULT NULL,                                               -- 最大扭矩(N・m)					
                                                                                 -- 220
	`zuidaniujuzhuansu` int DEFAULT NULL,                                        -- 最大扭矩转速(rpm)				
                                                                                 -- 1250
      `fadongjiteyoujishu` varchar(100) DEFAULT NULL,                            -- 发动机特有技术                   
                                                                                 -- -
	`ranliaoxingshi` varchar(100) DEFAULT NULL,                                  -- 燃料形式							
                                                                                 -- -
	`ranyoubiaohao` varchar(100) DEFAULT NULL,                                   -- 燃油标号							
                                                                                 -- -
	`gongyoufangshi` varchar(100) DEFAULT NULL,                                  -- 供油方式							
                                                                                 -- 直喷
	`ganggaicailiao` varchar(100) DEFAULT NULL,	                                 -- 缸盖材料							
                                                                                 -- 铝
	`gangticailiao` varchar(100) DEFAULT NULL,                                   -- 缸体材料							
                                                                                 -- 铝
	`huanbaobiaozhun` varchar(100) DEFAULT NULL,                                 -- 环保标准							
                                                                                 -- -
                                                                             
                                                                             -- 变速箱配置
                                                                             
	`dangweigeshu` int DEFAULT NULL,                                             -- 挡位个数							
                                                                                 -- -
	`biansuxiangleixing` varchar(100) DEFAULT NULL,                              -- 变速箱类型						
                                                                                 -- 手自一体变速箱(AT)
                                                                             
                                                                             -- 底盘转向
                                                                             
	`qudongfangshi` varchar(100) DEFAULT NULL,                                   -- 驱动方式							
                                                                                 -- 前置前驱
	`siquxingshi` varchar(100) DEFAULT NULL,                                     -- 四驱形式							
                                                                                 -- -
	`zhongyangchasuqijiegou` varchar(100) DEFAULT NULL,                          -- 中央差速器结构					
                                                                                 -- -
	`qianxuanjialeixing` varchar(100) DEFAULT NULL,                              -- 前悬架类型						
                                                                                 -- 麦弗逊式独立悬架
	`houxuanjialeixing` varchar(100) DEFAULT NULL,                               -- 后悬架类型						
                                                                                 -- -
	`zhulileixing` varchar(100) DEFAULT NULL,                                    -- 助力类型							
                                                                                 -- 电动助力
	`chetijiegou` varchar(100) DEFAULT NULL,                                     -- 车体结构							
                                                                                 -- 承载式
                                                                             
                                                                             -- 车轮制动
                                                                             
	`qianzhidongqileixing` varchar(100) DEFAULT NULL,                            -- 前制动器类型						
                                                                                 -- 通风盘式
	`houzhidongqileixing` varchar(100) DEFAULT NULL,                             -- 后制动器类型						
                                                                                 -- 盘式
	`zhuchezhidongleixing` varchar(100) DEFAULT NULL,                            -- 驻车制动类型						
                                                                                 -- 手刹
	`qianluntaiguige` varchar(100) DEFAULT NULL,                                 -- 前轮胎规格						
                                                                                 -- 225/45 R17
	`houluntaiguige` varchar(100) DEFAULT NULL,		                             -- 后轮胎规格						
                                                                                 -- 225/45 R17
	`beitaiguige` varchar(100) DEFAULT NULL,                                     -- 备胎规格							
                                                                                 -- 无
                                                                             
                                                                             -- 安全装备
                                                                             
	`zhujiashizuoanquanqinang` int DEFAULT 0,                                    -- 主/副驾驶座安全气囊				
	`fujiashizuoanquanqinang` int DEFAULT 0,                                     -- 主● / 副●						
	`qianpaiceqinang`  int DEFAULT 0,                                            -- 前/后排侧气囊					
	`houpaiceqinang` int DEFAULT 0,                                              -- 前● / 后-						
	`qianpaitoubuqinang` int DEFAULT 0,                                          -- 前/后排头部气囊(气帘)			
	`houpaitoubuqinang` int DEFAULT 0,                                           -- 前● / 后●						
	`xibuqinang`  int DEFAULT 0,                                                 -- 膝部气囊							
                                                                                 -- -
	`taiyajiancezhuangzhi`  int DEFAULT 0,	                                     -- 胎压监测装置						
                                                                                 -- ●
	`lingtaiyajixuxingshi` int DEFAULT 0,	                                     -- 零胎压继续行驶					
                                                                                 -- ●
	`anquandaiweijitishi`  int DEFAULT 0,                                        -- 安全带未系提示					
                                                                                 -- ●
	`isofixertongzuoyijiekou`  int DEFAULT 0,                                    -- ISOFIX儿童座椅接口				
                                                                                 -- ●
	`fadongjidianzifangdao` int DEFAULT 0,                                       -- 发动机电子防盗					
                                                                                 -- ●
	`cheneizhongkongsuo` int DEFAULT 0,                                          -- 车内中控锁						
                                                                                 -- ●
	`yaokongyaoshi` int DEFAULT 0,                                               -- 遥控钥匙							
                                                                                 -- ●
	`wuyaoshiqidongxitong` int DEFAULT 0,                                        -- 无钥匙启动系统					
                                                                                 -- ●
	`wuyaoshijinruxitong`  int DEFAULT 0,                                        -- 无钥匙进入系统					
                                                                                 -- ○
                                                                             
                                                                             -- 操控配置
                                                                             
	`absfangbaosi` int DEFAULT 0,                                                -- ABS防抱死						
                                                                                 -- ●
	`zhidonglifenpei` int DEFAULT 0,                                             -- 制动力分配(EBD/CBC等)			
                                                                                 -- ●
	`shachefuzhu` int DEFAULT 0,                                                 -- 刹车辅助(EBA/BAS/BA等)			
                                                                                 -- ●
	`qianyinlikongzhi` int DEFAULT 0,                                            -- 牵引力控制(ASR/TCS/TRC等)		
                                                                                 -- ●
	`cheshenwendingkongzhi` int DEFAULT 0,                                       -- 车身稳定控制(ESC/ESP/DSC等)		
                                                                                 -- ●
	`shangpofuzhu` int DEFAULT 0,                                                -- 上坡辅助							
                                                                                 -- ●
	`zidongzhuche`  int DEFAULT 0,                                               -- 自动驻车							
                                                                                 -- -
	`doupohuanjiang` int DEFAULT 0,                                              -- 陡坡缓降							
                                                                                 -- -
	`kebianxuanjia` int DEFAULT 0,                                               -- 可变悬架							
                                                                                 -- (选装软硬调节)
	`kongqixuanjia` int DEFAULT 0,                                               -- 空气悬架							
                                                                                 -- -
                                                                             
                                                                             -- 外部配置
                                                                             
	`diandongtianchuang` int DEFAULT 0,                                          -- 电动天窗							
                                                                                 -- ●
	`quanjingtianchuang` int DEFAULT 0,                                          -- 全景天窗							
                                                                                 -- ●
	`yundongwaiguantaojian` int DEFAULT 0,                                       -- 运动外观套件						
                                                                                 -- -
	`lvhejinlunquan` int DEFAULT 0,                                              -- 铝合金轮圈						
                                                                                 -- ●
	`diandongxihemen` int DEFAULT 0,                                             -- 电动吸合门						
                                                                                 -- -
	`cehuamen` int DEFAULT 0,                                                    -- 侧滑门							
                                                                                 -- -
	`diandonghoubeixiang` int DEFAULT 0,                                         -- 电动后备厢						
                                                                                 -- -
	`ganyinghoubeixiang` int DEFAULT 0,                                          -- 感应后备厢						
                                                                                 -- -
	`chedingxinglijia` int DEFAULT 0,                                            -- 车顶行李架						
                                                                                 -- ○
                                                                             
                                                                             -- 内部配置
                                                                             
	`zhenpifangxiangpan` int DEFAULT 0,                                          -- 真皮方向盘						
                                                                                 -- ●
	`fangxiangpantiaojie` varchar(100) DEFAULT NULL,	                         -- 方向盘调节						
                                                                                 -- 上下+前后调节
	`fangxiangpandiandongtiaojie` int DEFAULT 0,                                 -- 方向盘电动调节					
                                                                                 -- -
	`duogongnengfangxiangpan` int DEFAULT 0,                                    -- 多功能方向盘						
                                                                                 -- ●
	`fangxiangpanhuandang` int DEFAULT 0,                                        -- 方向盘换挡						
                                                                                 -- -
	`fangxiangpanjiare` int DEFAULT 0,                                           -- 方向盘加热						
                                                                                 -- -
	`dingsuxunhang` int DEFAULT 0,                                               -- 定速巡航							
                                                                                 -- ●
	`qianzhucheleida` int DEFAULT 0,                                             -- 前/后驻车雷达					
	`houzhucheleida` int DEFAULT 0,	                                             -- 前○ / 后●						
	`daocheshipinyingxiang` int DEFAULT 0,                                       -- 倒车视频影像						
                                                                                 -- ○
	`xingchediannaoxianshiping` int DEFAULT 0,                                   -- 行车电脑显示屏					
                                                                                 -- ●
	`quanyejingyibiaopan` int DEFAULT 0,                                         -- 全液晶仪表盘						
                                                                                 -- -
                                                                             
                                                                             -- 座椅配置
                                                                             
	`zuoyicaizhi` varchar(100) DEFAULT NULL,                                      -- 座椅材质							
                                                                                 -- 皮/织物混搭(选装真皮)
	`zuoyigaoditiaojie` int DEFAULT 0,                                           -- 座椅高低调节						
                                                                                 -- -
	`yaobuzhichengtiaojie` int DEFAULT 0,                                        -- 腰部支撑调节						
                                                                                 -- -
	`jianbuzhichengtiaojie` int DEFAULT 0,	                                     -- 肩部支撑调节						
                                                                                 -- -
	`zhujiashizuodiandongtiaojie` int DEFAULT 0,                                 -- 主/副驾驶座电动调节				
	`fujiashizuodiandongtiaojie` int DEFAULT 0,                                  -- 主● / 副●						
	`houpaizuoyidiandongtiaojie` int DEFAULT 0,                                  -- 后排座椅电动调节					
                                                                                 -- -
	`qianpaizuoyijiare` int DEFAULT 0,                                           -- 前/后排座椅加热					
	`houpaizuoyijiare` int DEFAULT 0,                                            -- 前○ / 后-						
	`qianpaizuoyitongfeng` int DEFAULT 0,	                                     -- 前/后排座椅通风					
	`houpaizuoyitongfeng` int DEFAULT 0,                                         -- -								
                                                                             
                                                                             -- 多媒体配置
                                                                             
	`gpsdaohangxitong` int DEFAULT 0,                                            -- GPS导航系统						
                                                                                 -- ●
	`zhongkongtaicaisedaping`  int DEFAULT 0,                                    -- 中控台彩色大屏					
                                                                                 -- ●
	`lanyachezaidianhua` int DEFAULT 0,                                          -- 蓝牙/车载电话					
                                                                                 -- ●
	`waijieyinyuanjiekou` varchar(100) DEFAULT NULL,                             -- 外接音源接口						
                                                                                 -- USB+AUX
	`duomeitixitong` varchar(100) DEFAULT NULL,                                  -- 多媒体系统						
                                                                                 -- -
	`yangshengqishuliang`	varchar(100) DEFAULT NULL,                           -- 扬声器数量						
                                                                                 -- 10-11喇叭
                                                                             
                                                                             -- 灯光配置
                                                                             
	`jinguangdeng` varchar(100) DEFAULT NULL,                                    -- 近光灯							
                                                                                 -- LED
	`yuanguangdeng` varchar(100) DEFAULT NULL,                                   -- 远光灯							
                                                                                 -- LED
	`rijianxingchedeng` int DEFAULT 0,                                           -- 日间行车灯						
                                                                                 -- ●
	`zishiyingyuanjindeng` int DEFAULT 0,	                                     -- 自适应远近光						
                                                                                 -- ○
	`zidongtoudeng` int DEFAULT 0,                                               -- 自动头灯							
                                                                                 -- ●
	`zhuanxiangfuzhudeng` int DEFAULT 0,                                         -- 转向辅助灯						
                                                                                 -- -
	`zhuangxiangtoudeng` int DEFAULT 0,                                          -- 转向头灯							
                                                                                 -- ○
	`qianwudeng` int DEFAULT 0,                                                  -- 前雾灯							
                                                                                 -- ●
	`dadenggaoduketiao` int DEFAULT 0,                                           -- 大灯高度可调						
                                                                                 -- ●
	`dadengqingxizhuangzhi` int DEFAULT 0,                                       -- 大灯清洗装置						
                                                                                 -- -
                                                                             
                                                                             -- 玻璃/后视镜
                                                                             
	`qiandiandongchechuang` int DEFAULT 0,                                       -- 前/后电动车窗					
	`houdiandongchengchuang` int DEFAULT 0,	                                     -- 前● / 后●						
	`chechuangfangjiashougongneng` int DEFAULT 0,                                -- 车窗防夹手功能					
                                                                                 -- ●
	`houshijingdiandongtiaojie` int DEFAULT 0,                                   -- 后视镜电动调节					
                                                                                 -- ●
	`houshijingjiare` int DEFAULT 0,                                             -- 后视镜加热						
                                                                                 -- ●
	`neihoushijingzidongfangxunmu` int DEFAULT 0,                                -- 内/外后视镜自动防眩目			
	`waihoushijingzidongfangxunmu` int DEFAULT 0,                                -- 内● / 外○						
	`houshijingdiandongzhedie` int DEFAULT 0,                                    -- 后视镜电动折叠					
                                                                                 -- ●
	`zheyangbanhuazhuangjing` int DEFAULT 0,                                     -- 遮阳板化妆镜						
                                                                                 -- ●
	`houyushua` int DEFAULT 0,                                                   -- 后雨刷							
                                                                                 -- ●
	`ganyingyushua` int DEFAULT 0,                                               -- 感应雨刷							
                                                                                 -- ●
                                                                             
                                                                             -- 空调/冰箱
                                                                             
	`kongtiaokongzhifangshi`  varchar(100) DEFAULT NULL,                         -- 空调控制方式						
                                                                                 -- 自动●
	`houpaidulikongtiao` int DEFAULT 0,                                          -- 后排独立空调						
                                                                                 -- -
	`houzuochufengkou` int DEFAULT 0,                                            -- 后座出风口						
                                                                                 -- ●
	`wendufenqukongzhi` int DEFAULT 0,                                           -- 温度分区控制						
                                                                                 -- ●
	`cheneikongqitiaojie` int DEFAULT 0,                                         -- 车内空气调节/花粉过滤			
                                                                                 -- -
	`chezaibingxiang` int DEFAULT 0,                                             -- 车载冰箱							
                                                                                 -- -
                                                                             
                                                                             -- 高科技配置
                                                                             
	`zidongpocheruwei` int DEFAULT 0,                                            -- 自动泊车入位						
                                                                                 -- ○
	`fadongjiqitingjishu` int DEFAULT 0,                                         -- 发动机启停技术					
                                                                                 -- ●
	`bingxianfuzhu` int DEFAULT 0,                                               -- 并线辅助							
                                                                                 -- -
	`chedaopianliyujingxitong` int DEFAULT 0,	                                 -- 车道偏离预警系统					
                                                                                 -- -
	`zhudongshachexitong` int DEFAULT 0,                                         -- 主动刹车/主动安全系统			
                                                                                 -- -
	`zhengtizhudongzhuanxiangxitong` int DEFAULT 0,                              -- 整体主动转向系统					
                                                                                 -- -
	`yeshixitong` int DEFAULT 0,                                                 -- 夜视系统							
                                                                                 -- -
	`zhongkongyejingpingfenpingxianshi` int DEFAULT 0,                           -- 中控液晶屏分屏显示				
                                                                                 -- -
	`zishiyingxunhang` int DEFAULT 0,                                            -- 自适应巡航						
                                                                                 -- -
	`quanjingshexiangtou` int DEFAULT 0,                                         -- 全景摄像头						
                                                                                 -- -
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

INSERT INTO `car`
(`car_id`,
  `car_name` ,
  `car_date` ,
  `is_hot` ,
`car_flag` ,
`guide_price`,
`deposit` ,
`down_payment` ,
`month_payment` ,
`pay_description` ,
`car_image`,
`hot_image`,
`cheshenjiegou`,
`length`,	
`width` ,
`height` ,
`fadongji`,
`biansuxiang`,
`qudongfangshi`,
`ranliaoxingshi`, 
`zongheyouhao`,
`cheliangpeise`,
`description` ,
`brand_id` ,
`model_id` ,
`series_id` )
values 
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

INSERT INTO `shop`(`shop_id` ,`name`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('1','绍兴4s1','addr','tel','image','des','1');
INSERT INTO `shop`(`shop_id` ,`name`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('2','绍兴4s2','addr','tel','image','des','1');
INSERT INTO `shop`(`shop_id` ,`name`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('3','杭州4s1','addr','tel','image','des','2');
INSERT INTO `shop`(`shop_id` ,`name`,`addr`,`tel`,`image`,`des`,`city_id`) VALUES ('4','杭州4s2','addr','tel','image','des','2');
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
  `shop_id` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` timestamp,
  `state` int DEFAULT 0,
  `admin_id`	varchar(32) DEFAULT NULL,
`car_id` varchar(32) DEFAULT NULL,
`user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `adminfk` (`admin_id`),
  CONSTRAINT `adminfk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  KEY `shopfk` (`shop_id`),
  CONSTRAINT `shopfk` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`),
KEY `carfk` (`car_id`),
  CONSTRAINT `carfk` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
KEY `fk_appointment_info_user_id` (`user_id`),
  CONSTRAINT `fk_appointment_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `appointment_info` WRITE;
INSERT INTO `appointment_info`(`appointment_id` ,`name`,`shop_id`,`car_id`,`user_id`) VALUES ('1','绍兴4s1','1','1','1');
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

DROP TABLE IF EXISTS `user_car`;
CREATE TABLE `user_car` (
  `user_car_id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `car_id` varchar(32) DEFAULT NULL,
`date` timestamp,
  PRIMARY KEY (`user_car_id`),
KEY `fk_user_car_user_id` (`user_id`),
  CONSTRAINT `fk_user_car_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`),
KEY `fk_user_car_car_id` (`car_id`),
  CONSTRAINT `fk_user_car_car_id` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_car` WRITE;
INSERT INTO `user_car` (`user_car_id`,`user_id`,`car_id`) VALUES ('1','1','1');
UNLOCK TABLES;

DROP TABLE IF EXISTS `shop_car`;
CREATE TABLE `shop_car` (
  `shop_car_id` varchar(32) NOT NULL,
  `shop_id` varchar(32) DEFAULT NULL,
  `car_id` varchar(32) DEFAULT NULL,
`date` timestamp,
  PRIMARY KEY (`shop_car_id`),
KEY `fk_shop_car_shop_id` (`shop_id`),
  CONSTRAINT `fk_shop_car_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`),
KEY `fk_shop_car_car_id` (`car_id`),
  CONSTRAINT `fk_shop_car_car_id` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `shop_car` WRITE;
INSERT INTO `shop_car` (`shop_car_id`,`shop_id`,`car_id`) VALUES ('1','1','1');
UNLOCK TABLES;


DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_id` varchar(32) NOT NULL,
  `test_int_null` int DEFAULT null,
  `length` int(11) DEFAULT 0,													-- 长
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `test` WRITE;
INSERT INTO `test` (`test_id`)  VALUES ('1');
UNLOCK TABLES;


 desc car;

SELECT zhujiashizuoanquanqinang from car WHERE car_id ='3301EF38EF2E46C88CE0B148CF52A6C1';
select shop.shop_id ,shop.name,shop.addr,shop.tel from shop inner join shop_car where shop.shop_id=shop_car.shop_id and shop_car.car_id=16; 
select count(*) from car where is_hot=1;

