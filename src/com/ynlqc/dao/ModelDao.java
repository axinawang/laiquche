package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Model;

public interface ModelDao {

	List<Model> findAll() throws Exception;

	List<Model> findHotModel() throws Exception;

}
