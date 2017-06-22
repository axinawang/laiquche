package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Shop;

public interface ShopService {

	List<Shop> findAll() throws Exception;

	List<Shop> findByCity(String city_id) throws Exception;


}
