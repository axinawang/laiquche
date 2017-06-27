package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.BrandDao;
import com.ynlqc.dao.ShopDao;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Category;
import com.ynlqc.domain.Shop;
import com.ynlqc.utils.DataSourceUtils;

public class ShopDaoImpl implements ShopDao {
	/**
	 * 查询所有
	 */
	@Override
	public List<Shop> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from shop";
		return qr.query(sql, new BeanListHandler<>(Shop.class));
	}

	@Override
	public List<Shop> findByCity(String city_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from shop where city_id = ?";
		return qr.query(sql, new BeanListHandler<>(Shop.class),city_id);
	}

	@Override
	public void updateCid(String city_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="update shop set city_id = null where city_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, city_id);
		
	}

	@Override
	public void updateCarId(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="update shop_car set car_id = null where car_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, car_id);
		
	}

	
}
