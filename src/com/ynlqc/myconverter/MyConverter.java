package com.ynlqc.myconverter;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.beanutils.Converter;

public class MyConverter implements Converter {

	@Override
	public Object convert(Class clazz, Object value) {
		SimpleDateFormat format= new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date=format.parse((String) value);
			return date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
