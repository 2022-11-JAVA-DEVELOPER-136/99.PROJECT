package com.itwill.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.product.model.Product;
import com.itwill.product.model.ProductService;
import com.itwill.summer.Controller;

public class ProductDetailActionController implements Controller {
	
	public static final int BURGER = 101;
	public static final int MORNING = 102;
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath = "";
		HttpSession session = request.getSession();
		int p_no = Integer.parseInt(request.getParameter("p_no"));

		try {
			ProductService productService = new ProductService();
			
			Product oneProduct = productService.findOne(p_no);
			
			int oneProduct_up_no = oneProduct.getP_up_no();
			
			if(oneProduct_up_no == BURGER || oneProduct_up_no == MORNING) {
				ArrayList<Product> largeSet = productService.findLargeSet(p_no);
				ArrayList<Product> set = productService.findSet(p_no);
				request.setAttribute("largeSet", largeSet);
				request.setAttribute("set", set);
			}
			request.setAttribute("single", oneProduct);
			
			if (session.getAttribute("member") != null) {
				int m_no = (int)session.getAttribute("m_no");
				System.out.println(m_no);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no);
				request.setAttribute("cartCount", cartCount);
			}
			forwardPath = "forward:/WEB-INF/view/McDelivery_productDetail.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return forwardPath;

	}
}
