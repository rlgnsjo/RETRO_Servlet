package com.retro.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.MultipartStream;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.retro.common.Constants;
import com.retro.dao.BoardDAO;
import com.retro.dto.BoardDTO;


public class RegisterPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "viewtable.retro";
		// 파일업로드 처리 시작!1. 파일을 저장할 디렉토리 생성
		File uploadDir = new File(Constants.UPLOAD_PATH); // D드라이브의 업로드 파일을 가져다줌. 
		
		if(!uploadDir.exists()) {   // D드라이브의 디렉토리의 존재유무 판단하기 위해서는 사용. 있으면 true 없으면 false
			uploadDir.mkdir();  	// 파일경로가 없을경우 디렉토리를 생성하라는 메서드 
		}
		
		
		
		
		
		// request를 확장시킨 multipartrequest를 생성!
		// request는 모두 string 타입 
		// 파일 <= request로 전송불가
		// 파일 <= request를 항상시킨 MultipartRequest를 사용 
		// 그래서 파일뿐만 아니라 기존에 string 타입도 전부 Multipart 타입으로 변경해야함.
		
		// 파일업로드 2) UPLOAD_PATH 경로로 파일지정. 
		MultipartRequest multi = new MultipartRequest(request,  // 기존에 받은값을 Multipart로 받아준다.
				Constants.UPLOAD_PATH,  // 파일업로드 경로 설정부분! 파일관련된 DTO 같은 개념임! 
				Constants.MAX_UPLOAD,    // 업로드 최대용량      
				"UTF-8",    				// 인코딩
				new DefaultFileRenamePolicy());   // 내용이 같으나  파일이름 중복시 체크 해주기 위해사용!
				
		
		
		String title = multi.getParameter("title");  // input 값의 있는 name 값들을multi.getParameter에  담아줘서 사용.
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		String filename = " ";
		int filesize = 0;
		
				
		
		// 3.파일업로드3 ) DB에 저장할 첨부파일의 이름과 사이즈를 구함.
		
		try {
			Enumeration files = multi.getFileNames(); 
			
			while (files.hasMoreElements()) { // files.hasMoreElements() <= 파일값이 담겨있는지 판단. file의 경우 true , file값이 없으면 false값으로 해당 반복문 중단.
				String file1 = (String)files.nextElement(); // nextElement() 첫번째 값의 파일을 가져와 file1 변수에 담아줌! 즉 file1에는 첫번째 첨부파일이 담겨있다.
				filename = multi.getFilesystemName(file1);  // 첨부파일의 파일이름을 filename 변수에 담아줬다.
				File f1 = multi.getFile(file1);             // (1.파일값 사이즈 구하는 과정)f1에 파일을 담는다.
				
				if (f1 != null) {  // (1-1.파일값 사이즈 구하는 과정) f1 파일에 값이 들어있는지 없는지 확인한뒤 length 함수 이용해 파일크기를 구함.
					// fllesize Long타입으로 가져오기 때문에 int로 형변환.
					filesize = (int)f1.length();   // 첨부파일의 파일 사이즈 저장
				}
			}
						
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 사용자가 첨부파일을 등록하지 않았을때 
		// 파일이름이 null 이나 "" 으로 등
		if (filename == null || filename.trim().equals("")) {
			filename = "-";
		}
		
		BoardDTO bDto = new BoardDTO(title, content, writer,filename,filesize);
		System.out.println( bDto.toString());
		BoardDAO bDao = BoardDAO.getInstance();		
		System.out.println("게시글 등록확인" +bDto.toString());
		bDao.registerAdd(bDto);
		
		
		
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(true);  //forward 방식으로 보냄
		
		return forward;
	}

}
