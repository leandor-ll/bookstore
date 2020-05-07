package com.book.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.UserMapper;
import com.book.domain.ChargeMoney;
import com.book.domain.User;
import com.book.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userDao;

	// 添加用户---注册用户
	public void addUser(User u) {
		// 服务层去dao层添加数据
		u.setUid(UUID.randomUUID().toString().replace("-", ""));
		u.setUprice(0);
		u.setUpic("\\\\2019\\\\9\\\\user.jpg");

		userDao.addUser(u);
	}

	@Transactional(readOnly = true)
	public List<User> selectUname(String uname) {
		return userDao.selectUname(uname);
	}

	@Transactional(readOnly = true)
	public User findNamePassword(String loginName, String loginPassword) {
		return userDao.findNamePassword(loginName, loginPassword);
	}

	public void updataPassword(String uname, String uIDcard, String password) {
		userDao.updataPassword(uname, uIDcard, password);
	}

	@Transactional(readOnly = true)
	public List<String> selectPassword(String uname) {
		return userDao.selectPassword(uname);

	}

	@Transactional(readOnly = true)
	public Object userPrice(String uuname) {
		return userDao.userPrice(uuname);
	}

	@Override
	public void updateaddprice(String text, String uuname) {
		userDao.updateaddprice(text, uuname);
	}

	@Transactional(readOnly = true)
	public Object checkDentity(String uuname) {
		return userDao.checkDentity(uuname);
	}

	@Override
	public void changeDentity(String uuname) {
		userDao.changeDentity(uuname);
	}

	@Override
	public void setChargeMoneyList(String uuname, String format) {
		userDao.setChargeMoneyList(uuname,format);
	}

	@Override
	public List<ChargeMoney> queryChargeMoneyList(String uuname) {
		return userDao.queryChargeMoneyList(uuname);
	}

	@Override
	public void deleteChargeMoneyList(String userid, String chargetime) {
		userDao.deleteChargeMoneyList(userid,chargetime);
		
	}

}
