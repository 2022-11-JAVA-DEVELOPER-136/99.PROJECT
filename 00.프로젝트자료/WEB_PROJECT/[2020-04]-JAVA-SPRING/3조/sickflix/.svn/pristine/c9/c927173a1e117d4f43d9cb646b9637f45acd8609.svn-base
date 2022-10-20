<%@page import="java.net.URLEncoder"%>
<%@page import="com.itwill.member.Member"%>
<%@page import="com.itwill.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_login_check.jspf" %>    
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("shop_main.jsp");
		return;
	}
	
	String m_password = request.getParameter("m_password");
	String m_password2 = request.getParameter("m_password2");
	String m_name = request.getParameter("m_name");
	String m_phone = request.getParameter("m_phone");
	String m_email = request.getParameter("m_email");
	
	if (m_password == null || m_password2 == null || m_name == null || m_phone == null || m_email == null || 
		m_password.equals("") || m_password2.equals("") || m_name.equals("") || m_phone.equals("") || 
		m_email.equals("") || !m_password.equals(m_password2)) {
		response.sendRedirect("shop_main.jsp");
			return;
		}
	
	MemberService memberService=new MemberService();
	Member member = memberService.findMember(sM_id);
	
	try{
		memberService.update(new Member(sM_id, m_password, m_name, m_phone, m_email));
		RequestDispatcher rd = request.getRequestDispatcher("member_view.jsp");
		rd.forward(request, response);
		
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("shop_main.jsp");
		return;
	}
	
	/*
	int rows = memberService.update(new Member(m_id, password, name, phone , email));
	
	if (rows == 1) {
		response.sendRedirect("member_view.jsp?member_id="+m_id);
	} else {
		response.sendRedirect("member_error.jsp");	
	}
	 */
	
	/* try{
		memberService.update(new Member(password, name, phone, email ));
		RequestDispatcher rd=
			request.getRequestDispatcher("member_view.jsp");
		rd.forward(request, response);
		
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("member_main.jsp");
		return;
	} */
%>
