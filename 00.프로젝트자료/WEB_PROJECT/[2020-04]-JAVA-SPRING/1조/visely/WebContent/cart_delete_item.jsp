<%@page import="com.itwill.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//장바구니에서 '삭제'버튼을 누르면 원하는 품목을 삭제
	String cNo = request.getParameter("jNo");
	CartService cartService = CartService.getInstance();
	cartService.delete(Integer.parseInt(cNo));
	response.sendRedirect("cart_view.jsp");
	
	
%>