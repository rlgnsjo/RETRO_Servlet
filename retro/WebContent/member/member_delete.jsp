<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Jua|Nanum+Myeongjo');

* {
	box-sizing: border-box;
	font-family: 'nanum Gothic'
}

body, h1, ul p, h3 {
	margin: 0;
	padding: 0;
}

body {
	background: #f5f6f7;
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.naver_logo {
	font-size: 2em;
}

.header, .container, .footer {
	width: 768px;
	margin: auto;
}

.header {
	padding-bottom: 20px;
	padding-top: 62px;
	position: relative;
}

.viewtable {
	text-align: center;
	width: 440px;
	height: 300px;
	background-color: white;
	margin: 13px;
	font-size: 17px;
	color: #8C8C8C;
	display: inline-block;
	border: 1px solid #dadada;
	border-radius: 12px;
	box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.3);
	box-sizing: border-box;
}

.viewtable h2 {
	color: #F361A6;
}

.viewtable hr {
	border: none;
	border-top: 2px solid black;
	color: #fff;
	background-color: #fff;
	height: 1px;
	width: 90%;
}

.container {
	margin: 0 auto;
	max-width: 768px;
	min-width: 460px;
}

.footer {
	height: 81px;
	text-align: center;
	padding: 30px 0px 15px;
}

.n_logo {
	display: block;
	width: 310px;
	height: 150px;
	background: url('images/피앙세리뉴.png');
	margin: auto;
}
/* 회원가입 정보 */
.join_content {
	width: 460px;
	margin: 0 auto;
}

.row_group {
	overflow: hidden;
	width: 100%;
}

.join_title {
	margin: 19px 0 8px;
	padding-left: 5px;
	font-size: 14px;
	font-weight: 700;
	color: black;
}

.ps_box {
	display: block;
	position: relative;
	width: 100%;
	height: 51px;
	border: 1px solid #dadada;
	padding: 10px 14px;
	background: #fff;
	vertical-align: top;
}

.int_id {
	padding-right: 110px;
}

.int {
	display: block;
	position: relative;
	width: 100%; /* 내가 가질수있는 영역의 100% */
	height: 29px;
	padding-right: 25px;
	line-height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	z-index: 10;
}

.step_url {
	position: absolute;
	top: 16px;
	right: 13px;
	font-size: 15px;
	line-height: 18px;
	color: #8e8e8e;
}

.pwupdate_err_msg {
	display: none;
	margin: 9px 0 -2px;
	font-size: 12px;
	line-height: 14px;
	color: red;
	height: 15px;
}

.int_pass {
	padding-right: 40px;
}

.bir_wrap {
	display: table;
	width: 100%;
}

.bir_dd, .bir_mm, .bir_yy {
	display: table-cell;
	table-layout: fixed;
	width: 147px;
	vertical-align: middle;
}

.bir_mm+.bir_dd, .bir_yy+.bir_mm {
	padding-left: 10px;
}

.join_birthday .ps_box {
	padding: 11px 14px;
}

.sel {
	background: #fff url('img/sel_arr.gif') 100% 50% no-repeat;
	width: 100%;
	height: 29px;
	font-size: 15px;
	line-height: 18px;
	color: #000;
	border: none;
	-webkit-appearance: none;
}
/* 가입하기 버튼 */
.btn_double_area {
	margin: 30px -5px 0px;
	overflow: hidden;
}

.btn_double_area>span {
	display: flex;
	width: 100%;
}

.btn_type {
	outline: none;
	width: 300px;
	margin: 0 5px;
	font-size: 20px;
	font-weight: 600px;
	line-height: 61px;
	display: block;
	height: 61px;
	padding-top: 1px;
	text-align: center;
	color: #fff;
	border: 1px solid #FFD8D8;
	background-color: #FFD8D8;
	cursor: pointer;
}

.footer_wrap>ul {
	list-style: none;
	margin: 0 auto 9px;
}

.footer_wrap * {
	font-size: 11px;
	line-height: normal;
	color: #333;
}

.footer_wrap>ul>li {
	display: inline;
	padding: 0 5px 0 7px;
	border-left: 1px solid #dadada;
}

.footer_wrap>ul>li a:hover {
	color: #FFD8D8;
}

.footer_wrap>ul>li:first-child {
	border-left: 0px;
}

.addr_logo {
	width: 63px;
	height: 11px;
}

.address {
	margin: 0px auto;
	text-align: center;
}

.address * {
	font: 9px verdana;
}

.address a {
	font-weight: bold;
}

.address a:hover {
	color: #FFD8D8;
}

input, select {
	width: 150px;
	height: 30px;
	box-sizing: border-box;
}

#wrap_email {
	padding: 5px;
}

#wrap_email>* {
	float: left;
	margin-right: 10px;
}

#sample6_postcode {
	margin-bottom: 5px;
	width: 280px;
	height: 42px;
	box-sizing: border-box;
}

#sample6_address {
	margin-bottom: 5px;
	width: 460px;
	height: 42px;
	box-sizing: border-box;
}

#sample6_detailAddress {
	margin-bottom: 5px;
	width: 460px;
	height: 42px;
	box-sizing: border-box;
}

.shy_btn {
	padding-bottom: 2px;
	cursor: pointer;
	color: white;
	font-size: 17px;
	width: 174px;
	height: 42px;
	border: 0;
	background-color: #FFD8D8;
}

/* modal */
.modal {
	position: fixed;
	z-index: 1000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	display: none;
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #FFD8D8;
	border-radius: 35px;
	width: 30%;
	
}

.modal-content p {
	text-align: center;
	line-height: 1.5;
	font-size: 14pt;
}

.modal-content span {
	font-size: 24pt;
}

#modal_btn {
	text-align: center;
	padding-bottom: 10px;
	padding-top: 10px;
}

.modal_btn {
	width: 150px;
	height: 50px;
	background-color: #FFD8D8;
	border: 0px;
	color: white;
	border-radius: 8px;
	margin: 11px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<p>
				<span><b><span>RETRO</span></b></span>
			</p>
			<p>
				<br/>정말로 탈퇴하시겠습니까?
			</p>
			<p>
				<br/>
			</p>
			<div id="modal_btn" onClick="close_pop();">
				<span class="pop_bt" style="font-size: 13pt;">
					<button class="modal_btn">취소하기</button>
					<button class="modal_btn btn_agree">탈퇴하기</button>
				</span>
			</div>
		</div>
	</div>
	
	<header>
		<div class="header">
			<h1 class="naver_logo">
				<a href="#" class="n_logo"></a>
			</h1>
		</div>
	</header>

	<section>
		<form class="join_form" method="POST" action="">
			<div class="container">
				<div class="join_content">
					<div class="row_group">
						<div class="join_row">
							<div class="viewtable">
								<h2 id="font">회원 탈퇴</h2>
								<hr>
								<br>
								<h3>정말로 사이트를 탈퇴하시겠습니까?</h3>
								<br> 1.개인정보는 보호정책에 따라 60일 이상 보관됩니다.<br> 2.작성된 게시물들은
								삭제가 되지 않습니다. <br> (익명처리후 retro.corp에 소유권 귀속이 귀속됩니다.)<br>
								3.게시글 삭제는 관리자에게 요청시 처리가능합니다.<br> (관리자 계정:
								rlgns4982@gmail.com)


							</div>
							<h3 class="join_title">
								<label for="pswd1">비밀번호재확인</label>
							</h3>
							<span class="ps_box int_pass"> <input type="password"
								id="pw" name="pswd1" class="int" maxlength="20"
								placeholder="숫자영문 조합 8~16글자"> <span class="step_url"><i
									class="fas fa-unlock"></i></span>

							</span> <span class="pwAjax">필수 정보입니다.</span>

						</div>







						<div class="btn_double_area">
							<span class="button_wrap">
								<button type="button" class="btn_type" id="yes_btn">취소하기</button>
								<button type="button" class="btn_type btn_agree" id="yes_btn">탈퇴하기</button>

							</span>
						</div>
					</div>
				</div>
		</form>
	</section>

	<footer>
		<div class="footer">
			<div class="footer_wrap">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><strong><a href="#">개인정보처리방침</a></strong></li>
					<li><a href="#">책임의 한계와 법적고지</a></li>
					<li><a href="#">회원정보 고객센터</a></li>
				</ul>

				<div class="address">
					<span> <a href="#"> <img class="addr_logo" alt="피앙새 로고"
							src="images/피앙새로고.png">
					</a>
					</span> <span>copyright</span> <span>ⓒ</span> <span><strong><a
							href="#">a finace Corp</a></strong> </span> <span>All right Reserved.</span>

				</div>
			</div>
		</div>
	</footer>
	<script type="text/javascript" src="js/validation.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	<script type="text/javascript">
		$(document).ready(function(){
			var state = false;
			
			$('#pw').blur(function(){
				var nowId ="${sessionScope.loginUser.id}";	
				var nowPw = $(this).val();				
				state = ajaxPwCheck(nowId, nowPw);
				alert(state);
			});
			
			$('.btn_agree').click(function(){
				alert(state);
				if(state) {
					$('.modal').css('display','block');
				} else {
					$('#pw').focus;
				}				
			});
			$('.btn_agree').click(function(){
				/* var id = "${sessionScope.loginUser.id}";	
				locatin.href= "dropMember.retro"; */
				
				location.href="dropMemberPlay.retro";
			});
			
			
			
			
			
			
			
			
			
			
			$('.modal_btn').eq(0).click(function(){
				$('.modal').css('display', 'none');
				
			});
			
		});
	</script>
</body>
</html>