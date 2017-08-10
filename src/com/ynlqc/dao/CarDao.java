package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;
import com.ynlqc.domain.Shop;

public interface CarDao {

	List<Car> findNew() throws Exception;

	List<Car> findHot(int i) throws Exception;

	Car getByCarId(String car_id) throws Exception;

	List<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception;

	int getBrandTotalCount(int brand_id) throws Exception;

	List<Car> findByPage(int currPage, int pageSize, int type_id, int model_id,int series_id, double down_payment, double month_payment, String search_key) throws Exception;

	

	List<Car> findByBrand(int type_id) throws Exception;

	List<Car> findAll() throws Exception;

	void add(Car bean) throws Exception;

	void update(Car bean) throws Exception;

	void delete(String car_id) throws Exception;

	/**
	 * @param car_id
	 * @return
	 * @throws Exception 
	 */
	List<Shop> getShopByCarId(String car_id) throws Exception;

	/**
	 * @return 获取热门车总条数
	 * @throws Exception 
	 */
	int getHotCarTotalCount() throws Exception;

	/**
	 * @param brand_id
	 * @param model_id
	 * @param series_id
	 * @param down_payment
	 * @param month_payment
	 * @param search_key
	 * @return 获取综合搜索后的车条数
	 * @throws Exception 
	 */
	int getTotalCount(int brand_id, int model_id, int series_id, double down_payment, double month_payment,
			String search_key) throws Exception;

	/**
	 * @return
	 */
	List<Car> findHot() throws Exception;

	

}
