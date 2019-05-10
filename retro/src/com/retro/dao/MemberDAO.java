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
		// 19. myBatis를 사용하기 위해 sqlSession을 빌려옴
		sqlSession = sqlSessionFactory.openSession();
		String result = "";
		
		try {
			//20. sqlSession을 활용하여 mapper.xml의 
			// idCheck 이름의 sql문을 실행 (매개변수로 id 데이터전달)
			 result = sqlSession.selectOne("idCheck", id);	
			 
			 // 22. DB에서 sql문을 실행한 결과를 result 변수에 담음. 
			 // 23. result가 null이면 사용가능한 id 
			 // result가 null이 아니면 중복된 id 
			 //   -사용가능한 ID = "1"
			 //    -중복된 ID = "-1"
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
		// 24. IdCheckAction 클래스로 
		// "1" or "-1" 값을 return 결과값으로 보냄.
		return result;
	}
	pubilc int mem_insert(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.insert("mem_insert", mDto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
}

