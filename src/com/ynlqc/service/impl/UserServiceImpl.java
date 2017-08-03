package com.ynlqc.service.impl;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

import org.apache.log4j.Logger;

import com.ynlqc.constant.Constant;
import com.ynlqc.dao.CarDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.dao.impl.UserDaoImpl;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.User;
import com.ynlqc.service.UserService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.MailUtils;
import com.ynlqc.utils.PropertiesUtil;

import net.sf.json.JSONObject;
import sun.util.logging.resources.logging;

public class UserServiceImpl implements UserService {
	Logger logger = Logger.getLogger(getClass());
	@Override
	public void regist(User user) throws Exception {
		UserDao dao=new UserDaoImpl();
		dao.add(user);
		String host=PropertiesUtil.getValueByKey("/config.properties", "IP");
		//String host="47.93.221.37";
		
		logger.debug("服务器:"+host);
		String emailMsg="亲，注册已成功，请"+"<a href='http://"+host+"/user?method=active&code="+user.getCode()+"'>激活</a>后使用";
		System.out.println("emailmsg="+emailMsg);
		MailUtils.sendMail(user.getEmail(), emailMsg);
	}

	@Override
	public User active(String code) throws Exception {
		UserDao dao=new UserDaoImpl();
		User user=dao.getByCode(code);
		if (user==null) {
			return null;
		}else {
			user.setState(1);
			dao.update(user);
			return user;
		}
		
	}

	@Override
	public User getByUsernameAndPwd(String username, String password) throws Exception {
		UserDao dao=new UserDaoImpl();
		return dao.getByUsernameAndPwd(username,password);
	}

	@Override
	public String getWeixinUser(String code) {
		 StringBuilder json = new StringBuilder();
		 String APPID="wx96b4e7d8f6720ff0";
		 String SECRET="245b2d23477be5d3495daaa4725d44db";
		 String url="https://api.weixin.qq.com/sns/jscode2session?appid="+APPID+"&secret="+SECRET
				 +"&js_code="+code+"&grant_type=authorization_code";
	        try {
	            URL oracle = new URL(url);
	            URLConnection yc = oracle.openConnection();
	            BufferedReader in = new BufferedReader(new InputStreamReader(
	                    yc.getInputStream(),"utf-8"));//防止乱码
	            String inputLine = null;
	            while ((inputLine = in.readLine()) != null) {
	                json.append(inputLine);
	            }
	            in.close();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	        return json.toString();
	}

	

	@Override
	public void add(User user) throws Exception {
		UserDao dao=new UserDaoImpl();
		dao.add(user);
		
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#getCarsByUserId(java.lang.String)
	 */
	@Override
	public List<Car> getCarsByUserId(String uid) throws Exception {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.getCarsByUserId(uid);
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#collectCar(java.lang.String, java.lang.String)
	 */
	@Override
	public String collectCar(String uid, String car_id) {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.collectCar(uid,car_id);
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#isCarCollected(java.lang.String, java.lang.String)
	 */
	@Override
	public String isCarCollected(String uid, String car_id) throws Exception {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.isCarCollected(uid,car_id);
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#cancelCollectCar(java.lang.String, java.lang.String)
	 */
	@Override
	public String cancelCollectCar(String uid, String car_id) {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.cancelCollectCar(uid,car_id);
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#isUsernameExist(java.lang.String)
	 */
	@Override
	public boolean isUsernameExist(String username) throws Exception {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.isUsernameExist(username);
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#isEmailExist(java.lang.String)
	 */
	@Override
	public boolean isEmailExist(String email) throws Exception {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.isEmailExist(email);
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.service.UserService#isTelExist(java.lang.String)
	 */
	@Override
	public boolean isTelExist(String telephone) throws Exception {
		UserDao dao = (UserDao) BeanFactory.getBean("UserDao");
		return dao.isTelExist(telephone);
	}

}
