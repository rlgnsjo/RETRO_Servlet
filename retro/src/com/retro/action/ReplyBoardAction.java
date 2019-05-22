package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.retro.dao.BoardDAO;
import com.retro.dto.BoardDTO;

public class ReplyBoardAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/replyboard.jsp";
		// 게시글 1건(상세조회)
		
		String bno = request.getParameter("bno");		
		BoardDAO bDao = BoardDAO.getInstance();
		HttpSession session = request.getSession();
		
		// 조회수 증가 (+1)
		bDao.viewCnt(bno, session);
		
		
		BoardDTO bDto = bDao.view(bno);
		request.setAttribute("one", bDto);
		
		
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  
		forward.setRedirect(false);  
		
		
	
		
		
		return forward;
	}

}
