package com.retro.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.retro.dto.MemberDTO;
import com.retro.mybatis.SqlMapConfig;

public class LoginDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();

	// mapper에 접근하기 위한 SqlSession !
	SqlSession sqlSession;

	int result = 0;
		

	// [singleton패턴을 활용한 DAO객체 사용]
	// :객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는형태 +외부에서는 객체생성이 불가능하게 잠금!
	private LoginDAO() {}
		
	private static LoginDAO instance = new LoginDAO();	
	public static LoginDAO getInstance() {
		return instance;
	}
	
	
	
	public MemberDTO loginCheck(String id, String pw) {
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPw(pw);;
		
		try {
		mDto = sqlSession.selectOne("loginCheck", mDto);
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return mDto;
	}
	
}
