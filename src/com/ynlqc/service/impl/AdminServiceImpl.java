package com.ynlqc.service.impl;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

import org.apache.log4j.Logger;

import com.ynlqc.constant.Constant;
import com.ynlqc.dao.AdminDao;
import com.ynlqc.dao.CarDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.dao.impl.AdminDaoImpl;
import com.ynlqc.dao.impl.UserDaoImpl;
import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.User;
import com.ynlqc.service.AdminService;
import com.ynlqc.service.UserService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.MailUtils;
import com.ynlqc.utils.PropertiesUtil;

import net.sf.json.JSONObject;
import sun.util.logging.resources.logging;

public class AdminServiceImpl implements AdminService {
	Logger logger = Logger.getLogger(getClass());


	@Override
	public Admin getByUsernameAndPwd(String username, String password) throws Exception {
		AdminDao dao=new AdminDaoImpl();
		return dao.getByUsernameAndPwd(username,password);
	}



}
