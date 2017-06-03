package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.BrandDao;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Category;
import com.ynlqc.utils.DataSourceUtils;

public class BrandDaoImpl implements BrandDao {
	/**
	 * 查询所有品牌
	 */
	@Override
	public List<Brand> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from brand";
		return qr.query(sql, new BeanListHandler<>(Brand.class));
	}

	@Override
	public List<Brand> findHotBrand() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from brand where is_hot=1 ";
		return qr.query(sql, new BeanListHandler<>(Brand.class));
	}

}
