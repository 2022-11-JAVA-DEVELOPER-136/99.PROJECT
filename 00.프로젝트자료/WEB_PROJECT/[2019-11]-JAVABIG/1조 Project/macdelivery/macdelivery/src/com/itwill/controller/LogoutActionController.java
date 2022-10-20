package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.summer.Controller;

public class LogoutActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("m_no");
		try {
			if (session.getAttribute("member") != null) {
				int m_no = (int)session.getAttribute("m_no");
				System.out.println(m_no);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no);
				request.setAttribute("cartCount", cartCount);
			}	
		}catch(Exception e) {
			
		}
		
		return "redirect:McDelivery_main.do";
	}

}
