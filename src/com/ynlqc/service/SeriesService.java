package com.ynlqc.service;

import java.util.List;

import com.ynlqc.domain.Series;

public interface SeriesService {

	List<Series> findAll() throws Exception;

	List<Series> findHotSeries() throws Exception;

}
