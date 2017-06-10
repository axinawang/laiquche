package com.ynlqc.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品实体
 * @author Administrator
 *
 */
public class Car implements Serializable{
	/**
	 *   `car_id` varchar(32)  NOT NULL,
  `car_name` varchar(100) DEFAULT NULL,
  `car_date` date DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0,
`car_flag` int(11) DEFAULT 0,
`guide_price` double DEFAULT NULL,
`deposit` double DEFAULT NULL,
`down_payment` double DEFAULT NULL,
`month_payment` double DEFAULT NULL,
`pay_description` text DEFAULT NULL,
`car_image` varchar(200) DEFAULT NULL,
`hot_image` varchar(200) DEFAULT NULL,
`body_structure` varchar(100) DEFAULT NULL,
`length` int(11) DEFAULT 0,
`width` int(11) DEFAULT 0,
`height` int(11) DEFAULT 0,
`engine` varchar(100) DEFAULT NULL,
`gearbox` varchar(100) DEFAULT NULL,
`drive_mode` varchar(100) DEFAULT NULL,
`fuel_form` varchar(20) DEFAULT NULL,
`com_fuel_consumption` varchar(100) DEFAULT NULL,
`body_color` varchar(100) DEFAULT NULL,
`description` text DEFAULT NULL,
`brand_id` int,
`model_id` int,
`series_id` int,
	 */
	private String car_id;
	private String car_name;
	private Date car_date;
	private Integer is_hot;//是否热门     1:热门    0:否
	private Integer car_flag;//是否下架   	1:下架   0:未下架
	
	private Double guide_price;
	private Double deposit;
	private Double down_payment;
	private Double month_payment;
	private String pay_description;
	private String car_image;
	private String hot_image;
	private String body_structure;
	private Integer length;
	private Integer width;
	private Integer height;
	private String engine;
	private String gearbox;
	private String drive_mode;
	private String fuel_form;
	private String com_fuel_consumption;
	private String body_color;
	private String description;
	private Brand brand;
	private Model model;
	private Series series;
	
	public String getCar_id() {
		return car_id;
	}
	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public Date getCar_date() {
		return car_date;
	}
	public void setCar_date(Date car_date) {
		this.car_date = car_date;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public Integer getCar_flag() {
		return car_flag;
	}
	public void setCar_flag(Integer car_flag) {
		this.car_flag = car_flag;
	}
	public Double getGuide_price() {
		return guide_price;
	}
	public void setGuide_price(Double guide_price) {
		this.guide_price = guide_price;
	}
	public Double getDeposit() {
		return deposit;
	}
	public void setDeposit(Double deposit) {
		this.deposit = deposit;
	}
	public Double getDown_payment() {
		return down_payment;
	}
	public void setDown_payment(Double down_payment) {
		this.down_payment = down_payment;
	}
	public Double getMonth_payment() {
		return month_payment;
	}
	public void setMonth_payment(Double month_payment) {
		this.month_payment = month_payment;
	}
	public String getPay_description() {
		return pay_description;
	}
	public void setPay_description(String pay_description) {
		this.pay_description = pay_description;
	}
	public String getCar_image() {
		return car_image;
	}
	public void setCar_image(String car_image) {
		this.car_image = car_image;
	}
	public String getHot_image() {
		return hot_image;
	}
	public void setHot_image(String hot_image) {
		this.hot_image = hot_image;
	}
	public String getBody_structure() {
		return body_structure;
	}
	public void setBody_structure(String body_structure) {
		this.body_structure = body_structure;
	}
	public Integer getLength() {
		return length;
	}
	public void setLength(Integer length) {
		this.length = length;
	}
	public Integer getWidth() {
		return width;
	}
	public void setWidth(Integer width) {
		this.width = width;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public String getGearbox() {
		return gearbox;
	}
	public void setGearbox(String gearbox) {
		this.gearbox = gearbox;
	}
	public String getDrive_mode() {
		return drive_mode;
	}
	public void setDrive_mode(String drive_mode) {
		this.drive_mode = drive_mode;
	}
	public String getFuel_form() {
		return fuel_form;
	}
	public void setFuel_form(String fuel_form) {
		this.fuel_form = fuel_form;
	}
	public String getCom_fuel_consumption() {
		return com_fuel_consumption;
	}
	public void setCom_fuel_consumption(String com_fuel_consumption) {
		this.com_fuel_consumption = com_fuel_consumption;
	}
	public String getBody_color() {
		return body_color;
	}
	public void setBody_color(String body_color) {
		this.body_color = body_color;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public Model getModel() {
		return model;
	}
	public void setModel(Model model) {
		this.model = model;
	}
	public Series getSeries() {
		return series;
	}
	public void setSeries(Series series) {
		this.series = series;
	}
	
	
}
