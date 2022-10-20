<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>
<%
	/*
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("test_modify.jsp");
		return;
	}
	*/
	//String cEmail = (String) session.getAttribute("loginId");
	//cEmail="1234@email.com";
	String cTel = request.getParameter("tel");
	try {
		CustomerService customerService = new CustomerService();
		customerService.updateTel(cEmail, cTel);
		request.setAttribute("tel", cTel);
		response.sendRedirect("member_modify_form.jsp");
	} catch(Exception e) {
		e.printStackTrace();
		return;
	}
%>