<%@page import="com.itwill.member.Member"%>
<%@page import="com.itwill.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	
	Member member = new Member();
	try {
		String m_id = "Been";
		MemberService memberService = new MemberService();
		member = memberService.findMember(m_id);
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

	<%= member %>
</body>
</html>

