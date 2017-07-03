package com.ynlqc.myconverter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.beanutils.Converter;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.regexp.internal.recompile;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.City;
import com.ynlqc.domain.Shop;
import com.ynlqc.domain.User;

public class MyConverter implements Converter {

	@Override
	public Object convert(Class clazz, Object value) {
		// 如果是日期转换
		if (Date.class == clazz) {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date date = format.parse((String) value);
				return date;
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (Shop.class==clazz) {//如果是shop转换
			String shop_id=(String) value;
			Shop shop=new Shop();
			shop.setShop_id(shop_id);
			return shop;
		}else if (User.class==clazz) {//如果是会员转换
			String user_id=(String) value;
			if ("".equals(user_id)) {
				return null;
			}else {
				User user=new User();
			user.setUid(user_id);
			return user;
			}
			
		}else if (Car.class==clazz) {//如果是车转换
			String car_id=(String) value;
			Car car=new Car(car_id);

			return car;
		}else if (City.class==clazz) {//如果是车转换
			String city_id=(String) value;
			
			return new City(city_id);
		}

		return null;
	}

}
