package com.book.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.CartBookMapper;
import com.book.domain.AllOrderList;
import com.book.domain.CartBook;
import com.book.domain.OrderList;
import com.book.service.CartBookService;

@Service
public class CartBookServiceImpl implements CartBookService{
	
	@Autowired
	private CartBookMapper cartBookDao;
	
	@Transactional(readOnly = true)
	public List<CartBook> getList(String uid) {
		return cartBookDao.getAll(uid);
	}
	
	@Transactional(readOnly = true)
	public List<CartBook> getList() {
		return cartBookDao.getAll1();
	}

	@Override
	public void del(String id, String uid) {
		cartBookDao.del(id,uid);
		
	}

	@Transactional(readOnly = true)
	public Object totalPrice(String uid) {
		
		return cartBookDao.totalPrice(uid);
	}
	
	@Transactional(readOnly = true)
	public Object totalAmount(String uid) {
		return cartBookDao.totalAmount(uid);
	}

	
	
	public Object upd(String sNu, String id, String uid) {
		return cartBookDao.upd(sNu,id,uid);
	}

	@Override
	public void add(String bid, String uid ,String num) {
			cartBookDao.add(bid, uid,num);
	}

	@Transactional(readOnly = true)
	public List<CartBook> sel() {
		return cartBookDao.sel();
	}

	@Override
	public void upda(String bid, String uid,String num) {
		cartBookDao.upda(bid, uid, num);
	}

	public void select(String s,String username,String ocategory) {
		cartBookDao.select(s,username,ocategory);
	}

	@Transactional(readOnly = true)
	public List<OrderList> getListOrder(String uuname) {
		return cartBookDao.getListOrder(uuname);
	}

	@Transactional(readOnly = true)
	public Object orderPrice(String uuname) {
		return cartBookDao.orderPrice(uuname);
	}

	public void delete(String uid) {
		cartBookDao.delete(uid);
	}

	public String getOrderID(String uuname) {
		String orderID = cartBookDao.getOrderID(uuname);
		return orderID;
	}

	public void deleteSbook(String sid, String uuname) {
		cartBookDao.deleteSbook(sid,uuname);
	}

	public void loseMoney(String uuname, int orderPrice) {
		cartBookDao.loseMoney(uuname,orderPrice);
	}

	public void changeObookStatus(String sid, String uuname) {
		cartBookDao.changeObookStatus(sid,uuname);
	}

	@Override
	public void changeObookStatusThree(String sid, String uuname) {
		cartBookDao.changeObookStatusThree(sid,uuname);
		
	}

	@Transactional(readOnly = true)
	public List<OrderList> getOrderAll(String uuname) {
		return cartBookDao.getOrderAll(uuname);
	}

	@Transactional(readOnly = true)
	public Object getPayOut(String uuname) {
		return cartBookDao.getPayOut(uuname);
	}

	@Override
	public void setOrderID(String format, String uuname) {
		cartBookDao.setOrderID(format,uuname);
	}

	@Override
	public List<AllOrderList> getOrderAll1() {
		return cartBookDao.getOrderAll1();
	}

	@Override
	public String selectCategoryById(String s) {
		return cartBookDao.selectCategoryById(s);
	}

	@Override
	public List<String> getCategory() {
		return cartBookDao.getCategory();
	}

	@Override
	public List<Integer> getNumberByCategory(String category) {
		return cartBookDao.getNumberByCategory(category);
	}
	

	@Override
	public List<OrderList> getOrderAll2(String orderid) {
		return cartBookDao.getOrderAll2(orderid);
	}

	@Override
	public void deleteById(String id) {
		cartBookDao.deleteById(id);
	}

}

