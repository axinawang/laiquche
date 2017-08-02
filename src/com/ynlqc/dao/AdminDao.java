package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.User;

public interface AdminDao {
	
/**
 * 检测管理员用户名和密码是否正确
 * @param username
 * @param password
 * @return
 * @throws Exception
 */
	Admin getByUsernameAndPwd(String username, String password) throws Exception;

	

}
