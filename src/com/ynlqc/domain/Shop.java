package com.ynlqc.domain;

import java.io.Serializable;
import java.util.Date;

import com.ynlqc.utils.UUIDUtils;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class Shop implements Serializable {
	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	/**
	 * `shop_id` int NOT NULL auto_increment,
  `shop_name` varchar(100) DEFAULT NULL,
  `shop_city` varchar(40) DEFAULT NULL,
  `shop_address` varchar(200) DEFAULT NULL,
  `shop_tel` varchar(40) DEFAULT NULL,
  `shop_image` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
	 */
	private String shop_id;
	private String name;
	private String city;
	
	private String addr;
	private String tel;
	

	private String  image;

	private String  des;
	
	
	
	
	
}
