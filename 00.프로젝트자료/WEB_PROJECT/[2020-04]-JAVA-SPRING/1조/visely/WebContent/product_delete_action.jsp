<%@page import="com.itwill.dao.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pNO = request.getParameter("pNo");
	if (pNO == null || pNO.equals("")) {
		response.sendRedirect("product_list_admin.jsp");
		return;
	}
	ProductDaoImpl pd = new ProductDaoImpl();
	pd.delete(Integer.parseInt(pNO));
	response.sendRedirect("product_list_admin.jsp");
%>