package com.ynlqc.service.impl;

import java.io.InputStream;
import java.util.List;

import com.ynlqc.dao.BrandDao;
import com.ynlqc.dao.ShopDao;
import com.ynlqc.dao.impl.BrandDaoImpl;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Shop;
import com.ynlqc.service.BrandService;
import com.ynlqc.service.ShopService;
import com.ynlqc.utils.BeanFactory;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class ShopServiceImpl implements ShopService {

	/**
	 *  查询所有
	 */
	@Override
	public List<Shop> findAll() throws Exception {
		/*//1.创建缓存管理器
		CacheManager cm=CacheManager.create(ShopServiceImpl.class.getClassLoader().getResourceAsStream("ehcache.xml"));
		
		//2.获取指定的缓存
		Cache cache = cm.getCache("brandCache");
		
		//3.通过缓存获取数据  将cache看成一个map即可
		Element element = cache.get("brandList");
		
		List<Shop> list=null;
		
		//4.判断数据
		if(element==null){
			//从数据库中获取
			ShopDao cd=(ShopDao) BeanFactory.getBean("ShopDao");
			list=cd.findAll();
			
			//将list放入缓存
			cache.put(new Element("brandList", list));
			
			System.out.println("缓存中没有数据,已去数据库中获取");
		}else{
			//直接返回
			list=(List<Shop>) element.getObjectValue();
			
			System.out.println("缓存中有数据");
		}*/
		List<Shop> list=null;
		//从数据库中获取
		ShopDao cd=(ShopDao) BeanFactory.getBean("ShopDao");
		list=cd.findAll();
		return list;
	}

	@Override
	public List<Shop> findByCity(String city_id) throws Exception {
		List<Shop> list=null;
		//从数据库中获取
		ShopDao cd=(ShopDao) BeanFactory.getBean("ShopDao");
		list=cd.findByCity(city_id);
		return list;
	}


	

}
