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

	
	PageBean<Car> findByPage(int currPage, int pageSize, int brand_id, int model_id, double down_payment,
			double month_payment, String searh_key) throws Exception;

}
