package com.ynlqc.domain;

import java.io.Serializable;

/**
 * 车系
 * 
 * `series_id` int  NOT NULL auto_increment,
  `series_name` varchar(20) DEFAULT NULL,
  `is_hot` int DEFAULT 0,
  `series_image` varchar(200),
  `description` text,
 *
 */
public class Series implements Serializable {
	private Integer series_id;
	private String series_name;
	private Integer is_hot=0;
	private String series_image;
	private String description;
	public Integer getSeries_id() {
		return series_id;
	}
	public void setSeries_id(Integer series_id) {
		this.series_id = series_id;
	}
	public String getSeries_name() {
		return series_name;
	}
	public void setSeries_name(String series_name) {
		this.series_name = series_name;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public String getSeries_image() {
		return series_image;
	}
	public void setSeries_image(String series_image) {
		this.series_image = series_image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
