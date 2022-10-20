<%@page import="com.itwill.shop.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//장바구니에서 원하는 품목을 삭제시킨 후 view_cart.jsp 로 sendRedirect 시킨다..
	String c_item_no = request.getParameter("c_item_no");
	if (c_item_no == null || c_item_no.equals("")) {
		response.sendRedirect("cart_view.jsp");
		return;
	}
	CartService cartService = new CartService();
	cartService.deleteCartItem(Integer.parseInt(c_item_no));
	response.sendRedirect("cart_view.jsp");
%>
