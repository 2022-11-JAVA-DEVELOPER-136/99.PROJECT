package com.itwill.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.product.model.Product;
import com.itwill.product.model.ProductService;
import com.itwill.summer.Controller;

public class ProductListController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardpath = "";
		HttpSession session = request.getSession();

		try {
			ProductService productService = new ProductService();
			ArrayList<Product> burgerList = productService.findByUpno(101);
			ArrayList<Product> morningList = productService.findByUpno(102);
			ArrayList<Product> sideList = productService.findByUpno(103);
			ArrayList<Product> drinkList = productService.findByUpno(104);
			ArrayList<Product> dessertList = productService.findByUpno(105);

			request.setAttribute("burgerList", burgerList);
			request.setAttribute("morningList", morningList);
			request.setAttribute("sideList", sideList);
			request.setAttribute("drinkList", drinkList);
			request.setAttribute("dessertList", dessertList);
			if (session.getAttribute("member") != null) {
				int m_no = (int)session.getAttribute("m_no");
				System.out.println(m_no);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no);
				request.setAttribute("cartCount", cartCount);
			}
			forwardpath = "forward:/WEB-INF/view/McDelivery_ProductList.jsp";

		} catch (Exception e) {
			e.printStackTrace();
		}

		return forwardpath;

	}

}
