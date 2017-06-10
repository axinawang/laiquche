package com.ynlqc.domain;

import java.io.Serializable;

public class Model implements Serializable {
	private Integer model_id;
	private String model_name;
	private Integer is_hot=0;
	private String model_image;
	private String description;
	public Integer getModel_id() {
		return model_id;
	}
	public void setModel_id(Integer model_id) {
		this.model_id = model_id;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public String getModel_image() {
		return model_image;
	}
	public void setModel_image(String model_image) {
		this.model_image = model_image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
@Override
public String toString() {
	// TODO Auto-generated method stub
	return model_id.toString();
}
	
}
