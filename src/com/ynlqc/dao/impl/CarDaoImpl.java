package com.ynlqc.dao.impl;

import java.sql.SQLException;
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
		String sql = "select * from car where is_hot = 1 order by car_date desc limit 9";
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

	@Override
	public int getTotalCount(int type_id, int model_id, double down_payment, double month_payment, String search_key)
			throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 查询所有车子
	 */
	@Override
	public List<Car> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from car";
		return qr.query(sql, new BeanListHandler<>(Car.class));
	}

	@Override
	public void add(Car bean) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into car values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		qr.update(sql, bean.getCar_id(), bean.getCar_name(), bean.getCar_date(), bean.getIs_hot(), bean.getCar_flag(),
				bean.getGuide_price(), bean.getDeposit(), bean.getDown_payment(), bean.getMonth_payment(),
				bean.getPay_description(), bean.getCar_image(), bean.getHot_image(), bean.getBody_structure(),
				bean.getLength(), bean.getWidth(), bean.getHeight(), bean.getEngine(), bean.getGearbox(),
				bean.getDrive_mode(), bean.getFuel_form(), bean.getCom_fuel_consumption(), bean.getBody_color(),
				bean.getDescription(), bean.getBrand().getBrand_id(), bean.getModel().getModel_id(),
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
		String sql = "update car set " + "car_name=?,is_hot=?,car_flag=?,guide_price=?,"
				+ "deposit=?,down_payment=?,month_payment=?,pay_description=?,"
				+ "car_image=?, hot_image=?,body_structure=?,length=?," + "width=?,height=?,engine=?,gearbox=?,"
				+ "drive_mode=?,fuel_form=?,com_fuel_consumption=?,body_color=?,"
				+ "description=?,brand_id=?,model_id=?,series_id=? " + "where car_id=?";
		qr.update(sql, bean.getCar_name(), bean.getIs_hot(), bean.getCar_flag(), bean.getGuide_price(),
				bean.getDeposit(), bean.getDown_payment(), bean.getMonth_payment(), bean.getPay_description(),
				bean.getCar_image(), bean.getHot_image(), bean.getBody_structure(), bean.getLength(), bean.getWidth(),
				bean.getHeight(), bean.getEngine(), bean.getGearbox(), bean.getDrive_mode(), bean.getFuel_form(),
				bean.getCom_fuel_consumption(), bean.getBody_color(), bean.getDescription(),
				bean.getBrand().getBrand_id(), bean.getModel().getModel_id(), bean.getSeries().getSeries_id(),
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

}
