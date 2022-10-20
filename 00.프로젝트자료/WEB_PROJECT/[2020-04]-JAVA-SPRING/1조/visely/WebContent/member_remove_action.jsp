<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>
<%
	try {
		CustomerService customerService = new CustomerService();
		//customerService.remove(cEmail);
		//session.invalidate();
		response.sendRedirect("can_not_remove.jsp");
		//response.sendRedirect("member_login_form.jsp");
	} catch(Exception e) {
		e.printStackTrace();
		out.print("<script>alert('오류가 발생했습니다');</script>");
		out.print("<script>location.href='member_modify_form.jsp'</script>");
		return;
	}
%>