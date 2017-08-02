package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.log4j.Logger;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.ynlqc.dao.CarDao;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Model;
import com.ynlqc.domain.PageBean;
import com.ynlqc.domain.Series;
import com.ynlqc.domain.Shop;
import com.ynlqc.utils.DataSourceUtils;

public class CarDaoImpl implements CarDao {
	public static Logger logger = Logger.getLogger(CarDaoImpl.class);

	@Override
	public List<Car> findNew() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 
	 * 寻找热门车，最多9款，按创建时间降序排列
	 */
	@Override
	public List<Car> findHot() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car where is_hot = 1 order by car_date desc";
		return qr.query(sql, new BeanListHandler<>(Car.class));
	}

	/**
	 * 按照车的id查询该车，并设置该车的品牌对象，车型对象，车系对象
	 */
	@Override
	public Car getByCarId(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car where car_id = ? limit 1";
		Car car = qr.query(sql, new BeanHandler<>(Car.class), car_id);
		// 设置该车的品牌对象
		sql = "select * from brand where brand_id in (select brand_id from car where car_id = ? ) limit 1";
		Brand brand = qr.query(sql, new BeanHandler<>(Brand.class), car_id);
		car.setBrand(brand);
		// 车型对象
		sql = "select * from model where model_id in (select model_id from car where car_id = ? ) limit 1";
		Model model = qr.query(sql, new BeanHandler<>(Model.class), car_id);
		car.setModel(model);
		// 车系对象
		sql = "select * from series where series_id in (select series_id from car where car_id = ? ) limit 1";
		Series series = qr.query(sql, new BeanHandler<>(Series.class), car_id);
		car.setSeries(series);

		return car;
	}
	/**
	 * 按品牌查询并进行分页
	 */
	@Override
	public List<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car where brand_id = ? limit ?,?";
		return qr.query(sql, new BeanListHandler<>(Car.class), brand_id, (currPage - 1) * pageSize, pageSize);

	}

	/**
	 * 查询当前品牌的总条数
	 */
	@Override
	public int getBrandTotalCount(int brand_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from car where brand_id = ?";
		return ((Long) qr.query(sql, new ScalarHandler(), brand_id)).intValue();
	}

	@Override
	public List<Car> findByBrand(int type_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car where brand_id = ?";
		return qr.query(sql, new BeanListHandler<>(Car.class), type_id);

	}

	/**
	 * 首付的区间是【down_payment，down_payment+10000】
	 * 月供的区间是【month_payment，month_payment+1000】
	 */
	@Override
	public List<Car> findByPage(int currPage, int pageSize, int brand_id, int model_id, int series_id,
			double down_payment, double month_payment, String search_key) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car where " + (brand_id == -1 ? "brand_id > ?" : "brand_id = ? ") + " and "
				+ (model_id == -1 ? "model_id > ?" : "model_id = ? ") + " and "
				+ (series_id == -1 ? "series_id > ?" : "series_id = ? ") + " and "
				+ "down_payment >= ? and down_payment<= ?" + " and " + "month_payment >= ? and month_payment<= ?"
				+ " and "
				+ "(brand_id in (SELECT brand_id from brand where brand_name like ?) or series_id in (SELECT series_id from series where series_name like ?))";
		logger.debug("findByPage sql:" + sql);
		System.out.println("CarDaoImpl like :" + "%" + search_key + "%");
		return qr.query(sql, new BeanListHandler<>(Car.class), brand_id, model_id, series_id, down_payment, // 如果首付是5万以上，首付的上限是一千万
				(down_payment == -1.0 ? 10000000.0 : (down_payment == 50000 ? 10000000.0 : down_payment + 10000)),
				month_payment, // 如果月供是5千以上，月供的上限是一千万
				(month_payment == -1.0 ? 10000000.0 : (month_payment == 5000 ? 10000000.0 : month_payment + 1000)),
				"%" + search_key + "%", "%" + search_key + "%");
	}
	/**
	 * 查询所有车子
	 */
	@Override
	public List<Car> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car order by date desc";
		return qr.query(sql, new BeanListHandler<>(Car.class));
	}
/**
 *   `car_id` varchar(32)  NOT NULL,
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
`whole_description` text DEFAULT NULL,
`part_image1` varchar(200) DEFAULT NULL,
`part_description1` text DEFAULT NULL,
`part_image2` varchar(200) DEFAULT NULL,
`part_description2` text DEFAULT NULL,
`part_image3` varchar(200) DEFAULT NULL,
`part_description3` text DEFAULT NULL,
`part_image4` varchar(200) DEFAULT NULL,
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
 */
	@Override
	public void add(Car bean) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into car"+
		" (car_id,car_name,car_date,is_hot,car_flag,guide_price,deposit,down_payment,month_payment,"+
				"pay_description,car_image,hot_image,whole_image,whole_title,whole_description,part_image1,"+
		"part_title1,part_description1,part_image2,part_title2,part_description2,part_image3,part_title3,part_description3,"+
		"part_image4,part_title4,part_description4,length,width,height,fadongji,biansuxiang,"+
		"zongheyouhao,cheliangpeise,zhouju,qianlunju,houlunju,zuixiaolidijianxi,"+
		"zhengchezhiliang,cheshenjiegou,chemenshu,zuoweishu,youxiangrongji,"+
		"xinglixiangrongji,fadongjixinghao,pailiang,jinqixingshi,qigangpailiexingshi,"+
		"qigangshu,meigangqimenshu,gangjing,xingcheng,zuidamali,zuidagonglv,"+
		"zuidagonglvzhuansu,zuidaniuju,zuidaniujuzhuansu,fadongjiteyoujishu,"+
		"ranliaoxingshi,ranyoubiaohao,gongyoufangshi,ganggaicailiao,gangticailiao,"+
		"huanbaobiaozhun,dangweigeshu,biansuxiangleixing,qudongfangshi,siquxingshi,"+
		"zhongyangchasuqijiegou,qianxuanjialeixing,houxuanjialeixing,zhulileixing,"+
		"chetijiegou,qianzhidongqileixing,houzhidongqileixing,zhuchezhidongleixing,"+
		"qianluntaiguige,houluntaiguige,beitaiguige,zhujiashizuoanquanqinang,"+
		"fujiashizuoanquanqinang,qianpaiceqinang,houpaiceqinang,qianpaitoubuqinang,"+
		"houpaitoubuqinang,xibuqinang,taiyajiancezhuangzhi,lingtaiyajixuxingshi,"+
		"anquandaiweijitishi,isofixertongzuoyijiekou,fadongjidianzifangdao,"+
		"cheneizhongkongsuo,yaokongyaoshi,wuyaoshiqidongxitong,wuyaoshijinruxitong,"+
		"absfangbaosi,zhidonglifenpei,shachefuzhu,qianyinlikongzhi,"+
		"cheshenwendingkongzhi,shangpofuzhu,zidongzhuche,doupohuanjiang,"+
		"kebianxuanjia,kongqixuanjia,diandongtianchuang,quanjingtianchuang,"+
		"yundongwaiguantaojian,lvhejinlunquan,diandongxihemen,cehuamen,"+
		"diandonghoubeixiang,ganyinghoubeixiang,chedingxinglijia,zhenpifangxiangpan,"+
		"fangxiangpantiaojie,fangxiangpandiandongtiaojie,duogongnengfangxiangpan,"+
		"fangxiangpanhuandang,fangxiangpanjiare,dingsuxunhang,qianzhucheleida,"+
		"houzhucheleida,daocheshipinyingxiang,xingchediannaoxianshiping,"+
		"quanyejingyibiaopan,zuoyicaizhi,zuoyigaoditiaojie,yaobuzhichengtiaojie,"+                
        "jianbuzhichengtiaojie,zhujiashizuodiandongtiaojie,fujiashizuodiandongtiaojie,"+
		"houpaizuoyidiandongtiaojie,qianpaizuoyijiare,houpaizuoyijiare,"+
        "qianpaizuoyitongfeng,houpaizuoyitongfeng,gpsdaohangxitong,zhongkongtaicaisedaping,"+
		"lanyachezaidianhua,waijieyinyuanjiekou,duomeitixitong,yangshengqishuliang,"+
        "jinguangdeng,yuanguangdeng,rijianxingchedeng,zishiyingyuanjindeng,zidongtoudeng,"+
		"zhuanxiangfuzhudeng,zhuangxiangtoudeng,qianwudeng,dadenggaoduketiao,"+
        "dadengqingxizhuangzhi,qiandiandongchechuang,houdiandongchengchuang,"+
		"chechuangfangjiashougongneng,houshijingdiandongtiaojie,houshijingjiare,"+
        "neihoushijingzidongfangxunmu,waihoushijingzidongfangxunmu,houshijingdiandongzhedie,"+
		"zheyangbanhuazhuangjing,houyushua,ganyingyushua,kongtiaokongzhifangshi,"+
        "houpaidulikongtiao,houzuochufengkou,wendufenqukongzhi,cheneikongqitiaojie,"+
		"chezaibingxiang,zidongpocheruwei,fadongjiqitingjishu,bingxianfuzhu,"+
        "chedaopianliyujingxitong,zhudongshachexitong,zhengtizhudongzhuanxiangxitong,"+
		"yeshixitong,zhongkongyejingpingfenpingxianshi,zishiyingxunhang,quanjingshexiangtou,"+
        "description,brand_id,model_id,series_id)"+
		" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"+
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"+
				")";
		qr.update(sql, bean.getCar_id(),
				bean.getCar_name(),
				bean.getCar_date(),
				bean.getIs_hot(),
				bean.getCar_flag(),
				bean.getGuide_price(),
				bean.getDeposit(), 
				bean.getDown_payment(), 
				bean.getMonth_payment(),
				bean.getPay_description(),
				bean.getCar_image(),
				bean.getHot_image(), 
				bean.getWhole_image(),
				bean.getWhole_title(),
				bean.getWhole_description(),
				bean.getPart_image1(),
				bean.getPart_title1(),
				bean.getPart_description1(),
				bean.getPart_image2(),
				bean.getPart_title2(),
				bean.getPart_description2(),
				bean.getPart_image3(),
				bean.getPart_title3(),
				bean.getPart_description3(),
				bean.getPart_image4(),
				bean.getPart_title4(),
				bean.getPart_description4(),
				bean.getLength(), 
				bean.getWidth(),
				bean.getHeight(), 
				bean.getFadongji(),
				bean.getBiansuxiang(),
				bean.getZongheyouhao(),
				bean.getCheliangpeise(), 
				bean.getZhouju(),
				bean.getQianlunju(),
				bean.getHoulunju(),
				bean.getZuixiaolidijianxi(),
				bean.getZhengchezhiliang(),
				bean.getCheshenjiegou(),
				bean.getChemenshu(),
				bean.getZuoweishu(),
				bean.getYouxiangrongji(),
				bean.getXinglixiangrongji(),
				bean.getFadongjixinghao(),
				bean.getPailiang(),
				bean.getJinqixingshi(),
				bean.getQigangpailiexingshi(),
				bean.getQigangshu(),
				bean.getMeigangqimenshu(),
				bean.getGangjing(),
				bean.getXingcheng(),
				bean.getZuidamali(),
				bean.getZuidagonglv(),
				bean.getZuidagonglvzhuansu(),
				bean.getZuidaniuju(),
				bean.getZuidaniujuzhuansu(),
				bean.getFadongjiteyoujishu(),
				bean.getRanliaoxingshi(),
				bean.getRanyoubiaohao(),
				bean.getGongyoufangshi(),
				bean.getGanggaicailiao(),
				bean.getGangticailiao(),
				bean.getHuanbaobiaozhun(),
				bean.getDangweigeshu(),
				bean.getBiansuxiangleixing(),
				bean.getQudongfangshi(),
				bean.getSiquxingshi(),
				bean.getZhongyangchasuqijiegou(),
				bean.getQianxuanjialeixing(),
				bean.getHouxuanjialeixing(),
				bean.getZhulileixing(),
				bean.getChetijiegou(),
				bean.getQianzhidongqileixing(),
				bean.getHouzhidongqileixing(),
				bean.getZhuchezhidongleixing(),
				bean.getQianluntaiguige(),
				bean.getHouluntaiguige(),
				bean.getBeitaiguige(),
				bean.getZhujiashizuoanquanqinang(),
				bean.getFujiashizuoanquanqinang(),
				bean.getQianpaiceqinang(),
				bean.getHoupaiceqinang(),
				bean.getQianpaitoubuqinang(),
				bean.getHoupaitoubuqinang(),
				bean.getXibuqinang(),
				bean.getTaiyajiancezhuangzhi(),
				bean.getLingtaiyajixuxingshi(),
				bean.getAnquandaiweijitishi(),
				bean.getIsofixertongzuoyijiekou(),
				bean.getFadongjidianzifangdao(),
				bean.getCheneizhongkongsuo(),
				bean.getYaokongyaoshi(),
				bean.getWuyaoshiqidongxitong(),
				bean.getWuyaoshijinruxitong(),
				bean.getAbsfangbaosi(),
				bean.getZhidonglifenpei(),
				bean.getShachefuzhu(),
				bean.getQianyinlikongzhi(),
				bean.getCheshenwendingkongzhi(),
				bean.getShangpofuzhu(),
				bean.getZidongzhuche(),
				bean.getDoupohuanjiang(),
				bean.getKebianxuanjia(),
				bean.getKongqixuanjia(),
				bean.getDiandongtianchuang(),
				bean.getQuanjingtianchuang(),
				bean.getYundongwaiguantaojian(),
				bean.getLvhejinlunquan(),
				bean.getDiandongxihemen(),
				bean.getCehuamen(),
				bean.getDiandonghoubeixiang(),
				bean.getGanyinghoubeixiang(),
				bean.getChedingxinglijia(),
				bean.getZhenpifangxiangpan(),
				bean.getFangxiangpantiaojie(),
				bean.getFangxiangpandiandongtiaojie(),
				bean.getDuogongnengfangxiangpan(),
				bean.getFangxiangpanhuandang(),
				bean.getFangxiangpanjiare(),
				bean.getDingsuxunhang(),
				bean.getQianzhucheleida(),
				bean.getHouzhucheleida(),
				bean.getDaocheshipinyingxiang(),
				bean.getXingchediannaoxianshiping(),
				bean.getQuanyejingyibiaopan(),
				bean.getZuoyicaizhi(),
				bean.getZuoyigaoditiaojie(),
				bean.getYaobuzhichengtiaojie(),
				bean.getJianbuzhichengtiaojie(),
				bean.getZhujiashizuodiandongtiaojie(),
				bean.getFujiashizuodiandongtiaojie(),
				bean.getHoupaizuoyidiandongtiaojie(),
				bean.getQianpaizuoyijiare(),
				bean.getHoupaizuoyijiare(),
				bean.getQianpaizuoyitongfeng(),
				bean.getHoupaizuoyitongfeng(),
				bean.getGpsdaohangxitong(),
				bean.getZhongkongtaicaisedaping(),
				bean.getLanyachezaidianhua(),
				bean.getWaijieyinyuanjiekou(),
				bean.getDuomeitixitong(),
				bean.getYangshengqishuliang(),
				bean.getJinguangdeng(),
				bean.getYuanguangdeng(),
				bean.getRijianxingchedeng(),
				bean.getZishiyingyuanjindeng(),
				bean.getZidongtoudeng(),
				bean.getZhuanxiangfuzhudeng(),
				bean.getZhuangxiangtoudeng(),
				bean.getQianwudeng(),
				bean.getDadenggaoduketiao(),
				bean.getDadengqingxizhuangzhi(),
				bean.getQiandiandongchechuang(),
				bean.getHoudiandongchengchuang(),
				bean.getChechuangfangjiashougongneng(),
				bean.getHoushijingdiandongtiaojie(),
				bean.getHoushijingjiare(),
				bean.getNeihoushijingzidongfangxunmu(),
				bean.getWaihoushijingzidongfangxunmu(),
				bean.getHoushijingdiandongzhedie(),
				bean.getZheyangbanhuazhuangjing(),
				bean.getHouyushua(),
				bean.getGanyingyushua(),
				bean.getKongtiaokongzhifangshi(),
				bean.getHoupaidulikongtiao(),
				bean.getHouzuochufengkou(),
				bean.getWendufenqukongzhi(),
				bean.getCheneikongqitiaojie(),
				bean.getChezaibingxiang(),
				bean.getZidongpocheruwei(),
				bean.getFadongjiqitingjishu(),
				bean.getBingxianfuzhu(),
				bean.getChedaopianliyujingxitong(),
				bean.getZhudongshachexitong(),
				bean.getZhengtizhudongzhuanxiangxitong(),
				bean.getYeshixitong(),
				bean.getZhongkongyejingpingfenpingxianshi(),
				bean.getZishiyingxunhang(),
				bean.getQuanjingshexiangtou(),
				bean.getDescription(), 
				bean.getBrand().getBrand_id(), 
				bean.getModel().getModel_id(),
				bean.getSeries().getSeries_id());

	}

	/**
	 * `car_id` varchar(32) NOT NULL,
	 * 
	 * 
	 * `` int(11) DEFAULT 0, `` double DEFAULT NULL, `` double DEFAULT NULL, ``
	 * double DEFAULT NULL, `` double DEFAULT NULL, `` text DEFAULT NULL, ``
	 * varchar(200) DEFAULT NULL, `` varchar(200) DEFAULT NULL, `` varchar(100)
	 * DEFAULT NULL, `` int(11) DEFAULT 0, `` int(11) DEFAULT 0, `` int(11)
	 * DEFAULT 0, `` varchar(100) DEFAULT NULL, `` varchar(100) DEFAULT NULL, ``
	 * varchar(100) DEFAULT NULL, `` varchar(20) DEFAULT NULL, `` varchar(100)
	 * DEFAULT NULL, `` varchar(100) DEFAULT NULL, `` text DEFAULT NULL, `` int,
	 * `` int, `` int,
	 */
	@Override
	public void update(Car bean) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update car set "+
				"car_name=?,car_date=?,is_hot=?,car_flag=?,guide_price=?,deposit=?,down_payment=?,month_payment=?,"+
						"pay_description=?,car_image=?,hot_image=?,whole_image=?,whole_title=?,whole_description=?,part_image1=?,"+
				"part_title1=?,part_description1=?,part_image2=?,part_title2=?,part_description2=?,part_image3=?,part_title3=?,part_description3=?,"+
				"part_image4=?,part_title4=?,part_description4=?,length=?,width=?,height=?,fadongji=?,biansuxiang=?,"+
				"zongheyouhao=?,cheliangpeise=?,zhouju=?,qianlunju=?,houlunju=?,zuixiaolidijianxi=?,"+
				"zhengchezhiliang=?,cheshenjiegou=?,chemenshu=?,zuoweishu=?,youxiangrongji=?,"+
				"xinglixiangrongji=?,fadongjixinghao=?,pailiang=?,jinqixingshi=?,qigangpailiexingshi=?,"+
				"qigangshu=?,meigangqimenshu=?,gangjing=?,xingcheng=?,zuidamali=?,zuidagonglv=?,"+
				"zuidagonglvzhuansu=?,zuidaniuju=?,zuidaniujuzhuansu=?,fadongjiteyoujishu=?,"+
				"ranliaoxingshi=?,ranyoubiaohao=?,gongyoufangshi=?,ganggaicailiao=?,gangticailiao=?,"+
				"huanbaobiaozhun=?,dangweigeshu=?,biansuxiangleixing=?,qudongfangshi=?,siquxingshi=?,"+
				"zhongyangchasuqijiegou=?,qianxuanjialeixing=?,houxuanjialeixing=?,zhulileixing=?,"+
				"chetijiegou=?,qianzhidongqileixing=?,houzhidongqileixing=?,zhuchezhidongleixing=?,"+
				"qianluntaiguige=?,houluntaiguige=?,beitaiguige=?,zhujiashizuoanquanqinang=?,"+
				"fujiashizuoanquanqinang=?,qianpaiceqinang=?,houpaiceqinang=?,qianpaitoubuqinang=?,"+
				"houpaitoubuqinang=?,xibuqinang=?,taiyajiancezhuangzhi=?,lingtaiyajixuxingshi=?,"+
				"anquandaiweijitishi=?,isofixertongzuoyijiekou=?,fadongjidianzifangdao=?,"+
				"cheneizhongkongsuo=?,yaokongyaoshi=?,wuyaoshiqidongxitong=?,wuyaoshijinruxitong=?,"+
				"absfangbaosi=?,zhidonglifenpei=?,shachefuzhu=?,qianyinlikongzhi=?,"+
				"cheshenwendingkongzhi=?,shangpofuzhu=?,zidongzhuche=?,doupohuanjiang=?,"+
				"kebianxuanjia=?,kongqixuanjia=?,diandongtianchuang=?,quanjingtianchuang=?,"+
				"yundongwaiguantaojian=?,lvhejinlunquan=?,diandongxihemen=?,cehuamen=?,"+
				"diandonghoubeixiang=?,ganyinghoubeixiang=?,chedingxinglijia=?,zhenpifangxiangpan=?,"+
				"fangxiangpantiaojie=?,fangxiangpandiandongtiaojie=?,duogongnengfangxiangpan=?,"+
				"fangxiangpanhuandang=?,fangxiangpanjiare=?,dingsuxunhang=?,qianzhucheleida=?,"+
				"houzhucheleida=?,daocheshipinyingxiang=?,xingchediannaoxianshiping=?,"+
				"quanyejingyibiaopan=?,zuoyicaizhi=?,zuoyigaoditiaojie=?,yaobuzhichengtiaojie=?,"+                
		        "jianbuzhichengtiaojie=?,zhujiashizuodiandongtiaojie=?,fujiashizuodiandongtiaojie=?,"+
				"houpaizuoyidiandongtiaojie=?,qianpaizuoyijiare=?,houpaizuoyijiare=?,"+
		        "qianpaizuoyitongfeng=?,houpaizuoyitongfeng=?,gpsdaohangxitong=?,zhongkongtaicaisedaping=?,"+
				"lanyachezaidianhua=?,waijieyinyuanjiekou=?,duomeitixitong=?,yangshengqishuliang=?,"+
		        "jinguangdeng=?,yuanguangdeng=?,rijianxingchedeng=?,zishiyingyuanjindeng=?,zidongtoudeng=?,"+
				"zhuanxiangfuzhudeng=?,zhuangxiangtoudeng=?,qianwudeng=?,dadenggaoduketiao=?,"+
		        "dadengqingxizhuangzhi=?,qiandiandongchechuang=?,houdiandongchengchuang=?,"+
				"chechuangfangjiashougongneng=?,houshijingdiandongtiaojie=?,houshijingjiare=?,"+
		        "neihoushijingzidongfangxunmu=?,waihoushijingzidongfangxunmu=?,houshijingdiandongzhedie=?,"+
				"zheyangbanhuazhuangjing=?,houyushua=?,ganyingyushua=?,kongtiaokongzhifangshi=?,"+
		        "houpaidulikongtiao=?,houzuochufengkou=?,wendufenqukongzhi=?,cheneikongqitiaojie=?,"+
				"chezaibingxiang=?,zidongpocheruwei=?,fadongjiqitingjishu=?,bingxianfuzhu=?,"+
		        "chedaopianliyujingxitong=?,zhudongshachexitong=?,zhengtizhudongzhuanxiangxitong=?,"+
				"yeshixitong=?,zhongkongyejingpingfenpingxianshi=?,zishiyingxunhang=?,quanjingshexiangtou=?,"+
		        "description=?,brand_id=?,model_id=?,series_id=?"+
				" where car_id=?";
				qr.update(sql,
						bean.getCar_name(),
						bean.getCar_date(),
						bean.getIs_hot(),
						bean.getCar_flag(),
						bean.getGuide_price(),
						bean.getDeposit(), 
						bean.getDown_payment(), 
						bean.getMonth_payment(),
						bean.getPay_description(),
						bean.getCar_image(),
						bean.getHot_image(), 
						bean.getWhole_image(),
						bean.getWhole_title(),
						bean.getWhole_description(),
						bean.getPart_image1(),
						bean.getPart_title1(),
						bean.getPart_description1(),
						bean.getPart_image2(),
						bean.getPart_title2(),
						bean.getPart_description2(),
						bean.getPart_image3(),
						bean.getPart_title3(),
						bean.getPart_description3(),
						bean.getPart_image4(),
						bean.getPart_title4(),
						bean.getPart_description4(),
						bean.getLength(), 
						bean.getWidth(),
						bean.getHeight(), 
						bean.getFadongji(),
						bean.getBiansuxiang(),
						bean.getZongheyouhao(),
						bean.getCheliangpeise(), 
						bean.getZhouju(),
						bean.getQianlunju(),
						bean.getHoulunju(),
						bean.getZuixiaolidijianxi(),
						bean.getZhengchezhiliang(),
						bean.getCheshenjiegou(),
						bean.getChemenshu(),
						bean.getZuoweishu(),
						bean.getYouxiangrongji(),
						bean.getXinglixiangrongji(),
						bean.getFadongjixinghao(),
						bean.getPailiang(),
						bean.getJinqixingshi(),
						bean.getQigangpailiexingshi(),
						bean.getQigangshu(),
						bean.getMeigangqimenshu(),
						bean.getGangjing(),
						bean.getXingcheng(),
						bean.getZuidamali(),
						bean.getZuidagonglv(),
						bean.getZuidagonglvzhuansu(),
						bean.getZuidaniuju(),
						bean.getZuidaniujuzhuansu(),
						bean.getFadongjiteyoujishu(),
						bean.getRanliaoxingshi(),
						bean.getRanyoubiaohao(),
						bean.getGongyoufangshi(),
						bean.getGanggaicailiao(),
						bean.getGangticailiao(),
						bean.getHuanbaobiaozhun(),
						bean.getDangweigeshu(),
						bean.getBiansuxiangleixing(),
						bean.getQudongfangshi(),
						bean.getSiquxingshi(),
						bean.getZhongyangchasuqijiegou(),
						bean.getQianxuanjialeixing(),
						bean.getHouxuanjialeixing(),
						bean.getZhulileixing(),
						bean.getChetijiegou(),
						bean.getQianzhidongqileixing(),
						bean.getHouzhidongqileixing(),
						bean.getZhuchezhidongleixing(),
						bean.getQianluntaiguige(),
						bean.getHouluntaiguige(),
						bean.getBeitaiguige(),
						bean.getZhujiashizuoanquanqinang(),
						bean.getFujiashizuoanquanqinang(),
						bean.getQianpaiceqinang(),
						bean.getHoupaiceqinang(),
						bean.getQianpaitoubuqinang(),
						bean.getHoupaitoubuqinang(),
						bean.getXibuqinang(),
						bean.getTaiyajiancezhuangzhi(),
						bean.getLingtaiyajixuxingshi(),
						bean.getAnquandaiweijitishi(),
						bean.getIsofixertongzuoyijiekou(),
						bean.getFadongjidianzifangdao(),
						bean.getCheneizhongkongsuo(),
						bean.getYaokongyaoshi(),
						bean.getWuyaoshiqidongxitong(),
						bean.getWuyaoshijinruxitong(),
						bean.getAbsfangbaosi(),
						bean.getZhidonglifenpei(),
						bean.getShachefuzhu(),
						bean.getQianyinlikongzhi(),
						bean.getCheshenwendingkongzhi(),
						bean.getShangpofuzhu(),
						bean.getZidongzhuche(),
						bean.getDoupohuanjiang(),
						bean.getKebianxuanjia(),
						bean.getKongqixuanjia(),
						bean.getDiandongtianchuang(),
						bean.getQuanjingtianchuang(),
						bean.getYundongwaiguantaojian(),
						bean.getLvhejinlunquan(),
						bean.getDiandongxihemen(),
						bean.getCehuamen(),
						bean.getDiandonghoubeixiang(),
						bean.getGanyinghoubeixiang(),
						bean.getChedingxinglijia(),
						bean.getZhenpifangxiangpan(),
						bean.getFangxiangpantiaojie(),
						bean.getFangxiangpandiandongtiaojie(),
						bean.getDuogongnengfangxiangpan(),
						bean.getFangxiangpanhuandang(),
						bean.getFangxiangpanjiare(),
						bean.getDingsuxunhang(),
						bean.getQianzhucheleida(),
						bean.getHouzhucheleida(),
						bean.getDaocheshipinyingxiang(),
						bean.getXingchediannaoxianshiping(),
						bean.getQuanyejingyibiaopan(),
						bean.getZuoyicaizhi(),
						bean.getZuoyigaoditiaojie(),
						bean.getYaobuzhichengtiaojie(),
						bean.getJianbuzhichengtiaojie(),
						bean.getZhujiashizuodiandongtiaojie(),
						bean.getFujiashizuodiandongtiaojie(),
						bean.getHoupaizuoyidiandongtiaojie(),
						bean.getQianpaizuoyijiare(),
						bean.getHoupaizuoyijiare(),
						bean.getQianpaizuoyitongfeng(),
						bean.getHoupaizuoyitongfeng(),
						bean.getGpsdaohangxitong(),
						bean.getZhongkongtaicaisedaping(),
						bean.getLanyachezaidianhua(),
						bean.getWaijieyinyuanjiekou(),
						bean.getDuomeitixitong(),
						bean.getYangshengqishuliang(),
						bean.getJinguangdeng(),
						bean.getYuanguangdeng(),
						bean.getRijianxingchedeng(),
						bean.getZishiyingyuanjindeng(),
						bean.getZidongtoudeng(),
						bean.getZhuanxiangfuzhudeng(),
						bean.getZhuangxiangtoudeng(),
						bean.getQianwudeng(),
						bean.getDadenggaoduketiao(),
						bean.getDadengqingxizhuangzhi(),
						bean.getQiandiandongchechuang(),
						bean.getHoudiandongchengchuang(),
						bean.getChechuangfangjiashougongneng(),
						bean.getHoushijingdiandongtiaojie(),
						bean.getHoushijingjiare(),
						bean.getNeihoushijingzidongfangxunmu(),
						bean.getWaihoushijingzidongfangxunmu(),
						bean.getHoushijingdiandongzhedie(),
						bean.getZheyangbanhuazhuangjing(),
						bean.getHouyushua(),
						bean.getGanyingyushua(),
						bean.getKongtiaokongzhifangshi(),
						bean.getHoupaidulikongtiao(),
						bean.getHouzuochufengkou(),
						bean.getWendufenqukongzhi(),
						bean.getCheneikongqitiaojie(),
						bean.getChezaibingxiang(),
						bean.getZidongpocheruwei(),
						bean.getFadongjiqitingjishu(),
						bean.getBingxianfuzhu(),
						bean.getChedaopianliyujingxitong(),
						bean.getZhudongshachexitong(),
						bean.getZhengtizhudongzhuanxiangxitong(),
						bean.getYeshixitong(),
						bean.getZhongkongyejingpingfenpingxianshi(),
						bean.getZishiyingxunhang(),
						bean.getQuanjingshexiangtou(),
						bean.getDescription(), 
						bean.getBrand().getBrand_id(), 
						bean.getModel().getModel_id(),
						bean.getSeries().getSeries_id(),
						bean.getCar_id());

		
		
	}
/**
 * 删除该款车，但不提交事务
 */
	@Override
	public void delete(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql = "delete from car where car_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, car_id);

	}

/* (non-Javadoc)
 * @see com.ynlqc.dao.CarDao#getShopByCarId(java.lang.String)
 */
@Override
public List<Shop> getShopByCarId(String car_id) throws Exception {
	QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
	String sql = "select shop.shop_id ,shop.name,shop.addr,shop.tel from shop "
			+ "inner join shop_car where shop.shop_id=shop_car.shop_id and shop_car.car_id=? ";

	return qr.query(sql, new BeanListHandler<>(Shop.class),car_id);

}

/* (non-Javadoc)
 * @see com.ynlqc.dao.CarDao#getHotCarTotalCount()
 * 获取热门车的总数
 */
@Override
public int getHotCarTotalCount() throws Exception {
	QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
	String sql = "select count(*) from car where is_hot=1 ";
	return ((Long)qr.query(sql, new ScalarHandler())).intValue();
}

/* (non-Javadoc)
 * @see com.ynlqc.dao.CarDao#getTotalCount(int, int, int, double, double, java.lang.String)
 */
@Override
public int getTotalCount(int brand_id, int model_id, int series_id, double down_payment, double month_payment,
		String search_key) throws Exception {
	QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
	String sql = "select count(*) from car where " + (brand_id == -1 ? "brand_id > ?" : "brand_id = ? ") + " and "
			+ (model_id == -1 ? "model_id > ?" : "model_id = ? ") + " and "
			+ (series_id == -1 ? "series_id > ?" : "series_id = ? ") + " and "
			+ "down_payment >= ? and down_payment<= ?" + " and " + "month_payment >= ? and month_payment<= ?"
			+ " and "
			+ "(brand_id in (SELECT brand_id from brand where brand_name like ?) or series_id in (SELECT series_id from series where series_name like ?))";
	logger.debug("findByPage sql:" + sql);
	System.out.println("CarDaoImpl like :" + "%" + search_key + "%");
	return ((Long)qr.query(sql, new ScalarHandler(), brand_id, model_id, series_id, down_payment, // 如果首付是5万以上，首付的上限是一千万
			(down_payment == -1.0 ? 10000000.0 : (down_payment == 50000 ? 10000000.0 : down_payment + 10000)),
			month_payment, // 如果月供是5千以上，月供的上限是一千万
			(month_payment == -1.0 ? 10000000.0 : (month_payment == 5000 ? 10000000.0 : month_payment + 1000)),
			"%" + search_key + "%", "%" + search_key + "%")).intValue();
	
}

}
