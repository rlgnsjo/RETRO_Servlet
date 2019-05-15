var joinValidate = {
		// 결과 메세지를 출력시 사용하는 text
		resultCode : {
			empty_val: {
				code: 1,
				desc: '필수입력 정보입니다.'
			},
			space_length_val : {
				code: 2,
				desc : '공백없이 입력해주세요.'
			},
			//id
			success_id : {
				code: 0,
				desc: '멋진 아이디네요!'
			},
			invalid_id : {
				code: 3,
				desc: '올바른 ID를 입력해주세요'
			},
			length_id : {
				code: 4, 
				desc: 'ID는 공백없이 6자 이상 ~50자 이하로 작성해주세요.'					
			},
			overlap_id : {
				code: 5,
				desc: '이미 사용되고 있는 ID 입니다.'
			},
			
			//pw 
			success_pw : {
				code: 0,
				desc: '사용가능한 비밀번호입니다.'
			},
			invalid_pw : {
				code: 3,
				desc: '올바른비밀번호를 입력해주세요.'
			},
			other_pw : {
				code: 4, 
				desc:'입력하신 비밀번호가 일치하지 않습니다.'
			},
			
			//name 이름
			success_name : {
				code: 0,
				desc: '멋진 이름이네요.'
			},
			invalid_name: {
				code: 3,
				desc: '이름은 표준한글만 가능합니다.'
			},
			length_name : {
				code: 4, 
				desc: '이름은 2~4자 이내로 입력하여 주십시오.'
			},
			
			//phone 
			success_phone : {
				code: 0,
				desc: '사용가능한 번호입니다.'
			},
			invalid_phone : {
				code: 3,
				desc: '휴대폰 번호가 일치하지 않습니다.'
			},
			number_phone : {
				code: 4,
				desc: '숫자만 입력해주세요.'
			},
			
			length_phone : {
				code: 5, 
				desc: '(-)없이 10,11자로 입력해주세요.'
			},
			
			//email
			success_email : {
				code: 0,
				desc: '멋진 이메일이네요.'
			},
			invalid_email : {
				code: 3,
				desc: '올바른 이메일을 입력해주세요.'
			}
			
		},	
		checkId: function(memId) {									
			var regEmpty = /\s/g;  // 공백문자
			var reg = /[^a-z0-9-_.]+/g; // id유효성 체크 
			
			// id의 유효성 체크 1) null 2) 정규식 3) 중복체크 
			//4. member.jsp에서 전달한 매개변수 memId로 유효성 체크시작 			
			//1) null값 체크 (if) 2) 값 사이의 공백값 체크 (else if) 
			//3) 유효한 값인지 체크(정규식)(else if)  4) 6자~50자 이내 길이체크(else if) 
			//5) 성공: 유효한 값(중복유무x) (else)
			
			if(memId == "" || memId.length == 0) {
				return this.resultCode.empty_val;
			} else if(memId.match(regEmpty)){
				return this.resultCode.space_length_val;						
			} else if(reg.test(memId)) {
				return this.resultCode.invalid_id;	
			}else if(memId.length < 6 || memId.length > 50) {
				return this.resultCode.length_id;	
			} else {
				//5. 입력받은 값이 ccw1104로 위의 유효성체크 4단계를 통과! 하지만 중복된 ID인지 검정필요함.
				//6. return 결과값으로 success_id(code,desc)를 호출한 곳으로 전송!!
				// >>> code:0, desc: '멋진 아이디네요:)' 
				return this.resultCode.success_id;
			}			
		},
		checkPw: function(memPw, memRpw) {
			var regEmpty = /\s/g; 					 
		 	var pwreg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
			
			if(memPw == "" || memPw.length == 0) {
				return this.resultCode.empty_val;					
			} else if(memPw.match(regEmpty)){
				return this.resultCode.space_length_val;						
			} else if(!pwreg.test(memPw)) {				
				return this.resultCode.invalid_pw;
			} else {				
				return this.resultCode.success_pw;
			}
		},
		checkRpw : function(mempw,memRpw ) {
			var regEmpty = /\s/g; 					 
		 	var pwreg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
		 	 
		 	if(memRpw == "" || memRpw.length == 0) {
				return this.resultCode.empty_val;					
			} else if(memRpw.match(regEmpty)){
				return this.resultCode.space_length_val;						
			} else if(!pwreg.test(memRpw)) {				
				return this.resultCode.invalid_pw;
			} else {				
				return this.resultCode.success_pw;
			}
		 	 
		 	 
		}
}
	
//id 중복체크 ajax
function ajaxCheck(memId) {
	// 10. ajax 시작!
	// 목적지: idCheck.retro
	// 전달데이터:  memId 데이터를 id변수에 담아 전달
	// 데이터 포장방법 : json, 데이터 전달방법 POST방식
	$.ajax({
		url: "idCheck.retro",
		type: "POST",
		dataType: "json",
		data: "id="+memId,
		// 29. Action단에서 전송한 message, id를  data매개변수로 받음		    
		success: function(data){
			
			//30.     data.message의 값이 -1이면 => 중복메세지 출력
			//	   data.message의 값이 1이면 => 사용가능메세지 출력	
			if(data.message == "-1"){
				$(".error_next_box").eq(0).text("이미 사용중인 아이디 입니다.")
				                          .css("display", "block")	
				                          .css("color", "tomato");		
				return "-1";
			}else {
				$(".error_next_box").eq(0).text("사용가능한 아이디 입니다.")
                  						  .css("display", "block")	
                                          .css("color", "dodgerblue");
				return "1";
			}											
		},
		error: function() {
			alert("System Error!!");
		}
	});
		
}



function ajaxPwCheck(nowId, nowPw) {
	var return_val = false;
	$.ajax({
		url: 'pwCheck.retro',
		type: 'POST',
		async: false,
		dataType: 'json',
		data: 'id=' +nowId+'&pw='+nowPw,
		success: function(data){
			if(data.flag){				
				$(".pwAjax").eq(0).css('color','dodgerblue')
						    	   .css('display','block')
							 	   .text("비밀번호가 일치합니다.");	
				return_val = true;
			} else {				
				$(".pwAjax").eq(0).css('color','tomato')
			 						.css('display','block')
							 		.text("비밀번호가 일치하지 않습니다.");	
				return_val = false;
			}
		},
		error:function() {
			alert("system error");
		}		
	});
	return return_val;
}






