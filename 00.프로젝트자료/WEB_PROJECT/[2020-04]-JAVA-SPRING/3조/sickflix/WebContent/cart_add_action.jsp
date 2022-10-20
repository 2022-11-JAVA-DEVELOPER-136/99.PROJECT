<%@page import="com.itwill.shop.cart.ExistedCartException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@page import="com.itwill.shop.cart.CartItemDto"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="member_login_check.jspf" %>
<%
	if (request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("product_list.jsp");
		return;
	}

	String sp_no = request.getParameter("p_no");
	int p_no = Integer.parseInt(sp_no);
	String m_id = (String) session.getAttribute("sM_id");

	try {
		CartService cartService = CartService.getInstance();
		CartItemDto cart = new CartItemDto();
		cart.setM_id(m_id);
		cart.setP_no(p_no);
		cartService.add(cart);
		response.sendRedirect("cart_view.jsp");
	} catch(ExistedCartException e) {
		request.setAttribute("msg", e.getMessage());
		RequestDispatcher rd=
				request.getRequestDispatcher("product_detail.jsp?p_no="+p_no);
		rd.forward(request, response);
	}
	catch(Exception e) {
		e.printStackTrace();
		RequestDispatcher rd =
				request.getRequestDispatcher("product_list.jsp");
		rd.forward(request, response);
	}
%>
