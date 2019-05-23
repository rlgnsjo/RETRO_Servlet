package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.retro.dao.ReplyDAO;
import com.retro.dto.ReplyDTO;

public class ReplyAddAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("re_bno")); // 댓글의 글번호가 담겨있을것
		String writer = request.getParameter("re_writer");  //댓글의 작성자가 담겨있을것
		String content = request.getParameter("re_textarea"); // 해당 댓글의내용이 담겨있음.
		
		
		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		System.out.println(rDto.toString());
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.replyAdd(rDto);
		
		if(result > 0) {
			System.out.println("댓글 등록성공");
		} else {
			System.out.println("댓글 등록 실패");
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("result", result);
		response.setContentType("application/x-json; charset= UTF-8");
		response.getWriter().print(jObj);  // ajax에서 받을때 json 방식으로 받았기 때문에 보낼때도 json 방식으로 보내야 한다. 그렇기 때문에 필요한 객체(코드)
		
		
		return null;
	}

}
