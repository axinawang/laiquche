package com.ynlqc.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品实体
 * 
 * @author Administrator
 *
 */
public class Car implements Serializable {
	
	/**
	 * `car_id` varchar(32)  NOT NULL,
	  `car_name` varchar(100) DEFAULT NULL,
	  `car_date` datetime DEFAULT NULL,
	  `is_hot` int(11) DEFAULT 0,
	`car_flag` int(11) DEFAULT 0,
	`guide_price` double DEFAULT NULL,
	`deposit` double DEFAULT NULL,
	`down_payment` double DEFAULT NULL,
	`month_payment` double DEFAULT NULL,
	`pay_description` text DEFAULT NULL,
	`car_image` varchar(20000) DEFAULT NULL,
	`hot_image` varchar(200) DEFAULT NULL,
	`whole_image` varchar(200) DEFAULT NULL,          
	`whole_description` text DEFAULT NULL,
	`part_image1` varchar(200) DEFAULT NULL,
	`part_description1` text DEFAULT NULL,
	`part_image2` varchar(200) DEFAULT NULL,
	`part_description2` text DEFAULT NULL,
	`part_image3` varchar(200) DEFAULT NULL,
	`part_description3` text DEFAULT NULL,
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
	                                                                             
		`zuoyipizhi` varchar(100) DEFAULT NULL,                                      -- 座椅材质							
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
	 */
	private String car_id;
	private String car_name;
	private Date car_date;
	private Integer is_hot;// 是否热门 1:热门 0:否
	private Integer car_flag;// 是否下架 1:下架 0:未下架

	private Double guide_price;
	private Double deposit;
	private Double down_payment;
	private Double month_payment;
	private String pay_description;
	private String car_image;
	private String hot_image;
	private String whole_image;//` varchar(200) DEFAULT NULL,          
	private String whole_description;// text DEFAULT NULL,
	private String part_image1;// varchar(200) DEFAULT NULL,
	private String part_description1;// text DEFAULT NULL,
	private String part_image2;// varchar(200) DEFAULT NULL,
	private String part_description2;// text DEFAULT NULL,
	private String part_image3;// varchar(200) DEFAULT NULL,
	private String part_description3;// text DEFAULT NULL,
	private Integer length;
	private Integer width;
	private Integer height;

	private String fadongji;// 发动机
	private String biansuxiang;//变速箱
	private String zongheyouhao;// 综合油耗
	private String cheliangpeise;// 车辆配色
									// 车身配置
	private Integer zhouju;//                                          -- 轴距(mm)    
	private Integer qianlunju;//                                                    -- 前轮距(mm)                       
	private Integer houlunju;//                                                    -- 后轮距(mm)                       
	private Integer zuixiaolidijianxi;//                                           -- 最小离地间隙(mm)                 
	private Integer zhengchezhiliang;//                                            -- 整车质量(kg)                     
	private String cheshenjiegou;//                                     -- 车身结构                         
	private Integer chemenshu;//                                                  -- 车门数(个)                       
	private Integer zuoweishu;//                                                 -- 座位数(个)                       
	private Integer youxiangrongji;//                                           -- 油箱容积(L)                      
	private Integer xinglixiangrongji;//                                        -- 行李厢容积(L)                    
                                                                             ///-- 发动机配置                                                                             
	private String fadongjixinghao;//                                -- 发动机型号                       
	private Integer pailiang;//                                               -- 排量(mL)                         
	private String jinqixingshi;//                                    -- 进气形式							
	private String qigangpailiexingshi;//                              -- 气缸排列形式						
	private Integer qigangshu;//                                                -- 气缸数(个)						
	private Integer meigangqimenshu;//                                          -- 每缸气门数(个)					
	private Double gangjing;//                                            -- 缸径(mm)   						
	private Double xingcheng;//                                             -- 行程(mm)							
	private Integer zuidamali;//                                                -- 最大马力(Ps)						
	private Integer zuidagonglv;//                                              -- 最大功率(kW)						
	private Integer zuidagonglvzhuansu;//                                       -- 最大功率转速(rpm)				
	private Integer zuidaniuju;//                                               -- 最大扭矩(N・m)					
	private Integer zuidaniujuzhuansu;//                                        -- 最大扭矩转速(rpm)				
	private String fadongjiteyoujishu;//                            -- 发动机特有技术                   
	private String ranliaoxingshi;//                                  -- 燃料形式							
	private String ranyoubiaohao;//                                   -- 燃油标号							
	private String gongyoufangshi;//                                  -- 供油方式							
	private String ganggaicailiao;//	                                 -- 缸盖材料							
	private String gangticailiao;//                                  -- 缸体材料							
	private String huanbaobiaozhun;//                                 -- 环保标准							
//                                                                             -- 变速箱配置
                                                                             
	private Integer dangweigeshu;//                                             -- 挡位个数							
	private String biansuxiangleixing;//                              -- 变速箱类型						
//                                                                             -- 底盘转向
                                                                             
	private String qudongfangshi;//                                   -- 驱动方式							
	private String siquxingshi;//                                     -- 四驱形式							
	private String zhongyangchasuqijiegou;//                          -- 中央差速器结构					
	private String qianxuanjialeixing;//                              -- 前悬架类型						
	private String houxuanjialeixing;//                              -- 后悬架类型						
	private String zhulileixing;//                                    -- 助力类型							
	private String chetijiegou;//                                     -- 车体结构							
//                                                                             -- 车轮制动
                                                                             
	private String qianzhidongqileixing;//                            -- 前制动器类型						
	private String houzhidongqileixing;//                             -- 后制动器类型						
	private String zhuchezhidongleixing;//                            -- 驻车制动类型						
	private String qianluntaiguige;//                                -- 前轮胎规格						
	private String houluntaiguige;//		                             -- 后轮胎规格						
	private String beitaiguige;//                                     -- 备胎规格							
//                                                                             -- 安全装备
                                                                             
	private Integer zhujiashizuoanquanqinang;//                                    -- 主/副驾驶座安全气囊				
	private Integer fujiashizuoanquanqinang;//                                     -- 主● / 副●						
	private Integer qianpaiceqinang;//                                            -- 前/后排侧气囊					
	private Integer houpaiceqinang;//                                             -- 前● / 后-						
	private Integer qianpaitoubuqinang;//                                         -- 前/后排头部气囊(气帘)			
	private Integer houpaitoubuqinang;//                                           -- 前● / 后●						
	private Integer xibuqinang;//                                                 -- 膝部气囊							
	private Integer taiyajiancezhuangzhi;//	                                     -- 胎压监测装置						
	private Integer lingtaiyajixuxingshi;//	                                     -- 零胎压继续行驶					
	private Integer anquandaiweijitishi;//                                       -- 安全带未系提示					
	private Integer isofixertongzuoyijiekou;//                                   -- ISOFIX儿童座椅接口				
	private Integer fadongjidianzifangdao;//                                       -- 发动机电子防盗					
	private Integer cheneizhongkongsuo;//                                          -- 车内中控锁						
	private Integer yaokongyaoshi;//                                              -- 遥控钥匙							
	private Integer wuyaoshiqidongxitong;//                                        -- 无钥匙启动系统					
	private Integer wuyaoshijinruxitong;//                                       -- 无钥匙进入系统					
//                                                                             -- 操控配置
                                                                             
	private Integer absfangbaosi;//                                                -- ABS防抱死						
	private Integer zhidonglifenpei;//                                             -- 制动力分配(EBD/CBC等)			
	private Integer shachefuzhu;//                                                 -- 刹车辅助(EBA/BAS/BA等)			
	private Integer qianyinlikongzhi;//                                          -- 牵引力控制(ASR/TCS/TRC等)		
	private Integer cheshenwendingkongzhi;//                                       -- 车身稳定控制(ESC/ESP/DSC等)		
	private Integer shangpofuzhu;//                                                -- 上坡辅助							
	private Integer zidongzhuche;//                                               -- 自动驻车							
	private Integer doupohuanjiang;//                                             -- 陡坡缓降							
	private Integer kebianxuanjia;//                                               -- 可变悬架							
	private Integer kongqixuanjia;//                                               -- 空气悬架							
//                                                                             -- 外部配置
                                                                             
	private Integer diandongtianchuang;//                                          -- 电动天窗							
	private Integer quanjingtianchuang;//                                          -- 全景天窗							
	private Integer yundongwaiguantaojian;//                                      -- 运动外观套件						
	private Integer lvhejinlunquan;//                                             -- 铝合金轮圈						
	private Integer diandongxihemen;//                                             -- 电动吸合门						
	private Integer cehuamen;//                                                    -- 侧滑门							
	private Integer diandonghoubeixiang;//                                         -- 电动后备厢						
	private Integer ganyinghoubeixiang;//                                          -- 感应后备厢						
	private Integer chedingxinglijia;//                                            -- 车顶行李架						
//                                                                             -- 内部配置
                                                                             
	private Integer zhenpifangxiangpan;//                                         -- 真皮方向盘						
	private String fangxiangpantiaojie;//	                         -- 方向盘调节						
	private Integer fangxiangpandiandongtiaojie;//                                 -- 方向盘电动调节					
	private Integer duogongnengfangxiangpan;//                                    -- 多功能方向盘						
	private Integer fangxiangpanhuandang;//                                       -- 方向盘换挡						
	private Integer fangxiangpanjiare;//                                           -- 方向盘加热						
	private Integer dingsuxunhang;//                                               -- 定速巡航							
	private Integer qianzhucheleida;//                                            -- 前/后驻车雷达					
	private Integer houzhucheleida;//	                                             -- 前○ / 后●						
	private Integer daocheshipinyingxiang;//                                       -- 倒车视频影像						
	private Integer xingchediannaoxianshiping;//                                   -- 行车电脑显示屏					
	private Integer quanyejingyibiaopan;//                                         -- 全液晶仪表盘						
//                                                                             -- 座椅配置
                                                                             
	private String zuoyipizhi;//                                      -- 座椅材质							
	private Integer zuoyigaoditiaojie;//                                           -- 座椅高低调节						
	private Integer yaobuzhichengtiaojie;//                                        -- 腰部支撑调节						
	private Integer jianbuzhichengtiaojie;//	                                     -- 肩部支撑调节						
	private Integer zhujiashizuodiandongtiaojie;//                                 -- 主/副驾驶座电动调节				
	private Integer fujiashizuodiandongtiaojie;//                                  -- 主● / 副●						
	private Integer houpaizuoyidiandongtiaojie;//                                  -- 后排座椅电动调节					
	private Integer qianpaizuoyijiare;//                                           -- 前/后排座椅加热					
	private Integer houpaizuoyijiare;//                                            -- 前○ / 后-						
	private Integer qianpaizuoyitongfeng;//	                                     -- 前/后排座椅通风					
	private Integer houpaizuoyitongfeng;//                                         -- -								
 //                                                                            -- 多媒体配置
  	private Integer gpsdaohangxitong;//                                           -- GPS导航系统						
	private Integer zhongkongtaicaisedaping;//                                    -- 中控台彩色大屏					
	private Integer lanyachezaidianhua;//                                          -- 蓝牙/车载电话					
	private String waijieyinyuanjiekou;//                             -- 外接音源接口						
	private String duomeitixitong;//                                  -- 多媒体系统						
	private String yangshengqishuliang;//                           -- 扬声器数量						
//                                                                             -- 灯光配置
                                                                             
	private String jinguangdeng;//                                    -- 近光灯							
	private String yuanguangdeng;//                                   -- 远光灯							
	private Integer rijianxingchedeng;//                                           -- 日间行车灯						
	private Integer zishiyingyuanjindeng;//	                                     -- 自适应远近光						
	private Integer zidongtoudeng;//                                              -- 自动头灯							
	private Integer zhuanxiangfuzhudeng;//                                         -- 转向辅助灯						
	private Integer zhuangxiangtoudeng;//                                          -- 转向头灯							
	private Integer qianwudeng;//                                                  -- 前雾灯							
	private Integer dadenggaoduketiao;//                                           -- 大灯高度可调						
	private Integer dadengqingxizhuangzhi;//                                       -- 大灯清洗装置						
//                                                                             -- 玻璃/后视镜
                                                                             
	private Integer qiandiandongchechuang;//                                       -- 前/后电动车窗					
	private Integer houdiandongchengchuang;//	                                     -- 前● / 后●						
	private Integer chechuangfangjiashougongneng;//                                -- 车窗防夹手功能					
	private Integer houshijingdiandongtiaojie;//                                   -- 后视镜电动调节					
	private Integer houshijingjiare;//                                             -- 后视镜加热						
	private Integer neihoushijingzidongfangxunmu;//                                -- 内/外后视镜自动防眩目			
	private Integer waihoushijingzidongfangxunmu;//                                -- 内● / 外○						
	private Integer houshijingdiandongzhedie;//                                    -- 后视镜电动折叠					
	private Integer zheyangbanhuazhuangjing;//                                     -- 遮阳板化妆镜						
	private Integer houyushua;//                                                  -- 后雨刷							
	private Integer ganyingyushua;//                                              -- 感应雨刷							
//                                                                             -- 空调/冰箱
                                                                             
	private String kongtiaokongzhifangshi;//                         -- 空调控制方式						
	private Integer houpaidulikongtiao;//                                          -- 后排独立空调						
	private Integer houzuochufengkou;//                                            -- 后座出风口						
	private Integer wendufenqukongzhi;//                                          -- 温度分区控制						
	private Integer cheneikongqitiaojie;//                                         -- 车内空气调节/花粉过滤			
	private Integer chezaibingxiang;//                                             -- 车载冰箱							
//                                                                             -- 高科技配置
                                                                             
	private Integer zidongpocheruwei;//                                            -- 自动泊车入位						
	private Integer fadongjiqitingjishu;//                                        -- 发动机启停技术					
	private Integer bingxianfuzhu;//                                               -- 并线辅助							
	private Integer chedaopianliyujingxitong;//	                                 -- 车道偏离预警系统					
	private Integer zhudongshachexitong;//                                         -- 主动刹车/主动安全系统			
	private Integer zhengtizhudongzhuanxiangxitong;//                             -- 整体主动转向系统					
	private Integer yeshixitong;//                                                 -- 夜视系统							
	private Integer zhongkongyejingpingfenpingxianshi;//                           -- 中控液晶屏分屏显示				
	private Integer zishiyingxunhang;//                                            -- 自适应巡航						
	private Integer quanjingshexiangtou;//                                        -- 全景摄像头						
	
	
	private String description;
	private Brand brand;
	private Model model;
	private Series series;

	public Car() {
	}

	public Car(String car_id) {
		this.car_id = car_id;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}

	public String getCar_name() {
		return car_name;
	}

	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}

	public Date getCar_date() {
		return car_date;
	}

	public void setCar_date(Date car_date) {
		this.car_date = car_date;
	}

	public Integer getIs_hot() {
		return is_hot;
	}

	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}

	public Integer getCar_flag() {
		return car_flag;
	}

	public void setCar_flag(Integer car_flag) {
		this.car_flag = car_flag;
	}

	public Double getGuide_price() {
		return guide_price;
	}

	public void setGuide_price(Double guide_price) {
		this.guide_price = guide_price;
	}

	public Double getDeposit() {
		return deposit;
	}

	public void setDeposit(Double deposit) {
		this.deposit = deposit;
	}

	public Double getDown_payment() {
		return down_payment;
	}

	public void setDown_payment(Double down_payment) {
		this.down_payment = down_payment;
	}

	public Double getMonth_payment() {
		return month_payment;
	}

	public void setMonth_payment(Double month_payment) {
		this.month_payment = month_payment;
	}

	public String getPay_description() {
		return pay_description;
	}

	public void setPay_description(String pay_description) {
		this.pay_description = pay_description;
	}

	public String getCar_image() {
		return car_image;
	}

	public void setCar_image(String car_image) {
		this.car_image = car_image;
	}

	public String getHot_image() {
		return hot_image;
	}

	public void setHot_image(String hot_image) {
		this.hot_image = hot_image;
	}

	public String getWhole_image() {
		return whole_image;
	}

	public void setWhole_image(String whole_image) {
		this.whole_image = whole_image;
	}

	public String getWhole_description() {
		return whole_description;
	}

	public void setWhole_description(String whole_description) {
		this.whole_description = whole_description;
	}

	public String getPart_image1() {
		return part_image1;
	}

	public void setPart_image1(String part_image1) {
		this.part_image1 = part_image1;
	}

	public String getPart_description1() {
		return part_description1;
	}

	public void setPart_description1(String part_description1) {
		this.part_description1 = part_description1;
	}

	public String getPart_image2() {
		return part_image2;
	}

	public void setPart_image2(String part_image2) {
		this.part_image2 = part_image2;
	}

	public String getPart_description2() {
		return part_description2;
	}

	public void setPart_description2(String part_description2) {
		this.part_description2 = part_description2;
	}

	public String getPart_image3() {
		return part_image3;
	}

	public void setPart_image3(String part_image3) {
		this.part_image3 = part_image3;
	}

	public String getPart_description3() {
		return part_description3;
	}

	public void setPart_description3(String part_description3) {
		this.part_description3 = part_description3;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public String getFadongji() {
		return fadongji;
	}

	public void setFadongji(String fadongji) {
		this.fadongji = fadongji;
	}

	public String getBiansuxiang() {
		return biansuxiang;
	}

	public void setBiansuxiang(String biansuxiang) {
		this.biansuxiang = biansuxiang;
	}

	public String getZongheyouhao() {
		return zongheyouhao;
	}

	public void setZongheyouhao(String zongheyouhao) {
		this.zongheyouhao = zongheyouhao;
	}

	public String getCheliangpeise() {
		return cheliangpeise;
	}

	public void setCheliangpeise(String cheliangpeise) {
		this.cheliangpeise = cheliangpeise;
	}

	public Integer getZhouju() {
		return zhouju;
	}

	public void setZhouju(Integer zhouju) {
		this.zhouju = zhouju;
	}

	public Integer getQianlunju() {
		return qianlunju;
	}

	public void setQianlunju(Integer qianlunju) {
		this.qianlunju = qianlunju;
	}

	public Integer getHoulunju() {
		return houlunju;
	}

	public void setHoulunju(Integer houlunju) {
		this.houlunju = houlunju;
	}

	public Integer getZuixiaolidijianxi() {
		return zuixiaolidijianxi;
	}

	public void setZuixiaolidijianxi(Integer zuixiaolidijianxi) {
		this.zuixiaolidijianxi = zuixiaolidijianxi;
	}

	public Integer getZhengchezhiliang() {
		return zhengchezhiliang;
	}

	public void setZhengchezhiliang(Integer zhengchezhiliang) {
		this.zhengchezhiliang = zhengchezhiliang;
	}

	public String getCheshenjiegou() {
		return cheshenjiegou;
	}

	public void setCheshenjiegou(String cheshenjiegou) {
		this.cheshenjiegou = cheshenjiegou;
	}

	public Integer getChemenshu() {
		return chemenshu;
	}

	public void setChemenshu(Integer chemenshu) {
		this.chemenshu = chemenshu;
	}

	public Integer getZuoweishu() {
		return zuoweishu;
	}

	public void setZuoweishu(Integer zuoweishu) {
		this.zuoweishu = zuoweishu;
	}

	public Integer getYouxiangrongji() {
		return youxiangrongji;
	}

	public void setYouxiangrongji(Integer youxiangrongji) {
		this.youxiangrongji = youxiangrongji;
	}

	public Integer getXinglixiangrongji() {
		return xinglixiangrongji;
	}

	public void setXinglixiangrongji(Integer xinglixiangrongji) {
		this.xinglixiangrongji = xinglixiangrongji;
	}

	public String getFadongjixinghao() {
		return fadongjixinghao;
	}

	public void setFadongjixinghao(String fadongjixinghao) {
		this.fadongjixinghao = fadongjixinghao;
	}

	public Integer getPailiang() {
		return pailiang;
	}

	public void setPailiang(Integer pailiang) {
		this.pailiang = pailiang;
	}

	public String getJinqixingshi() {
		return jinqixingshi;
	}

	public void setJinqixingshi(String jinqixingshi) {
		this.jinqixingshi = jinqixingshi;
	}

	public String getQigangpailiexingshi() {
		return qigangpailiexingshi;
	}

	public void setQigangpailiexingshi(String qigangpailiexingshi) {
		this.qigangpailiexingshi = qigangpailiexingshi;
	}

	public Integer getQigangshu() {
		return qigangshu;
	}

	public void setQigangshu(Integer qigangshu) {
		this.qigangshu = qigangshu;
	}

	public Integer getMeigangqimenshu() {
		return meigangqimenshu;
	}

	public void setMeigangqimenshu(Integer meigangqimenshu) {
		this.meigangqimenshu = meigangqimenshu;
	}

	public Double getGangjing() {
		return gangjing;
	}

	public void setGangjing(Double gangjing) {
		this.gangjing = gangjing;
	}

	public Double getXingcheng() {
		return xingcheng;
	}

	public void setXingcheng(Double xingcheng) {
		this.xingcheng = xingcheng;
	}

	public Integer getZuidamali() {
		return zuidamali;
	}

	public void setZuidamali(Integer zuidamali) {
		this.zuidamali = zuidamali;
	}

	public Integer getZuidagonglv() {
		return zuidagonglv;
	}

	public void setZuidagonglv(Integer zuidagonglv) {
		this.zuidagonglv = zuidagonglv;
	}

	public Integer getZuidagonglvzhuansu() {
		return zuidagonglvzhuansu;
	}

	public void setZuidagonglvzhuansu(Integer zuidagonglvzhuansu) {
		this.zuidagonglvzhuansu = zuidagonglvzhuansu;
	}

	public Integer getZuidaniuju() {
		return zuidaniuju;
	}

	public void setZuidaniuju(Integer zuidaniuju) {
		this.zuidaniuju = zuidaniuju;
	}

	public Integer getZuidaniujuzhuansu() {
		return zuidaniujuzhuansu;
	}

	public void setZuidaniujuzhuansu(Integer zuidaniujuzhuansu) {
		this.zuidaniujuzhuansu = zuidaniujuzhuansu;
	}

	public String getFadongjiteyoujishu() {
		return fadongjiteyoujishu;
	}

	public void setFadongjiteyoujishu(String fadongjiteyoujishu) {
		this.fadongjiteyoujishu = fadongjiteyoujishu;
	}

	public String getRanliaoxingshi() {
		return ranliaoxingshi;
	}

	public void setRanliaoxingshi(String ranliaoxingshi) {
		this.ranliaoxingshi = ranliaoxingshi;
	}

	public String getRanyoubiaohao() {
		return ranyoubiaohao;
	}

	public void setRanyoubiaohao(String ranyoubiaohao) {
		this.ranyoubiaohao = ranyoubiaohao;
	}

	public String getGongyoufangshi() {
		return gongyoufangshi;
	}

	public void setGongyoufangshi(String gongyoufangshi) {
		this.gongyoufangshi = gongyoufangshi;
	}

	public String getGanggaicailiao() {
		return ganggaicailiao;
	}

	public void setGanggaicailiao(String ganggaicailiao) {
		this.ganggaicailiao = ganggaicailiao;
	}

	public String getGangticailiao() {
		return gangticailiao;
	}

	public void setGangticailiao(String gangticailiao) {
		this.gangticailiao = gangticailiao;
	}

	public String getHuanbaobiaozhun() {
		return huanbaobiaozhun;
	}

	public void setHuanbaobiaozhun(String huanbaobiaozhun) {
		this.huanbaobiaozhun = huanbaobiaozhun;
	}

	public Integer getDangweigeshu() {
		return dangweigeshu;
	}

	public void setDangweigeshu(Integer dangweigeshu) {
		this.dangweigeshu = dangweigeshu;
	}

	public String getBiansuxiangleixing() {
		return biansuxiangleixing;
	}

	public void setBiansuxiangleixing(String biansuxiangleixing) {
		this.biansuxiangleixing = biansuxiangleixing;
	}

	public String getQudongfangshi() {
		return qudongfangshi;
	}

	public void setQudongfangshi(String qudongfangshi) {
		this.qudongfangshi = qudongfangshi;
	}

	public String getSiquxingshi() {
		return siquxingshi;
	}

	public void setSiquxingshi(String siquxingshi) {
		this.siquxingshi = siquxingshi;
	}

	public String getZhongyangchasuqijiegou() {
		return zhongyangchasuqijiegou;
	}

	public void setZhongyangchasuqijiegou(String zhongyangchasuqijiegou) {
		this.zhongyangchasuqijiegou = zhongyangchasuqijiegou;
	}

	public String getQianxuanjialeixing() {
		return qianxuanjialeixing;
	}

	public void setQianxuanjialeixing(String qianxuanjialeixing) {
		this.qianxuanjialeixing = qianxuanjialeixing;
	}

	public String getHouxuanjialeixing() {
		return houxuanjialeixing;
	}

	public void setHouxuanjialeixing(String houxuanjialeixing) {
		this.houxuanjialeixing = houxuanjialeixing;
	}

	public String getZhulileixing() {
		return zhulileixing;
	}

	public void setZhulileixing(String zhulileixing) {
		this.zhulileixing = zhulileixing;
	}

	public String getChetijiegou() {
		return chetijiegou;
	}

	public void setChetijiegou(String chetijiegou) {
		this.chetijiegou = chetijiegou;
	}

	public String getQianzhidongqileixing() {
		return qianzhidongqileixing;
	}

	public void setQianzhidongqileixing(String qianzhidongqileixing) {
		this.qianzhidongqileixing = qianzhidongqileixing;
	}

	public String getHouzhidongqileixing() {
		return houzhidongqileixing;
	}

	public void setHouzhidongqileixing(String houzhidongqileixing) {
		this.houzhidongqileixing = houzhidongqileixing;
	}

	public String getZhuchezhidongleixing() {
		return zhuchezhidongleixing;
	}

	public void setZhuchezhidongleixing(String zhuchezhidongleixing) {
		this.zhuchezhidongleixing = zhuchezhidongleixing;
	}

	public String getQianluntaiguige() {
		return qianluntaiguige;
	}

	public void setQianluntaiguige(String qianluntaiguige) {
		this.qianluntaiguige = qianluntaiguige;
	}

	public String getHouluntaiguige() {
		return houluntaiguige;
	}

	public void setHouluntaiguige(String houluntaiguige) {
		this.houluntaiguige = houluntaiguige;
	}

	public String getBeitaiguige() {
		return beitaiguige;
	}

	public void setBeitaiguige(String beitaiguige) {
		this.beitaiguige = beitaiguige;
	}

	public Integer getZhujiashizuoanquanqinang() {
		return zhujiashizuoanquanqinang;
	}

	public void setZhujiashizuoanquanqinang(Integer zhujiashizuoanquanqinang) {
		this.zhujiashizuoanquanqinang = zhujiashizuoanquanqinang;
	}

	public Integer getFujiashizuoanquanqinang() {
		return fujiashizuoanquanqinang;
	}

	public void setFujiashizuoanquanqinang(Integer fujiashizuoanquanqinang) {
		this.fujiashizuoanquanqinang = fujiashizuoanquanqinang;
	}

	public Integer getQianpaiceqinang() {
		return qianpaiceqinang;
	}

	public void setQianpaiceqinang(Integer qianpaiceqinang) {
		this.qianpaiceqinang = qianpaiceqinang;
	}

	public Integer getHoupaiceqinang() {
		return houpaiceqinang;
	}

	public void setHoupaiceqinang(Integer houpaiceqinang) {
		this.houpaiceqinang = houpaiceqinang;
	}

	public Integer getQianpaitoubuqinang() {
		return qianpaitoubuqinang;
	}

	public void setQianpaitoubuqinang(Integer qianpaitoubuqinang) {
		this.qianpaitoubuqinang = qianpaitoubuqinang;
	}

	public Integer getHoupaitoubuqinang() {
		return houpaitoubuqinang;
	}

	public void setHoupaitoubuqinang(Integer houpaitoubuqinang) {
		this.houpaitoubuqinang = houpaitoubuqinang;
	}

	public Integer getXibuqinang() {
		return xibuqinang;
	}

	public void setXibuqinang(Integer xibuqinang) {
		this.xibuqinang = xibuqinang;
	}

	public Integer getTaiyajiancezhuangzhi() {
		return taiyajiancezhuangzhi;
	}

	public void setTaiyajiancezhuangzhi(Integer taiyajiancezhuangzhi) {
		this.taiyajiancezhuangzhi = taiyajiancezhuangzhi;
	}

	public Integer getLingtaiyajixuxingshi() {
		return lingtaiyajixuxingshi;
	}

	public void setLingtaiyajixuxingshi(Integer lingtaiyajixuxingshi) {
		this.lingtaiyajixuxingshi = lingtaiyajixuxingshi;
	}

	public Integer getAnquandaiweijitishi() {
		return anquandaiweijitishi;
	}

	public void setAnquandaiweijitishi(Integer anquandaiweijitishi) {
		this.anquandaiweijitishi = anquandaiweijitishi;
	}

	public Integer getIsofixertongzuoyijiekou() {
		return isofixertongzuoyijiekou;
	}

	public void setIsofixertongzuoyijiekou(Integer isofixertongzuoyijiekou) {
		this.isofixertongzuoyijiekou = isofixertongzuoyijiekou;
	}

	public Integer getFadongjidianzifangdao() {
		return fadongjidianzifangdao;
	}

	public void setFadongjidianzifangdao(Integer fadongjidianzifangdao) {
		this.fadongjidianzifangdao = fadongjidianzifangdao;
	}

	public Integer getCheneizhongkongsuo() {
		return cheneizhongkongsuo;
	}

	public void setCheneizhongkongsuo(Integer cheneizhongkongsuo) {
		this.cheneizhongkongsuo = cheneizhongkongsuo;
	}

	public Integer getYaokongyaoshi() {
		return yaokongyaoshi;
	}

	public void setYaokongyaoshi(Integer yaokongyaoshi) {
		this.yaokongyaoshi = yaokongyaoshi;
	}

	public Integer getWuyaoshiqidongxitong() {
		return wuyaoshiqidongxitong;
	}

	public void setWuyaoshiqidongxitong(Integer wuyaoshiqidongxitong) {
		this.wuyaoshiqidongxitong = wuyaoshiqidongxitong;
	}

	public Integer getWuyaoshijinruxitong() {
		return wuyaoshijinruxitong;
	}

	public void setWuyaoshijinruxitong(Integer wuyaoshijinruxitong) {
		this.wuyaoshijinruxitong = wuyaoshijinruxitong;
	}

	public Integer getAbsfangbaosi() {
		return absfangbaosi;
	}

	public void setAbsfangbaosi(Integer absfangbaosi) {
		this.absfangbaosi = absfangbaosi;
	}

	public Integer getZhidonglifenpei() {
		return zhidonglifenpei;
	}

	public void setZhidonglifenpei(Integer zhidonglifenpei) {
		this.zhidonglifenpei = zhidonglifenpei;
	}

	public Integer getShachefuzhu() {
		return shachefuzhu;
	}

	public void setShachefuzhu(Integer shachefuzhu) {
		this.shachefuzhu = shachefuzhu;
	}

	public Integer getQianyinlikongzhi() {
		return qianyinlikongzhi;
	}

	public void setQianyinlikongzhi(Integer qianyinlikongzhi) {
		this.qianyinlikongzhi = qianyinlikongzhi;
	}

	public Integer getCheshenwendingkongzhi() {
		return cheshenwendingkongzhi;
	}

	public void setCheshenwendingkongzhi(Integer cheshenwendingkongzhi) {
		this.cheshenwendingkongzhi = cheshenwendingkongzhi;
	}

	public Integer getShangpofuzhu() {
		return shangpofuzhu;
	}

	public void setShangpofuzhu(Integer shangpofuzhu) {
		this.shangpofuzhu = shangpofuzhu;
	}

	public Integer getZidongzhuche() {
		return zidongzhuche;
	}

	public void setZidongzhuche(Integer zidongzhuche) {
		this.zidongzhuche = zidongzhuche;
	}

	public Integer getDoupohuanjiang() {
		return doupohuanjiang;
	}

	public void setDoupohuanjiang(Integer doupohuanjiang) {
		this.doupohuanjiang = doupohuanjiang;
	}

	public Integer getKebianxuanjia() {
		return kebianxuanjia;
	}

	public void setKebianxuanjia(Integer kebianxuanjia) {
		this.kebianxuanjia = kebianxuanjia;
	}

	public Integer getKongqixuanjia() {
		return kongqixuanjia;
	}

	public void setKongqixuanjia(Integer kongqixuanjia) {
		this.kongqixuanjia = kongqixuanjia;
	}

	public Integer getDiandongtianchuang() {
		return diandongtianchuang;
	}

	public void setDiandongtianchuang(Integer diandongtianchuang) {
		this.diandongtianchuang = diandongtianchuang;
	}

	public Integer getQuanjingtianchuang() {
		return quanjingtianchuang;
	}

	public void setQuanjingtianchuang(Integer quanjingtianchuang) {
		this.quanjingtianchuang = quanjingtianchuang;
	}

	public Integer getYundongwaiguantaojian() {
		return yundongwaiguantaojian;
	}

	public void setYundongwaiguantaojian(Integer yundongwaiguantaojian) {
		this.yundongwaiguantaojian = yundongwaiguantaojian;
	}

	public Integer getLvhejinlunquan() {
		return lvhejinlunquan;
	}

	public void setLvhejinlunquan(Integer lvhejinlunquan) {
		this.lvhejinlunquan = lvhejinlunquan;
	}

	public Integer getDiandongxihemen() {
		return diandongxihemen;
	}

	public void setDiandongxihemen(Integer diandongxihemen) {
		this.diandongxihemen = diandongxihemen;
	}

	public Integer getCehuamen() {
		return cehuamen;
	}

	public void setCehuamen(Integer cehuamen) {
		this.cehuamen = cehuamen;
	}

	public Integer getDiandonghoubeixiang() {
		return diandonghoubeixiang;
	}

	public void setDiandonghoubeixiang(Integer diandonghoubeixiang) {
		this.diandonghoubeixiang = diandonghoubeixiang;
	}

	public Integer getGanyinghoubeixiang() {
		return ganyinghoubeixiang;
	}

	public void setGanyinghoubeixiang(Integer ganyinghoubeixiang) {
		this.ganyinghoubeixiang = ganyinghoubeixiang;
	}

	public Integer getChedingxinglijia() {
		return chedingxinglijia;
	}

	public void setChedingxinglijia(Integer chedingxinglijia) {
		this.chedingxinglijia = chedingxinglijia;
	}

	public Integer getZhenpifangxiangpan() {
		return zhenpifangxiangpan;
	}

	public void setZhenpifangxiangpan(Integer zhenpifangxiangpan) {
		this.zhenpifangxiangpan = zhenpifangxiangpan;
	}

	public String getFangxiangpantiaojie() {
		return fangxiangpantiaojie;
	}

	public void setFangxiangpantiaojie(String fangxiangpantiaojie) {
		this.fangxiangpantiaojie = fangxiangpantiaojie;
	}

	public Integer getFangxiangpandiandongtiaojie() {
		return fangxiangpandiandongtiaojie;
	}

	public void setFangxiangpandiandongtiaojie(Integer fangxiangpandiandongtiaojie) {
		this.fangxiangpandiandongtiaojie = fangxiangpandiandongtiaojie;
	}

	public Integer getDuogongnengfangxiangpan() {
		return duogongnengfangxiangpan;
	}

	public void setDuogongnengfangxiangpan(Integer duogongnengfangxiangpan) {
		this.duogongnengfangxiangpan = duogongnengfangxiangpan;
	}

	public Integer getFangxiangpanhuandang() {
		return fangxiangpanhuandang;
	}

	public void setFangxiangpanhuandang(Integer fangxiangpanhuandang) {
		this.fangxiangpanhuandang = fangxiangpanhuandang;
	}

	public Integer getFangxiangpanjiare() {
		return fangxiangpanjiare;
	}

	public void setFangxiangpanjiare(Integer fangxiangpanjiare) {
		this.fangxiangpanjiare = fangxiangpanjiare;
	}

	public Integer getDingsuxunhang() {
		return dingsuxunhang;
	}

	public void setDingsuxunhang(Integer dingsuxunhang) {
		this.dingsuxunhang = dingsuxunhang;
	}

	public Integer getQianzhucheleida() {
		return qianzhucheleida;
	}

	public void setQianzhucheleida(Integer qianzhucheleida) {
		this.qianzhucheleida = qianzhucheleida;
	}

	public Integer getHouzhucheleida() {
		return houzhucheleida;
	}

	public void setHouzhucheleida(Integer houzhucheleida) {
		this.houzhucheleida = houzhucheleida;
	}

	public Integer getDaocheshipinyingxiang() {
		return daocheshipinyingxiang;
	}

	public void setDaocheshipinyingxiang(Integer daocheshipinyingxiang) {
		this.daocheshipinyingxiang = daocheshipinyingxiang;
	}

	public Integer getXingchediannaoxianshiping() {
		return xingchediannaoxianshiping;
	}

	public void setXingchediannaoxianshiping(Integer xingchediannaoxianshiping) {
		this.xingchediannaoxianshiping = xingchediannaoxianshiping;
	}

	public Integer getQuanyejingyibiaopan() {
		return quanyejingyibiaopan;
	}

	public void setQuanyejingyibiaopan(Integer quanyejingyibiaopan) {
		this.quanyejingyibiaopan = quanyejingyibiaopan;
	}

	public String getZuoyipizhi() {
		return zuoyipizhi;
	}

	public void setZuoyipizhi(String zuoyipizhi) {
		this.zuoyipizhi = zuoyipizhi;
	}

	public Integer getZuoyigaoditiaojie() {
		return zuoyigaoditiaojie;
	}

	public void setZuoyigaoditiaojie(Integer zuoyigaoditiaojie) {
		this.zuoyigaoditiaojie = zuoyigaoditiaojie;
	}

	public Integer getYaobuzhichengtiaojie() {
		return yaobuzhichengtiaojie;
	}

	public void setYaobuzhichengtiaojie(Integer yaobuzhichengtiaojie) {
		this.yaobuzhichengtiaojie = yaobuzhichengtiaojie;
	}

	public Integer getJianbuzhichengtiaojie() {
		return jianbuzhichengtiaojie;
	}

	public void setJianbuzhichengtiaojie(Integer jianbuzhichengtiaojie) {
		this.jianbuzhichengtiaojie = jianbuzhichengtiaojie;
	}

	public Integer getZhujiashizuodiandongtiaojie() {
		return zhujiashizuodiandongtiaojie;
	}

	public void setZhujiashizuodiandongtiaojie(Integer zhujiashizuodiandongtiaojie) {
		this.zhujiashizuodiandongtiaojie = zhujiashizuodiandongtiaojie;
	}

	public Integer getFujiashizuodiandongtiaojie() {
		return fujiashizuodiandongtiaojie;
	}

	public void setFujiashizuodiandongtiaojie(Integer fujiashizuodiandongtiaojie) {
		this.fujiashizuodiandongtiaojie = fujiashizuodiandongtiaojie;
	}

	public Integer getHoupaizuoyidiandongtiaojie() {
		return houpaizuoyidiandongtiaojie;
	}

	public void setHoupaizuoyidiandongtiaojie(Integer houpaizuoyidiandongtiaojie) {
		this.houpaizuoyidiandongtiaojie = houpaizuoyidiandongtiaojie;
	}

	public Integer getQianpaizuoyijiare() {
		return qianpaizuoyijiare;
	}

	public void setQianpaizuoyijiare(Integer qianpaizuoyijiare) {
		this.qianpaizuoyijiare = qianpaizuoyijiare;
	}

	public Integer getHoupaizuoyijiare() {
		return houpaizuoyijiare;
	}

	public void setHoupaizuoyijiare(Integer houpaizuoyijiare) {
		this.houpaizuoyijiare = houpaizuoyijiare;
	}

	public Integer getQianpaizuoyitongfeng() {
		return qianpaizuoyitongfeng;
	}

	public void setQianpaizuoyitongfeng(Integer qianpaizuoyitongfeng) {
		this.qianpaizuoyitongfeng = qianpaizuoyitongfeng;
	}

	public Integer getHoupaizuoyitongfeng() {
		return houpaizuoyitongfeng;
	}

	public void setHoupaizuoyitongfeng(Integer houpaizuoyitongfeng) {
		this.houpaizuoyitongfeng = houpaizuoyitongfeng;
	}

	public Integer getGpsdaohangxitong() {
		return gpsdaohangxitong;
	}

	public void setGpsdaohangxitong(Integer gpsdaohangxitong) {
		this.gpsdaohangxitong = gpsdaohangxitong;
	}

	public Integer getZhongkongtaicaisedaping() {
		return zhongkongtaicaisedaping;
	}

	public void setZhongkongtaicaisedaping(Integer zhongkongtaicaisedaping) {
		this.zhongkongtaicaisedaping = zhongkongtaicaisedaping;
	}

	public Integer getLanyachezaidianhua() {
		return lanyachezaidianhua;
	}

	public void setLanyachezaidianhua(Integer lanyachezaidianhua) {
		this.lanyachezaidianhua = lanyachezaidianhua;
	}

	public String getWaijieyinyuanjiekou() {
		return waijieyinyuanjiekou;
	}

	public void setWaijieyinyuanjiekou(String waijieyinyuanjiekou) {
		this.waijieyinyuanjiekou = waijieyinyuanjiekou;
	}

	public String getDuomeitixitong() {
		return duomeitixitong;
	}

	public void setDuomeitixitong(String duomeitixitong) {
		this.duomeitixitong = duomeitixitong;
	}

	public String getYangshengqishuliang() {
		return yangshengqishuliang;
	}

	public void setYangshengqishuliang(String yangshengqishuliang) {
		this.yangshengqishuliang = yangshengqishuliang;
	}

	public String getJinguangdeng() {
		return jinguangdeng;
	}

	public void setJinguangdeng(String jinguangdeng) {
		this.jinguangdeng = jinguangdeng;
	}

	public String getYuanguangdeng() {
		return yuanguangdeng;
	}

	public void setYuanguangdeng(String yuanguangdeng) {
		this.yuanguangdeng = yuanguangdeng;
	}

	public Integer getRijianxingchedeng() {
		return rijianxingchedeng;
	}

	public void setRijianxingchedeng(Integer rijianxingchedeng) {
		this.rijianxingchedeng = rijianxingchedeng;
	}

	public Integer getZishiyingyuanjindeng() {
		return zishiyingyuanjindeng;
	}

	public void setZishiyingyuanjindeng(Integer zishiyingyuanjindeng) {
		this.zishiyingyuanjindeng = zishiyingyuanjindeng;
	}

	public Integer getZidongtoudeng() {
		return zidongtoudeng;
	}

	public void setZidongtoudeng(Integer zidongtoudeng) {
		this.zidongtoudeng = zidongtoudeng;
	}

	public Integer getZhuanxiangfuzhudeng() {
		return zhuanxiangfuzhudeng;
	}

	public void setZhuanxiangfuzhudeng(Integer zhuanxiangfuzhudeng) {
		this.zhuanxiangfuzhudeng = zhuanxiangfuzhudeng;
	}

	public Integer getZhuangxiangtoudeng() {
		return zhuangxiangtoudeng;
	}

	public void setZhuangxiangtoudeng(Integer zhuangxiangtoudeng) {
		this.zhuangxiangtoudeng = zhuangxiangtoudeng;
	}

	public Integer getQianwudeng() {
		return qianwudeng;
	}

	public void setQianwudeng(Integer qianwudeng) {
		this.qianwudeng = qianwudeng;
	}

	public Integer getDadenggaoduketiao() {
		return dadenggaoduketiao;
	}

	public void setDadenggaoduketiao(Integer dadenggaoduketiao) {
		this.dadenggaoduketiao = dadenggaoduketiao;
	}

	public Integer getDadengqingxizhuangzhi() {
		return dadengqingxizhuangzhi;
	}

	public void setDadengqingxizhuangzhi(Integer dadengqingxizhuangzhi) {
		this.dadengqingxizhuangzhi = dadengqingxizhuangzhi;
	}

	public Integer getQiandiandongchechuang() {
		return qiandiandongchechuang;
	}

	public void setQiandiandongchechuang(Integer qiandiandongchechuang) {
		this.qiandiandongchechuang = qiandiandongchechuang;
	}

	public Integer getHoudiandongchengchuang() {
		return houdiandongchengchuang;
	}

	public void setHoudiandongchengchuang(Integer houdiandongchengchuang) {
		this.houdiandongchengchuang = houdiandongchengchuang;
	}

	public Integer getChechuangfangjiashougongneng() {
		return chechuangfangjiashougongneng;
	}

	public void setChechuangfangjiashougongneng(Integer chechuangfangjiashougongneng) {
		this.chechuangfangjiashougongneng = chechuangfangjiashougongneng;
	}

	public Integer getHoushijingdiandongtiaojie() {
		return houshijingdiandongtiaojie;
	}

	public void setHoushijingdiandongtiaojie(Integer houshijingdiandongtiaojie) {
		this.houshijingdiandongtiaojie = houshijingdiandongtiaojie;
	}

	public Integer getHoushijingjiare() {
		return houshijingjiare;
	}

	public void setHoushijingjiare(Integer houshijingjiare) {
		this.houshijingjiare = houshijingjiare;
	}

	public Integer getNeihoushijingzidongfangxunmu() {
		return neihoushijingzidongfangxunmu;
	}

	public void setNeihoushijingzidongfangxunmu(Integer neihoushijingzidongfangxunmu) {
		this.neihoushijingzidongfangxunmu = neihoushijingzidongfangxunmu;
	}

	public Integer getWaihoushijingzidongfangxunmu() {
		return waihoushijingzidongfangxunmu;
	}

	public void setWaihoushijingzidongfangxunmu(Integer waihoushijingzidongfangxunmu) {
		this.waihoushijingzidongfangxunmu = waihoushijingzidongfangxunmu;
	}

	public Integer getHoushijingdiandongzhedie() {
		return houshijingdiandongzhedie;
	}

	public void setHoushijingdiandongzhedie(Integer houshijingdiandongzhedie) {
		this.houshijingdiandongzhedie = houshijingdiandongzhedie;
	}

	public Integer getZheyangbanhuazhuangjing() {
		return zheyangbanhuazhuangjing;
	}

	public void setZheyangbanhuazhuangjing(Integer zheyangbanhuazhuangjing) {
		this.zheyangbanhuazhuangjing = zheyangbanhuazhuangjing;
	}

	public Integer getHouyushua() {
		return houyushua;
	}

	public void setHouyushua(Integer houyushua) {
		this.houyushua = houyushua;
	}

	public Integer getGanyingyushua() {
		return ganyingyushua;
	}

	public void setGanyingyushua(Integer ganyingyushua) {
		this.ganyingyushua = ganyingyushua;
	}

	public String getKongtiaokongzhifangshi() {
		return kongtiaokongzhifangshi;
	}

	public void setKongtiaokongzhifangshi(String kongtiaokongzhifangshi) {
		this.kongtiaokongzhifangshi = kongtiaokongzhifangshi;
	}

	public Integer getHoupaidulikongtiao() {
		return houpaidulikongtiao;
	}

	public void setHoupaidulikongtiao(Integer houpaidulikongtiao) {
		this.houpaidulikongtiao = houpaidulikongtiao;
	}

	public Integer getHouzuochufengkou() {
		return houzuochufengkou;
	}

	public void setHouzuochufengkou(Integer houzuochufengkou) {
		this.houzuochufengkou = houzuochufengkou;
	}

	public Integer getWendufenqukongzhi() {
		return wendufenqukongzhi;
	}

	public void setWendufenqukongzhi(Integer wendufenqukongzhi) {
		this.wendufenqukongzhi = wendufenqukongzhi;
	}

	public Integer getCheneikongqitiaojie() {
		return cheneikongqitiaojie;
	}

	public void setCheneikongqitiaojie(Integer cheneikongqitiaojie) {
		this.cheneikongqitiaojie = cheneikongqitiaojie;
	}

	public Integer getChezaibingxiang() {
		return chezaibingxiang;
	}

	public void setChezaibingxiang(Integer chezaibingxiang) {
		this.chezaibingxiang = chezaibingxiang;
	}

	public Integer getZidongpocheruwei() {
		return zidongpocheruwei;
	}

	public void setZidongpocheruwei(Integer zidongpocheruwei) {
		this.zidongpocheruwei = zidongpocheruwei;
	}

	public Integer getFadongjiqitingjishu() {
		return fadongjiqitingjishu;
	}

	public void setFadongjiqitingjishu(Integer fadongjiqitingjishu) {
		this.fadongjiqitingjishu = fadongjiqitingjishu;
	}

	public Integer getBingxianfuzhu() {
		return bingxianfuzhu;
	}

	public void setBingxianfuzhu(Integer bingxianfuzhu) {
		this.bingxianfuzhu = bingxianfuzhu;
	}

	public Integer getChedaopianliyujingxitong() {
		return chedaopianliyujingxitong;
	}

	public void setChedaopianliyujingxitong(Integer chedaopianliyujingxitong) {
		this.chedaopianliyujingxitong = chedaopianliyujingxitong;
	}

	public Integer getZhudongshachexitong() {
		return zhudongshachexitong;
	}

	public void setZhudongshachexitong(Integer zhudongshachexitong) {
		this.zhudongshachexitong = zhudongshachexitong;
	}

	public Integer getZhengtizhudongzhuanxiangxitong() {
		return zhengtizhudongzhuanxiangxitong;
	}

	public void setZhengtizhudongzhuanxiangxitong(Integer zhengtizhudongzhuanxiangxitong) {
		this.zhengtizhudongzhuanxiangxitong = zhengtizhudongzhuanxiangxitong;
	}

	public Integer getYeshixitong() {
		return yeshixitong;
	}

	public void setYeshixitong(Integer yeshixitong) {
		this.yeshixitong = yeshixitong;
	}

	public Integer getZhongkongyejingpingfenpingxianshi() {
		return zhongkongyejingpingfenpingxianshi;
	}

	public void setZhongkongyejingpingfenpingxianshi(Integer zhongkongyejingpingfenpingxianshi) {
		this.zhongkongyejingpingfenpingxianshi = zhongkongyejingpingfenpingxianshi;
	}

	public Integer getZishiyingxunhang() {
		return zishiyingxunhang;
	}

	public void setZishiyingxunhang(Integer zishiyingxunhang) {
		this.zishiyingxunhang = zishiyingxunhang;
	}

	public Integer getQuanjingshexiangtou() {
		return quanjingshexiangtou;
	}

	public void setQuanjingshexiangtou(Integer quanjingshexiangtou) {
		this.quanjingshexiangtou = quanjingshexiangtou;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Model getModel() {
		return model;
	}

	public void setModel(Model model) {
		this.model = model;
	}

	public Series getSeries() {
		return series;
	}

	public void setSeries(Series series) {
		this.series = series;
	}

	

	

}
