package com.retro.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.retro.action.ActionForward;
import com.retro.dao.ProductDAO;
import com.retro.dto.ProductDTO;

public class IndexAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.jsp";
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> bList= pDao.bestList();
		
		request.setAttribute("bestList", bList);
		
		for (ProductDTO productDTO : bList) {
			System.out.println(productDTO.getP_img());
			System.out.println(productDTO.getP_name());
			System.out.println(productDTO.getP_price());
		}
		
		// p_indate (날짜순으로 정렬 해주었음)
	
		List<ProductDTO> nList= pDao.newList();
		
		request.setAttribute("newList", nList);
		
		for (ProductDTO productDTO : nList) {
			System.out.println(productDTO.getP_img());
			System.out.println(productDTO.getP_name());
			System.out.println(productDTO.getP_price());
		}
		
		// 조회수가 높은순 즉 p_cnt의 값을 이용해서 정렬해 주었음
		
		List<ProductDTO> vList= pDao.viewList();
		
		request.setAttribute("viewList", vList);
		
		for (ProductDTO productDTO : nList) {
			System.out.println(productDTO.getP_img());
			System.out.println(productDTO.getP_name());
			System.out.println(productDTO.getP_price());
		}
		
		
		
		ActionForward  forward = new ActionForward(); 
		forward.setpath(url);  // 경로를 찾아감. 액션포워드의 setpath 메서드를 탐. 
		forward.setRedirect(false);  //forward 방식으로 보냄
		
		return forward;
		
	}

}
