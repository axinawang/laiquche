package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Category;
import com.ynlqc.domain.City;

public interface CityDao {
	void add(City city) throws Exception;
	List<City> findAll () throws Exception;
	City getById(String cid) throws Exception;
	void update(City bean) throws Exception;
}
