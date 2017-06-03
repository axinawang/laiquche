package com.ynlqc.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.SeriesDao;
import com.ynlqc.domain.Series;
import com.ynlqc.utils.DataSourceUtils;

public class SeriesDaoImpl implements SeriesDao {
	/**
	 * 查询所有品牌
	 */
	@Override
	public List<Series> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from series";
		return qr.query(sql, new BeanListHandler<>(Series.class));
	}

	@Override
	public List<Series> findHotSeries() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from series where is_hot=1 ";
		return qr.query(sql, new BeanListHandler<>(Series.class));
	}

}
