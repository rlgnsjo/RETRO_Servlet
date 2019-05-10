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
import com.retro.action.MemberPlayAction;

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
		// 13.uri와 ctx를 빼서 commamd를 생성  
		//    실행: /retro/idcheck.retro 
		//    -/retro
		// ----------------------------------------------------------
		//   = /idCheck.retro  >>> command
		String uri = request.getRequestURI(); //
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length()); // substring은 문자열값을 빼준다. uri에서 ctx 글씨값을 뺀값이 command다.

		System.out.println("페이지 이동====>" + command);
		
		// 14. 생성된 command 조건에 맞는 if문 실행
		// command = /idCheck.retro로 실행
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
			// 15. IdCheckAction 클래스 객체 생성
			//  결과물 action 인스턴스
			// action 인스턴스를 활용하여 execute() 메서드 실행
			// 매개변수로 controller의 request와 response를 전송
			// 이동 IdCheckAction 클래스의 execute() 로 이동!
			action = new IdCheckAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/memberplay.retro")) {
			action = new MemberPlayAction(); 
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
