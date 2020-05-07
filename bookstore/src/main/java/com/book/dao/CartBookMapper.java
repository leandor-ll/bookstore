package com.book.dao;

import com.book.domain.AllOrderList;
import com.book.domain.CartBook;
import com.book.domain.CartBookExample;
import com.book.domain.OrderList;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CartBookMapper {
	long countByExample(CartBookExample example);

	int deleteByExample(CartBookExample example);

	int insert(CartBook record);

	int insertSelective(CartBook record);

	List<CartBook> selectByExample(CartBookExample example);

	int updateByExampleSelective(@Param("record") CartBook record, @Param("example") CartBookExample example);

	int updateByExample(@Param("record") CartBook record, @Param("example") CartBookExample example);

	//mybatis
	List<CartBook> getAll(String uid);

	List<CartBook> getAll1();

	void del(String id, String uid);

	Object totalPrice(String uid);

	Object totalAmount(String uid);

	void add(String bid, String uid, String num);

	Object upd(String sNu, String id, String uid);

	List<CartBook> sel();

	void upda(String bid, String uid, String num);

	void select(String s, String username,String ocategory);

	List<OrderList> getListOrder(String uuname);

	Object orderPrice(String uuname);

	void delete(String uid);

	String getOrderID(String uuname);

	void deleteSbook(String sid, String uuname);

	void loseMoney(String uuname, int orderPrice);

	void changeObookStatus(String sid, String uuname);

	void changeObookStatusThree(String sid, String uuname);

	List<OrderList> getOrderAll(String uuname);

	Object getPayOut(String uuname);

	void setOrderID(String format, String uuname,String ousername,String ouserphone,String oaddress);

	List<AllOrderList> getOrderAll1();

	String selectCategoryById(String s);

	List<String> getCategory();
	
	List<Integer> getNumberByCategory(String category);
	List<OrderList> getOrderAll2(String orderid);

	void deleteById(String id);

	int queryNumber(String sid, String uuname);

	List<OrderList> getOrderAllMyself(String uuname);

	void deleteMyselfOrderlist(String ouid, String orderid);

}