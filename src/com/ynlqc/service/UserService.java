package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Car;
import com.ynlqc.domain.User;

import net.sf.json.JSONObject;

public interface UserService {
	void regist(User user) throws Exception;

	User active(String code) throws Exception;

	User getByUsernameAndPwd(String username, String password) throws Exception;

	String getWeixinUser(String code);


	void add(User user) throws Exception;

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
}
