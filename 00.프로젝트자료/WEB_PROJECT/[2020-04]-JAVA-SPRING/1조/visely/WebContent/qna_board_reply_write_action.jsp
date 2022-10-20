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
	String boardTitle = request.getParameter("title");
	String boardContent = request.getParameter("content");
	int boardNo = Integer.parseInt(request.getParameter("boardno"));
	/*
	String boardTitle = request.getParameter("title");
	String boardContent = request.getParameter("content");
	*/
	try {
		BoardService boardService = BoardService.getInstance();
		boardService.createReply(new Board(boardNo, boardTitle, boardContent, null, sUserId, 0, boardNo, 0, 0));
		response.sendRedirect("qna_board_list.jsp");
	}catch(Exception e) {
		e.printStackTrace();
	}

	
%>