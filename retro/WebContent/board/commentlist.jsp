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
<body>    <!--  9.즉 여기의 있는 값이 ajax에서 실행됨  -->
		<div class="chat"> 
			<div id="conform">
			<c:if test="${replyList.size() == 0}">
				<div class="reply_list">
					<div class="reply_line2">
						등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요.
					</div>				
				</div>
			
			</c:if>
			
			<h4 class="box-title">댓글 ${replyList.size()} <span style="color:#f06595"></span></h4>	
					 <c:forEach items="${replyList}" var="replyview">  <!--5. 해당게시글의 목록을 조회하기 위해 사용!  -->						
						<div class="repl_box">
							<div class="repl_user">${replyview.writer}</div> <!--6.view.jsp에서 ajax로 호출해줬으니 해당 ajax로 이동  -->
							
							<c:if test="${sessionScope.loginUser.id == replyview.writer}">  <!--2번 해당버튼을 클릭했을때 이벤트 시작  -->
								<a class="reply_del" data_num="${replyview.rno}">삭제</a>   <!-- data_num : 게시글 삭제시 해당id를 rno변수로 찾아준다. -->
							</c:if>					 
							
							<div class="repl_date"><fmt:formatDate pattern="yyyy-MM-dd" value="${replyview.regdate}"/></div>
			
							
							<div class="repl_text" >${replyview.content}</div> 
						</div>
						
						</c:forEach>
						<form action="replyAdd.retro" method="POST" name="frm_reply" id="frm_reply">
						<div class="input_box">
							<span id="input_header"><span id="input_text">작성자:</span>${replyview.writer}</span>
							<textarea type="comment-desc" name="re_textarea" id="replyInsert" placeholder="댓글입력창"></textarea>
							
							<script type="text/javascript">
							var oEditors = [];
							nhn.husky.EZCreator.createInIFrame({
							 oAppRef: oEditors,
							 elPlaceHolder: "replyInsert",
							 sSkinURI: "<%= request.getContextPath()%>/smarteditor/SmartEditor2Skin.html",
							 fCreator: "createSEditor2"
							});
							</script>
														
						</div>																	
					<div id="user_btn">
						<button type="button" id="reply_btn" class="repl_btn">댓글등록</button>
										 
					<span id="replylist_data">
						<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${replyview.regdate}"/>
					</span>
																	
					</div>	
					
					<c:choose>
					 <c:when test="${empty sessionScope.loginUser }"> <!--   c:when test안에 값은 jstl 태그의 조건식값. sessionScope에 접근해서
					  loginuser가 비어 있으면 밑에 있는 코드가 실행된다는걸 의미 하는거 같음 .-->
					 
					 	<div class="reply_login" id="reply_nologin">
					 		<span class="reply_nologin_span">
					 		<a class="reply_logina">로그인</a>을 하시면 댓글을 등록하실수 있습니다. </span>					 		 					 	
					 	</div>					 
					 </c:when>					
				</c:choose>
				<span class="error">내용을 입력해주세요.</span>
				<input type="hidden" id="re_writer" name="re_writer" value="${sessionScope.loginUser.id }"> <!-- 세션안에 있는 login user에 id값을 담아라. -->
				<input type="hidden" id="re_bno" name="re_bno">		<!--reply AddAction변수에 담아서 사용.-->
				 										 
				</form>							
			</div>
		</div>	
</body>
</html>