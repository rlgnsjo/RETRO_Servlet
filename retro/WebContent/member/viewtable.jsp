<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		width: 1000px;
		height: 800px;
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

		/* 페이지 이동을 숫자버튼으로 알려주는 부분.  */
		.pagination {
		  display: block;
		  text-align: center;
		  margin: 0 auto;
		  width: 198px;

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
			<span><a href="#" id="orderNew">최신순</a></span>
			<span><a href="#" id="orderGood">추천순</a></span>
			<span><a href="#" id="orderReply">댓글순</a></span>
			<span><a href="#" id="orderCnt">조회순</a></span>
		</div>						
		<button class="btn btn-primary" id="boardAdd">게시글 등록</button>
	</div>
	<table class="retrotable">
	    <thead>
		    <tr>    	
		        <th id="top_title">no.</i></th>
		        <th>제목</th>
		        <th>작성자</th>
		        <th>조회수</th>
		        <th>좋아요 <i class="fas fa-heart"></i></th>		        
		        <th>작성일</th>
		        <th>첨부</th>
		    </tr>
	    </thead>
	    <tbody>
	    <tr>
	        <th class="nmb">101</th>
	        <td>내용이 들어갑니다.</td>
	        <td>혼다히토미</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>

	    <tr>
	        <th class="nmb">102</th>
	        <td>내용이 들어갑니다.</td>
	        <td>조유리</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    
	    <tr>
	        <th class="nmb">103</th>
	        <td>내용이 들어갑니다.</td>
	        <td>김채원</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">104</th>
	        <td>내용이 들어갑니다.</td>
	        <td>이채연</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">105</th>
	        <td>내용이 들어갑니다.</td>
	        <td>아부키나코</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">106</th>
	        <td>내용이 들어갑니다.</td>
	        <td>장원영</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">107</th>
	        <td>내용이 들어갑니다.</td>
	        <td>강혜원</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">108</th>
	        <td>내용이 들어갑니다.</td>
	        <td>김민주</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">109</th>
	        <td>내용이 들어갑니다.</td>
	        <td>신류진</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>
	    <tr>
	        <th class="nmb">110</th>
	        <td>내용이 들어갑니다.</td>
	        <td>리아</td>
	        <td>1</td>
	        <td>15 <i class="fas fa-heart"></i></td>
	        <td >2019-05-17</td>
	        <td><i class="far fa-file-alt"></i></td>	        
	    </tr>

	    </tbody>
	</table>
	<!-- x테이블 종료!@ -->	
	<div class="pagination_box">
		<div class="pagination" id="pani">
		  <a href="#">&laquo;</a>
		  <a href="#">1</a>
		  <a href="#" class="active">2</a>
		  <a href="#">3</a>
		  <a href="#">4</a>
		  <a href="#">5</a>
		  <a href="#">6</a>
		  <a href="#">&raquo;</a>
		</div>
	</div>
	<div id="div_search">
		<select id="selsearch" name="selsearch">
			<option value="3" selected="selected">-조건 선택-</option>
			<option value="1">제목</option>
			<option value="2">내용</option>
			<option value="3">제목+내용</option>
			<option value="4">작성자</option>
		</select>
		<input type="text" placeholder="검색할 값을 입력하세요." id="search_board" name="search_board">
		<a href="#" id="search_btn" class="btn btn_search">검색</a>
	</div>


</div>	
<%@ include file="../include/footer.jsp"%>

</body>
</html>