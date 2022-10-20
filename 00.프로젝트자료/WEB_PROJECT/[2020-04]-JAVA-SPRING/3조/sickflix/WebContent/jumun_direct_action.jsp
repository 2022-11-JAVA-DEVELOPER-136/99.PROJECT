<%@page import="com.itwill.jumun_detail.JumunDetail"%>
<%@page import="com.itwill.jumun_detail.JumunDetailService"%>
<%@page import="com.itwill.jumun.Jumun"%>
<%@page import="com.itwill.jumun.JumunService"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sp_no = request.getParameter("p_no");
	int p_no = Integer.parseInt(sp_no);
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("product_detail.jsp?p_no="+p_no);
		return;
	}
	
	ProductService productService = ProductService.getInstance();
	JumunService jumunService = JumunService.getInstance();
	JumunDetailService jumunDetailService = JumunDetailService.getInstance();
	
	String m_id = (String) session.getAttribute("sM_id");
	
	try{
		Product jumunProduct = productService.findProduct(p_no);
		
		Jumun jumun = new Jumun();
		jumun.setJ_desc(jumunProduct.getP_title());
		jumun.setJ_price(jumunProduct.getP_price());
		jumun.setM_id(m_id);
		jumunService.create(jumun);
		int new_jno = jumunService.findRecentJumun(m_id);
		
		JumunDetail jumunDetail = new JumunDetail();
		jumunDetail.setJ_no(new_jno);
		jumunDetail.setP_no(p_no);
		jumunDetailService.create(jumunDetail);
		
		response.sendRedirect("jumun_success.jsp?j_no="+new_jno);
	}catch(Exception e){
		response.sendRedirect("member_error.jsp");
	}
	
%>