package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.User;

public interface UserDao {
	void add(User user) throws Exception;

	User getByCode(String code) throws Exception;

	void update(User user) throws Exception;

	User getByUsernameAndPwd(String username, String password) throws Exception;

	void updateCarId(String car_id) throws Exception;

	/**
	 * @param uid
	 * @return 收藏的车列表
	 * @throws Exception 
	 */
	List<Car> getCarsByUserId(String uid) throws Exception;

	/**
	 * @param uid
	 * @param car_id
	 * @return
	 */
	String collectCar(String uid, String car_id);

	/**
	 * @param uid
	 * @param car_id
	 * @return
	 * @throws Exception 
	 */
	String isCarCollected(String uid, String car_id) throws Exception;

	/**
	 * @param uid
	 * @param car_id
	 * @return
	 */
	String cancelCollectCar(String uid, String car_id);

	/**
	 * @param username
	 * @return
	 */
	boolean isUsernameExist(String username) throws Exception;

	/**
	 * @param email
	 * @return
	 */
	boolean isEmailExist(String email) throws Exception;

	/**
	 * @param telephone
	 * @return
	 */
	boolean isTelExist(String telephone) throws Exception;



}
