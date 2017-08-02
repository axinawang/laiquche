package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.BrandDao;
import com.ynlqc.dao.ShopAndCarDao;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Category;
import com.ynlqc.domain.Shop;
import com.ynlqc.utils.DataSourceUtils;
import com.ynlqc.utils.UUIDUtils;

public class ShopAndCarDaoImpl implements ShopAndCarDao {
	//在shop_car关系表中添加车辆,门店,不提交事务
	@Override
	public void add(Car car,Shop shop) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql = "insert into shop_car (shop_car_id,shop_id,car_id) values(?,?,?)";
		qr.update(DataSourceUtils.getConnection(),sql, UUIDUtils.getId(),shop.getShop_id(),car.getCar_id());
		
	}
	
	/* (non-Javadoc)
	 * @see com.ynlqc.dao.ShopDao#updateShopId(java.lang.String)
	 */
	@Override
	public void updateShopId(String shop_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="update shop_car set shop_id = null where shop_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, shop_id);
		
	}
	@Override
	public void updateCarId(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="update shop_car set car_id = null where car_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, car_id);
		
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.ShopAndCarDao#getCarsByShopId(java.lang.String)
	 */
	@Override
	public List<Car> getCarsByShopId(String shop_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select car_id from shop_car where shop_id = ?";
		return qr.query(sql, new BeanListHandler<>(Car.class), shop_id);
	}

	

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.ShopAndCarDao#deleteByShop(com.ynlqc.domain.Shop)
	 */
	@Override
	public void deleteByShop(Shop bean) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql = "delete from shop_car where shop_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, bean.getShop_id());
		
	}
}
