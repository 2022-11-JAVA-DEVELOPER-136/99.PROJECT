<%@page import="com.itwill.board.BoardService"%>
<%@page import="com.itwill.board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("board_list.jsp");
		return;
	}
	
	Board board = new Board();
	board.setB_title(request.getParameter("title"));
	board.setM_id((String)session.getAttribute("sM_id"));
	board.setB_content(request.getParameter("content"));
	
	BoardService.getInstance().create(board);
	response.sendRedirect("board_list.jsp");
%>
