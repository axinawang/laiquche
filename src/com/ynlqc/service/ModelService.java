package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Model;

public interface ModelService {

	List<Model> findAll() throws Exception;

	List<Model> findHotModel() throws Exception;

}
