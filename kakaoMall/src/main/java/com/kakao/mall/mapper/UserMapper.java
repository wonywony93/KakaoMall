package com.kakao.mall.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kakao.mall.model.entity.ShoppingVo;
import com.kakao.mall.model.entity.UserVo;

@Mapper
@Repository
public interface UserMapper {
	public int insertOne(UserVo bean) throws SQLException;
	public String login(UserVo bean) throws SQLException;
	public int buy(ShoppingVo bean) throws SQLException;
	public List<ShoppingVo> cart(String id) throws SQLException;
}
