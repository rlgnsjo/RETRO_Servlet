package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.dao.MemberDAO;
import com.retro.dto.MemberDTO;

public class MemberPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.retro";
		
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
		
		
	
		System.out.println(mDto.toString());
		
		
		MemberDAO mDao = MemberDAO.getInstance(); 
		mDao.mem_insert(mDto);
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  
		forward.setRedirect(true);  //senDirect
		
		return forward;
		
	}

}
