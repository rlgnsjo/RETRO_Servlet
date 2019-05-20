package com.retro.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.dao.BoardDAO;
import com.retro.dto.BoardDTO;
import com.retro.dto.CriteriaDTO;
import com.retro.dto.PageMakerDTO;

public class ViewTableAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/viewtable.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO(); /* 개수값을 구해주는 DTO */
		int page = 1; /* 게시판 페이지를 누를 경우 페이지네이션 디폴트값은 반드시 1임! 게시판 들어가면 무조건 1페이지부터 시작한다는말.*/
		
		if (request.getParameter("page") != null) { /* 페이지네이션의 하단버튼중 1~10중 버튼을 선택해서 해당값이 들어가 조건문을탐! */
			page = Integer.parseInt(request.getParameter("page"));  /* 문자열로 들어온 값을 숫자값으로 바꿔주는 함수다. 
																	즉 page에 문자열 값으로 5가 들어가면 숫자값 5로 변경해주는 함수다.ㅣ */	
		}	
		
		System.out.println("페이지번호:" + page);
		criDto.setPage(page);  
		
		String sort_type = "new";
		if(request.getParameter("sort_type") != null) {
			sort_type = request.getParameter("sort_type");
		}
		System.out.println("정렬타입" + sort_type);
		
		
		
		// db에서 게시글 목록호출
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = bDao.listAll(criDto);  
		
		// 페이지네이션 생성
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int totalCount = bDao.totalCount(criDto);
		pageMaker.setTotalCount(totalCount);
		// view단으로 게시글 목록전송
		request.setAttribute("list", list);
		request.setAttribute("pageMaker", pageMaker);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("sort_type", sort_type);
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(false);  //forward 방식으로 보냄
		
		return forward;
	
		}
}

