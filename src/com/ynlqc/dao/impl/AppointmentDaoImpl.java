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

		String sql="insert into appointment_info (appointment_id,name,sex,telephone,arrive_time,"
				+ "shop_id,user_id,car_id,description) values(?,?,?,?,?,?,?,?,?)";
		qr.update(sql,bean.getAppointment_id(),bean.getName(),bean.getSex(),bean.getTelephone(),
				bean.getArrive_time(),bean.getShop().getShop_id(),bean.getUser()==null?null:bean.getUser().getUid(),
				bean.getCar().getCar_id(),bean.getDescription());
	}

	@Override
	public void updateCarId(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="update appointment_info set car_id = null where car_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, car_id);
		
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


