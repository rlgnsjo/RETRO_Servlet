package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.action.ActionForward;

public class ConstractAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "constract.jsp";
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(false);  //forward 방식으로 보냄
		
		return forward;
		
	}

}
