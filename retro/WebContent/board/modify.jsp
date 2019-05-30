<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@  include file="../include/header.jsp"%>
<c:if test="${sessionScope.loginUser == null}">
		<script>
	alert("로그인 하신후 사용하세요.");
	 location.href='${path}/loginPage.retro';
</script>
</c:if>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/section.css?v=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
	a {
		text-decoration: none;
	}
	
	#board_wrap {
		width: 1000px;
	    border: 1px solid #FFE3EE;
	    margin: 230px auto 40px;
	    border-radius: 5px;
	    box-sizing: border-box;
	    border-top: 20px solid #FFE3EE !important;
	    padding: 20px;
	    padding-bottom: 40px;
	    box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0  #FFE3EE; 
	}
	
	.box-title {
		margin: 0px;
		margin-bottom: 10px;
	}
	
	.form-control {
		width: 945px;
		box-sizing: border-box;
		font-size: 17px;
		padding: 5px;
	}
	#writer {
		margin-bottom: 10px;
	}
	label {
		font-size: 17px;
		color: black;
		display: block;
	}
	
	#content {
		resize: none;
	}
	
	#reply_wrap {
		margin: 0 auto;
		border: 1px solid black;
		width: 800px;
		box-sizing: border-box;
		border-radius: 4px;
	}
	
	#reply_wrap_title {
		height: 40px;
		margin: 0px;
		border-bottom: 1px solid black;
		background-color: #E71D36;
	}
	
	#knboard_detail_rspan {
		color: white;
		font-size: 15px;
		line-height: 40px;
		padding-left: 10px;
	}
	
	#detail_reply {
		width: 799px;
		padding: 20px;
		box-sizing: border-box;
	}
	
	.box {
		margin: 10px;
	}
	
	.reply_list {
		border: 1px solid black;
		border-radius: 4px;
		padding: 10px;
		margin: 10px;
		background-color: white;
	}
	
	.reply_writer {
		color: black;
		font-weight: bold;
		font-size: 16px;
		text-decoration: none;
	}
	
	#replylist_date {
		float: right;
		color: black;
	}
	
	.replylist_textarea {
		padding: 5px;
		width: 718px;
		resize: none;
		border-radius: 4px;
		box-sizing: border-box;
		border: 1px solid #BBBBBB;
		font-size: 13px;
	}
	
	.reply_login {
		border-top: 1px solid black;
		padding-left: 10px;
	}
	
	#reply_nologin {
		
	}
	
	.reply_nologin_span {
		width: 14px;
		line-height: 40px;
		font-size: 12px;
	}
	
	.reply_btn {
		padding: 6px 10px;
		font-size: 14px;
		border-radius: 4px;
		background-color: black;
		color: white;
		margin-top: 10px;
		outline: none;
		border: 0px;
	}
	.reply_del {
		font-size: 14px;
		color: red;
	}
	.btn {
		padding: 7px 15px;
	    font-size: 14px;
	    border-radius: 25px;
	    background-color: #FFB6C1;
	    color: white;
	    outline: none;
	    border: 0px;
	    cursor: pointer;
	}
	.btn-file {
		background-color: #FFB6C1; 
	}
	.btn-file:hover {
		background-color: #FF5675!important; 
	}
	.btn:hover {
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
		background-color: #FFB6C1;
	}
	.btn-warning {
		background-color: #FFB6C1;
	}
	.btn-danger {
		background-color: #da190b;
	}
	.btn-primary {
		float: right;
	}
	#download {
		background-color: white;
		border: 1px solid #BBBBBB;
		font-size: 17px;
	}
	#answer_btn {
		color: white;
		background-color: #FFB6C1;
		margin-right: 10px;
	}
	.form-group {
		margin-bottom: 20px;
	}
	.error {
		color: #FF3636;
		font-size: 12px;
		display: inline-block;
		display: none;
		margin-top: 8px;
	}
	#file_wrap > *{
		float: left;
		margin-right: 8px;
	}
	.files {
		display: inline-block;
		height: 29px;
		line-height: 31px!important;
		cursor: pointer;
		font-size: 15px;
	}
	#close_file_btn {
		line-height: 29px;
		cursor: pointer;
		font-size: 15px;
	}
	#close_file_btn:hover {
		font-size: 25px;
	}	
	.file_msg {
		color: tomato;
		margin-left: 8px;
	}
	 .modal{
            display: none; 
            position: fixed; 
            z-index: 1; 
            left: 0;
            top: 0;
            width: 100%; 
            height: 100%; 
            overflow: auto; 
            background-color: rgb(0,0,0); 
            background-color: rgba(0,0,0,0.4); 
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
      #modal_btn{     	      	
      	text-align: center;
      	padding-bottom: 10px;
      	padding-top: 10px;
      }
      .btn_type{
      width: 150px;	
      height: 50px;
	  background-color: #FFD8D8;			
	  border:0px;
	  color: white;
	  border-radius: 8px;
	  margin: 11px;
	  cursor:pointer;
	 }
	
	
</style>
</head>

<script type="text/javascript" src="${path}/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	$(document).on("click", ".btn-primary", function(){
		var title = $("#title").val();
		// 스마트에디터로 content부분 값 넘겨받는 부분
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		var content = $("#content").val();
		
		if(content == "<p><br></p>") {
			$("#title").focus();
			$(".error").css("display", "block");
			return false;
		}
		$("#frm_bin").submit();
	});
	
	$(document).on("blur", "#title", function(){
		var title = $("#title").val();
		
		if(title == "") {
			$(".error").css("display", "block");
		} else {
			$(".error").css("display", "none");
		}
	});
	
	
	$(document).on("click", "#file_submit", function(){
		 $("#uploadfile").click(); 
	});
	
	$(document).on("change", "#uploadfile", function(){
		var filesize = $(this)[0].files; // 첫번째 번지수에 있는 파일을 가져와라
		if(filesize.length < 1) {  // 파일사이즈의 배열값에 1번보다 적다는것은 값이 없다는의미
			$("#file-name").text("선택된 파일 없음");  //값이 없으니 선택된파일이 없다라고 text명을 변경해준다.
			$("#close_file_btn").css("display", "none");
		} else {
			var filename = this.files[0].name; 
			var size = this.files[0].size; // 사이즈는 byte단위로 가져옴
			var maxSize  = 10 * 1024 * 1024; // 최대사이즈는 10M!
			
	        if(size > maxSize) {     
	            alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.");
	            $("#file-name").text("선택된 파일 없음");
	            $("#uploadfile").val("");
	            $("#now-file-size").text("0mb");
	        } else {
	        	$("#file-name").text(filename);
	        	var formSize = size/(1024*1024);
	        	 $("#now-file-size").text(formSize.toFixed(2)+"mb");
				$("#close_file_btn").css("display", "block");	
	        }

		}
	});
	

	
	$(document).on("click", "#close_file_btn", function(){
		$("#uploadfile").replaceWith($("#uploadfile").clone(true));
		$("#uploadfile").val("");
		$("#now-file-size").text("");
		$("#file-name").text("선택된 파일 없음");
		$("#close_file_btn").css("display", "none");
	});
	

	
	$(document).on("click", "#close_file_btn", function(){
		$("#uploadfile").replaceWith($("#uploadfile").clone(true));
		$("#uploadfile").val("");
		$("#now-file-size").text("");
		$("#file-name").text("선택된 파일 없음");
		$("#close_file_btn").css("display", "none");
	});
	
	$(document).on("click", ".close_basic_btn", function(){
		$('.file_msg').css('display', 'block');
		$('.basic_files').css('color', '#AAA');
					
	});
	
	$(document).on("click", "#btn-primary", function(){
			alert("system error");
	});
	
	
	
	
	
	
	
	
</script>
<script type="text/javascript" src="${path}/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<body>
<div id="board_wrap">
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">게시글 수정</h3>
			</div>
			<!-- form속성에 action을 지정하지 않으면 현재 경로를 그대로 action의 대상 경로로 설정 -->
			<!-- form태그 안의 값은 input, textarea, select, check, 값만 가져올수있음.  -->
			<form id="frm_bin" name="frm_bin" action="modifyPlay.retro" method="post" enctype="multipart/form-data">

			<div class="box-body">
				<div class="form-group">
					<label for="title">제목</label>					
					<input type="text" value="${one.title}" id="title" name="title" class="form-control" >
					<span class="error">제목을 입력해 주세요.</span>
				</div>
				<div class="form-group" style="width: 750px;">
					<label for="content"></label>
					<textarea class="form-control" id="content" name="content" rows="10" cols="100"><p>${one.content}</p></textarea>
					<script type="text/javascript">
						var oEditors = [];
						nhn.husky.EZCreator.createInIFrame({
						 oAppRef: oEditors,
						 elPlaceHolder: "content",
						 sSkinURI: "<%= request.getContextPath()%>/smarteditor/SmartEditor2Skin.html",
						 fCreator: "createSEditor2"
						});
		
					</script>
				</div>
				<div class="forn-group">
					<label for="writer">작성자</label><input value="${one.writer}" type="text" id="writer" name="writer" class="form-control"  readonly="readonly">
					
				</div>
				<div id="file_wrap">
					<input type="file" name="uploadfile" id="uploadfile" style="display: none">
					<input type="button" class="btn btn-file" value="파일 선택" id="file_submit"> 	
					<c:if test="${one.filesize > 0}">
					${one.filename}
					</c:if>
						
				<c:choose>
					 <c:when test="${empty filesize}">
						<span class="basic_files" id="file-name" style="height: 29px; diplay: none;" > -->선택된 파일 없음 </span>  
						</c:when>
						<c:otherwise><span class="file_msg">[첨부파일 삭제됨.]</span> 
						</c:otherwise>						
				</c:choose>							
					
					<i class="fas fa-check open_file_btn"></i>
					<i class="fas fa-time close_file_btn close_basic_btn"></i>
					<span id="now-file-size" ></span>
					
					
					<i class="fas fa-times" id="close_file_btn" style="display: none"></i>
				</div>
			</div>
			<div>
				<button class="btn btn-primary" id="btn-primary">게시글 수정</button>
			</div>				
			<input type="hidden" value="${one.bno}" name="bno"  >
			<input type="hidden" value="${one.filesize}" name="basic_file" >
			<input type="hidden" value="${one.filename}" name="basic_file_name" >
			
			</form>
		</div>
	</div>
	
		<<!-- div id="modal_all">     
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