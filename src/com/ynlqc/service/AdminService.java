package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.User;

import net.sf.json.JSONObject;

public interface AdminService {
	/*void regist(User user) throws Exception;

	User active(String code) throws Exception;
*/
	Admin getByUsernameAndPwd(String username, String password) throws Exception;

	
}
