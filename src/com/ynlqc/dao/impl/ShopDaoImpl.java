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

	
}
