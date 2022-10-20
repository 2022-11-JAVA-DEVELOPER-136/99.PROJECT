<%@page import="com.itwill.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_login_check.jspf" %>     
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("shop_main.jsp");
		return;
	}

	MemberService memberService=new MemberService();
	String m_id = (String) session.getAttribute("sM_id");
	
	try{
		memberService.remove(m_id);
		response.sendRedirect("member_logout_action.jsp");
	}catch(Exception e){
		response.sendRedirect("member_error.jsp");
	}
	
%>