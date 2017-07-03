package com.ynlqc.domain;

import java.io.Serializable;
/**
 * 用户实体
 * @author Administrator
 *
 */
public class City implements Serializable {
	
	private String city_id;
	private String name;
	public City() {

	}
	public City(String city_id) {
		this.city_id=city_id;
	}
	public String getCity_id() {
		return city_id;
	}
	public void setCity_id(String city_id) {
		this.city_id = city_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
	
	
}
