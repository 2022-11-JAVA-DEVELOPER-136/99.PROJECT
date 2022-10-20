<%@page import="com.itwill.shop.product.Product"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@page import="com.itwill.jumun_detail.JumunDetailService"%>
<%@page import="com.itwill.jumun_detail.JumunDetail"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@include file="member_login_check.jspf"%>
<%
	String m_id = (String) session.getAttribute("sM_id");
	String sj_no = request.getParameter("j_no");
	int j_no = Integer.parseInt(sj_no);
	
	JumunDetailService jumunDetailService = JumunDetailService.getInstance();
	ArrayList<JumunDetail> jumunDetailList = jumunDetailService.findDetailFromJumun(j_no);
	
	ProductService productService = ProductService.getInstance();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쇼핑몰 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<style type="text/css" media="screen">
</style>

</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
<div id="container">
	<!-- header start -->
	<div id="header">
		<!-- include_common_top.jsp start-->
		<jsp:include page="include_common_top.jsp" />
		<!-- include_common_top.jsp end-->
	</div>
	<!-- header end -->
	<!-- navigation start-->
	<div id="navigation">
		<!-- include_common_left.jsp start-->
		<jsp:include page="include_common_left.jsp" />
		<!-- include_common_left.jsp end-->
	</div>
	<!-- navigation end-->
	<!-- wrapper start -->
	<div id="wrapper">
		<!-- content start -->

		<!-- include_content.jsp start-->
		<div id="content">
			<table border=0 cellpadding=0 cellspacing=0>
				<tr>
					<td><br />
						<table style="padding-left: 10px" border=0 cellpadding=0
							cellspacing=0>
							<tr>
								<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;
								<b> 주문번호 [<%=j_no %>] </b></td>
							</tr>
						</table> <!--form-->
						<form name="f" method="post">
							<table align=center border=1 width=80% cellspacing=0
								bordercolordark=#FFFFFF bordercolorlight=#bfa380>
								<tr>
									<td width=100 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>영화</font></td>
									<td width=250 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>제목</font></td>
									<td width=166 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>가 격</font></td>
									<td width=290 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>상세 설명</font></td>
								
								</tr>
								<%
									DecimalFormat df = new DecimalFormat("#,##0");
									int tot = 0;
									for (int i = 0; i < jumunDetailList.size(); i++) {
										JumunDetail jdItem = jumunDetailList.get(i);
										Product jdProduct = productService.findProduct(jdItem.getP_no());
										tot += jdProduct.getP_price();
								%>
								<!-- cart item start -->
								<tr>
									<!-- 구매할 제품 선택할 수 있는 체크박스 필요함 -->
									<td width=100 height=26 bgcolor=#bfa380 align=center class=t1>
										<img src="image/<%=jdProduct.getP_image()%>" width="100" height="150" border="0"></td>
									<td width=290 height=26 align=center class=t1>
										<a href='product_detail.jsp?p_no=<%=jdItem.getP_no()%>'><%=jdProduct.getP_title()%></a></td>
									<td width=166 height=26 align=center class=t1><%=df.format(jdProduct.getP_price())%></td>
									<td width=50 height=26 align=center class=t1><%=jdProduct.getP_desc()%></a></td>
									</tr>
								<!-- cart item end -->
								<%
									}
								%> 

								<TR>
								  
								  
									<td width=640 colspan=4 height=26  class=t1>
										<b align=right>
											<font  size=3 color=#FF0000>주문 총 금액 : <%=df.format(tot)%> 원 
											</font>
										</b>
									</td>
								</tr>
							</table>
						</form> <br />
						<table border="2" cellpadding="0" cellspacing="1" width="590">
							<tr>
								<td align=center>&nbsp;&nbsp;
									<!-- 체크한 상품만 삭제하는 버튼 -->
									
									<a href=product_list.jsp class=m1>쇼핑 하러가기 </a>&nbsp;&nbsp;
									
									
								</td>
							</tr>
							
						</table></td>
				</tr>
			</table>
		</div>
		<!-- include_content.jsp end-->
		<!-- content end -->
	</div>
	<!--wrapper end-->
	<div id="footer">
		<!-- include_common_bottom.jsp start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- include_common_bottom.jsp end-->
	</div>
</div>
<!--container end-->
</body>
</html>