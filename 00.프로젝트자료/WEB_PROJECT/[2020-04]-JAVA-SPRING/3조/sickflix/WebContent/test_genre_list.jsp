<%@page import="com.itwill.genre.Genre"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.genre.GenreService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	GenreService gs = new GenreService();
	ArrayList<Genre> genreList = gs.findGenreList();
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
		for(Genre genre : genreList) {	
	%>
	<li><%=genre%></li>
	<%
		}
	%>
	</ol>
</body>
</html>