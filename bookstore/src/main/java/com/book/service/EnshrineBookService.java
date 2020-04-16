package com.book.service;

import java.util.List;


import com.book.domain.EnshrineBook;


public interface EnshrineBookService {
	
	List<EnshrineBook> getList(String id);

	void add(String uuname,String idi ,String uubookid);

	void del(String sbid, String suid);
	
	Object totalAmount(String uid);
	
	List<EnshrineBook> sel();
	
}
