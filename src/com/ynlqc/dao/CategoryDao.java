package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Category;



public interface CategoryDao {

	List<Category> findAll () throws Exception;

}
