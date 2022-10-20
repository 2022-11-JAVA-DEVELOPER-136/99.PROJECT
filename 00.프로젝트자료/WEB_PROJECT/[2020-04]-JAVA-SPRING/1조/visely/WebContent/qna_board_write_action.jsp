<%@page import="java.util.Date"%>
<%@page import="com.itwill.dto.Board"%>
<%@page import="com.itwill.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("qna_board_list.jsp");
		return;
	}
	
	request.setCharacterEncoding("UTF-8");
	String sUserId = request.getParameter("id");
	String title = "Q: "+ request.getParameter("title");
	String content = request.getParameter("content");
	
	try{
		BoardService boardService = BoardService.getInstance();
		boardService.create(new Board(0, title, content, new Date(), sUserId, 0, 0, 1, 0));
		response.sendRedirect("qna_board_list.jsp");
	}catch(Exception e) {
		e.printStackTrace();
		//에러페이지는 어떻게 할까요?
	}
%>
    
