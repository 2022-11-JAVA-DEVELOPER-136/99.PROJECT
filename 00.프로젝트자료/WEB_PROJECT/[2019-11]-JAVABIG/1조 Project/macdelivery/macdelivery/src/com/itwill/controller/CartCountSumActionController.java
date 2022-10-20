package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.summer.Controller;

public class CartCountSumActionController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		CartService cartService;
		String m_no2 = request.getParameter("m_no");
		int m_no = Integer.parseInt(m_no2);
		String forwardPath="forward:/WEB-INF/view/cart.jsp";
		System.out.println("토탈카운트 "+m_no);
		try {
			cartService = new CartService();
			cartService.countSum(m_no);
			
			ArrayList<HashMap> itemList = cartService.selectAll(m_no);
			request.setAttribute("cartList", itemList);
			if (session.getAttribute("member") != null) {
				int m_no3 = (int)session.getAttribute("m_no");
				System.out.println(m_no3);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no3);
				request.setAttribute("cartCount", cartCount);
			}
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/cart.jsp";
		}return forwardPath;
	}
}
