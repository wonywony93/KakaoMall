package com.kakao.mall.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kakao.mall.model.entity.ProductVo;

@Mapper
@Repository
public interface ProductMapper {

	public List<ProductVo> getProductList() throws SQLException;

	public ProductVo selectOne(String code) throws SQLException;
}
