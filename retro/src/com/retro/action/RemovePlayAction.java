package com.retro.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.retro.common.Constants;
import com.retro.dao.BoardDAO;

public class RemovePlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//첨부 파일삭제
		
		String filename = request.getParameter("filename");
		
		if (!filename.equals("-")) { // 첨부파일이 있는경우
			File file = new File(Constants.UPLOAD_PATH + filename);
			file.delete();
		}
		
		String bno = request.getParameter("bno");	
		BoardDAO bDao = BoardDAO.getInstance();		
		bDao.removeBoard(bno);
		
		String url = "viewtable.retro";		
		ActionForward forward = new ActionForward();
		forward.setpath(url);
		forward.setRedirect(true);
		
	
		return forward;
	}

}
