package com.book.service.impl;


import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.KeyedHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.CategoryMapper;
import com.book.domain.Category;
import com.book.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private DataSource dataSource;
	@Autowired
	private CategoryMapper categoryMapper;
	@Transactional(readOnly = true)
	public Map<String, Map<String, Object>> getCategoryMap() {
		QueryRunner queryRunner = new QueryRunner(dataSource);
		try {
			return queryRunner.query("select * from c_book", new KeyedHandler<String>("cid"));
			
		} catch (SQLException e) {
			e.printStackTrace();
			return new HashMap<String, Map<String, Object>>();
		}
	}
	
	@Transactional(readOnly = true)
	public List<Map<String, Object>> getCategoryMapList() {
		return categoryMapper.getCategoryMapList();
	}

	public int save(Category c) {
		return categoryMapper.save(c);
		
	}

	@Transactional(readOnly = true)
	public List<Map<String, Object>> getById(String id) {
		return categoryMapper.getById(id);
	}

	@Override
	public List<Map<String, Object>> getCategoryMaps() {
		return categoryMapper.getCategoryMaps();
	}

	@Override
	public int deleteById(String id) {
		return categoryMapper.deleteById(id);
	}
}
