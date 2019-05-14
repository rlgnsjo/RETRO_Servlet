package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.dao.MemberDAO;

public class PwCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id + ", " + pw);
		MemberDAO mDao = MemberDAO.getInstance();
		boolean flag = mDao.pwCheck(id,pw);
		
		
		
		return null;
	}

}
