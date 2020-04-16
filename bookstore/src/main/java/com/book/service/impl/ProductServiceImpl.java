package com.book.service.impl;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.ProductMapper;
import com.book.domain.Product;
import com.book.service.ProductService;


@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productDao;

	@Transactional(readOnly = true)
	public List<Product> getList() {
		return productDao.getAll();
	}

	@Override
	public void deleteById(String id) {
		productDao.delete(id);
	}

	@Override
	public void save(Product p) {
		p.setBid(UUID.randomUUID().toString().replaceAll("-", ""));;
		productDao.save(p);
	}

	@Transactional(readOnly = true)
	public Product getById(String id) {
		return productDao.getById(id);
	}

	@Override
	public void update(Product p) {
		productDao.update(p);
	}

	public void deleteByIds(String[] id) {
		if (id == null)
			return;
		for (int i = 0; i < id.length; i++) {
			String r = id[i];
			this.deleteById(r.trim());
		}
	}

	@Transactional(readOnly = true)
	public List<Map<String, Object>> getProductMap(Map<String, Object> map) {
		return productDao.getProductMap(map);
	}

	@Transactional(readOnly = true)
	public List<Map<String, Object>> getProductBrand() {
		return productDao.getProductBrand();
	}

	@Override
	public int getProductNumber() {
		return productDao.getProductNumber();
	}

	@Override
	public List<Map<String, Object>> getProductAll() {
		return productDao.getProductAll();
	}
	
	@Override
	public void updateCategory(String cid,String catergory) {
		productDao.updateCategory(cid,catergory);
		
	}
}
