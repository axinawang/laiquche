package com.ynlqc.dao;

import java.util.List;

import com.ynlqc.domain.Series;

public interface SeriesDao {

	List<Series> findAll() throws Exception;

	List<Series> findHotSeries() throws Exception;

}
