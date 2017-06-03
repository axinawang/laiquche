package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Brand;

public interface BrandService {

	List<Brand> findAll() throws Exception;

	List<Brand> findHotBrand() throws Exception;

}
