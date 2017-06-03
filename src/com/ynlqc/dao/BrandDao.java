package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Brand;

public interface BrandDao {

	List<Brand> findAll() throws Exception;

	List<Brand> findHotBrand() throws Exception;

}
