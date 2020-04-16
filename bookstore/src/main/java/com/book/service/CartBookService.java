package com.book.service;

import java.util.List;
import java.util.Map;

import com.book.domain.AllOrderList;
import com.book.domain.CartBook;
import com.book.domain.OrderList;


public interface CartBookService {
	List<CartBook> getList(String uid);
	
	List<CartBook> getList();

	void del(String id, String uid);
	
	Object totalPrice(String uid);
	
	Object totalAmount(String uid);

	Object upd(String sNu, String id, String uid);

	void add(String bid, String uid , String num);
	
	List<CartBook> sel();

	void upda(String bid, String uid, String num);

	void select(String s,String username,String ocategory);

	List<OrderList> getListOrder(String uuname);

	Object orderPrice(String uuname);

	void delete(String uid);

	String getOrderID(String uuname);

	void deleteSbook(String sid, String uuname);

	void loseMoney(String uuname, int orderPrice);

	void changeObookStatus(String sid, String uuname);

	void changeObookStatusThree(String sid, String uuname);

	List<OrderList> getOrderAll(String uuname);
	List<AllOrderList> getOrderAll1();

	Object getPayOut(String uuname);

	void setOrderID(String format, String uuname);

	String selectCategoryById(String s);

	List<String> getCategory();
	
	List<Integer> getNumberByCategory(String category);
	
	List<OrderList> getOrderAll2(String orderid);
	
	void deleteById(String id);

}
