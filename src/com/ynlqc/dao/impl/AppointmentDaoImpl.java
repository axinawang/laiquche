package com.ynlqc.dao.impl;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.ynlqc.dao.AppointmentDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.User;
import com.ynlqc.utils.DataSourceUtils;

public class AppointmentDaoImpl implements AppointmentDao {

	@Override
	public void add(Appointment bean) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		/**
		 *  `appointment_id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `arrive_time` date DEFAULT NULL,
  `selected_city` varchar(40) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `admin_id`	varchar(32) DEFAULT NULL,
		 */
		String sql="insert into appointment_info (appointment_id,name,sex,telephone,arrive_time,"
				+ "selected_city,shop_id,description) values(?,?,?,?,?,?,?,?)";
		qr.update(sql,bean.getAppointment_id(),bean.getName(),bean.getSex(),bean.getTelephone(),
				bean.getArrive_time(),bean.getSelected_city(),bean.getShop().getShop_id(),
				bean.getDescription());
	}

	/*@Override
	public User getByCode(String code) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from user where code=? limit 1";
		
		return qr.query(sql, new BeanHandler<>(User.class),code);
	}

	@Override
	public void update(User user) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update user set username = ?,password = ? ,name=?,email=?,birthday = ?,state = ?,code=?,sex=?,telephone=? where uid =? ";
		qr.update(sql, user.getUsername(),user.getPassword(),user.getName(),user.getEmail(),user.getBirthday()
				,user.getState(),null,user.getSex(),user.getTelephone(),user.getUid());
		
	}

	@Override
	public User getByUsernameAndPwd(String username, String password) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from user where username=? and password=?";
		return qr.query(sql, new BeanHandler<>(User.class),username,password);
	}*/

	

}


