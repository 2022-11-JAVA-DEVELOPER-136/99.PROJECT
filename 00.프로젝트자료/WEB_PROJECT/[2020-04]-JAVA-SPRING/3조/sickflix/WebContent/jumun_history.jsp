<%@page import="com.itwill.jumun.JumunService"%>
<%@page import="com.itwill.jumun.Jumun"%>
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
	JumunService jumunService = JumunService.getInstance();
	ArrayList<Jumun> jumunList = jumunService.findMemberJumun(m_id);
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
								<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b> 총 주문 내역</b></td>
							</tr>
						</table> <!--form-->
						<form name="f" method="post">
							<table align=center border=1 width=80% cellspacing=0
								bordercolordark=#FFFFFF bordercolorlight=#bfa380>
								<tr>
									<td width=180 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>주문 일자 </font></td>
									<td width=55 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>주문 번호</font></td>
										
										<!-- 체크박스로 삭제 또는 주문할 영화 체크 -->
									<td width=300 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>주문 상세</font></td>
									
									<td width=170 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>가 격</font></td>
									<td width=80 height=25 bgcolor=#bfa380 align=center class=t1><font
										color=#FFFFFF>상세 설명</font></td>
								
								</tr>
								<%
									DecimalFormat df = new DecimalFormat("#,##0");
									for (int i = 0; i < jumunList.size(); i++) {
										Jumun jumunItem = jumunList.get(i);
								%>
								<!-- cart item start -->
								<tr>
									<!-- 구매할 제품 선택할 수 있는 체크박스 필요함 -->
									
									<td width=180 height=26 align=center class=t1><%=jumunItem.getJ_date()%></td>
									<td width=55 height=26 align=center class=t1><%=jumunItem.getJ_no()%></td>
								
									<td width=300 height=26 align=center class=t1><%=jumunItem.getJ_desc()%></a></td>
									<td width=170 height=26 align=center class=t1><%=df.format(jumunItem.getJ_price())%></td>
							
									<td width=80 height=26 align=center class=t1>
										<a href="jumun_detail.jsp?j_no=<%=jumunItem.getJ_no()%>" class=m1>조회</a></td>
									</tr>
									
								<!-- cart item end -->
								<%
									}
								%> 
							</table>
						</form> <br />
						<table border="0" cellpadding="0" cellspacing="1" width="590">
							<tr>
								<td align=center>&nbsp;&nbsp;
									<!-- 체크한 상품만 삭제하는 버튼 -->
									
									<a href=jumun_detail.jsp class=m1>쇼핑 하러가기 </a>&nbsp;&nbsp;
									
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