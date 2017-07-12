`length` int(11) DEFAULT 0,														-- 长	
`width` int(11) DEFAULT 0,														-- 宽
`height` int(11) DEFAULT 0,														-- 高
`engine` varchar(100) DEFAULT NULL,												-- 发动机
`gearbox` varchar(100) DEFAULT NULL,											-- 变速箱
`com_fuel_consumption` varchar(100) DEFAULT NULL,								-- 综合油耗
`body_color` varchar(100) DEFAULT NULL,                                         -- 车辆配色

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
	`donggongnengfangxiangpan` int DEFAULT 0,                                    -- 多功能方向盘						
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