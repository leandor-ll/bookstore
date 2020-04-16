package com.book.service;

import java.util.List;
import java.util.Map;

import com.book.domain.Product;

public interface ProductService {
	List<Product> getList();
	void deleteById(String id);

	void save(Product p);

	Product getById(String id);
	

	void update(Product p);

	void deleteByIds(String[] id);
	
	List<Map<String, Object>> getProductMap(Map<String, Object> map);
	List<Map<String, Object>> getProductBrand();
	int getProductNumber();
	List<Map<String, Object>> getProductAll();
	void updateCategory(String cid,String catergory);
}
