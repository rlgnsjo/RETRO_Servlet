package com.retro.action;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.common.Constants;

public class DownloadAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String filename = request.getParameter("file");
		System.out.println("fliename>>>" + filename);
		
		
		// 파일 다운로드 과정
		String path = Constants.UPLOAD_PATH + filename;
		// D: // upload\\ favi.png
		byte[] b = new byte[4096]; // 바이트 배열생성 
		
		// 서버에 저장된 파일을 읽기 위한 스트림 생성.
		FileInputStream fis = new FileInputStream(path); // 자바에서 파일을 바이트단위로 사용될때 
		
		
		// 파일의 종류 파일의 확장자명에 상관없이 저장하기 위해사용.
		
		String mimeType = request.getServletContext().getMimeType(path);
		if (mimeType == null) {
			mimeType = "application/octet-stream; charset=utf-8";
		}
		
		// 파일이름에 한글이 포함된경우
		// new String(바이트배열, 변환된 인코딩) 8859_1 서유럽 언어
		// header에 특수문자 사용못함, 서유럽 언어로 변환
		filename = new String(filename.getBytes("utf-8"), "8859_1");
			
		// http header  ( header에는 파일이름이 들어간다.)
		response.setHeader("content-Disposition","attachment;filename=" + filename);
		
		// 이부분이 실제 파일이 들어가는 과정이 일어난다.
		
		// http body (body에는 실제파일이 들어간다.)
		// OutputStream 생성( 서버에서 클라이언트에 쓰기)
		ServletOutputStream out = response.getOutputStream();  // OutputStream 으로 데이터를 보낼때 데이터가 크기때문에 데이터를 쪼개서 out 이라는 불럭에 넣어서 사용한다.
		
		int numRead;		
		while(true) {
			// 4096 byte로 쪼개서 파일 읽어오기 
			numRead = fis.read(b,0,b.length);  //byte[] b = new byte[4096]; 
			if (numRead == -1) break;
			out.write(b,0,numRead);	// 읽어온곳을 ServletOutputStream out으로 읽어오시오. 계속해서 out에 4096에 바이트를 담아서 계속해서 읽음.			
		}
		
		// 파일 처리 관련 리소스 정리
		fis.close();
		out.flush(); // 4096바이트 이하의 단위값을 읽기위해서 사용.
		out.close(); // 파일을 사용했으니 종료.
		
		
		
		
		
		return null;
	}

}
