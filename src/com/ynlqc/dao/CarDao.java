package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;

public interface CarDao {

	List<Car> findNew() throws Exception;

	List<Car> findHot() throws Exception;

	Car getByCarId(String car_id) throws Exception;

	List<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception;

	int getBrandTotalCount(int brand_id) throws Exception;

	List<Car> findByPage(int currPage, int pageSize, int type_id, int model_id,int series_id, double down_payment, double month_payment, String search_key) throws Exception;

	int getTotalCount(int type_id, int model_id, double down_payment, double month_payment, String search_key) throws Exception;

	List<Car> findByBrand(int type_id) throws Exception;

	List<Car> findAll() throws Exception;

	void add(Car bean) throws Exception;

	void update(Car bean) throws Exception;

	void delete(String car_id) throws Exception;

	

}
