package com.retro.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.dao.BoardDAO;
import com.retro.dao.ReplyDAO;

public class ReplyRemoveAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String strBno= request.getParameter("bno");
		int rno =Integer.parseInt(request.getParameter("rno"));
		int bno =Integer.parseInt(request.getParameter("bno"));
		
		System.out.println("댓글 삭제 반환유무 확인" + rno +bno);
	
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.replyRemove(rno);
		 
		if (result > 0) {
			System.out.println("삭제에 성공하셨습니다.");
			BoardDAO bDao = BoardDAO.getInstance();
			String flag ="minus";
			bDao.replyCntUpdate(strBno,flag);
			
			
		} else {
			System.out.println("댓글 삭제 실패!");
		}
		
		return null;
	}

}
