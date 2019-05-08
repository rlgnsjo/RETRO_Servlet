package com.retro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.retro.dao.ProductDAO;
import com.retro.dto.ProductDTO;
import com.retro.mybatis.SqlMapConfig;

public class ProductDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();

	// mapper에 접근하기 위한 SqlSession !
	SqlSession sqlSession;

	int result = 0;
	
	

	// [singleton패턴을 활용한 DAO객체 사용]
	// :객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는형태 +외부에서는 객체생성이 불가능하게 잠금!
	private ProductDAO() {
	}	
	private static ProductDAO instance = new ProductDAO();

	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	
	
	public List<ProductDTO> bestList() {
		List<ProductDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("bestList");						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return list;
	}
}
