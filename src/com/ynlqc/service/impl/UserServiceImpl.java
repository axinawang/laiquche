package com.ynlqc.service.impl;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import com.ynlqc.dao.UserDao;
import com.ynlqc.dao.impl.UserDaoImpl;
import com.ynlqc.domain.User;
import com.ynlqc.service.UserService;
import com.ynlqc.utils.MailUtils;

import net.sf.json.JSONObject;
import sun.util.logging.resources.logging;

public class UserServiceImpl implements UserService {

	@Override
	public void regist(User user) throws Exception {
		UserDao dao=new UserDaoImpl();
		dao.add(user);
		
		String emailMsg="亲，注册已成功，请"+"<a href='http://localhost:8080/store28/user?method=active&code="+user.getCode()+"'>激活</a>后使用";
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
	public boolean havingOpenid(String openid) throws Exception {
		UserDao dao=new UserDaoImpl();
		
		return dao.havingOpenid(openid);
	}

	@Override
	public void add(User user) throws Exception {
		UserDao dao=new UserDaoImpl();
		dao.add(user);
		
	}

}
