package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.ynlqc.dao.UserDao;
import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Shop;
import com.ynlqc.domain.User;
import com.ynlqc.utils.DataSourceUtils;
import com.ynlqc.utils.UUIDUtils;

public class UserDaoImpl implements UserDao {

	@Override
	public void add(User user) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		/**
		 *  `uid` VARCHAR(32) NOT NULL,
		  `username` VARCHAR(20) DEFAULT NULL,
		  `password` VARCHAR(100) DEFAULT NULL,
		  
		  `name` VARCHAR(20) DEFAULT NULL,
		  `email` VARCHAR(30) DEFAULT NULL,
		  `telephone` VARCHAR(20) DEFAULT NULL,
		  
		  `birthday` DATE DEFAULT NULL,
		  `sex` VARCHAR(10) DEFAULT NULL,
		  `state` INT(11) DEFAULT NULL,
		  `code` VARCHAR(64) DEFAULT NULL
		 */
		String sql="insert into user values(?,?,?,?,?,?,?,?,?,?)";
		qr.update(sql,user.getUid(),user.getUsername(),user.getPassword(),user.getName(),user.getEmail()
				,user.getTelephone(),user.getBirthday(),user.getSex(),user.getState(),user.getCode());
	}

	@Override
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
	}

	@Override
	public void updateCarId(String car_id) throws Exception {
		QueryRunner qr = new QueryRunner();
		String sql="update user_car set car_id = null where car_id = ?";
		qr.update(DataSourceUtils.getConnection(), sql, car_id);
		
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.UserDao#getCarsByUserId(java.lang.String)
	 */
	@Override
	public List<Car> getCarsByUserId(String uid) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select car.* from car inner join user_car "+
		"  where user_car.user_id = ? and car.car_id=user_car.car_id  order by user_car.date desc";
		List<Car> cars=qr.query(sql, new BeanListHandler<>(Car.class),uid);
		
		return cars;
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.UserDao#collectCar(java.lang.String, java.lang.String)
	 */
	@Override
	public String collectCar(String uid, String car_id) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="insert into user_car (`user_car_id`,`user_id`,`car_id`) values(?,?,?)";
		try {
			qr.update(sql,UUIDUtils.getId(),uid,car_id);
			return "success";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getMessage();
		}
	
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.UserDao#isCarCollected(java.lang.String, java.lang.String)
	 */
	@Override
	public String isCarCollected(String uid, String car_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from  user_car "+
		"  where user_id = ? and user_car.car_id= ? ";

		if (((Long)qr.query(sql, new ScalarHandler(),uid,car_id)).intValue()==1) {
			return "true";
		}
		
		return "flase";
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.UserDao#cancelCollectCar(java.lang.String, java.lang.String)
	 */
	@Override
	public String cancelCollectCar(String uid, String car_id) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from user_car "+
		"  where user_id = ? and user_car.car_id= ? ";
		String result=null;
		try {
			qr.update(DataSourceUtils.getConnection(), sql, uid,car_id);
			result="success";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result=e.getMessage();
		}
		return result;
	}

	

}
