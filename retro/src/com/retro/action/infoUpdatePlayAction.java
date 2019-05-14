package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.retro.dao.MemberDAO;
import com.retro.dto.MemberDTO;

public class infoUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member.jsp";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pswd1");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email_id = request.getParameter("email1");
		String email_url = request.getParameter("email2");
		String email = email_id + "@" + email_url;
		String zipcode = request.getParameter("addr");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		MemberDTO mDto = new MemberDTO(id, pw, name, phone, email, zipcode, addr1, addr2);
		MemberDAO mDao = MemberDAO.getInstance();
		int result= mDao.memUpdate(mDto);
	
		if(result > 0) {
			mDto = mDao.memOne(id);
			HttpSession session = request.getSession();
			session.removeAttribute("loginUser");
			session.setAttribute("loginUser", mDto);
					
		}
		
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(false);  //forward 방식으로 보냄
		
		return forward;
		
	}

}
