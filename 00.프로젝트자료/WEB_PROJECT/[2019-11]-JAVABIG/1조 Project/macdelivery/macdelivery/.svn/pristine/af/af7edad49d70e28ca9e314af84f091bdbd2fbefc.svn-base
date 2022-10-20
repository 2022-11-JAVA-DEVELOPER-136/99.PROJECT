package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.summer.Controller;

public class CartFormController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath="forward:/WEB-INF/view/cart.jsp";
		try {
			CartService cartService = new CartService();
			HttpSession session = request.getSession();
			int m_no =(int)session.getAttribute("m_no");
			ArrayList<HashMap> cartList = cartService.selectAll(m_no);
			request.setAttribute("cartList", cartList);
			System.out.println("카트리스트"+cartList);
			if (session.getAttribute("member") != null) {
				int m_no5 = (int)session.getAttribute("m_no");
				System.out.println(m_no5);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no5);
				request.setAttribute("cartCount", cartCount);
			}
			return forwardPath;
		}catch(Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/cart.jsp";
		}
		return forwardPath;
	}

}
