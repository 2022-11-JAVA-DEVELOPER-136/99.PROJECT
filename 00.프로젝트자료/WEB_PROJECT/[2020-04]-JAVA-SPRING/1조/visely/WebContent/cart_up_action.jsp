<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.dto.Cart"%>
<%@page import="com.itwill.service.CartService"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String cNo = request.getParameter("cNo");
	String cQty = request.getParameter("cQty");
	String pPrice = request.getParameter("pPrice");
	
	CartService cartService = CartService.getInstance();
	Cart cart = cartService.selectKey(Integer.parseInt(cNo));
	int cQt = cart.getcQty()+Integer.parseInt(cQty);
	int pPr = cart.getcPrice()+Integer.parseInt(pPrice);
	cart.setcQty(cQt);
	cart.setcPrice(pPr);
	int sAmt = cartService.update(cart);
	
	
	
%>
{
	"cQt":<%=cQt %>,
	"pPr":<%=pPr%>,
	"sAmt":<%=sAmt%>
}
