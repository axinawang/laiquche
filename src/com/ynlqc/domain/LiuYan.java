package com.ynlqc.domain;

import java.util.Date;

import com.ynlqc.utils.UUIDUtils;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class LiuYan {
	/**
	 * 
  `message_id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `cartype` varchar(40) DEFAULT NULL,  
  `content` text DEFAULT NULL,
  `commitTime` DATETIME DEFAULT NULL,
  `date` timestamp,
  `state` int DEFAULT 0 
	 * 
	 */
	private String message_id;
	private String name;//姓名
	private String tel;	//手机号码
	private String  address;//联系地址
	private String  email;//邮箱
	private String  cartype;//车型
	private String  content;//留言内容
	private String  remark;//备注
	
	private Date commitTime;//提交时间	
	private Date date;//最近更新时间	
	private Integer state;//0 未处理   1 已处理
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "{"+message_id+
		name+  
		tel+
		 address+
		 email+
		 cartype+
		 content+
		 remark+commitTime+date+"}";
	}
	public String getMessage_id() {
		return message_id;
	}
	public void setMessage_id(String message_id) {
		this.message_id = message_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCartype() {
		return cartype;
	}
	public void setCartype(String cartype) {
		this.cartype = cartype;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getCommitTime() {
		return commitTime;
	}
	public void setCommitTime(Date commitTime) {
		this.commitTime = commitTime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}

	
}
