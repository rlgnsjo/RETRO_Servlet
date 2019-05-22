<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  include file="../include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


























</style>
</head>
<body>
		<div class="chat"> 
			<div id="conform">
			<h4 class="box-title">댓글<span style="color:#f06595"></span></h4>		
					 <c:forEach items="${replyList}" var="replyview">
	
						<div class="repl_box">
							<div class="repl_user">${replyview.writer}</div>
							<jsp:useBean id="now" class="java.util.Date"/>  <!-- 현재라는 변수가 now라는 id에 담겨있음 -->
					    	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
					    	 <!-- jstl태그중 날짜값으로 변경해주기 위해 format을 사용!  패턴은 ex 2018 05  18  pattern="yyyy-MM-dd" -->
					    	<fmt:formatDate value="${replyview.regdate}" pattern="yyyy-MM-dd" var="regdate"/>
											 
							
							<div class="repl_date">${replyview.regdate}</div>
							
							<div class="repl_text" >${replyview.content}</div> 
						</div>
						
						</c:forEach>
						<div class="input_box">
							<span id="input_header"><span id="input_text">작성자:</span>${replyview.writer}</span>
							<input type="comment-desc" name="reple" id="input" submit="" placeholder="댓글입력창">
						</div>																	
					<div id="user_btn">
						<button type="button" id="returnGo" class="repl_btn">댓글등록</button>
						<button type="button" id="returnGo" class="repl_btn">댓글삭제</button>
					</div>					
			</div>
		</div>	
</body>
</html>