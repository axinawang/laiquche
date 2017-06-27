package com.ynlqc.dao;

import com.ynlqc.domain.Appointment;

public interface AppointmentDao {
	void add(Appointment appointment) throws Exception;

	void updateCarId(String car_id) throws Exception;
}
