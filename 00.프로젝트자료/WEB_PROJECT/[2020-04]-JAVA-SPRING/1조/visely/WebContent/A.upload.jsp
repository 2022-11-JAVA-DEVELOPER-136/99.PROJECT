<%--@page import="com.oreilly.servlet.MultipartRequest"--%>
<%@page import="com.itwill.dto.ProductImage"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@page import="com.itwill.service.ProductService"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%


	String contextRealPath = application.getRealPath("image");
	application.log("contextRealPath:"+contextRealPath);
	
	MultipartRequest multipartRequest= new MultipartRequest(request,contextRealPath,1024*1024*100,"UTF-8");
	int pNo = Integer.parseInt(multipartRequest.getParameter("pNo"));
	
	ProductServiceImpl ps = ProductServiceImpl.getProductService();
	String fileone = multipartRequest.getFilesystemName("fileone");
	String filetwo = multipartRequest.getFilesystemName("filetwo");
	if (!(fileone == null || fileone.equals(""))) {
		ProductImage pi1 = new ProductImage(pNo, fileone);	
		ps.setImage(pi1);
	}
	if (!(filetwo == null || filetwo.equals(""))) {
		ProductImage pi2 = new ProductImage(pNo, filetwo);	
		ps.setImage(pi2);
	}
	
	response.sendRedirect("product_update_form.jsp?pNo="+pNo);

%>
	


