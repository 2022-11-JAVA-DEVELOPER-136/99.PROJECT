package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.summer.Controller;

public class CartActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath="forward:/WEB-INF/view/McDelivery_Jumun.jsp"; 
		try {	
			//ArrayList<HashMap> cartList = (ArrayList<HashMap>) request.getAttribute("cartList");
			HttpSession session = request.getSession();
			ArrayList<HashMap> cartList = (ArrayList<HashMap>)session.getAttribute("cartList");
			System.out.println(cartList+"----CartActionController");
			if (session.getAttribute("member") != null) {
				int m_no = (int)session.getAttribute("m_no");
				System.out.println(m_no);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no);
				request.setAttribute("cartCount", cartCount);
			}
			request.setAttribute("cartList", cartList);
			return forwardPath;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
}
