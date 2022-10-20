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
	
	try{
		int boardno = Integer.parseInt(request.getParameter("boardno"));
		String boardtitle = request.getParameter("boardtitle");
		String boardcontent = request.getParameter("boardcontent");
		
		BoardService boardService = BoardService.getInstance();
		int updateCount = boardService.update(new Board(boardno, boardtitle, boardcontent, null, null, 0, 0, 0, 0));
		response.sendRedirect("qna_board_list.jsp");		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
%>
