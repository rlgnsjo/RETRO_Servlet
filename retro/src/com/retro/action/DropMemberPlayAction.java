package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.retro.dao.MemberDAO;
import com.retro.dto.MemberDTO;

public class DropMemberPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.retro";
		HttpSession session = request.getSession();
	
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		
		String id = mDto.getId();
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memDelete(id);
		
		if(result > 0) {
			session.invalidate();
		}
				
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(true);  //forward 방식으로 보냄
		
		//로그인 된 유저만 회원 수정수정가능.
		
		return forward;
	}

}
