package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.ynlqc.dao.AdminDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Shop;
import com.ynlqc.domain.User;
import com.ynlqc.utils.DataSourceUtils;
import com.ynlqc.utils.UUIDUtils;

public class AdminDaoImpl implements AdminDao {

	
	/**
	 * 检测管理员用户名和密码是否正确
	 */
	@Override
	public Admin getByUsernameAndPwd(String username, String password) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from admin where admin_name=? and password=?";
		return qr.query(sql, new BeanHandler<>(Admin.class),username,password);
	}

	
	

}
