package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.ModelDao;
import com.ynlqc.domain.Model;
import com.ynlqc.domain.Category;
import com.ynlqc.utils.DataSourceUtils;

public class ModelDaoImpl implements ModelDao {
	/**
	 * 查询所有品牌
	 */
	@Override
	public List<Model> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from model";
		return qr.query(sql, new BeanListHandler<>(Model.class));
	}

	@Override
	public List<Model> findHotModel() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from model where is_hot=1 ";
		return qr.query(sql, new BeanListHandler<>(Model.class));
	}

}
