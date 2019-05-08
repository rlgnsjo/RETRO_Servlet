package com.retro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.action.Action;
import com.retro.action.ActionForward;
import com.retro.action.ConstractAction;
import com.retro.action.IdCheckAction;
import com.retro.action.IndexAction;
import com.retro.action.MemberAction;

/**
 * Servlet implementation class RetroFrontController
 */
@WebServlet("/RetroFrontController")
public class RetroFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RetroFrontController() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Action action = null;
		ActionForward forward = null; // action에 보낸 forward값이 담겨있음.

		String uri = request.getRequestURI(); //
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length()); // substring은 문자열값을 빼준다. uri에서 ctx 글씨값을 뺀값이 command다.

		System.out.println("페이지 이동====>" + command);
		
		
		if (command.equals("/index.retro")) {
			action = new IndexAction(); // new IndexAction()객체를 생성
			forward = action.excute(request, response); // 인스턴스를 사용해서 execute함수를 사용해서 request, response를 매개변수로 반환
		}else if (command.equals("/constract.retro")) {
			action = new ConstractAction(); 
			forward = action.excute(request, response); 
		}else if (command.equals("/member.retro")) {
			action = new MemberAction(); 
			forward = action.excute(request, response); 
		}else if (command.equals("/idCheck.retro")) {
			action = new IdCheckAction(); 
			forward = action.excute(request, response); 
		}

		if (forward != null) {

			if (forward.isRedirect()) {
				response.sendRedirect(forward.getpath());
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getpath());
				rd.forward(request, response);
			}
		}

	}

}
