<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   		String referer = request.getHeader("referer");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/section.css?v=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<title>Insert title here</title>

<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Jua|Nanum+Myeongjo');


		a {
			text-decoration: none;
		}	

		#board_wrap {
			font-family: 'Nanum Gothic', sans-serif;
			width: 1000px;
			height: 600px;
			box-sizing: border-box;
			border: 1px solid #FFE3EE;
			border-radius: 24px;
			color: #282828;
			margin: 310px auto 40px;
			padding: 20px;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0  #FFE3EE; 
		}

		.box-title {
			margin: 0px;
			margin-bottom: 10px;
		}

		#content {
			resize: none;
		}

		#reply_wrap {
			margin: 0 auto 40px;
			border: 1px solid black;
			width: 800px;
			box-sizing: border-box;
			border-radius: 4px;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
		}

		#reply_wrap_title {
			height: 30px;
			margin: 0px;
			border-bottom: 1px solid black;
			background-color: #2C3E50;
		}

		#knboard_detail_rspan {
			color: white;
			font-size: 15px;
			line-height: 30px;
			padding-left: 10px;
		}

		#detail_reply {
			width: 799px;
			padding: 20px;
			box-sizing: border-box;
		}
		.reply_list:nth-child(2n) {
			margin-left: 130px;
		}
		.box {
			margin: 10px;
		}

		.reply_list {
			border: 1px solid black;
			border-radius: 4px;
			padding: 10px;
			background-color: white;
			width: 602px;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
			margin-bottom: 30px;
		}
		.reply_insert {
			width: 735px!important;
		}
		#replyInsert {
			width: 730px!important;
		}
		.reply_writer {
			color: #2C3E50;
			font-weight: bold;
			font-size: 16px;
			text-decoration: none;
		}

		#replylist_date {
			float: right;
			color: #2C3E50;
			font-size: 12px;
		}
		.replylist_textarea {
			padding: 5px;
			width: 600px;
			resize: none;
			border-radius: 4px;
			box-sizing: border-box;
			border: 1px solid #BBBBBB;
			font-size: 13px;
			margin-top: 10px;
		}

		.reply_login {
			border-top: 2px dashed black;
			padding-left: 10px;
		}

		.reply_nologin_span {
			width: 14px;
			line-height: 40px;
			font-size: 12px;
		}
		
		.reply_btn {
			background-color: #FFB6C1;
			padding: 7px 15px;
			font-size: 14px;
			border-radius: 25px;
			color: white;
			outline: none;
			border: 0px;
			cursor: pointer
		}
		.reply_btn:hover {			
			background-color: #FF5675;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
		}
		#answer_btn:hover {			
			background-color: #FF5675;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
		}
	
		table {
			width: 920px;
			border-collapse: collapse;
			border-radius: 4px;
			border-top: 2px solid ##FADAE5;
			border-bottom: 2px solid #FADAE5;
			border-left: 0px;
			border-right: 0px;
			margin-bottom: 10px;
			font-size: 17px;
		}
		th, td {
			border: 2px solid #FFE3EE;
			padding-left: 15px;
		}
		th {
			background-color: #FFB6C1 !important;
			color: white;
			height: 35px;
			text-align: left;
			width: 20%;
		}
		td {
			height: 35px;
			background-color: white;
		}
		#detailContent {
			padding: 20px;
		}
		i {
			display: inline-block;
			padding-left: 10px;
		}
		i.fa-eye {
			color: #3498DB;
		}
		i.fa-heart {
			color: #e12e1c;
		}
		.reply_logina {
			font-size: 15px;
			font-weight: bold;
			color: #3498DB;
		}
		#frm_reply {
			margin: 0px;
		}
		#modal_all {
			z-index: 200;
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			overflow: auto;
			display: none;
			background-color: rgba(0, 0, 0, 0.4);
			padding-top: 100px;
			
		}
		#close_btn {
			float: right;
			cursor: pointer;
			margin-top: 8px;
		}
		#content_layout{
			width: 460px;
			height: 160px;
			box-sizing: border-box;
			background-color: white;
			border-radius: 25px;
			position: absolute;
			top: 50%;
			left: 50%;
			margin-left: -230px;     
			margin-top: -160px;
			border: 2px solid #FFE3EE;
		}
		#modal_header {
			height: 35px;
			background-color: #FFE3EE;
			color: white;
			border-radius: 20px 20px 0 0;
			padding: 0 20px;
			line-height: 35px;
		}
		#modal_content {
			text-align: center;
			font-size: 20px;
			padding: 20px 0px;
		}
		.btn_login {
			text-align: center;
			color: #FFE3EE;
		}
		.btn_login > a {
			width: 90px;
			height: 35px;
			border: 2px solid #FFE3EE;
			font-size: 20px;
			border-radius: 25px;
			display: inline-block;
			text-align: center;
			font-weight: bold;
			color: #FFE3EE
			margin: 0px 20px 20px;
			line-height: 33px;
		}
		.btn_login > a:hover {
			background-color: #FFE3EE;
			color: white;
		}
		.error {
			color: #FF3636;
			font-size: 12px;
			display: inline-block;
			display: none;
			margin-top: 10px;
		}
		.btn_like {
			position: relative;
			display: inline-block;
			width: 44px;
			height: 44px;
			border: 1px solid #e8e8e8;
			border-radius: 44px;
			font-family: notokr-bold,sans-serif;
			font-size: 14px;
			line-height: 16px;
			background-color: #fff;
			color: #DD5D54;
			box-shadow: 0 2px 2px 0 rgba(0,0,0,0.03);
			transition: border .2s ease-out,box-shadow .1s ease-out,background-color .4s ease-out;
			cursor: pointer;
			outline: none;
		}

		.btn_like:hover {
			border: 1px solid rgba(228,89,89,0.3);
			background-color: rgba(228,89,89,0.02);
			box-shadow: 0 2px 4px 0 rgba(228,89,89,0.2);
		}

		.btn_unlike .img_emoti {
			background-position: -30px -120px;
		}

		.img_emoti {
			display: inline-block;
			overflow: hidden;
			font-size: 0;
			line-height: 0;
			background: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/img_emoti.png?v=20180410) no-repeat;
			text-indent: -9999px;
			vertical-align: top;
			width: 20px;
			height: 17px;
			margin-top: 1px;
			background-position: 0px -120px;
			text-indent: 0;
		}

		.btn_like .ani_heart_m {
			margin: -63px 0 0 -63px;
		}

		.ani_heart_m {
			display: block;
			position: absolute;
			top: 50%;
			left: 50%;
			width: 125px;
			height: 125px;
			margin: -63px 0 0 -63px;
			pointer-events: none;
		}

		.ani_heart_m.hi {
			background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_on_m.png);
			-webkit-background-size: 9000px 125px;
			background-size: 9000px 125px;
			animation: on_m 1.06s steps(72);
		}

		.ani_heart_m.bye {
			background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_off_m.png);
			-webkit-background-size: 8250px 125px;
			background-size: 8250px 125px;
			animation: off_m 1.06s steps(66);
		}

		@keyframes on_m {
			from { background-position: 0 }
			to { background-position: -9000px }
		}

		@keyframes off_m {
			from { background-position: 0 }
			to { background-position: -8250px }
		}

		#wrap_like {
			text-align: center;
		}
		i.fa-heart{
			font-size: 14px;
			padding-right: 5px;
		}


		/* 댓글창 css시작! */

		#reply_wrap {
			font-family: 'Nanum Gothic', sans-serif;
			width: 1000px;
			height: 100%;
			box-sizing: border-box;
			border: 1px solid #FFE3EE;
			border-radius: 24px;
			color: #282828;
			margin: 40px auto 40px;
			padding: 20px;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0  #FFE3EE; 
		}
		


		.chat {		
			margin: 0 auto;
			margin-left: 8px;
			display: inline-block;
			width: 945px;
			height: auto;

		}
		#conform {
			height: 31px;
			font-size: 20px;
			background-color: #FFb6c1;
			border-radius: 5px;
			 box-shadow: 0 0px 2px 0 rgba(0,0,0,0.2), 0 4px 10px 0  #FFE3EE; 
		}
		h4.box-title{
			color: white;
			margin-left: 15px;

		}
			
		.repl_btn{
			display: inline-block;
			background-color: #FFB6C1;
			padding: 7px 15px;
			font-size: 14px;
			border-radius: 25px;
			color: white;
			outline: none;
			border: 0px;
			/* margin-top:  10px; */
			/* margin-left: 200px;  */
			cursor: pointer;
			text-align: center;
		}
		.repl_btn:hover {			
			background-color: #FF5675;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
		}

		.repl_box{
			margin: 16px auto;
			display: inline-block;
			border: 1px solid  #FADAE5;					
			border-radius: 10px;
			margin-left: 15px;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0  #FFE3EE; 
			/* box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19); */			
		}
		.repl_user{	
			font-size: 20px;
			border-radius: 50px;
			display: inline-block;		
			background-color: #FFB6C1;
			text-align: center;
			color: white;
			width: 120px;
			box-shadow: 0 1px 10px 0 rgba(0,0,0,0.2), 0 2px 10px 0  #FADAE5; 
		}
		.repl_date{
			font-size: 20px;
			margin-left: 660px;
			border-radius: 50px;
			display: inline-block;		
			background-color: #FFB6C1;
			text-align: center;
			color: white;
			width: 130px;
			box-shadow: 0 1px 10px 0 rgba(0,0,0,0.2), 0 2px 10px 0  #FADAE5; 
			/* padding-left: 668px;
			background-color: #FFB6C1;
			display: inline-block; */
		}
		.repl_text{
			height: 112px;
			width: 885px;
			box-sizing: border-box;
			border: 1px solid #FADAE5;
			border-radius: 8px;
			margin: 10px auto 40px;
			padding: 20px;
			/* border-top: 25px solid #FADAE5 !important;	 */
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.01);
			
		}
		.input_box{
			margin: 16px auto;
			display: inline-block;
			border: 1px solid  #FADAE5;		
			width: 915px;
			height: 360px;
			border-radius: 10px;
			margin-left: 21px;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0  #FFE3EE; 
					
		}

		#replyInsert{
			margin: 12px auto;
			display: inline-block;
			border-radius: 6px;
			border: 2px solid  #FFB6C1;		
			width: 880px;
			height: 204px;
			margin-left: 15px;
		    border-top: 20px solid #FFB6C1 !important;	 
		    box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0  #FFE3EE; 
		}
		#input_header{	
			font-size: 24px;
			border-radius: 50px;
			display: inline-block;		
			background-color: #FFB6C1;
			text-align: center;
			color: white;
			width: 200px;
			font-weight: 560;
			box-shadow: 0 1px 10px 0 rgba(0,0,0,0.2), 0 2px 10px 0  #FADAE5; 
		}
		#input_text{
		    padding-right: 10px;
			color: #FF5675;
		}
		.reply_list{
			background-color: #FFB6C1;
			padding: 5px 15px;
			font-size: 14px;
			color: white;
			border: 2px solid  #FFB6C1;
		}
		.reply_del{
			display: inline-block;
			background-color: #FFB6C1;
			padding: 7px 15px;
			font-size: 14px;
			border-radius: 25px;
			color: white;
			outline: none;
			border: 0px;
			/* margin-top:  10px; */
			/* margin-left: 200px;  */
			cursor: pointer;
			text-align: center;
		}



	</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 	
<script type="text/javascript">

	history.pushState(null, document.title, location.href);
	window.addEventListener('popstate', function(event) {
		history.pushState(null, document.title, '<%=referer%>');
		location.reload();
	});


 $(document).on("click", "#returnGo", function(){
	location.href = "<%=referer%>";
}); 

$(document).ready(function(){
	/* 문서가 준비되면 댓글 목록을 조회하는 Ajax실행  ==  */
	comment_list();
});



$(document).on("click", "#reply_btn", function(){
	oEditors.getById["replyInsert"].
	exec("UPDATE_CONTENTS_FIELD", []);
	
	var content = $("#replyInsert").val(); //val()은 양식(form)의 값을 가져오거나 값을 설정하는 메소드  현재 content의안에는  id= replyInsert 값이 담겨있음.

	if (content == "<p><br></p>") {
		return false;
	} else {
		// 게시글 번호 담아서 보냄.
		var bno = '${one.bno}';
		$('#re_bno').val(bno);  // input id re_bno에 게시글번호 값이 담기게 할려는거 같다.
		
		$.ajax({
			type: "post",
			url: "replyAdd.retro",
			dataType: "json",
			data: $("#frm_reply").serialize(),  //serialize() 데이터가 많으니 바이트코드로 변환하는 과정을 해줌! (직렬화)
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 직렬화를 과정을 거치니 코드의 규격을 다시정해주는것
			success: function(data) {
					comment_list();      //comment_List()를 실행하여 댓글을 수를 변경시켜준다.
					$("#replyInsert").val("");  //8.id 가 commentList인 코드를 commenlist jsp 값을 뿌려줌
			},
			error: function() {
				alert("system error!");
			}
		});
	}
});

function comment_list(){        // 댓글을 페이지전환없이 사용해주기 위해 사용.
	$.ajax({
		type: "post",
		url: "commentlist.retro",
		data: "bno=${one.bno}",  			// 게시글번호를 데이터로 보내주고 있음. 해당게시글을 보여주기 위해 사용.
		success: function(result) {           //7. commlistaction의 url을 해당경로로 담아줌  
			$("#commentList").html(result);  //8.id 가 commentList인 코드를 commenlist jsp 값을 뿌려줌
		}  
	});
}
	
	$(document).on("click", ".reply_del", function(){		
		var rno = $(this).attr("data_num");
		var bno = '${one.bno}';
				
		$.ajax({
			type: "post",
			url: "replyRemove.retro",
			data: "rno=" + rno + "&bno=" + bno, 			
			success: function(result) {             
				comment_list();
			}  
		});			
	});
 	 

	$(document).on("click", ".btn_like", function(){
		alert("추천감사합니다.");
		
		
	});
	
	$(document).on("click", "#remove_btn", function(){
		location.href="removePlay.retro?bno=${one.bno}&filename=${one.filename}";
			
	});
	
	$(document).on("click", "#update_btn", function(){
		location.href="boardUpdate.retro?bno=${one.bno}";
			
	});
	
	

</script>
<body>
<%@  include file="../include/header.jsp"%>
<script type="text/javascript" src="${path}/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<div id="board_wrap">
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">질문 게시판</h3>
			</div>
			
			
			
			<!-- form속성에 action을 지정하지 않으면 현재 경로를 그대로 action의 대상 경로로 설정 -->
			<form role="form" method="post" id="frm1">
				<input type="hidden" name="bno" id="bno" value="261">
			</form>

			<div class="box-body">
				<table>
					<tr>
						<th style="border-left: 0px">제목</th>
						<td colspan="3" style="border-right: 0px">
							<span class="category_text" style="color:#f06595">${one.bno}번째 글</span>
							<span id="title" class="form-control" >${one.title}</span>
						</td>
					</tr>
					<tr>
						<th style="border-left: 0px">작성일자</th>
						<jsp:useBean id="now" class="java.util.Date"/>  <!-- 현재라는 변수가 now라는 id에 담겨있음 -->
				    	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
				    	 <!-- jstl태그중 날짜값으로 변경해주기 위해 format을 사용!  패턴은 ex 2018 05  18  pattern="yyyy-MM-dd" -->
				    	<fmt:formatDate value="${one.regdate}" pattern="yyyy-MM-dd" var="regdate"/> 
				    	
						<td style="width: 30%;">
							<c:choose>
					      	 	<c:when test="${today == regdate}">  <!-- 오늘날짜랑 같은 경우만 시분초를 띄워줘라. -->
					      	 		<fmt:formatDate pattern="hh:mm:ss" value="${one.regdate}"/> 
					      	 	</c:when>
					      	 	<c:otherwise>
					      	 		<fmt:formatDate pattern="yyyy-MM-dd" value="${one.regdate}"/> 
					      	 	</c:otherwise>		      	 
					      	 </c:choose>
						</td>
						<th >작성자<i class="fas fa-pencil-alt"></i></th>
						<td style="width: 30%; border-right: 0px;">${one.writer}</td>
					</tr>
					<tr>
						<th style="border-left: 0px">첨부파일</th>
						<td colspan="2" style="border-right:0px">
						<c:if test="${one.filesize > 0}">
						 <a href="download.retro?file=${one.filename}">${one.filename}</a>
						(<fmt:formatNumber type="number" pattern="0.00" value="${one.filesize /1024 /1024}">
						</fmt:formatNumber>mb)	
						</c:if>
						</td>
						<td style="border-left: 0px; border-right: 0px; text-align: center;">
							<i class="fa fa-eye" style="color: #f06595;"></i> ${one.viewcnt}  
							<i class="fa fa-heart" style="color: #f06595;"></i> ${one.goodcnt}    <!-- 좋아요 부분 -->
						</td>
					</tr>
					<tr>
						<td id="detailContent" colspan="4" style="border-left: 0px; border-right: 0px; padding: 100px;">
							<p>${one.content}</p>
							<!-- <textarea class="form-control" id="content" name="content" rows="3"
								cols="" readonly="readonly"></textarea> -->
							</td>
						</tr>
					</table>
				</div>

				<div id="user_btn">
					<button type="button" id="returnGo" class="reply_btn">게시판 목록</button>
				<c:if test="${sessionScope.loginUser.id == one.writer}"> 
					<button class="reply_btn" id="remove_btn">삭제</button>
					<button class="reply_btn" id="update_btn">수정</button>
			  </c:if> 
					
		 
				</div>

				<div id="wrap_like">
					<button type="button" class="btn_like" id="btn_good">
						<span class="img_emoti">좋아요</span>
						<span class="ani_heart_m"></span>
					</button> 
				</div>
			</div>		
		</div>  <!-- <- board_wrap 끝나는부분. -->
	
		<div id="reply_wrap">			
			<div id="commentList">
			</div>		
		</div>	

.
	<!--  <div id="delete_modal_all">     
         <div id="content_layout">
             <div id="modal_header">게시글 삭제 <span id="close_btn"><i class="fa fa-close"></i></span></div>
             <div id="modal_content">정말 <span class="point">게시글</span>을 삭제하시겠습니까?</div>
            
            <div class="btn_login">
                <a id="no_btn" href="#">아니오</a>
                <a id="yes_btn" href="#">네</a>
            </div>
         </div>
    </div>  -->
				
		
			
<%@ include file="../include/footer.jsp"%>
							

</body>
</html>