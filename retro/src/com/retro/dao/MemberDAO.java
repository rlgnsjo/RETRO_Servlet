package com.retro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.retro.dao.MemberDAO;
import com.retro.dto.MemberDTO;
import com.retro.mybatis.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;


	
	

	// [singleton패턴을 활용한 DAO객체 사용]
	// :객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는형태 +외부에서는 객체생성이 불가능하게 잠금!
	private MemberDAO() {
	}	
	private static MemberDAO instance = new MemberDAO();

	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	
	
	public String idCheck(String id)  {		
		sqlSession = sqlSessionFactory.openSession();
		String result = "";
		
		try {
			 result = sqlSession.selectOne("idCheck", id);	
			 
			 if(result != null) {  // id가 있다 = 중복
				 result= "-1";
			 }else {
				 result = "1";  // 사용가능한 id
			 }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return result;
	}
}

