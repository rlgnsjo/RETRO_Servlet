package com.retro.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.retro.dao.ReplyDAO;
import com.retro.dto.ReplyDTO;

public class CommentListAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 해당 게시글의 댓글 목록을 조회
		
		String url = "board/commentlist.jsp";
		String bno = request.getParameter("bno");
		System.out.println("게시글번호: " + bno);
		
		
		// 해당 게시글의 댓글 목록을 조회
		ReplyDAO rDao = ReplyDAO.getInstance();
		List<ReplyDTO> list = rDao.replyList(bno);		
		request.setAttribute("replyList", list);		
		for (ReplyDTO replyDTO : list) {
			System.out.println(replyDTO.toString());
		}
		
		ActionForward forward = new ActionForward();
		forward.setpath(url);
		
		forward.setRedirect(false);
		
		return forward;
		
		
	}

}
