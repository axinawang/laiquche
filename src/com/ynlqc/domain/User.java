package com.ynlqc.domain;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.ynlqc.utils.UUIDUtils;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class User {
	/**
	 * 
	 */
	private String uid;
	
	@NotNull(message = "用户名不能为空 ")
	@NotEmpty(message = "用户名不能为空 ")
	@Size(max = 18,min=6 ,message = "用户名长度为6到18个字符")
	private String username;
	
	@NotNull(message = "密码不能为空 ")
	@NotEmpty(message = "密码不能为空 ")
	@Size(max = 18,min=6 ,message = "密码长度为6到18个字符")
	private String password;
	
	@NotNull(message = "确认密码不能为空 ")
	@NotEmpty(message = "确认密码不能为空 ")
	@Size(max = 18,min=6 ,message = "确认密码长度为6到18个字符")
	private String confirm_password;
	
	private String name;
	
	@NotNull(message = "邮箱不能为空 ")
	@NotEmpty(message = "邮箱不能为空 ")
	@org.hibernate.validator.constraints.Email(message = "邮箱格式不正确")
	private String email;
	
	@NotNull(message = "手机号码不能为空 ")
	@NotEmpty(message = "手机号码不能为空 ")
	@Pattern(regexp = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$", message = "手机号码错误") // 正则验证 
	private String telephone;
	@NotNull(message = "验证码不能为空 ")
	@NotEmpty(message = "验证码不能为空 ")
	@Size(max = 5,min=5 ,message = "验证码长度为5个字符")
	private String  checkcode;
	
	private Date  birthday;
	private String  sex;
	private Integer state=0;//激活状态  1:激活    0:未激活
	private String  code;
	private String weixinOpenid;
	public User(String openid) {
		this.setUid(UUIDUtils.getId());
		this.setWeixinOpenid(openid);
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
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
	public String getWeixinOpenid() {
		return weixinOpenid;
	}
	public void setWeixinOpenid(String weixinOpenid) {
		this.weixinOpenid = weixinOpenid;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public String getCheckcode() {
		return checkcode;
	}
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	
	
	
	
}
