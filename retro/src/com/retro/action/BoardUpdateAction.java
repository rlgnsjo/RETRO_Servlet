package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.retro.dao.BoardDAO;
import com.retro.dto.BoardDTO;

public class BoardUpdateAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/modify.jsp";
		// 게시글 1건(상세조회)
		
		String bno = request.getParameter("bno");		
		BoardDAO bDao = BoardDAO.getInstance();
		HttpSession session = request.getSession();
		
		
		
		BoardDTO bDto = bDao.view(bno); // 현재 jsp 파일 안에 값들을 모두 담아있음.
		request.setAttribute("one", bDto);
				
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  
		forward.setRedirect(false);  
		
	
	
		
		
		return forward;
		
	}

}
