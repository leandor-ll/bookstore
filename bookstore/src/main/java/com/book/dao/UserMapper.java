package com.book.dao;

import com.book.domain.ChargeMoney;
import com.book.domain.User;
import com.book.domain.UserExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String uid);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(String uid);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    //mybatis
    void addUser(User u);

	List<User> selectUname(String uname);

	User findNamePassword(String loginName, String loginPassword);

	void updataPassword(String uname, String uIDcard, String password);

	List<String> selectPassword(String uname);

	Object userPrice(String uuname);

	void updateaddprice(String text,String uuname);

	Object checkDentity(String uuname);

	void changeDentity(String uuname);

	void setChargeMoneyList(String uuname, String format);

	List<ChargeMoney> queryChargeMoneyList(String uuname);

	void deleteChargeMoneyList(String userid, String chargetime);
}