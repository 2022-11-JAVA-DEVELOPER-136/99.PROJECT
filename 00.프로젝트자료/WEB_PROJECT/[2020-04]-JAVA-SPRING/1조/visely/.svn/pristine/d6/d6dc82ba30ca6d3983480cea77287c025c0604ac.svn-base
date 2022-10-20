<%@page import="com.itwill.dto.Cart"%>
<%@page import="com.itwill.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="member_session.jspf" %>    
<%
	
	if(request.getParameter("requestGubun").equals("Direct")){
		int pNo = Integer.parseInt(request.getParameter("pNo"));
		String eMail = (String)session.getAttribute("loginId");
		int qty = Integer.parseInt(request.getParameter("qty"));
		int amt = Integer.parseInt(request.getParameter("amt"));
		
		CartService cs = CartService.getInstance();
		cs.create(new Cart(-999, qty, amt, pNo, eMail));
		
		/*response.sendRedirect("product_list_detail.jsp?pNo="+pNo);*/
		response.sendRedirect("cart_view.jsp");
	    
		return;
		
	} else {
		response.sendRedirect("prodect_list.jsp");
		return;
	}

	
	

%>