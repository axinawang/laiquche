package com.ynlqc.service.impl;

import java.io.InputStream;
import java.util.List;


import com.ynlqc.dao.CategoryDao;
import com.ynlqc.dao.CityDao;
import com.ynlqc.dao.ShopDao;
import com.ynlqc.dao.impl.CategoryDaoImpl;
import com.ynlqc.domain.Category;
import com.ynlqc.domain.City;
import com.ynlqc.domain.Shop;
import com.ynlqc.service.CategoryService;
import com.ynlqc.service.CityService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.DataSourceUtils;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class CityServiceImpl implements CityService {

	/**
	 *  查询所有的分类
	 */
	@Override
	public List<City> findAll() throws Exception {
		
		List<City> list=null;
		//从数据库中获取
		CityDao cd=(CityDao) BeanFactory.getBean("CityDao");
		list=cd.findAll();
		return list;
	}
	

	@Override
	public void add(City bean) throws Exception {
		CityDao cd=(CityDao) BeanFactory.getBean("CityDao");
		cd.add(bean);
	}


	@Override
	public City getById(String cid) throws Exception {
		CityDao dao=(CityDao) BeanFactory.getBean("CityDao");
		return dao.getById(cid);
	}


	@Override
	public void update(City bean) throws Exception {
		CityDao dao=(CityDao) BeanFactory.getBean("CityDao");
		dao.update(bean);
	}


	@Override
	public void delete(String city_id) throws Exception {
		try {
			//1.开启事务
			DataSourceUtils.startTransaction();

			//2.更新门店
			ShopDao shopDao=(ShopDao) BeanFactory.getBean("ShopDao");
			shopDao.updateCid(city_id);
			
			//3.删除城市
			CityDao cd=(CityDao) BeanFactory.getBean("CityDao");
			cd.delete(city_id);
			
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
