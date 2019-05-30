<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  include file="common.jsp"  %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css/common.css?v=1">
<link rel="stylesheet" href="${path}/css/header.css?v=1">
<title>Insert title here</title>
</head>
<body>
	<header>

	<div class="header_menu">
		<div class="inner_header inner_header_menu">
		 	<div class="header_sns">	
		 		<a href="#">
		 			<i class="fab fa-instagram"></i></a>
		 		<a href="#">
		 			<i class="fab fa-twitter-square"></i></a>
		 		<a href="#">
		 			<i class="fab fa-facebook-square"></i></a>
		 		<a href="#">
		 			<i class="fab fa-line"></i></a>

			</div>
		
		<div class="header_member">
			<ul>
				<li><a href="#">
					
	
	<button id="topBtn">
		<i class="fas fa-arrow-up"></i>				
	</button></a></li>
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}" >
					<li><a href="${path}/constract.retro" id="login_btn">회원가입</a></li>
					<li><a href="${path}/loginPage.retro">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li style="color:white"><a href="#" style="color:#FFB6C1">${sessionScope.loginUser.name}</a>(${sessionScope.loginUser.id})</li>
					 <%-- a href="${path}/loginOutAjax.retro"  --%>
					<li><a href="#" class="logout_btn">로그아웃</a></li>
					<li><a href="${path}/pwUpdate.retro">비밀번호수정</a></li>
					<li><a href="${path}/infoUdate.retro">내정보수정</a></li>
					<li><a href="${path}/dropMember.retro">회원 탈퇴</a></li>
				</c:otherwise>
			</c:choose>					
			</ul>
		</div>	
	</div>		
	<div class="header_logo">		
		<div class="inner_header">
			<img src="${path}/images/피앙세.png" alt="로고이미지">
		</div>
	</div>
	<div class="header_nav">
		<div class="nav_wrap">
			<div class="right_content">
				<ul>  <!-- <ul> 태그는 순서없이 모양으로 (unordered[순서가 매겨지지않은] list) 목록을 만듬! -->
					<li id="SELECTSHOP">
						<a href="#">SELECTSHOP</a>
					</li>								
					<li class= "dropdown"><a href="#">BEST</a>
						<div class= "dropdown_content">
						 	<a href= "https://rafsimons.com/">Maison Kitsuné</a>
						 	<a href= "https://www.off---white.com/en/KR?utm_referrer=https%3A%2F%2Fwww.google.com%2F">OFF WHITE</a>
						 	<a href= "#">ROLEX</a>
						 	<a href= "#">GUCCI</a>	
						 	<a href= "#">YSL</a>					 		
						</div>
					</li>      <!--  <a></a> 태그는 하이퍼링크를 걸어주는 태그 -->
					<li class= "dropdown"><a href="#">luxury</a>
						<div class= "dropdown_content">
						 	<a href= "https://rafsimons.com/">RAF SIMONS</a>
						 	<a href= "https://www.off---white.com/en/KR?utm_referrer=https%3A%2F%2Fwww.google.com%2F">OFF WHITE</a>
						 	<a href= "#">FENDI </a>
						 	<a href= "#">GUCCI</a>	
						 	<a href= "#">YSL</a>					 		
						</div>
					</li>
					<li class="dropdown"><a href="#">WATCH </a>
					<div class= "dropdown_content">
					 	<a href= "https://rafsimons.com/">ROLEX</a>
					 	<a href= "#">MIDO</a>  
					 	<a href= "#">cartier</a>
					 	<a href= "#">hamilton</a>	
					 	<a href= "#">OMEGA</a>					 		
					</div>
					</li>	
					<li class="dropdown"><a href="#"> formal </a>
						<div class= "dropdown_content">
						 	<a href= "https://rafsimons.com/">Tommy Hilfiger </a>
						 	<a href= "#">acne studio</a>  
						 	<a href= "#">Maison Kitsuné</a>
						 	<a href= "#">LACOSTE</a>	
						 	<a href= "#">COS</a>					 		
						</div>
					</li>
						
					<li class="dropdown"><a href="#"> preppy </a>
						<div class= "dropdown_content">
						 	<a href= "https://rafsimons.com/">Tommy Hilfiger </a>
						 	<a href= "#">polo</a>  
						 	<a href= "#">SANDRO</a>
						 	<a href= "#">LACOSTE</a>	
						 	<a href= "#">COS</a>					 		
						</div>
					</li>
					<li class="dropdown"><a href="#"> ACC </a>
						<div class= "dropdown_content">
						 	<a href= "https://rafsimons.com/">cartier</a>
						 	<a href= "#">Tiffany&Co</a>  
						 	<a href= "#">bulgari</a>
						 	<a href= "#">STONEHENGE</a>	
						 	<a href= "#">Swarovski</a>					 		
						</div>
					</li>
					<li class="dropdown"><a href="#"> 게시판 </a>
						<div class= "dropdown_content">
						 	<a href= "${path}/viewtable.retro">게시판</a>		
						 	 <!--1. 해당 버튼 클릭시 해당경로로 이동  경로 이동할때 반드시 web,xml이동 -->				 				 		
						</div>
					</li>
				</ul>

			</div>
		</div>
	</div>
				

	</header>
	<!-- header 끝 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
			<script type="text/javascript">
				$(document).ready(function() {
					$(window).scroll(function() {
						var scrollValue = $(this).scrollTop();
						if(scrollValue> 40) {
							$('#topBtn').fadeIn();
						}else{
							$('#topBtn').fadeOut();
						}
					});
					$('#topBtn').click(function() {
						$('html,body').animate({scrollTop : 0}, 60);
					});
				});

				$(document).ready(function() {
				$('#open_btn').click(function(event) {
					$('#modal_all').css('display', 'flex');
					});

				$('#close_btn').click(function(event) {
					$('#modal_all').css('display', 'none');
					});
				});
				$(document).on('click', '.logout_btn', function(){
					$.ajax({
						url: "logoutAjax.retro",
						type: "POST",
						dataType: "json",						
						success: function(data){							 
							location.reload();
						},
						error:function() {
							alert("System Error\(*.*)/");						
						}
						
					});
					
				});
	</script>

</body>
</html>