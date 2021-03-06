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
	public int replyRemove(int rno) {  // 9 rno 값을 받아주고 sqlSession사용 위해 사용! 
		sqlSession = sqlSessionFactory.openSession(true);  // true 입력시 auto coomit 
											
		try {
			result = sqlSession.delete("replyRemove", rno); // 10. 댓글을 삭제하기 위해 	delete 메서드 실행~! 
		} catch (Exception e) {								// 10-1 "replyRemove" 는 mapper 이름표이고 갈때 rno를 같이 보내준다.		
			e.printStackTrace();							// delete, insert, update의 결과값은 0과 1로 오므로 int result에 담아준다
		}finally {
			sqlSession.close();
		}
		return result;
	}

}	
