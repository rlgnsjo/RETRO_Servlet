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


	/* 전체를 감사주는 부분! */
	.content {
		font-family: 'Nanum Gothic', sans-serif;
		width: 1100px;
		height: 830px;
		box-sizing: border-box;
		border: 1px solid #FFE3EE;
		border-radius: 24px;
		color: #282828;
		margin: 230px auto 40px;
		padding-top: 1000px;
		padding: 20px;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
	}
	/* 질문게시판부분 */
	#order_board {
		display: inline-block;
	}
	#order_board span a{
		margin-right: 10px;
		display: inline-block;
		height: 25px;
		font-size: 17px;
		text-decoration: none;
		line-height: 40px;
		color: #FF5675;
	}
	.btn {
		margin-right: 6px;
		text-align: center;
		padding: 7px 15px;
		font-size: 14px;
		border-radius: 25px;
		background-color: #FFB6C1;
		color: white;
		outline: none;
		border: 0px;
		float: right;
		cursor: pointer;
	}
	.btn:hover {
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
		background-color: #FF5675;
	}
	.qu_title {
		margin: 20px 0 10px 0;
		display: block;
		font-size: 35px;
		color: #282828;
	}
	
	/* 테이블시작!!! */
	.retrotable {
	    border-collapse: collapse;
	    text-align: left;
	    line-height: 1.5;
	   /*  border-top: 1px solid #FFB6C1;;
	   border-bottom: 1px solid #FFB6C1;; */
	    margin: 20px 10px;
	}
	.retrotable thead tr th:nth-child(1){
		width: 10px;
	}
	.retrotable thead tr th:nth-child(2){
		text-align: center;
		width: 960px;
	}
	.retrotable thead tr th:nth-child(3){
		text-align: center;
		width: 30px;
	}
	.retrotable thead tr th:nth-child(4){
		text-align: center;
		width: 20px;
	}
	.retrotable thead tr th:nth-child(5){
		text-align: center;
		width: 30px;
	}
	.retrotable thead tr th:nth-child(6){
		text-align: center;
		width: 30px;
	}
	.retrotable thead tr th:nth-child(7){
		text-align: center;
		width: 8px;
	}
	/* .retrotable thead tr th td:nth-child(7){
		text-align: center;
		width: 8px;
	} */
	.retrotable thead th {
	    width: 80px;
	    padding: 10px;
	    font-weight: bold;
	    vertical-align: top;
	    color: #fff;
	    background: #FFB6C1;
	    margin: 20px 10px;
	    text-align: center;
	    height:25px;


	}
	.retrotable tbody th {
	    width: 70px;
	    padding: 10px;
	    border-top:1px solid #FFB6C1;
		border-bottom:1px solid #FFB6C1;
		font-weight: bold;
		font-size: 17px;
		
	}
	.retrotable td {
	    width: 350px;	
	    padding: 10px;    	   
	    text-align: center;
	    vertical-align: top;
	    border-top:1px solid #FFB6C1;
		border-bottom:1px solid #FFB6C1;
		font-weight: bold;
		font-size: 17px;
	
	}
	.retrotable tr:nth-child(even) {
	   background-color: #FFF0F5;			  
	}
	.retrotable .even {
	    background: #fdf3f5;
	}	
	.nmb {
		color: #FF69B4;
	}
	.fa-heart{
		color: #FF5675;
		font-size: 14px;
	}
	th .fa-heart{
		color: #FF5675;
		font-size: 18px;
	}
	
	   /*하단 검색부분!  */
	#div_search {	
			vertical-align: top;		
			float: right;
			margin: 10px 0 20px;
		}
		#search_board {
			height: 29px;
			width: 220px;
			margin: 0 10px;
			border: 1px solid #FFB6C1;
			border-radius: 25px;
			outline: none;
			padding-left: 8px;
		}
		.btn_search {
			margin-top: 0;
		}
		#selsearch {
			height: 33px;
			width: 100px;
			font-size: 15px;
			float: left;
			border: 1px solid #FFB6C1;
			border-radius: 25px;
			outline: none;
		}
		#search_result {
			margin: 15px 0px 15px;
			font-size: 20px;
			display: inline-block;
		}
		.search_span {
			color: #E71D36;
			font-weight: bold;
		} 
		#search_btn{
			font-size: 15px;
			text-decoration: none;
		} 
		.replyCnt_Color {
			background-color: #FF5675;
			font-size: 11px;
			color: white;
			border-radius: 25px;
			padding: 2px 5px;				
		}
		
		
		
		.new_time {
			background-color: #FF69B4;
			font-size: 11px;
			color: white;
			border-radius: 25px;
			padding: 2px 5px;
			animation-name: twinkle;
			animation-duration: 1.2s;
			animation-iteration-count: infinite;		
		} 
		
		@keyframes twinkle {
			0% 	{opacity: 0;}
			100% {opacity: 1;}		
		}
				

		/* 페이지 이동을 숫자버튼으로 알려주는 부분.  */
		.pagination {
		  display: block;
		  text-align: center;
		  margin: 0 auto;
		  width: 600px;
		  list-style: none;
		 

		}
		.pagination a {
		  color: black;
		  float: left;
		  padding: 4px 7px;
		  line-height: 24px;		  
		  /* padding: 8px 16px; */
		  text-decoration: none;
		  transition: background-color .3s;
		  border: 1px solid #ddd;
		   list-style: none;
		}

		.pagination a.active {
		  background-color: #FFB6C1;
		  color: white;
		  border: 1px solid #FFB6C1;
		}

		.pagination a:hover:not(.active) {background-color: #ddd;}
		
		.pagination_box {
			width: 100%;
		    margin-top: 35px; 
			height: 26px;
		}

	</style>
	

	
</head>
<body>
	<%@  include file="../include/header.jsp"%>
<div class="content">
	<h3 class="qu_title">질문 게시판</h3>
	<div>
		<div id="order_board">
			<span><a href="${path}/viewtable.retro?sort_type=new&search_option=${search_option}&keyword=${keyword}" id="orderNew">최신순</a></span>
			<span><a href="${path}/viewtable.retro?sort_type=good&search_option=${search_option}&keyword=${keyword}" id="orderGood">추천순</a></span>
			<span><a href="${path}/viewtable.retro?sort_type=reply&search_option=${search_option}&keyword=${keyword}" id="orderReply">댓글순</a></span>
			<span><a href="${path}/viewtable.retro?sort_type=view&search_option=${search_option}&keyword=${keyword}" id="orderCnt">조회순</a></span>
		</div>						
		<button class="btn btn-primary" id="boardAdd">게시글 등록</button>
	</div>
	<table class="retrotable">
	    <thead>
		    <tr>    	
		        <th id="top_title">no.</i></th>  <!--상단부분 테이블!  -->
		        <th>제목</th>
		        <th>작성자</th>
		        <th>조회수</th>
		        <th>좋아요 <i class="fas fa-heart"></i></th>		        
		        <th>작성일</th>
		        <th>첨부</th>
		    </tr>
	    </thead>
	    <c:forEach items= "${list}" var="bDto">    <!-- jsp페이지에서 자바코드를 쉽게 작성하게 해주기 위한 jstl 태그 items가 액션에서 보낸 데이터 -->
	    	<!-- 현재 시간 구하기. -->                     <!--  이 값을 bDto에 담아준다.   -->
	    	<jsp:useBean id="now" class="java.util.Date"/>  <!-- 현재라는 변수가 now라는 id에 담겨있음 -->
	    	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
	    	 <!-- jstl태그중 날짜값으로 변경해주기 위해 format을 사용!  패턴은 ex 2018 05  18  pattern="yyyy-MM-dd" -->
	    	<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate"/> 	    	
		    <tr>
		        <th class="nmb">${bDto.bno}</th>
		        		      
		        <td id="repl_ti" onclick="bno_val(${bDto.bno})">${bDto.title}
		        <c:if test="${bDto.replycnt > 0}">
		        	<span class="replyCnt_Color">${bDto.replycnt}</span>
		        </c:if>
		        <c:if test="${today == regdate}">
		         <span class="new_time">New</span>
		        </c:if>
		        </td>		        
		          <td>${bDto.writer}</td>		     
		       	 <td>${bDto.viewcnt}</td>
		         <td>${bDto.goodcnt}<i class="fas fa-heart"></i></td>
		      	<td> 
		      	 <c:choose>
		      	 	<c:when test="${today == regdate}">  <!-- 오늘날짜랑 같은 경우만 시분초를 띄워줘라. -->
		      	 		<fmt:formatDate pattern="hh:mm:ss" value="${bDto.regdate}"/> 
		      	 	</c:when>
		      	 	<c:otherwise>
		      	 		<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/> 
		      	 	</c:otherwise>		      	 
		      	 </c:choose>	 		
		       </td>
		       <c:choose>
			       <c:when test="${bDto.filesize > 0}">
			       		<td><i class="far fa-file-alt"></i></td>	
			       </c:when>   
			       <c:otherwise>
			        	<td></td>
			       </c:otherwise>
		       </c:choose>
		       
		             
		    </tr>
	    </c:forEach>
	    <tbody>
		    <c:if test="${!empty keyword}">
				<div id= "search_result">
					<span class="search_span">"${keyword}"</span>로 검색한 결과는 총
					<span class="search_span">"${totalCount}"</span>건 입니다.
				</div>		
			</c:if>			 
	    </tbody>
	</table>
	<!-- x테이블 종료!@ -->	
	<div class="pagination_box">
		<div class="pagination" id="pani">
						
		<c:if test="${pageMaker.prev}"> <!--prev값에는 false 값이 담겨있음. test안에는 조건문이 들어가있음.   --> 
		  <li>
		 	<a href="${path}/viewtable.retro?page=${pageMaker.startPage -1}&sort_type=${sort_type}&search_option=${search_option}&keyword=${keyword}">&laquo;</a>		 	
		 </li>
		 <li>
		 	<a href="${path}/viewtable.retro?page=1&sort_type=${sort_type}">1</a>		 	
		 </li>	
		 <li>
		 	<a>...</a>
		 </li>	 
		 </c:if>
		
		
		
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">  
			   	
		<li>
		 <%--  <a href="#"></a>   --%>		  			     
		  <a href="${path}/viewtable.retro?page=${idx}&sort_type=${sort_type}&search_option=${search_option}&keyword=${keyword}&key=${code}" <c:out value="${pageMaker.criDto.page == idx ? 'class=active':''}" />>${idx}</a>	 
		 	  
		 </li> 
		 </c:forEach> 
		 
		 
		 
		 
		 <c:if test="${pageMaker.next}">  <!-- 1~10페이지에서  >>버튼을 클릭하면 11로 이동 무조건 endpage에서는 1로 이동 -->
		 <li>
		 	<a>...</a>
		 </li>
		  <li>
		 	<a href="${path}/viewtable.retro?page=${pageMaker.finalPage}&sort_type=${sort_type}&search_option=${search_option}&keyword=${keyword}">${pageMaker.finalPage}</a>		 	
		 </li>
		 <li>
		 	<a href="${path}/viewtable.retro?page=${pageMaker.endPage+ 1}&sort_type=${sort_type}&search_option=${search_option}&keyword=${keyword}">&raquo;</a>		 	
		 </li>		 
		 </c:if>
		</div>
	</div>
	<div id="div_search">
		<select id="selsearch" name="selsearch">
			<option value="1"selected="selected">제목+내용</option>
			<option value="2">내용</option>
			<option value="3">제목</option>
			<option value="4">작성자</option>
		</select>
		<input type="text" placeholder="검색할 값을 입력하세요." id="search_board" name="search_board">
		<a href="#" id="search_btn" class="btn btn_search">검색</a>
	</div>

</div>	
<%@ include file="../include/footer.jsp"%>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 	
	<script type="text/javascript">
	

	
	$(document).ready(function() {
						
	 var sort_type = "${sort_type}"; 
		if(sort_type == "new"){
			$("#order_board span a").eq(0).css("color", "#FF69B4").css("font-weigt", "bold").css("text-decoration","underline");
		} else if(sort_type == "good"){
			$("#order_board span a").eq(1).css("color", "#FF69B4").css("font-weigt", "bold").css("text-decoration","underline");
		} else if(sort_type == "reply"){
			$("#order_board span a").eq(2).css("color", "#FF69B4").css("font-weigt", "bold").css("text-decoration","underline");
		} else if(sort_type == "view"){
			$("#order_board span a").eq(3).css("color", "#FF69B4").css("font-weigt", "bold").css("text-decoration","underline");
		}				
	});
	$(document).on("click", "#search_btn", function(){
		var search_option = $('#selsearch').val();
		var keyword = $('#search_board').val();
		alert(search_option + "," + keyword);
		
		if(keyword == null || keyword.length == 0) {
			 $('#search_board').focus();
			 $('#search_board').css('border', '1px solid rgb(231,29,54)');
			 return false;
		}
		location.href= "${path}/viewtable.retro?search_option="+search_option+"&keyword="+keyword;				
	});
	function bno_val(bno) {
		location.href= "${path}/replyboard.retro?bno=" + bno;
	}
	
	$("#boardAdd").on("click", function(){
		$.ajax({
			type: "post",
			dataType: "json",
			url: "registerAjax.retro", 			
			success: function(data) {           
				if(data.message == "login") {
					location.href= "registerView.retro"
				} else {
					location.href= "loginPage.jsp"
				}
			}  
		});
	})
	
	
		
	</script>









</html>