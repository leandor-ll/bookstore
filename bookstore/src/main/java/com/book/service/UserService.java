package com.book.service;

import java.util.List;
import java.util.Map;

import com.book.domain.User;

public interface UserService {
	void addUser(User u);

	List<User> selectUname(String uname);

	User findNamePassword(String loginName, String loginPassword);

	void updataPassword(String uname, String uIDcard, String password);

	List<String> selectPassword(String uname);

	Object userPrice(String uuname);

	void updateaddprice(String text,String uuname);

	Object checkDentity(String uuname);

	void changeDentity(String uuname);
}
