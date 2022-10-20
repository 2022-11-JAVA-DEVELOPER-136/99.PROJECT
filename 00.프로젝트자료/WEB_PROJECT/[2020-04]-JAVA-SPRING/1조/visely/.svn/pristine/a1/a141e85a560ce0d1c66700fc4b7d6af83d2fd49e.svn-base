<%@page import="com.itwill.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//장바구니에서 '비우기'버튼을 누르면 전체삭제
	String cEmail = request.getParameter("cEmail");
	CartService cartService = CartService.getInstance();
	cartService.delete(cEmail);
	response.sendRedirect("cart_view.jsp");
%>