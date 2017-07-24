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
import com.ynlqc.domain.City;
import com.ynlqc.domain.Shop;
import com.ynlqc.utils.DataSourceUtils;
import com.ynlqc.utils.UUIDUtils;

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

	
/**
 * `shop_id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `tel` varchar(40) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `city_id` varchar(32) DEFAULT NULL,
 */
	/**
	 * 添加门店，不提交事务
	 */
	@Override
	public void add(Shop bean) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql = "insert into shop values(?,?,?,?,?,?,?)";
		qr.update(DataSourceUtils.getConnection(),sql, bean.getShop_id(),bean.getName(),bean.getAddr(),bean.getTel(),bean.getImage(),bean.getDes(),bean.getCity().getCity_id());
		
	}

	

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.ShopDao#delete(java.lang.String)
	 */
	@Override
	public void delete(String shop_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql = "delete from shop where shop_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, shop_id);
		
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.ShopDao#getById(java.lang.String)
	 */
	@Override
	public Shop getById(String shop_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from shop where shop_id = ?";
		Shop shop=qr.query(sql, new BeanHandler<>(Shop.class),shop_id);
		// 设置该车的品牌对象
		sql = "select * from city where city_id in (select city_id from shop where shop_id = ? ) limit 1";
		City city = qr.query(sql, new BeanHandler<>(City.class), shop_id);
		shop.setCity(city);
		return shop;
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.ShopDao#update(com.ynlqc.domain.Shop)
	 */
	@Override
	public void update(Shop bean) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update shop set name = ?,addr=?,tel=?,image=?,des=?,city_id = ? where shop_id=? ";
		qr.update(sql,				
				bean.getName(),
				bean.getAddr(),
				bean.getTel(),
				bean.getImage(),
				bean.getDes(),
				bean.getCity().getCity_id(),
				bean.getShop_id());
	}

	
}
