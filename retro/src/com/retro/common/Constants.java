package com.retro.common;

public class Constants { 
	// 파일이 업로드 되는 디렉토리 static이니 class 명으로 호출해서 사용가능!
	public final static String UPLOAD_PATH = "D:\\upload\\";  // 없로드 파일의 경로를 해당 변수에 선언해준것임. 그냥 경로를 가져다 붙여서 사용가능
	
	// 파일 업로드 제한 용량 (10mb)
	public final static int MAX_UPLOAD = 10 * 1024 * 1024;
	
}
