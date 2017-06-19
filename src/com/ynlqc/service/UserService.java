package com.ynlqc.service;

import com.ynlqc.domain.User;

import net.sf.json.JSONObject;

public interface UserService {
	void regist(User user) throws Exception;

	User active(String code) throws Exception;

	User getByUsernameAndPwd(String username, String password) throws Exception;

	String getWeixinUser(String code);


	void add(User user) throws Exception;
}
