package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.apache.log4j.Logger;

import com.ynlqc.dao.CarDao;
import com.ynlqc.dao.CityDao;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.City;
import com.ynlqc.domain.PageBean;
import com.ynlqc.utils.DataSourceUtils;

public class CityDaoImpl implements CityDao {
	public static Logger logger = Logger.getLogger(CityDaoImpl.class);

	@Override
	public void add(City bean) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="insert into city  values(?,?)";
		qr.update(sql,bean.getCity_id(),bean.getName());
		
	}

	@Override
	public List<City> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from city";
		return qr.query(sql, new BeanListHandler<>(City.class));
	}

	@Override
	public City getById(String cid) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from city where city_id=?";
		return qr.query(sql, new BeanHandler<>(City.class),cid);
	}

	@Override
	public void update(City bean) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update city set name=? where city_id=?";
		qr.update(sql,bean.getName(),bean.getCity_id());
		
	}

	@Override
	public void delete(String city_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="delete from city where city_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, city_id);
		
	}
	

}
