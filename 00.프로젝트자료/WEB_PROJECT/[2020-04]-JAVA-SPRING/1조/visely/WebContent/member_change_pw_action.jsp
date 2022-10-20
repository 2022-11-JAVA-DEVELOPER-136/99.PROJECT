<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("member_password_change.jsp");
		return;
	}
	//String cEmail = (String) session.getAttribute("loginId");
	String oldPassword = request.getParameter("oldPassword");
	String newPassword = request.getParameter("newPassword");
	String newRePassword = request.getParameter("newRePassword");
	CustomerService customerService = new CustomerService();
	try {
		if(customerService.findByEmail(cEmail).getcPassword().equals(oldPassword)) {
			//out.print("<script>alert('비밀번호 병경 성공');</script>");
			String msg = "비밀번호 변경 성공";
			request.setAttribute("msg", msg);
			customerService.updateByEmail(cEmail, newPassword);
			RequestDispatcher rd=
					request.getRequestDispatcher("member_modify_form.jsp");
			rd.forward(request, response);
			return;
			//response.sendRedirect("member_modify_form.jsp");
		} else {
			//out.print("<script>alert('기존 비밀번호가 일치하지 않습니다');</script>");
			String msg = "기존 비밀번호가 일치하지 않습니다";
			request.setAttribute("oldPassword", oldPassword);
			request.setAttribute("newPassword", newPassword);
			request.setAttribute("newRePassword", newRePassword);
			request.setAttribute("msg", msg);
			RequestDispatcher rd=
					request.getRequestDispatcher("member_password_change.jsp");
			rd.forward(request, response);
			return;
		}
	} catch(Exception e) {
		e.printStackTrace();
		return;
	}
%>