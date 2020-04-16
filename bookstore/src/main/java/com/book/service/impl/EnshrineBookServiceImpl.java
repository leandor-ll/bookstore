package com.book.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book.dao.EnshrineBookMapper;
import com.book.domain.CartBook;
import com.book.domain.EnshrineBook;
import com.book.service.EnshrineBookService;

@Service
public class EnshrineBookServiceImpl implements EnshrineBookService {
	
	@Autowired
	private EnshrineBookMapper enshrineBookDao;
	
	@Override 
	public List<EnshrineBook> getList(String id) {
		
		return enshrineBookDao.getList(id);
	}

	@Override
	public void add(String uuname,String idi ,String uubookid) {
		enshrineBookDao.add(uuname, idi,uubookid);
		
	}

	@Override
	public void del(String sbid, String suid) {
		enshrineBookDao.del(sbid, suid);
		
	}

	@Override
	public Object totalAmount(String uid) {
		return enshrineBookDao.totalAmount(uid);
	}

	@Override
	public List<EnshrineBook> sel() {
		return enshrineBookDao.sel();
	}

}
