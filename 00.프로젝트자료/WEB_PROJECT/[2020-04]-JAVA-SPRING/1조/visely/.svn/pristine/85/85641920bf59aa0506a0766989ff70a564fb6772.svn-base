<%@page import="com.itwill.dto.Customer"%>
<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("member_write_form");
		return;
	}
	*/
	String cEmail = request.getParameter("email");
	String cPassword = request.getParameter("password");
	String cBirth = request.getParameter("birthday");
	String cTel = request.getParameter("main_phone");
	String cSex = request.getParameter("gender");
	request.setAttribute("email", cEmail);
	request.setAttribute("pwd", cPassword);
	request.setAttribute("birth", cBirth);
	request.setAttribute("tel", cTel);
	Customer customer = null;
	try {
		CustomerService customerService = new CustomerService();
		if(customerService.isDuplcateEmail(cEmail)) {
			String msg = "이미 가입한 이메일입니다";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("member_write_form.jsp");
			rd.forward(request, response);
			//out.print("<script>alert('이미 가입한 이메일입니다')</script>");
			//out.print("<script>location.href='member_write_form.jsp'</script>");
		} else {
		customer = new Customer(cEmail, cPassword, cBirth, cTel, cSex);
		customerService.create(customer);
		out.print("<script>alert('가입 완료됬습니다')</script>");
		out.print("<script>location.href='member_login_form.jsp'</script>");
		}
	} catch(Exception e) {
		e.printStackTrace();
		String msg = "입력한 값이 오류났습니다";
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("member_write_form.jsp");
		rd.forward(request, response);
		return;
	}
%>
