package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.dao.BoardDAO;
import com.retro.dto.BoardDTO;

public class RegisterPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url ="viewtable.retro";
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = new BoardDTO(title, content, writer);
		System.out.println("게시글 등록확인" +bDto.toString());
		bDao.registerAdd(bDto);
		
		
		
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(true);  //forward 방식으로 보냄
		
		return forward;
	}

}
