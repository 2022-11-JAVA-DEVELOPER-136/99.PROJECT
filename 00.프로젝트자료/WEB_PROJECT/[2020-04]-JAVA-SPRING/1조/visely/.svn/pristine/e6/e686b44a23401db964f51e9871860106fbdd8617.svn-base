<%@page import="com.itwill.exception.BoardException"%>
<%@page import="com.itwill.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>
<%
	if(request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("qna_board_list.jsp");
		return;
	}

	request.setCharacterEncoding("UTF-8");
	String boardNo = request.getParameter("boardno");
	
	try{
		BoardService boardService = BoardService.getInstance();
		int deleteCount = boardService.delete(Integer.parseInt(boardNo));
		response.sendRedirect("qna_board_list.jsp");

	}catch(BoardException e) {
		e.printStackTrace();
		out.println("<script>");
		out.println("alert('답글이 있는 게시글은 삭제할 수 없습니다');");
		out.println("location.href='qna_board_list.jsp';");
		out.println("</script>");
	}
	
%>
