package com.retro.action;

public class ActionForward {
 // view page(결과 값을 어디로 넘길지 결정할때 사용) 
	private String path;  // shs_index.jsp 값이 들어가 있음!
	private boolean isRedirect;	// 에는 false값이 담아있음. 
	
	// 페이지 넘길때 2가지 방법!
	// 1) SendRedirect  2) forward
	// true -> sendRedirect     
	//false -> forward 
	
	
	public String getpath() {
		return path;
	}
	public void setpath(String path) {
		this.path = path; 
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
	  this.isRedirect =	isRedirect;
	}
}
