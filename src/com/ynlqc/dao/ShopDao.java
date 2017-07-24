package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;
import com.ynlqc.domain.Shop;

public interface ShopDao {

	List<Shop> findAll() throws Exception;

	List<Shop> findByCity(String city_id) throws Exception;

	void updateCid(String city_id) throws Exception;


	void add(Shop bean) throws Exception;
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
	 * @param bean
	 * @throws Exception 
	 */
	void update(Shop bean) throws Exception;

	

	

}
