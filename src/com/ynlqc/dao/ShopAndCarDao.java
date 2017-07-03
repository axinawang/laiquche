package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;
import com.ynlqc.domain.Shop;

public interface ShopAndCarDao {

	void add(Car car, Shop shop) throws Exception;

	/**
	 * @param shop_id
	 */
	void updateShopId(String shop_id) throws Exception;

	/**
	 * @param car_id
	 */
	void updateCarId(String car_id) throws Exception;

		
}
