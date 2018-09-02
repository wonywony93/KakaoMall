package com.kakao.mall;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import com.kakao.mall.mapper.UserMapper;
import com.kakao.mall.model.entity.UserVo;

@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class KakaoMallApplicationTests {

	
	@Autowired
	private SqlSessionFactory sqlSession;
	@Autowired
	private UserMapper mapper;
	@Test
	public void testConnection() throws SQLException {
		
		System.out.println("성공"+sqlSession);
		
		UserVo bean=new UserVo();
		bean.setId("wonywony93");
		bean.setPassword("1150");
		String id=mapper.login(bean);
		System.out.println("id="+id);
	}

}
