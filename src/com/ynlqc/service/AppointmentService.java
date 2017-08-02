package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Appointment;

public interface AppointmentService {
	/*void regist(User user) throws Exception;

	User active(String code) throws Exception;

	User getByUsernameAndPwd(String username, String password) throws Exception;

	String getWeixinUser(String code);*/


	void add(Appointment appointment) throws Exception;

	/**
	 * @param uid
	 * @throws Exception 
	 */
	List<Appointment> getAppointmentsByUserId(String uid) throws Exception;

	/**
	 * @return
	 */
	List<Appointment> findAll() throws Exception;

	/**
	 * @param appointment_id
	 * @return
	 */
	Appointment getDetailByAid(String appointment_id) throws Exception;
}
