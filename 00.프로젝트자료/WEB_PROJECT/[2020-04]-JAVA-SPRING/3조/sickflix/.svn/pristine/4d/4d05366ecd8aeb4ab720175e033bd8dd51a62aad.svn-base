<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body bgcolor="#000000">
<p>
	<strong>메 뉴</strong>
</p>
<ul>
	
	<%if(session.getAttribute("sM_id")==null){ %>
		<li><a href="member_write_form.jsp">회원가입</a></li>
		<li><a href="member_login_form.jsp">로그인</a></li>
		<li><a href="product_list.jsp">쇼핑몰</a></li>
		<li><a href='#' onclick="alert('로그인 하세요')">게시판리스트</a></li>
		<li><a href='#' onclick="alert('로그인 하세요')">게시판쓰기</a></li>
	<%}else{ %>
		<li><a href="member_view.jsp?m_id=<%=session.getAttribute("sM_id")%>"><%=session.getAttribute("sM_id")%>님</a>&nbsp;
		    <a href="member_logout_action.jsp">로그아웃</a></li>
		<li><a href="product_list.jsp">쇼핑몰</a></li>
		<li><a href="cart_view.jsp">장바구니</a></li>
		<li><a href="board_list.jsp">게시판리스트</a></li>
		<li><a href="board_write.jsp">게시판쓰기</a></li>
	<%} %>
</ul>
</body>
</html>