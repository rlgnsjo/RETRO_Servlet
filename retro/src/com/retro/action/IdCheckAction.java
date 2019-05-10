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
		//16. Controller에서 전송한 request를 활용하여  ajax에서 보낸 id: memId를 가져와 id 변수에 담음.
		String id = request.getParameter("id");
		// System.out.println("id>>>" + id); 
		
		// 17. MemberDAO 객체 빌려와 mDao에 담음 
		MemberDAO mDao = MemberDAO.getInstance();
		
		// 18. MemberDAO 클래스의 idCheck() 메서드 실행
		// 매개변수로 id값 전달.
		String result = mDao.idCheck(id);
		// 25. "-1" or "1" 값을 return 변수에 담음.
		
		
		// 26. ajax 페이지로 결과값을 JSON방식으로 전달하기 위해
		// Google json-Simple 라이브러리를 사용하여 JSONObject 생성.
		
		//Ajax => JSON방식 => return할때 보내는 값도 json방식
		JSONObject jobj = new JSONObject();	
		
		// 27. Ajax 전달할 데이터를 담음 
		//     -message변수에 result담음
		//     -id변수에 id담음. 
		jobj.put("message", result);
		jobj.put("id", id);
		// 28. JOSN객체에 담은 데이터를 호출한 페이지로 전송하는 기능
		// 결론! Message와 id를 가지고 Ajax로 이동.
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jobj);
		
		
		
		
		// AJAX방식은 목적지가 자기 자신임으로
		// forward(목적지,이동수단)을 return할 필요없음.
		return null;
	}

}
