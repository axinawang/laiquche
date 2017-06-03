package com.ynlqc.domain;

import java.io.Serializable;

/**
 * 品牌
 * 
 * `brand_id` int  NOT NULL auto_increment,
  `brand_name` varchar(20) DEFAULT NULL,
  `is_hot` int DEFAULT 0,
  `brand_image` varchar(200),
  `description` text,
 *
 */
public class Brand implements Serializable {
	private Integer brand_id;
	private String brand_name;
	private Integer is_hot=0;
	private String brand_image;
	private String description;
	
	public Integer getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(Integer brand_id) {
		this.brand_id = brand_id;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public String getBrand_image() {
		return brand_image;
	}
	public void setBrand_image(String brand_image) {
		this.brand_image = brand_image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
