package com.book.dao;

import com.book.domain.Product;
import com.book.domain.ProductExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ProductMapper {
    long countByExample(ProductExample example);

    int deleteByExample(ProductExample example);

    int deleteByPrimaryKey(String bid);

    int insert(Product record);

    int insertSelective(Product record);

    List<Product> selectByExample(ProductExample example);

    Product selectByPrimaryKey(String bid);

    int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example);

    int updateByExample(@Param("record") Product record, @Param("example") ProductExample example);
    
    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
    
    //mybatis
    List<Product> getAll();

	void delete(String id);

	void save(Product p);

	Product getById(String id);

	void update(Product p);

	List<Map<String, Object>> getProductMap(Map<String, Object> map);

	List<Map<String, Object>> getProductBrand();

	int getProductNumber();

	List<Map<String, Object>> getProductAll();
	
	void updateCategory(String cid,String catergory);

	void subtrace(String pid, int number);

}