package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.Shop;

public interface ShopService {

	List<Shop> findAll() throws Exception;

	List<Shop> findByCity(String city_id) throws Exception;

	void add(Shop bean, List<Car> cars) throws Exception;

	/**
	 * @param shop_id
	 */
	void delete(String shop_id) throws Exception;

	/**
	 * @param shop_id
	 * @return
	 * @throws Exception 
	 */
	Shop getById(String shop_id) throws Exception;

	/**
	 * @param shop_id
	 * @return
	 * @throws Exception 
	 */
	List<Car> getCarsByShopId(String shop_id) throws Exception;

	/**
	 * @param bean
	 * @param cars
	 * @throws Exception 
	 */
	void update(Shop bean, List<Car> cars) throws Exception;


}
