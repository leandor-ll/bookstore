package com.book.service;


import java.util.List;
import java.util.Map;

import com.book.domain.Category;

public interface CategoryService {
	public Map<String,Map<String,Object>> getCategoryMap();
	public List<Map<String,Object>> getCategoryMapList();
	public int save(Category c);
	public List<Map<String, Object>> getById(String id);
	public List<Map<String, Object>> getCategoryMaps();
	public int deleteById(String id);
}
