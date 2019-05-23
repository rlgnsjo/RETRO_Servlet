package com.retro.dao;

import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.retro.dto.MemberDTO;
import com.retro.dto.ReplyDTO;
import com.retro.mybatis.SqlMapConfig;

public class ReplyDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	ReplyDTO rDto =  new ReplyDTO();
	SqlSession sqlSession;
	int result = 0;
	List<ReplyDTO> list = null;
	boolean flag = false;

	
	

	// [singleton패턴을 활용한 DAO객체 사용]
	// :객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는형태 +외부에서는 객체생성이 불가능하게 잠금!
	private ReplyDAO() {}
		
	private static ReplyDAO instance = new ReplyDAO();
	
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	// 해당게시글의 댓글목록 조회
	
	public List<ReplyDTO> replyList(String bno){
		sqlSession = sqlSessionFactory.openSession();
	
		try {
			list = sqlSession.selectList("replyList", bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
		
	}
	
	// 해당게시글 작성
	public int replyAdd(ReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession(true);  // true 입력시 auto coomit 


		try {
			result = sqlSession.insert("replyAdd", rDto); // result에 replyAdd id에 rDto 값을담는다.
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	// 해당게시글 삭제 
	public int replyRemove(int rno) {
		sqlSession = sqlSessionFactory.openSession(true);  // true 입력시 auto coomit 

		try {
			result = sqlSession.delete("replyRemove", rno); // result에 replyAdd id에 rDto 값을담는다.
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

}	
