package com.ynlqc.service;

import java.util.List;


import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;

public interface CarService {

	List<Car> findNew() throws Exception;

	List<Car> findHot() throws Exception;

	Car getByCarId(String car_id) throws Exception;

	PageBean<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception;


	List<Car> findByBrand(int type_id) throws Exception;

	
	PageBean<Car> findByPage(int currPage, int pageSize, int brand_id, int model_id, int series_id,double down_payment,
			double month_payment, String searh_key) throws Exception;

	List<Car> findAll() throws Exception;

	void add(Car bean) throws Exception;

	void update(Car bean) throws Exception;

	void delete(String car_id) throws Exception;


}
