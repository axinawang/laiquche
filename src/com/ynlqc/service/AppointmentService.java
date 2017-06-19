package com.ynlqc.service;

import com.ynlqc.domain.Appointment;

public interface AppointmentService {
	/*void regist(User user) throws Exception;

	User active(String code) throws Exception;

	User getByUsernameAndPwd(String username, String password) throws Exception;

	String getWeixinUser(String code);*/


	void add(Appointment appointment) throws Exception;
}
