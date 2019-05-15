package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.retro.dao.MemberDAO;
import com.retro.dto.MemberDTO;

public class PwUpdatePlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		
		String url = "index.retro";
		
		// 패스워드 수정 
		String id = request.getParameter("id");
		String pw = request.getParameter("npw");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.pwUpdate(id, pw);
		
		if(result > 0) {
			HttpSession session = request.getSession();
			MemberDTO mDto = mDao.memOne(id);
			
			session.removeAttribute("loginUser");
			session.setAttribute("loginUser", mDto);
		}
		
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(false);  //forward 방식으로 보냄
		
		return forward;
		
	}

}
