package com.book.dao;

import com.book.domain.EnshrineBook;
import com.book.domain.EnshrineBookExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface EnshrineBookMapper {
    long countByExample(EnshrineBookExample example);

    int deleteByExample(EnshrineBookExample example);

    int deleteByPrimaryKey(String eid);

    int insert(EnshrineBook record);

    int insertSelective(EnshrineBook record);

    List<EnshrineBook> selectByExample(EnshrineBookExample example);

    EnshrineBook selectByPrimaryKey(String eid);

    int updateByExampleSelective(@Param("record") EnshrineBook record, @Param("example") EnshrineBookExample example);

    int updateByExample(@Param("record") EnshrineBook record, @Param("example") EnshrineBookExample example);

    int updateByPrimaryKeySelective(EnshrineBook record);

    int updateByPrimaryKey(EnshrineBook record);
    
    //mybatis
    List<EnshrineBook> getList(String id);

	void add(String uuname,String idi, String uubookid);

	void del(String sbid, String suid);
	
	Object totalAmount(String uid);
	
	List<EnshrineBook> sel();
}