package com.ynlqc.service.impl;

import java.io.InputStream;
import java.util.List;

import com.ynlqc.dao.ModelDao;
import com.ynlqc.dao.impl.ModelDaoImpl;
import com.ynlqc.domain.Model;
import com.ynlqc.service.ModelService;
import com.ynlqc.utils.BeanFactory;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class ModelServiceImpl implements ModelService {

	/**
	 *  查询所有的分类
	 */
	@Override
	public List<Model> findAll() throws Exception {
		//1.创建缓存管理器
		CacheManager cm=CacheManager.create(ModelServiceImpl.class.getClassLoader().getResourceAsStream("ehcache.xml"));
		
		//2.获取指定的缓存
		Cache cache = cm.getCache("modelCache");
		
		//3.通过缓存获取数据  将cache看成一个map即可
		Element element = cache.get("modelList");
		
		List<Model> list=null;
		
		//4.判断数据
		if(element==null){
			//从数据库中获取
			ModelDao cd=(ModelDao) BeanFactory.getBean("ModelDao");
			list=cd.findAll();
			
			//将list放入缓存
			cache.put(new Element("modelList", list));
			
			System.out.println("缓存中没有数据,已去数据库中获取");
		}else{
			//直接返回
			list=(List<Model>) element.getObjectValue();
			
			System.out.println("缓存中有数据");
		}
		
		return list;
	}	


	@Override
	public List<Model> findHotModel() throws Exception {
		//1.创建缓存管理器
				CacheManager cm=CacheManager.create(ModelServiceImpl.class.getClassLoader().getResourceAsStream("ehcache.xml"));
				
				//2.获取指定的缓存
				Cache cache = cm.getCache("hotModelCache");
				
				//3.通过缓存获取数据  将cache看成一个map即可
				Element element = cache.get("hotModelList");
				
				List<Model> list=null;
				
				//4.判断数据
				if(element==null){
					//从数据库中获取
					ModelDao cd=(ModelDao) BeanFactory.getBean("ModelDao");
					list=cd.findHotModel();
					
					//将list放入缓存
					cache.put(new Element("hotModelList", list));
					
					System.out.println("缓存中没有数据,已去数据库中获取");
				}else{
					//直接返回
					list=(List<Model>) element.getObjectValue();
					
					System.out.println("缓存中有数据");
				}
				
				return list;
	}

}
