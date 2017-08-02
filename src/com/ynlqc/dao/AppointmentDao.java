package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Appointment;

public interface AppointmentDao {
	void add(Appointment appointment) throws Exception;

	void updateCarId(String car_id) throws Exception;

	/**
	 * @param uid
	 * @return
	 * @throws Exception 
	 */
	List<Appointment> getAppointmentsByUserId(String uid) throws Exception;

	/**
	 * @return
	 * @throws Exception 
	 */
	List<Appointment> findAll() throws Exception;

	/**
	 * @param appointment_id
	 * @return
	 */
	Appointment getDetailByAid(String appointment_id) throws Exception;
}
