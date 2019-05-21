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
		
		CriteriaDTO criDto = new CriteriaDTO(); /*  4.개수값을 구해주는 DTO를  생성. */
		int page = 1; /* 게시판 페이지를 누를 경우 페이지네이션 디폴트값은 반드시 1임! 게시판 들어가면 무조건 1페이지부터 시작한다는말.*/
		// 페이지 번호 설정
		if (request.getParameter("page") != null) { /* 페이지네이션의 하단버튼중 1~10중 버튼을 선택해서 해당값이 들어가 조건문을탐! */
			page = Integer.parseInt(request.getParameter("page"));  /* 문자열로 들어온 값을 숫자값으로 바꿔주는 함수다. 그 값을 페이지에 담아줬음
																	즉 page에 문자열 값으로 5가 들어가면 숫자값 5로 변경해주는 함수다.ㅣ */	
		}			
		System.out.println("페이지번호:" + page);
		criDto.setPage(page);  
		
		
		// 페이지 정렬 설정
		String sort_type = "new";  //sort_type에 new 가 담겨있음. 
		if(request.getParameter("sort_type") != null) {
			sort_type = request.getParameter("sort_type");
		}
		criDto.setSort_type(sort_type); 
		System.out.println("정렬타입" + sort_type);
		
		
		// 검색설정 (검색타입, 키워드) 
		String search_option = null;
		String keyword = null;
		if(request.getParameter("keyword") != null) {
			search_option = request.getParameter("search_option");
			keyword = request.getParameter("keyword");
			criDto.setSearch_option(search_option);
			criDto.setKeyword(keyword);
			request.setAttribute("search_option", search_option);
			request.setAttribute("keyword", keyword);
			System.out.println("검색타입: " +search_option);
			System.out.println("검색키워드: " + keyword );
						
		}
		
		
		
		  
		
		
		// db에서 게시글 목록호출  객체생성을 1회만 한뒤 계속해서 빌려주기 사용하기위해 singieton패턴 사용
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = bDao.listAll(criDto);    //Boarddao에서 담겨져있는 list값이 담겨져있음. crtDto를 listAll에 담음.
		
		// 페이지네이션 생성
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int totalCount = bDao.totalCount(criDto);  // totalcount에 값을 담아줬음.
		pageMaker.setTotalCount(totalCount);  //pagemakerDTO의 setTotalCount에 담아서 실행!
		
		// view단으로 게시글 목록전송
		request.setAttribute("list", list); //11~20개의 게시글들 
		request.setAttribute("pageMaker", pageMaker);  // calcdate에 계산된 모든값이 담겨있음. 
		request.setAttribute("totalCount", totalCount);  // 280값(모든페이지의 게시글수)이 담겨져있음. 
		request.setAttribute("sort_type", sort_type);   //정렬 타입에 값이 담겨있음. new view reply good 
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(false);  //forward 방식으로 보냄
		
		return forward;
	
		}
}

