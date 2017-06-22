package com.ynlqc.domain;

import java.util.Date;

import com.ynlqc.utils.UUIDUtils;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class Appointment {
	/**
	 * `appointment_id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `arrive_time` date DEFAULT NULL,
  `selected_city` varchar(40) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `admin_id`	varchar(32) DEFAULT NULL,
	 * 
	 */
	private String appointment_id;
	private String name;
	private String sex;	

	private String telephone;	
	private Date  arrive_time;
	private String selected_city;
	 
	private Shop shop;
	private Admin admin;
	private String  description;
	
	public String getAppointment_id() {
		return appointment_id;
	}
	public void setAppointment_id(String appointment_id) {
		this.appointment_id = appointment_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Date getArrive_time() {
		return arrive_time;
	}
	public void setArrive_time(Date arrive_time) {
		this.arrive_time = arrive_time;
	}
	public String getSelected_city() {
		return selected_city;
	}
	public void setSelected_city(String selected_city) {
		this.selected_city = selected_city;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Shop getShop() {
		return shop;
	}
	public void setShop(Shop shop) {
		this.shop = shop;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	
}
