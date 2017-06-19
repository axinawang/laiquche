package com.ynlqc.domain;

import java.io.Serializable;
import java.util.Date;

import com.ynlqc.utils.UUIDUtils;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class Admin implements Serializable{
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	/**
	 * 
	 */
	private String admin_id;
	private String username;
	private String password;
	
	private String name;
	private String email;
	private String telephone;
	
	private Date  birthday;
	private String  sex;
	private Integer state=0;//激活状态  1:激活    0:未激活
	private String  code;
	
	
	
	
	
}
