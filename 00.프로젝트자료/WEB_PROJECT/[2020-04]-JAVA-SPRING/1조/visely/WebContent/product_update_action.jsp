<%@page import="com.itwill.dto.Product"%>
<%@page import="com.itwill.dao.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pNo = request.getParameter("pNo");
	String pName = request.getParameter("pName");
	String pPrice = request.getParameter("pPrice");
	String pQty = request.getParameter("pQty");
	String pPoint = request.getParameter("pPoint");
	String pUnit = request.getParameter("pUnit");
	String pDesc =  request.getParameter("pDesc");
	ProductDaoImpl pd = new ProductDaoImpl();
	Product p = null;
	try {
		p = new Product(Integer.parseInt(pNo), pName, pDesc, Integer.parseInt(pPrice), Double.parseDouble(pPoint), Integer.parseInt(pQty), pUnit, null, 0);
		pd.update(p);
		response.sendRedirect("product_list_admin.jsp");
	} catch(Exception e) {
		e.printStackTrace();
		return;
	}
	
%>