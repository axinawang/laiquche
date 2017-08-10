package com.ynlqc.service.impl;

import org.apache.log4j.Logger;

import com.ynlqc.dao.LiuYanDao;
import com.ynlqc.domain.LiuYan;
import com.ynlqc.service.LiuYanService;
import com.ynlqc.utils.BeanFactory;

public class LiuYanServiceImpl implements LiuYanService{
	Logger logger = Logger.getLogger(getClass());
	

	/* (non-Javadoc)
	 * @see com.ynlqc.service.LiuYanService#add(com.ynlqc.domain.LiuYan)
	 */
	@Override
	public void add(LiuYan bean) throws Exception {
		LiuYanDao dao=(LiuYanDao) BeanFactory.getBean("LiuYanDao");
		dao.add(bean);
		
	}
	

}
