package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.City;

public interface CityService {
	void add(City bean) throws Exception;
	List<City> findAll () throws Exception;
	City getById(String cid) throws Exception;
	void update(City bean) throws Exception;
}
