package com.book.dao;

import com.book.domain.Category;
import com.book.domain.CategoryExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CategoryMapper {
    long countByExample(CategoryExample example);

    int deleteByExample(CategoryExample example);

    int deleteByPrimaryKey(String cid);

    int insert(Category record);

    int insertSelective(Category record);

    List<Category> selectByExample(CategoryExample example);

    Category selectByPrimaryKey(String cid);

    int updateByExampleSelective(@Param("record") Category record, @Param("example") CategoryExample example);

    int updateByExample(@Param("record") Category record, @Param("example") CategoryExample example);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
    
    //mybatis
    List<Map<String, Object>> getCategoryMapList();
    
    int save(Category c);
    
    List<Map<String, Object>> getById(String id);
    
    List<Map<String, Object>> getCategoryMaps();
    
    int deleteById(String id) ;
    
    
}