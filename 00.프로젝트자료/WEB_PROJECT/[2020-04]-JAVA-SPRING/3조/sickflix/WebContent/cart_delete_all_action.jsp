<%@page import="com.itwill.shop.cart.CartService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="member_login_check.jspf" %>
<%
	// 카트에 있는 모든 영화를지우고  view_cart.jsp 로 redirection
	
	String m_id = (String) session.getAttribute("sM_id");
	
	CartService cartService = new CartService();
	cartService.deleteCart(m_id);
	response.sendRedirect("cart_view.jsp");
%>