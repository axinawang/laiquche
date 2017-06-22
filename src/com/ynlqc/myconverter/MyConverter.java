package com.ynlqc.myconverter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.beanutils.Converter;

import com.ynlqc.domain.Shop;

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
		}

		return null;
	}

}
