package com.ynlqc.service.impl;

import java.io.InputStream;
import java.util.List;

import com.ynlqc.dao.SeriesDao;
import com.ynlqc.domain.Series;
import com.ynlqc.service.SeriesService;
import com.ynlqc.utils.BeanFactory;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class SeriesServiceImpl implements SeriesService {

	/**
	 *  查询所有的车系
	 */
	@Override
	public List<Series> findAll() throws Exception {
		//1.创建缓存管理器
		CacheManager cm=CacheManager
		  .create(SeriesServiceImpl.class.getClassLoader().getResourceAsStream("ehcache.xml"));
		
		//2.获取指定的缓存
		Cache cache = cm.getCache("seriesCache");
		
		//3.通过缓存获取数据  将cache看成一个map即可
		Element element = cache.get("seriesList");
		
		List<Series> list=null;
		
		//4.判断数据
		if(element==null){
			//从数据库中获取
			SeriesDao cd=(SeriesDao) BeanFactory.getBean("SeriesDao");
			list=cd.findAll();
			
			//将list放入缓存
			cache.put(new Element("seriesList", list));
			
			System.out.println("缓存中没有数据,已去数据库中获取");
		}else{
			//直接返回
			list=(List<Series>) element.getObjectValue();
			
			System.out.println("缓存中有数据");
		}
		
		return list;
	}
	

	@Override
	public List<Series> findHotSeries() throws Exception {
		//1.创建缓存管理器
				CacheManager cm=CacheManager.create(SeriesServiceImpl.class.getClassLoader().getResourceAsStream("ehcache.xml"));
				
				//2.获取指定的缓存
				Cache cache = cm.getCache("hotSeriesCache");
				
				//3.通过缓存获取数据  将cache看成一个map即可
				Element element = cache.get("hotSeriesList");
				
				List<Series> list=null;
				
				//4.判断数据
				if(element==null){
					//从数据库中获取
					SeriesDao cd=(SeriesDao) BeanFactory.getBean("SeriesDao");
					list=cd.findHotSeries();
					
					//将list放入缓存
					cache.put(new Element("hotSeriesList", list));
					
					System.out.println("缓存中没有数据,已去数据库中获取");
				}else{
					//直接返回
					list=(List<Series>) element.getObjectValue();
					
					System.out.println("缓存中有数据");
				}
				
				return list;
	}

}
