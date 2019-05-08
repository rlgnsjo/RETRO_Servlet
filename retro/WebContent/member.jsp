<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${path}/css/common.css?v=1">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>회원가입</title>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Jua|Nanum+Myeongjo');
		*{ box-sizing: border-box; font-family: 'nanum Gothic' }
		body, h1, ul p,h3 {margin: 0; padding: 0;}
		body{background:#f5f6f7;}
		ul{list-style: none;}
		a{text-decoration:none; color: inherit;}

	/* 네이버로고 */
	.naver_logo {font-size: 2em;}
	.header, .container, .footer{
		width: 768px;
		margin: auto;
	}
	.header{
		padding-bottom: 20px;
		padding-top: 62px;
		position: relative;
	
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
	.join_content{
		width: 460px;
		margin: 0 auto;
	}
	.row_group{
		overflow: hidden;
		width: 100%;
	}
	.join_title{
		margin: 19px 0 8px;
		padding-left: 5px;
		font-size: 14px;
		font-weight: 700;
		color: black;
	}
	.ps_box{
		display: block;
		position: relative;
		width: 100%; 
		height: 51px;
		border:1px solid #dadada;
		padding: 10px 14px;
		background: #fff;
		vertical-align: top;
	}
	.int_id {
		padding-right: 110px;
	}
	.int{
		display: block;
		position: relative;
		width: 100%; /* 내가 가질수있는 영역의 100% */
		height: 29px;
		padding-right: 25px;
		line-height: 29px;
		border:none;
		background:#fff;
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
	.error_next_box {
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
	.bir_dd, .bir_mm, .bir_yy{
		display: table-cell;
		table-layout: fixed;
		width: 147px;
		vertical-align: middle;
	} 
	.bir_mm+.bir_dd,.bir_yy+.bir_mm {
		padding-left: 10px;
	}
	.join_birthday .ps_box{
		padding: 11px 14px;
	}
	.sel {
		background: #fff url('img/sel_arr.gif') 100% 50% no-repeat;
		width: 100%;
		height: 29px;
		font-size: 15px;
		line-height: 18px;
		color: #000;
		border:none;
		-webkit-appearance:none;
	}
	/* 가입하기 버튼 */
	.btn_double_area {
		margin: 30px -5px 0px;
		overflow: hidden;		
	}
	.btn_double_area > span {
		display: block;
		width: 100%;
	}
	.btn_type{
		width: auto;
		margin: 0 5px;
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		display: block;
		height: 61px;
		padding-top: 1px;
		text-align: center;
		color: #fff;
		border: 1px solid #FFD8D8;
		background-color: #FFD8D8;
	}
	.footer_wrap > ul {
			list-style: none;
			margin: 0 auto 9px;			
		}
		.footer_wrap * {
			font-size: 11px;
			line-height: normal;
			color: #333;
		} 
		.footer_wrap > ul > li {
			display: inline;
			padding: 0 5px 0 7px;
			border-left: 1px solid #dadada;
		}
		.footer_wrap > ul > li a:hover {
			color: #FFD8D8;
		}
		.footer_wrap > ul > li:first-child {
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
		#wrap_email{
			padding: 5px;
		}
		#wrap_email > * {
			float: left;
			margin-right: 10px;
		}
		#sample6_postcode{
			margin-bottom: 5px;
			width: 280px;
			height: 42px;
			box-sizing: border-box;
		}
		#sample6_address{
			margin-bottom: 5px;
			width: 460px;
			height: 42px;
			box-sizing: border-box;
		}
		#sample6_detailAddress{
			margin-bottom: 5px;
			width: 460px;
			height: 42px;
			box-sizing: border-box;
		}
		.shy_btn{
			padding-bottom: 2px;
			cursor: pointer;
			color: white;
			font-size: 17px;
			width: 174px;
			height: 42px;
			border: 0;
			background-color: #FFD8D8;  
		}

	</style>
</head>
<body>
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
						<h3 class="join_title">
							<label for="id">아이디</label>							
						</h3>
						<span class="ps_box int_id">
							<input type="text" id="id" name="id" class="int" maxlength="20">
							<span class="step_url">@fiance.com</span>
							
						</span>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>

					<div class="join_row">
						<h3 class="join_title">
							<label for="pswd1">비밀번호</label>							
						</h3>
						<span class="ps_box int_pass">
							<input type="password" id="pswd1" name="pswd1" class="int" maxlength="20" placeholder="숫자영문 조합 8~16글자">
							<span class="step_url"><i class="fas fa-unlock"></i></span>
							
						</span>
						<span class="error_next_box">필수 정보입니다.</span>

						<h3 class="join_title">
							<label for="pswd2">비밀번호 재확인</label>							
						</h3>
						<span class="ps_box int_pass">
							<input type="password" id="pswd2" name="pswd2" class="int" maxlength="20"placeholder="패스워드를 다시 입력해주세요.">
							<span class="step_url"><i class="fas fa-unlock-alt"></i></span>
							
						</span>
						<span class="error_next_box">필수 정보입니다.</span>
					</div>
					
			

					<div class="row_group">  
						<div class="join_row">
							<h3 class="join_title">
								<label for="name">이름&nbsp;</label>							
							</h3>
							<span class="ps_box">
								<input type="text" id="name" name="name" placeholder="예시:홍길동" class="int" maxlength="20">							
								
							</span>
							<span class="error_next_box">필수 정보입니다.</span>
						</div>
					</div>
					<div class="join_row join_birthday">
						<h3 class="join_title"> 
							<label for="yy">생년월일&nbsp;예)&nbsp;1995-12-15</label>						
						</h3>					
					</div>
					<div class="bir_wrap">
						<div class="bir_yy">
							<span class="ps_box">
								<input type="text" id="yy" placeholder="년(4자)" class="int" maxlength="4">
							</span>
						</div>
						<div class="bir_mm">
							<span class="ps_box">
								<select id="mm" class="sel">
									<option>월(선택)</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</span>
						</div>
						<div class="bir_dd">
							<span class="ps_box">
								<!-- <input type="text" id="dd" placeholder="일" class="int" maxlength="2"> -->
								<select id="mm" class="sel">
									<option>일(선택)</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select>
							</span>
						</div>	

					</div>

					<div class="join_row join_birthday">
						<h3 class="join_title"> 
							<label for="yy">이메일 생성</label>						
						</h3>					
					</div>
					<div class="bir_wrap">						
						<div class="bir_mm">
							<span class="ps_box">
								<input type="text" id="name" name="name" class="int" maxlength="20">							
								
							</span>
						</div>
						<div class="bir_dd">
							<span class="ps_box">
								<!-- <input type="text" id="dd" placeholder="일" class="int" maxlength="2"> -->
								<select id="mm" class="sel">
										<option value="직접입력">직접입력</option>															
										<option value="naver.com(네이버)">@naver.com(네이버)</option>
										<option value="daum.net(다음카카오)">@daum.net(다음카카오)</option>
										<option value="gmail.com(구글)">@gmail.com(구글)</option>
										<option value="nate.com(네이트)">@nate.com(네이트)</option>			
								</select>
							</span>
						</div>	

					</div>
					<div class="join_row">
							<h3 class="join_title">
								<label for="phone">휴대전화&nbsp;예)&nbsp;01012341234</label>							
							</h3>
							<span class="ps_box">
								<input type="text" id="phone" name="phone" class="int" placeholder="숫자만 입력가능" maxlength="11">

							</span>
							<span class="error_next_box">필수 정보입니다.</span>
						</div>	

				

					
					<div class="join_row join_addr">
						<h3 class="join_title"> 
							<label for="yy">주소</label>						
						</h3>					
					</div>
					<div class="bir_wrap">
						<div class="bir_add">										
							<input type="text" id="sample6_postcode" placeholder="우편번호">

							<input type="button" class="shy_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address" placeholder="일반주소 입력">
							<input type="text" id="sample6_detailAddress" placeholder="상세주소 입력">							
						</div>
						
										
					</div>
										
			
					
		
				

				<div class="btn_double_area">
					<span>
						<a href="#" class="btn_type">가입하기</a>
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
					<span>
						<a href="#">
							<img class="addr_logo" alt="피앙새 로고" src="images/피앙새로고.png">
						</a>
					</span>
					<span>copyright</span>
					<span>ⓒ</span>
					<span><strong><a href="#">a finace Corp</a></strong> </span>
					<span>All right Reserved.</span>
					
				</div>
			</div>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script type="text/javascript">
		
			$(document).ready(function(){
				$("#id").blur(function(){
					var id = $.trim($(this).val());
					
			       //id 값이 있는경우에만 ajax 동작		
					if(id != "" || id.length != 0) {
						$.ajax({
							url: "idCheck.retro",
							type: "POST",
							dataType: "json",
							data: "id="+id,
							success: function(data){
								
							},
							error: function() {
								alert("System Error!!");
							}
						});
					}
					
				});
			});
		
		
		
		</script>		
	</footer>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
</body>
</html>