package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.apache.catalina.filters.AddDefaultCharsetFilter.ResponseWrapper;
import org.json.simple.JSONObject;

import com.retro.dao.MemberDAO;

public class IdCheckAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		// System.out.println("id>>>" + id); 
		
		MemberDAO mDao = MemberDAO.getInstance();
		String result = mDao.idCheck(id);

		
		
		//Ajax => JSON방식 => return할때 보내는 값도 json방식
		JSONObject jobj = new JSONObject();		
		jobj.put("message", result);
		jobj.put("id", id);
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jobj);
		
		
		
		
		// AJAX방식은 목적지가 자기 자신임으로
		// forward(목적지,이동수단)을 return할 필요없음.
		return null;
	}

}
