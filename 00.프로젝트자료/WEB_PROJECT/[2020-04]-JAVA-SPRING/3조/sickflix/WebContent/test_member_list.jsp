<%@page import="com.itwill.member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberService ms = MemberService.getInstance();
	ArrayList<Member> memberList = ms.findMemberList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ol>
		<%
			for (Member member : memberList) {
		%>
		<li><%=member%></li>
		<%
			}
		%>
	</ol>
</body>
</html>
