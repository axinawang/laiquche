package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.LiuYan;

public interface LiuYanDao {
	void add(LiuYan liuYan) throws Exception;
    void update(LiuYan liuYan) throws Exception;
	
	List<LiuYan> findAll() throws Exception;

/**
 * 根据ID获取该留言内容
 * @param message_id
 * @return
 * @throws Exception
 */
	LiuYan getById(String message_id) throws Exception;
}
