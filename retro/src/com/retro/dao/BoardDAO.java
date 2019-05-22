package com.retro.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.retro.dto.BoardDTO;
import com.retro.dto.CriteriaDTO;
import com.retro.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	BoardDTO bDto =  new BoardDTO();
	SqlSession sqlSession;
	int result = 0;
	List<BoardDTO> list = null;
	boolean flag = false;

	
	

	// [singleton패턴을 활용한 DAO객체 사용]
	// :객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는형태 +외부에서는 객체생성이 불가능하게 잠금!
	private BoardDAO() {}
		
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	// 게시글목록
	public List<BoardDTO> listAll(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("listAll", criDto);  // 현재 list에는 10개 값이 담겨져있다. 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return list;  // 매서드가 끝날때는 return을 만났거나 중가로 끝났을때 인데 return에 list값을 담아줘서 보내준다.
		
	}
	
	// 페이지네이션에 필요한 게시글 total수 구하기
	
	public int totalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result= sqlSession.selectOne("totalCount", criDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	//게시글 1건 상세조회 
	
	public BoardDTO view(String bno) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		try {
		bDto = sqlSession.selectOne("view", bno);  //1건의 결과값이 담겨있음 boardviewaction에
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return bDto;
	}
	
	// 게시글 조회수 증가 +1  위해 사용
		public void viewCnt(String bno, HttpSession session) {
		
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
		long update_time = 0;
		
		
		// null이면 => 처음 조회수 1증가 
		if(session.getAttribute("read_time_" + bno) != null){
		// 이전에 게시글을 조회한 시간.				
		 update_time = (long)session.getAttribute("read_time_"+bno);
		}
		
		// 현재시간 구하기
		long current_time = System.currentTimeMillis();
		
		// 현재시간과 이전에 게시글 조회시간을 비교 
		// 24시간(1일)이 지났으면 조회수 1증가
		// 아니면 조회수 증가없음.
		if(current_time - update_time > 24 * 60 * 60 * 1000) {
			
			sqlSession.update("viewCnt", bno);
			
			
			// 조회수 1증가한 최신시간을 session에 담는다. 
			session.setAttribute("read_time_" + bno, current_time);
			
			// ex) 30번 게시글을 조회하는 경우 read_time_30변수를 하나 만들고 현재시간을 담음
		}
								
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
	
		
}	