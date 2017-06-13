package com.ynlqc.service.impl;

import java.util.List;


import com.ynlqc.dao.CarDao;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;
import com.ynlqc.service.CarService;
import com.ynlqc.utils.BeanFactory;

public class CarServiceImpl implements CarService {

	@Override
	public List<Car> findNew() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Car> findHot() throws Exception {
		CarDao dao=(CarDao) BeanFactory.getBean("CarDao");
		return dao.findHot();
	}

	@Override
	public Car getByCarId(String car_id) throws Exception {
		CarDao dao=(CarDao) BeanFactory.getBean("CarDao");
		return dao.getByCarId(car_id);
	}

	@Override
	public PageBean<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception {
		CarDao dao=(CarDao) BeanFactory.getBean("CarDao");
		List<Car> list=dao.findByBrandInPage(currPage, pageSize, brand_id);
		//总条数
		int totalCount = dao.getBrandTotalCount(brand_id);
		return new PageBean<>(list, currPage, pageSize, totalCount);
	}


	@Override
	public List<Car> findByBrand(int type_id) throws Exception {
		CarDao dao=(CarDao) BeanFactory.getBean("CarDao");
		return dao.findByBrand(type_id);
	}

	
/**
 * @throws Exception 
 * 
 */
	@Override
	public PageBean<Car> findByPage(int currPage, int pageSize, int brand_id, int model_id,int series_id, double down_payment,
			double month_payment,String search_key) throws Exception {
		CarDao dao=(CarDao) BeanFactory.getBean("CarDao");
		List<Car> list=dao.findByPage(currPage, pageSize, brand_id,
				model_id,series_id,down_payment,month_payment,search_key);
		//总条数
		int totalCount = dao.getTotalCount(brand_id,model_id,down_payment,month_payment,search_key);
		return new PageBean<>(list, currPage, pageSize, totalCount);
	}


}


