<%@page import="com.itwill.member.ExistedMemberException"%>
<%@page import="com.itwill.member.MemberService"%>
<%@page import="com.itwill.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String m_id = request.getParameter("m_id");
String m_password = request.getParameter("m_password");
String m_name = request.getParameter("m_name");
String m_phone = request.getParameter("m_phone");
String m_email = request.getParameter("m_email");

Member newMember = null;
try {
	MemberService memberService = MemberService.getInstance();
	newMember = new Member(m_id, m_password, m_name, m_phone, m_email);
	memberService.create(newMember);
	response.sendRedirect("user_login_form.jsp");
} catch(ExistedMemberException e){
	
} catch (Exception e) {
	
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here </title>
</head>
<body>

	<%= newMember.getM_id() %>
</body>
</html>