
<%@page import="javax.print.attribute.standard.PDLOverrideSupported"%>
<%@page import="com.itwill.dao.ProductDaoImpl"%>
<%@page import="com.itwill.util.PageMaker"%>
<%@page import="com.itwill.util.Calculator"%>
<%@page import="com.itwill.dto.Product"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file= "member_session.jspf" %>
<%
	ProductServiceImpl ps = ProductServiceImpl.getProductService();
	
    String string_page =  request.getParameter("page");
    
    ProductDaoImpl pd = new ProductDaoImpl();
	
    Calculator cal = new Calculator(string_page , 10);
    
    ArrayList<Product> productList = pd.PagingList(cal.getStartIdx(), cal.getEndIdx());
    
	int count =  pd.getProductCount();
	
	PageMaker pm = new PageMaker(cal.getPage(), count, 10);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <script src="js/board.js"></script>
  <title>상품 리스트</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>
  	.no {width:100px;}
    .name {width:400px;}
    .price {width:100px;}
    .qty {width:100px;}
    .admin {width:100px;}
  
    input[type=button] {
	  padding: 12px 20px;
	  margin: 215px;
	  cursor: pointer;
	  float: right;
	}
	
	.button {font-size:OOpx; padding:OOpx OOpx}
  </style>
</head>
<body>
<!-- common_top_menu start -->
		<header class="seese-header" style="">
			<!-- Menubar Starts -->
			<jsp:include page="common_top_menu.jsp"/>
			<!-- Menubar End -->
		</header>
<!-- common_top_menu end -->
<div class="container mt-3"><br><br><br>
  <h2 align="center">상품 리스트</h2><br><br><br>
  <ul class="list-group">
  	<li class="list-group-item d-flex justify-content-between align-items-center">
      <span class="no">상품 번호</span>
      <span class="name">상품 이름</span>
      <span class="price">가격</span>
      <span class="qty">잔고</span>
      <span class="admin">상세보기</span>
      <span class="admin">수정</span>
      <span class="admin">삭제</span>
    </li>
    <%for(Product product: productList) { %>
    <li class="list-group-item d-flex justify-content-between align-items-center">
      <span class="no"><%=product.getpNO() %></span>
      <span class="name"><a href="product_list_detail.jsp?pNo=<%=product.getpNO() %>"><%=product.getpName() %></a></span>
      <span class="price"><%=product.getpPrice() %></span>
      <span class="qty"><%=product.getpStockQty() %></span>
      <span class="admin"><a href="product_list_detail.jsp?pNo=<%=product.getpNO() %>">상세</a></span>
      <span class="admin"><a href="product_update_form.jsp?pNo=<%=product.getpNO() %>">수정</a></span>
      <span class="admin"><a href="product_delete_action.jsp?pNo=<%=product.getpNO() %>">삭제</a></span>
    </li>
    <%} %>
  </ul>
  <div class="col offset-5">
		
	    	<%if(pm.isPrev()) { %>
				<a href="product_list_admin.jsp?page=<%=pm.getStartPage()-1 %>"> (- </a>
			<%} %>
		
			<%for(int i=pm.getStartPage(); i<= pm.getEndPage(); i++) { %>
			
				<%if(cal.getPage() == i) { %>
					<a style="color: red;font-size: 13pt;font-weight:bold;" href="product_list_admin.jsp?page=<%=i%>"><%=i %></a>&nbsp;&nbsp;&nbsp;
				<%} else { %>
					<a href="product_list_admin.jsp?page=<%=i %>" style="font-size: 13pt;font-weight:bold;"><%=i %></a>&nbsp;&nbsp;&nbsp;
				<%} %>
			
			
			<%} %>
			
			<%if(pm.isNext()) { %>
				<a href="product_list_admin.jsp?page=<%=pm.getEndPage()+1 %>">=></a>
			<%} %>
	</div>
	<a href='product_write_form.jsp'><input type="button"  class="btn  btn-sm" value="상품 등록" /></a>
</div>
</body>
</html>
