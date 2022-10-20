<%@page import="com.itwill.member.PasswordMismatchException"%>
<%@page import="com.itwill.member.MemberNotFoundException"%>
<%@page import="com.itwill.common.Util"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.itwill.member.Member"%>

<%@page import="com.itwill.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("member_login_form.jsp");
		return;
	}

	try {
		String returnUrl = request.getParameter("returnUrl");
		if(returnUrl==null||returnUrl.equals(""))
			returnUrl="shop_main.jsp";
		returnUrl=URLDecoder.decode(returnUrl, "UTF-8");
		String m_id = request.getParameter("m_id");
		String m_password = request.getParameter("m_password");
		
		
		MemberService memberService = new MemberService();
		Member loginMember = memberService.login(m_id,m_password);
		session.setAttribute("sM_id", m_id);
		session.setAttribute("sMember", loginMember);
		response.sendRedirect(returnUrl);
		

	}catch(MemberNotFoundException e){
		request.setAttribute("msg1",e.getMessage());
		
		RequestDispatcher rd=
			request.getRequestDispatcher("member_login_form.jsp");
		rd.forward(request, response);
	}catch(PasswordMismatchException e){
		String msg2 = URLEncoder.encode(e.getMessage(), "UTF-8");
		response.sendRedirect("member_login_form.jsp?msg2="+msg2);
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("member_error.jsp");
	}
	
	
%>


















