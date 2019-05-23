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
import com.retro.action.CommentListAction;
import com.retro.action.ConstractAction;
import com.retro.action.DropMemberAction;
import com.retro.action.DropMemberPlayAction;
import com.retro.action.IdCheckAction;
import com.retro.action.IndexAction;
import com.retro.action.LoginAjaxAction;
import com.retro.action.LoginOutAction;
import com.retro.action.LoginPageAction;
import com.retro.action.LogoutAjaxAction;
import com.retro.action.MemberAction;
import com.retro.action.MemberPlayAction;
import com.retro.action.PwCheckAction;
import com.retro.action.PwUpdateAction;
import com.retro.action.PwUpdatePlayAction;
import com.retro.action.ReplyAddAction;
import com.retro.action.ReplyBoardAction;
import com.retro.action.ReplyRemoveAction;
import com.retro.action.ViewTableAction;
import com.retro.action.infoUdateAction;
import com.retro.action.infoUpdatePlayAction;

/**
 * Servlet implementation class RetroFrontController
 */
@WebServlet("/RetroFrontController")
public class RetroFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RetroFrontController() {
		super();
	}

	/* 전화국의 교환원 역할을 하는 컨트롤러 기능만함. */
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
		}else if (command.equals("/login.retro")) {
			action = new LoginAjaxAction(); 
			forward = action.excute(request, response); 
		}else if (command.equals("/loginOut.retro")) {
			action = new LoginOutAction(); 
			forward = action.excute(request, response); 
		}else if (command.equals("/logoutAjax.retro")) {
			action = new LogoutAjaxAction(); 
			forward = action.excute(request, response); 
		}else if (command.equals("/infoUdate.retro")) {
			action = new infoUdateAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/infoUpdatePlay.retro")) {
			action = new infoUpdatePlayAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/pwUpdate.retro")) {
			action = new PwUpdateAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/pwCheck.retro")) {
			action = new PwCheckAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/pwUpdatePlay.retro")) {
			action = new PwUpdatePlayAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/dropMember.retro")) {
			action = new DropMemberAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/dropMemberPlay.retro")) {
			action = new DropMemberPlayAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/loginPage.retro")) {
			action = new LoginPageAction(); 
			forward = action.excute(request, response); 
		} else if (command.equals("/viewtable.retro")) { 
			action = new ViewTableAction(); // 1. 객체 생성 .
			forward = action.excute(request, response);  //2.replyboard 액션의 excute매서드를 실행
		} else if (command.equals("/replyboard.retro")) {
			action = new ReplyBoardAction(); // 1. 객체 생성 .
			forward = action.excute(request, response);  //2. viewtable 액션의 excute매서드를 실행
		} else if (command.equals("/commentlist.retro")) {
			action = new CommentListAction(); // 1. 객체 생성 .
			forward = action.excute(request, response);  //2. viewtable 액션의 excute매서드를 실행 이작업을 해당 action부분에서 진행할것!
		} else if (command.equals("/replyAdd.retro")) {
			action = new ReplyAddAction(); // 1. 객체 생성 .
			forward = action.excute(request, response);  //2. viewtable 액션의 excute매서드를 실행 이작업을 해당 action부분에서 진행할것!
		} else if (command.equals("/replyRemove.retro")) {
			action = new ReplyRemoveAction(); // 1. 객체 생성 .
			forward = action.excute(request, response);  //2. viewtable 액션의 excute매서드를 실행 이작업을 해당 action부분에서 진행할것!
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
