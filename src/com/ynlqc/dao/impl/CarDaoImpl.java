package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.log4j.Logger;

import com.ynlqc.dao.CarDao;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;
import com.ynlqc.utils.DataSourceUtils;

public class CarDaoImpl implements CarDao {
	public static Logger logger = Logger.getLogger(CarDaoImpl.class);
	@Override
	public List<Car> findNew() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Car> findHot() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from car where is_hot = 1 order by car_date desc limit 9";
		return qr.query(sql, new BeanListHandler<>(Car.class));
	}

	@Override
	public Car getByCarId(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from car where car_id = ? limit 1";
		return qr.query(sql, new BeanHandler<>(Car.class),car_id);
	}

	@Override
	public List<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from car where brand_id = ? limit ?,?";
		return qr.query(sql, new BeanListHandler<>(Car.class),brand_id,(currPage-1)*pageSize,pageSize);
		 
	}
	/**
	 * 查询当前品牌的总条数
	 */
	@Override
	public int getBrandTotalCount(int brand_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select count(*) from car where brand_id = ?";
		return ((Long)qr.query(sql, new ScalarHandler(), brand_id)).intValue();
	}

	

	@Override
	public List<Car> findByBrand(int type_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from car where brand_id = ?";
		return qr.query(sql, new BeanListHandler<>(Car.class),type_id);
		 
	}

	/**
	 * 首付的区间是【down_payment，down_payment+10000】
	 * 月供的区间是【month_payment，month_payment+1000】
	 */
	@Override
	public List<Car> findByPage(int currPage, int pageSize, int brand_id, int model_id, double down_payment,
			double month_payment, String search_key) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from car where "+
		           (brand_id==-1?"brand_id > ?":"brand_id = ? ")+" and "+
		           (model_id==-1?"model_id > ?":"model_id = ? ")+" and "+
		           "down_payment > ? and down_payment< ?"+" and "+
		           "month_payment > ? and month_payment< ?"+" and "+
				    "car_name like ? ";
		logger.debug("findByPage sql:"+sql);
		return qr.query(sql, new BeanListHandler<>(Car.class),
				        brand_id,
				        model_id,
				        down_payment,
				        (down_payment==-1.0?10000000.0:down_payment+10000),
				        month_payment,
				        (month_payment==-1.0?10000000.0:month_payment+1000),
				        "%"+search_key+"%");
	}

	@Override
	public int getTotalCount(int type_id, int model_id, double down_payment, double month_payment, String search_key)
			throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
