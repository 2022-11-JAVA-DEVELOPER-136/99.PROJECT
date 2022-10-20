<%@page import="com.itwill.jumun.Jumun"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.jumun.JumunService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	JumunService jumunService = new JumunService();
	ArrayList<Jumun> jumunList = jumunService.findJumunList();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=MS949"/>
<title></title>
</head>
<body>
	<ol>
		<%
		for (Jumun jumun : jumunList) {		
		%>
		<li><%=jumun%></li>
		<%
			}
		%>
	</ol>
</body>
</html>
