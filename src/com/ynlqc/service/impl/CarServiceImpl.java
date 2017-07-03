package com.ynlqc.service.impl;

import java.util.List;

import com.ynlqc.dao.AppointmentDao;
import com.ynlqc.dao.CarDao;
import com.ynlqc.dao.CityDao;
import com.ynlqc.dao.ShopAndCarDao;
import com.ynlqc.dao.ShopDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.PageBean;
import com.ynlqc.service.CarService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.DataSourceUtils;

public class CarServiceImpl implements CarService {

	@Override
	public List<Car> findNew() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Car> findHot() throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		return dao.findHot();
	}

	@Override
	public Car getByCarId(String car_id) throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		return dao.getByCarId(car_id);
	}

	@Override
	public PageBean<Car> findByBrandInPage(int currPage, int pageSize, int brand_id) throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		List<Car> list = dao.findByBrandInPage(currPage, pageSize, brand_id);
		// 总条数
		int totalCount = dao.getBrandTotalCount(brand_id);
		return new PageBean<>(list, currPage, pageSize, totalCount);
	}

	@Override
	public List<Car> findByBrand(int type_id) throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		return dao.findByBrand(type_id);
	}

	/**
	 * @throws Exception
	 * 
	 */
	@Override
	public PageBean<Car> findByPage(int currPage, int pageSize, int brand_id, int model_id, int series_id,
			double down_payment, double month_payment, String search_key) throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		List<Car> list = dao.findByPage(currPage, pageSize, brand_id, model_id, series_id, down_payment, month_payment,
				search_key);
		// 总条数
		int totalCount = dao.getTotalCount(brand_id, model_id, down_payment, month_payment, search_key);
		return new PageBean<>(list, currPage, pageSize, totalCount);
	}

	@Override
	public List<Car> findAll() throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		return dao.findAll();
	}

	@Override
	public void add(Car bean) throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		dao.add(bean);

	}

	@Override
	public void update(Car bean) throws Exception {
		CarDao dao = (CarDao) BeanFactory.getBean("CarDao");
		dao.update(bean);

	}

	/**
	 * 删除指定id的车
	 */
	@Override
	public void delete(String car_id) throws Exception {
		try {
			//1.开启事务
			DataSourceUtils.startTransaction();

			//2.1更新门店与车的关系表,该车id置空
			ShopAndCarDao shopAndCarDao=(ShopAndCarDao) BeanFactory.getBean("ShopAndCarDao");
			shopAndCarDao.updateCarId(car_id);
			//2.2更新预约,该车id置空
			AppointmentDao appointmentDao=(AppointmentDao) BeanFactory.getBean("AppointmentDao");
			appointmentDao.updateCarId(car_id);
			//2.3更新会员与车的关系表,该车id置空
			UserDao userDao=(UserDao) BeanFactory.getBean("UserDao");
			userDao.updateCarId(car_id);
			
			//3.删除车
			CarDao cd=(CarDao) BeanFactory.getBean("CarDao");
			cd.delete(car_id);
			
			//4.事务控制
			DataSourceUtils.commitAndClose();
			
			/*//5.清空缓存
			CacheManager cm = CacheManager.create(CategoryServiceImpl.class.getClassLoader().getResourceAsStream("ehcache.xml"));
			Cache cache = cm.getCache("categoryCache");
			cache.remove("clist");*/
		} catch (Exception e) {
			e.printStackTrace();
			DataSourceUtils.rollbackAndClose();
			throw e;
		}
	}

}
