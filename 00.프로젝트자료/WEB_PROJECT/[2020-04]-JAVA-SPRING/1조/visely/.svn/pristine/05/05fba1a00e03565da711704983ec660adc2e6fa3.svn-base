<%@page import="java.util.Date"%>
<%@page import="com.itwill.dto.Product"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	if(request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("product_write_form.jsp");
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String pName = request.getParameter("pName");
	String pDesc = request.getParameter("pDesc");
	int pPrice = Integer.parseInt(request.getParameter("pPrice"));
	double pPoint = Double.parseDouble(request.getParameter("pPoint"));
	int pStockQty = Integer.parseInt(request.getParameter("pStockQty"));
	String pUnit = "";


	Product prod = new Product(-999, pName, pDesc, pPrice, pPoint, pStockQty, pUnit, null, 0);

	ProductServiceImpl.getProductService().setProduct(prod);
	
	response.sendRedirect("product_list.jsp");
 

%>
