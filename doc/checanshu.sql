
    长/宽/高(mm)4263/1800/1479mm
    轴距(mm)                                  `zhouju` int DEFAULT NULL,
    2670
    前轮距(mm)                                `qianlunju` int DEFAULT NULL,                  
    1560
    后轮距(mm)                                 `houlunju`  int DEFAULT NULL,
    1561
    最小离地间隙(mm)                           `zuixiaolidijianxi` int DEFAULT NULL,
    -
    整车质量(kg)                               `zhengchezhiliang` int DEFAULT NULL,
    1446
    车身结构                                    `cheshenjiegou` varchar(100) DEFAULT NULL,
    两厢车
    车门数(个)                                  `chemenshu` int DEFAULT NULL,
    6
    座位数(个)                                   `zuoweishu` int DEFAULT NULL,
    5
    油箱容积(L)                                   `youxiangrongji` int DEFAULT NULL,
    48
    行李厢容积(L)                                 `xinglixiangrongji` int DEFAULT NULL,
    -

发动机配置

    发动机型号                                     `fadongjixinghao` varchar(100) DEFAULT NULL,
    B38A15A
    排量(mL)                                        `pailiang` int DEFAULT NULL,
    1499
    进气形式										`jinqixingshi` varchar(100) DEFAULT NULL,
    -
    气缸排列形式									`qigangpailiexingshi` varchar(10) DEFAULT NULL,
    L
    气缸数(个)										`qigangshu` int DEFAULT NULL,
    3
    每缸气门数(个)									`meigangqimenshu` int DEFAULT NULL,
    4
    缸径(mm)   										`gangjing` double DEFAULT NULL,
    82.00
    行程(mm)										`xingcheng` double DEFAULT NULL,
    -
    最大马力(Ps)									`zuidamali` int DEFAULT NULL,
    136
    最大功率(kW)									`zuidagonglv` int DEFAULT NULL,
    100
    最大功率转速(rpm)								`zuidagonglvzhuansu` int DEFAULT NULL,
    4500-6000
    最大扭矩(N・m)									`zuidaniuju` int DEFAULT NULL,
    220
    最大扭矩转速(rpm)								`zuidaniujuzhuansu` int DEFAULT NULL,
    1250
    发动机特有技术                                  `fadongjiteyoujishu` varchar(100) DEFAULT NULL,
    -
    燃料形式										`ranliaoxingshi` varchar(100) DEFAULT NULL,
    -
    燃油标号										`ranyoubiaohao` varchar(100) DEFAULT NULL,
    -
    供油方式										`gongyoufangshi` varchar(100) DEFAULT NULL,
    直喷
    缸盖材料										`ganggaicailiao` varchar(100) DEFAULT NULL,	
    铝
    缸体材料										`gangticailiao` varchar(100) DEFAULT NULL,
    铝
    环保标准										`huanbaobiaozhun` varchar(100) DEFAULT NULL,
    -

变速箱配置

    挡位个数										`dangweigeshu` int DEFAULT NULL,
    -
    变速箱类型										`biansuxiangleixing` varchar(100) DEFAULT NULL,
    手自一体变速箱(AT)

底盘转向

    驱动方式										`qudongfangshi` varchar(100) DEFAULT NULL,
    前置前驱
    四驱形式										`siquxingshi` varchar(100) DEFAULT NULL,
    -
    中央差速器结构									`zhongyangchasuqijiegou` varchar(100) DEFAULT NULL,
    -
    前悬架类型										`qianxuanjialeixing` varchar(100) DEFAULT NULL,
    麦弗逊式独立悬架
    后悬架类型										`houxuanjialeixing` varchar(100) DEFAULT NULL,
    -
    助力类型										`zhulileixing` varchar(100) DEFAULT NULL,
    电动助力
    车体结构										`chetijiegou` varchar(100) DEFAULT NULL,
    承载式

车轮制动

    前制动器类型									`qianzhidongqileixing` varchar(100) DEFAULT NULL,
    通风盘式
    后制动器类型									`houzhidongqileixing` varchar(100) DEFAULT NULL,
    盘式
    驻车制动类型									`zhuchezhidongleixing` varchar(100) DEFAULT NULL,
    手刹
    前轮胎规格										`qianluntaiguige` varchar(100) DEFAULT NULL,
    225/45 R17
    后轮胎规格										`houluntaiguige` varchar(100) DEFAULT NULL,		
    225/45 R17
    备胎规格										`beitaiguige` varchar(100) DEFAULT NULL,
    无

安全装备

    主/副驾驶座安全气囊								`zhujiashizuoanquanqinang` int DEFAULT 0,
    主● / 副●										`fujiashizuoanquanqinang` int DEFAULT 0,
    前/后排侧气囊									`qianpaiceqinang`  int DEFAULT 0,
    前● / 后-										`houpaiceqinang` int DEFAULT 0,
    前/后排头部气囊(气帘)							`qianpaitoubuqinang` int DEFAULT 0,
    前● / 后●										`houpaitoubuqinang` int DEFAULT 0,
    膝部气囊										`xibuqinang`  int DEFAULT 0,
    -
    胎压监测装置									`taiyajiancezhuangzhi`  int DEFAULT 0,	
    ●
    零胎压继续行驶									`lingtaiyajixuxingshi` int DEFAULT 0,	
    ●
    安全带未系提示									`anquandaiweijitishi`  int DEFAULT 0,
    ●
    ISOFIX儿童座椅接口								`isofixertongzuoyijiekou`  int DEFAULT 0,
    ●
    发动机电子防盗									`fadongjidianzifangdao` int DEFAULT 0,
    ●
    车内中控锁										`cheneizhongkongsuo` int DEFAULT 0,
    ●
    遥控钥匙										`yaokongyaoshi` int DEFAULT 0,
    ●
    无钥匙启动系统									`wuyaoshiqidongxitong` int DEFAULT 0,
    ●
    无钥匙进入系统									`wuyaoshijinruxitong`  int DEFAULT 0,
    ○

操控配置

    ABS防抱死										`absfangbaosi` int DEFAULT 0,
    ●
    制动力分配(EBD/CBC等)							`zhidonglifenpei` int DEFAULT 0,
    ●
    刹车辅助(EBA/BAS/BA等)							`shachefuzhu` int DEFAULT 0,
    ●
    牵引力控制(ASR/TCS/TRC等)						`qianyinlikongzhi` int DEFAULT 0,
    ●
    车身稳定控制(ESC/ESP/DSC等)						`cheshenwendingkongzhi` int DEFAULT 0,
    ●
    上坡辅助										`shangpofuzhu` int DEFAULT 0,
    ●
    自动驻车										`zidongzhuche`  int DEFAULT 0,
    -
    陡坡缓降										`doupohuanjiang` int DEFAULT 0,
    -
    可变悬架										`kebianxuanjia` int DEFAULT 0,
    (选装软硬调节)
    空气悬架										`kongqixuanjia` int DEFAULT 0,
    -

外部配置

    电动天窗										`diandongtianchuang` int DEFAULT 0,
    ●
    全景天窗										`quanjingtianchuang` int DEFAULT 0,
    ●
    运动外观套件									`yundongwaiguantaojian` int DEFAULT 0,
    -
    铝合金轮圈										`lvhejinlunquan` int DEFAULT 0,
    ●
    电动吸合门										`diandongxihemen` int DEFAULT 0,
    -
    侧滑门											`cehuamen` int DEFAULT 0,
    -
    电动后备厢										`diandonghoubeixiang` int DEFAULT 0,
    -
    感应后备厢										`ganyinghoubeixiang` int DEFAULT 0,
    -
    车顶行李架										`chedingxinglijia` int DEFAULT 0,
    ○

内部配置

    真皮方向盘										`zhenpifangxiangpan` int DEFAULT 0,
    ●
    方向盘调节										`fangxiangpantiaojie` varchar(100) DEFAULT NULL,	
    上下+前后调节
    方向盘电动调节									`fangxiangpandiandongtiaojie` int DEFAULT 0,
    -
    多功能方向盘									`donggongnengfangxiangpan` int DEFAULT 0,
    ●
    方向盘换挡										`fangxiangpanhuandang` int DEFAULT 0,
    -
    方向盘加热										`fangxiangpanjiare` int DEFAULT 0,
    -
    定速巡航										`dingsuxunhang` int DEFAULT 0,
    ●
    前/后驻车雷达									`qianzhucheleida` int DEFAULT 0,
    前○ / 后●										`houzhucheleida` int DEFAULT 0,	
    倒车视频影像									`daocheshipinyingxiang` int DEFAULT 0,
    ○
    行车电脑显示屏									`xingchediannaoxianshiping` int DEFAULT 0,
    ●
    全液晶仪表盘									`quanyejingyibiaopan` int DEFAULT 0,
    -

座椅配置

    座椅材质										`zuoyipizhi` varchar(100) DEFAULT NULL,
    皮/织物混搭(选装真皮)
    座椅高低调节									`zuoyigaoditiaojie` int DEFAULT 0,
    -
    腰部支撑调节									`yaobuzhichengtiaojie` int DEFAULT 0,
    -
    肩部支撑调节									`jianbuzhichengtiaojie` int DEFAULT 0,	
    -
    主/副驾驶座电动调节								`zhujiashizuodiandongtiaojie` int DEFAULT 0,
    主● / 副●										`fujiashizuodiandongtiaojie` int DEFAULT 0,
    后排座椅电动调节								`houpaizuoyidiandongtiaojie` int DEFAULT 0,
    -
    前/后排座椅加热									`qianpaizuoyijiare` int DEFAULT 0,
    前○ / 后-										`houpaizuoyijiare` int DEFAULT 0,
    前/后排座椅通风									`qianpaizuoyitongfeng` int DEFAULT 0,	
    -												`houpaizuoyitongfeng` int DEFAULT 0,

多媒体配置

    GPS导航系统										`gpsdaohangxitong` int DEFAULT 0,
    ●
    中控台彩色大屏									`zhongkongtaicaisedaping`  int DEFAULT 0,
    ●
    蓝牙/车载电话									`lanyachezaidianhua` int DEFAULT 0,
    ●
    外接音源接口									`waijieyinyuanjiekou` varchar(100) DEFAULT NULL,
    USB+AUX
    多媒体系统										`duomeitixitong` varchar(100) DEFAULT NULL,
    -
    扬声器数量										`yangshengqishuliang`	varchar(100) DEFAULT NULL,
    10-11喇叭

灯光配置

    近光灯											`jinguangdeng` varchar(100) DEFAULT NULL,
    LED
    远光灯											`yuanguangdeng` varchar(100) DEFAULT NULL,
    LED
    日间行车灯										`rijianxingchedeng` int DEFAULT 0,
    ●
    自适应远近光									`zishiyingyuanjindeng` int DEFAULT 0,	
    ○
    自动头灯										`zidongtoudeng` int DEFAULT 0,
    ●
    转向辅助灯										`zhuanxiangfuzhudeng` int DEFAULT 0,
    -
    转向头灯										`zhuangxiangtoudeng` int DEFAULT 0,
    ○
    前雾灯											`qianwudeng` int DEFAULT 0,
    ●
    大灯高度可调									`dadenggaoduketiao` int DEFAULT 0,
    ●
    大灯清洗装置									`dadengqingxizhuangzhi` int DEFAULT 0,
    -

玻璃/后视镜

    前/后电动车窗									`qiandiandongchechuang` int DEFAULT 0,
    前● / 后●										`houdiandongchengchuang` int DEFAULT 0,	
    车窗防夹手功能									`chechuangfangjiashougongneng` int DEFAULT 0,
    ●
    后视镜电动调节									`houshijingdiandongtiaojie` int DEFAULT 0,
    ●
    后视镜加热										`houshijingjiare` int DEFAULT 0,
    ●
    内/外后视镜自动防眩目							`neihoushijingzidongfangxunmu` int DEFAULT 0,
    内● / 外○										`waihoushijingzidongfangxunmu` int DEFAULT 0,
    后视镜电动折叠									`houshijingdiandongzhedie` int DEFAULT 0,
    ●
    遮阳板化妆镜									`zheyangbanhuazhuangjing` int DEFAULT 0,
    ●
    后雨刷											`houyushua` int DEFAULT 0,
    ●
    感应雨刷										`ganyingyushua` int DEFAULT 0,
    ●

空调/冰箱

    空调控制方式									`kongtiaokongzhifangshi`  varchar(100) DEFAULT NULL,
    自动●
    后排独立空调									`houpaidulikongtiao` int DEFAULT 0,
    -
    后座出风口										`houzuochufengkou` int DEFAULT 0,
    ●
    温度分区控制									`wendufenqukongzhi` int DEFAULT 0,
    ●
    车内空气调节/花粉过滤							`cheneikongqitiaojie` int DEFAULT 0,
    -
    车载冰箱										`chezaibingxiang` int DEFAULT 0,
    -

高科技配置

    自动泊车入位									`zidongpocheruwei` int DEFAULT 0,
    ○
    发动机启停技术									`fadongjiqitingjishu` int DEFAULT 0,
    ●
    并线辅助										`bingxianfuzhu` int DEFAULT 0,
    -
    车道偏离预警系统								`chedaopianliyujingxitong` int DEFAULT 0,	
    -
    主动刹车/主动安全系统							`zhudongshachexitong` int DEFAULT 0,
    -
    整体主动转向系统								`zhengtizhudongzhuanxiangxitong` int DEFAULT 0,
    -
    夜视系统										`yeshixitong` int DEFAULT 0,
    -
    中控液晶屏分屏显示								`zhongkongyejingpingfenpingxianshi` int DEFAULT 0,
    -
    自适应巡航										`zishiyingxunhang` int DEFAULT 0,
    -
    全景摄像头										`quanjingshexiangtou` int DEFAULT 0,
    -
