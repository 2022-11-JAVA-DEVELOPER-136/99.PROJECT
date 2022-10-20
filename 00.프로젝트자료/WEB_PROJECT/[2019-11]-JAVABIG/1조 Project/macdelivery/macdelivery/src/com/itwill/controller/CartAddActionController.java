package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.summer.Controller;

public class CartAddActionController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		CartService cartService;
		String forwardPath = null;
		HttpSession session = request.getSession();
		int m_no = (int)session.getAttribute("m_no");
		try {

		String p_no = request.getParameter("p_no");
		int p_no1 = 0;
		int p_no2 = 0;
		int p_no3 = 0;
		
		String p_quantity = request.getParameter("p_quantity");
		int p_quantity1 = 0;
		int p_quantity2 = 0;
		int p_quantity3 = 0;
		if(p_no == null) {
			cartService = new CartService();
			p_no1 = Integer.parseInt(request.getParameter("p_no1"));
			p_no2 = Integer.parseInt(request.getParameter("p_no2"));
			p_no3 = Integer.parseInt(request.getParameter("p_no3"));
			
			p_quantity1 = Integer.parseInt(request.getParameter("p_quantity1"));
			p_quantity2 = Integer.parseInt(request.getParameter("p_quantity2"));
			p_quantity3 = Integer.parseInt(request.getParameter("p_quantity3"));
			
			if(p_quantity1!=0) {
				cartService.insert(m_no, p_no1, p_quantity1);
			}
			if(p_quantity2!=0 ) {
				cartService.insert(m_no, p_no2, p_quantity2);
			}
			if(p_quantity3!=0) {				
				cartService.insert(m_no, p_no3, p_quantity3);
			}
			
			ArrayList<HashMap> itemList = cartService.selectAll(m_no);
			request.setAttribute("cartList", itemList);
			System.out.println(itemList);
			if (session.getAttribute("member") != null) {
				int m_no2 = (int)session.getAttribute("m_no");
				System.out.println(m_no2);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no2);
				request.setAttribute("cartCount", cartCount);
			}
		}else {
			cartService = new CartService();
			cartService.insert(m_no, Integer.parseInt(p_no), Integer.parseInt(p_quantity));
			ArrayList<HashMap> itemList = cartService.selectAll(m_no);
			request.setAttribute("cartList", itemList);
			if (session.getAttribute("member") != null) {
				int m_no1 = (int)session.getAttribute("m_no");
				System.out.println(m_no1);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no1);
				request.setAttribute("cartCount", cartCount);
			}
		}
			//forwardPath="redirect:McDelivery_product_list.do";
			forwardPath="forward:/WEB-INF/view/cart.jsp";
		}catch(Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/view/cart.jsp";
		}
		return forwardPath;
	}

}
