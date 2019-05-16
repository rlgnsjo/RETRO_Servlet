<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic');	
		body,ul {
			margin: 0;
			padding: 0;
			background-color: #f5f6f7;
			font-family: 'Nanum Gothic', sans-serif;

		}
		ul{list-style: none;}

		a:link, a:visited{
			color: inherit;
		}
		a{text-decoration: none;}
		#content_layout {
			width: 460px;
			margin: 0px auto;
			/* border: 1px solid blue; */

		}
		#header_div {
			width: 340px;
			margin:62px auto;

			/* border: 1px solid red; */
		}
		.div_input {
			background-color: white;
			border: 1px solid #dadada;
			padding: 10px 35px 10px 15px;
			margin-bottom: 14px;
			width: 408px;
			height: 29px;
		}
		.input_box{
			display: block;
			overflow: hidden;
		}
		.input_login{
			width: 408px;
			padding: 7px 0px 6px 0px;
			border-width: 0px;
			cursor: pointer;
		}
		#btn_login {
			display: block;
			background-color: #FFD8D8;
			color: white;
			font-size: 22px;
			padding-top: 2px;
			margin: 30px 0px 13px;
			width: 460px;
			height: 59px;
			text-decoration: none;
			text-align: center;
			line-height: 61px; 
		}
		table {width: 100%;}

		#state{
			font-size: 13px;
			position: relative;
		}
		td{
			height: 26px;
		}
		#state> label {
			background: url('images/썬콜.png')no-repeat;
			display: block;
			height: 26px;
			line-height: 26px;
			padding-left: 30px;
		}
		#state> input {
			visibility: hidden;
			position: absolute;
			right: 1px;
			width: 22px;
			height: 22px;
			margin-top: -11px; 
		}
   
		#state > input:checked +label{    /* +는 형제선택자 중에 바로다음에 오는 것을 실행  */
			background-image: url('images/check_on.gif');
		}
		#secure {
			text-align: right;
			font-size: 12px;
		}
		#state img {
			vertical-align: middle;
		}
		#secure img {
			vertical-align: bottom; 
		}
		#ip_ud {
			color: #747474;

		}
		#ip_ud:hover {
			text-decoration: underline;
		}
		.si{
			color: white;
		}
		#off{
			display: inline-block;
			font-weight: bold;
			width: 22px;
			text-align: left;
		}
		#login_ud > a {
			text-decoration: underline;
			color: #747474;
		}
		hr{
			width: 98%;
			margin: 20px auto;
			border: thin solid #EAEAEA;
		}
		#member {
			color: #c8c8c8;
			font-size: 12px;
			text-align: center;
		}
		#macketing{
			width: 100%;
		}
		#naver_img{
			width: 460px;
			display: block;
			margin: 47px 0px 15px 0px;
		}
		#footer{
			padding: 15px 0;
		}
		#footer * {
			font-size: 12px;
			line-height: normal;
			list-style: none;
			color: #333;
		}
		#footer > ul {
			margin: 0 auto 9px;
			text-align: center;
		}
		#footer > ul >li{
			display: inline;
			padding: 0 5px 0 7px;
			border-left: 1px solid #dadada;

		}
		#footer > ul >li:first-child{ /*   자식선택자의 종류중 하나 */
			border-left: 0px; 
		}
		#footer > ul >li a:hover{
			color: #FFD8D8;
			text-decoration: underline;
		}
		#addr_logo {
			width: 63px;
			height: 11px;
		}
		#address{
			margin: 0px auto;
			text-align: center;
		}
		#address * {
			font: 9px verdana;
		}
		#address a{
			font-weight: bold;
		}
		#address a:hover{
			color: #FFD8D8;
		}
		.err_code {
			/* display: inline-block; */
			color: #ff1616;
			font-size: 12px;
			line-height: 16px;
			margin: -2px 0 12px;
			display: none;
			text-align:center;
		}





	</style>
	</head>
<body>
<div id="content_layout">
		<header>
			<div id="header_div">
				<a href="#">
					<img alt="네이버로고" src="images/피앙세.png">
				</a>
			</div>
		</header>
		<section>
			
			<div class="div_input" id="naver_id">
				<span class="input_box">
				<input type="text"  placeholder="아이디" name="" class="input_login" id="inputid">	
				</span>							
			</div>
			<div class="div_input" id="naver_pw">
				<span class="input_box">
				<input type="password"  placeholder="비밀번호" name="" class="input_login" id="inputpw">		
				</span>			
			</div>
			
				<div>
					<span class="err_code">비밀번호를 입력하시오.</span>
					<a href="#" id="btn_login">로그인</a>
				</div>

				<div>
					<table>
						<tr>
							<td id="state">
								<input type="checkbox" id="loginck">
								<label for="loginck" class="label1">
								&nbsp; 로그인 상태유지									
								</label>
							</td>
							<td id="secure">
								<span id="ip_ud">
									<a href="#">IP 보안</a>									
								</span>
								<span id="off">OFF</span>&nbsp;
								<span class="si">|</span>&nbsp;
								<span id="login_ud">
									<a href="#">일회용 로그인</a>	
								</span>&nbsp;
								<img src="images/help.png">
							</td>
						</tr>
					</table>
				</div>
			
				<div><hr></div>
				<div id="member">
					<a href="#">아이디 찾기</a>&nbsp;<span class="si">|</span>&nbsp;
					<a href="#">비밀번호 찾기</a>&nbsp;<span class="si">|</span>&nbsp;
						
					<a href="#">회원가입</a>

				

				</div>

		</section>
		<aside>
			<div id="macketing">
				<img src="img/naver_img.jpg" alt="" id="naver_img">
			</div>
		</aside>
		<footer>
			<div id="footer">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><strong><a href="#">개인정보처리방침</a></strong></li>
					<li><a href="#">책임의 한계와 법적고지</a></li>
					<li><a href="#">회원정보 고객센터</a></li>
				</ul>

				<div id="address">
					<span>
						<a href="https://www.navercorp.com/">
							<img src="img/naver_logo.png" id="addr_logo">
						</a>
					</span>
					<span>copyright</span>
					<span>ⓒ</span>
					<span><strong><a href="#">a finace corp.</a></strong></span>
					<span>All Rights Reserved.</span>
				</div>			
			</div>
		</footer>
	</div>
	
	
	
	
	
	
	
	
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	<script type="text/javascript">
		$(document).ready(function() {			   			
			$('#btn_login').click(function(){
				var id = $.trim($('#inputid').val());
				var pw = $.trim($('#inputpw').val());
				
				var regEmpty = /\s/g;
				
				if(id == null || id.length == 0) {
					$('.err_code').text('필수 정보입니다.')
								  .css('display', 'block');
				return false;
				}else if(id.match(regEmpty)) {
					$('.err_code').text('공백없이 입력해주세요.')
					 			  .css('display', 'block');
				return false;
             	}
								
				if(pw == null || pw.length == 0) {
					$('.err_code').text('필수 정보입니다.')
								  .css('display', 'block');
				return false;
				}else if(pw.match(regEmpty)) {
					$('.err_code').text('공백없이 입력해주세요.')
					 			  .css('display', 'block');
		 		return false;
             	}
				
				$.ajax({
					url: "login.retro",
					type: "POST",
					dataType: "json",
					data: "id="+id+"&pw="+pw,
					success: function(data){
						 
						if(data.message == "1"){
							location.href= "index.retro"; 
						}else if(data.message == "-1"){
							$('#inputid').focus();
							$('.err_code').text('회원 아이디 또는 비밀번호가 일치하지 않습니다.')
										  .css('display', 'block');
						}
					},
					error:function() {
						alert("System Error\(*.*)/");						
					}
					
				});
				
								
			});
		});
	</script> 
</body>
</html>