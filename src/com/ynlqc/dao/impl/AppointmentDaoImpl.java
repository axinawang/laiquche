package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.AppointmentDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Shop;
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

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.AppointmentDao#getAppointmentsByUserId(java.lang.String)
	 */
	@Override
	public List<Appointment> getAppointmentsByUserId(String uid) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from appointment_info where user_id = ? order by date desc";
		List<Appointment> appointments=qr.query(sql, new BeanListHandler<>(Appointment.class),uid);
		for (Appointment appointment : appointments) {
			Shop shop=qr.query("select shop.* from shop,appointment_info where shop.shop_id=appointment_info.shop_id and appointment_info.appointment_id=?",new BeanHandler<>(Shop.class),appointment.getAppointment_id());
			appointment.setShop(shop);
			Car car=qr.query("select car.* from car,appointment_info where car.car_id=appointment_info.car_id and appointment_info.appointment_id=?",new BeanHandler<>(Car.class),appointment.getAppointment_id());
			appointment.setCar(car);
		}
		return appointments;
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.AppointmentDao#findAll()
	 */
	@Override
	public List<Appointment> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from appointment_info order by date desc";
		List<Appointment> appointments=qr.query(sql, new BeanListHandler<>(Appointment.class));
		
		return appointments;
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.AppointmentDao#getDetailByAid(java.lang.String)
	 */
	@Override
	public Appointment getDetailByAid(String appointment_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from appointment_info where appointment_id=?";
		Appointment appointment=qr.query(sql, new BeanHandler<>(Appointment.class),appointment_id);
		
			Shop shop=qr.query("select shop.* from shop,appointment_info where shop.shop_id=appointment_info.shop_id and appointment_info.appointment_id=?",new BeanHandler<>(Shop.class),appointment_id);
			appointment.setShop(shop);
			Car car=qr.query("select car.* from car,appointment_info where car.car_id=appointment_info.car_id and appointment_info.appointment_id=?",new BeanHandler<>(Car.class),appointment_id);
			appointment.setCar(car);
			User user=qr.query("select user.* from user,appointment_info where user.uid=appointment_info.user_id and appointment_info.appointment_id=?",new BeanHandler<>(User.class),appointment_id);
			appointment.setUser(user);
			Admin admin=qr.query("select admin.* from admin,appointment_info where admin.admin_id=appointment_info.admin_id and appointment_info.appointment_id=?",new BeanHandler<>(Admin.class),appointment_id);
			appointment.setAdmin(admin);

		return appointment;
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


