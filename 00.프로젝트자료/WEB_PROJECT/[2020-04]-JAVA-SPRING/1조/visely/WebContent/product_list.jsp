<%@page import="com.itwill.util.BoardListPageDto"%>
<%@page import="com.itwill.util.PageInputDto"%>
<%@page import="com.itwill.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int orderMethod;
	int sessionMethod;
	String sessionMethodStr;
	String queryString;
	
	request.setCharacterEncoding("UTF-8");
	
	if(request.getParameter("queryString")==null){
		queryString="";
	} else {
		queryString=request.getParameter("queryString");
	}
	
	
	if(session.getAttribute("oMethod")==null){
		sessionMethod=Product.ORDER_METHOD_REGDT;
	} else {
		sessionMethod = (Integer)session.getAttribute("oMethod");
	}
	if(request.getParameter("oMethod")==null||request.getParameter("oMethod").equals("")){
		orderMethod = sessionMethod;
	} else {
		 orderMethod = Integer.parseInt(request.getParameter("oMethod"));
		 session.setAttribute("oMethod", orderMethod);
	}
	
	ProductServiceImpl psi = ProductServiceImpl.getProductService();

	//1.요청페이지번호	
	String pageno=request.getParameter("pageno");
	if(pageno==null||pageno.equals("")){
		pageno="1";
	}	
	//2.한페이지에표시할 게시물수 
	int rowCountPerPage = 5;
	//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
	int pageCountPerPage = 10;
	//페이징(계산)을위한DTO,VO
	PageInputDto pageInputDto=
			new PageInputDto(rowCountPerPage,pageCountPerPage,pageno,"","");
	
	pageInputDto.setOrderMethod(orderMethod);
	pageInputDto.setQueryString(queryString);
	
	//게시물조회
	
	BoardListPageDto prdtListPage =psi.findProductList(pageInputDto);
	
	ArrayList<Product> productList =(ArrayList<Product>)prdtListPage.getList();
%>     
<!DOCTYPE html>
<!-- saved from url=(0034)https://www.wiselyshave.com/store/ -->
<html lang="ko-KR"
	prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#"
	class=" seese-browser">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">

	function myFunction() {
	
		f.action = "./product_list.jsp";
		f.method='POST';
		f.submit();
	
	}
	
	
</script>

</head>

<body class="page-template-default page page-id-18"
	style="zoom: 1; overflow: visible;">



	<!-- Seese Wrap Start -->
	<div id="seese-wrap" class="seese-fixed-header">

		<header class="seese-header" style="">
			<!-- Menubar Starts -->
			<jsp:include page="common_top_menu.jsp"/>
			<!-- Menubar End -->
		</header>
		<!-- Seese Wrapper Start -->
		<div class="seese-wrapper">

			<style>
.star_info {
	font-family: 'Spoqa Han Sans';
	font-weight: normal;
	text-align: left;
	margin-top: 20px;
}

.star_info div {
	display: inline-block;
}

.star_info .star_score {
	color: #5a5a5a;
	font-size: 1.4rem;
	font-weight: bold;
}

.star_info .star_count {
	color: #5a5a5a;
	font-size: 1.2rem;
}

@media ( max-width : 767px) {
	.star_info {
		text-align: center;
	}
	.product-desc {
		text-align: center;
	}
	.product-badge {
		text-align: center;
	}
}
</style>

			<link href="./res/SpoqaHanSans-kr.css"
				rel="stylesheet" type="text/css">
			<style>
body .desc a.btn-strokeblue, body .subsection-box.box1>div.desc a.btn-strokeblue
	{
	display: block !important;
}

body .d-table-cell.v-middle .desc a.btn-strokeblue {
	display: block !important;
}

.btn-strokeblue {
	background-color: #0096ff !important;
	color: #ffffff !important;
}

.btn-strokeblue-small {
	background-color: #0096ff !important;
	color: #ffffff !important;
}

@media screen and (max-width: 767px) {
	body .subsection.store-list .floatR {
		display: block !important;
		padding: 13px;
		font-size: 18px;
		font-weight: bold;
		letter-spacing: 1px;
	}
}

.price-sale, .product-price2 {
	font-family: 'Spoqa Han Sans' !important;
	font-weight: bold !important;
	letter-spacing: 0px !important;
}
</style>


<style> 

.order_method {
	width: 100%;
	text-align:center;
}
select {
  width: 10%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
  
}
</style>

<p></p>


<form class="order_method" name="f">
  <span><b>검색어&nbsp;:&nbsp;</b>
  		<input type="text" name="queryString" />
  		<a href='javascript:myFunction()'>조회</a>
  </span>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <span><b>정렬방법&nbsp;:&nbsp;</b>
  <select id="oMethod" name="oMethod" onchange="javascript:myFunction()">
  <%if(orderMethod==Product.ORDER_METHOD_REGDT) { %>
  	<option value="<%=Product.ORDER_METHOD_REGDT%>" selected="selected">등록일</option>
  <%} else { %>
  	<option value="<%=Product.ORDER_METHOD_REGDT%>">등록일</option>
  <%} %>
  <%if(orderMethod==Product.ORDER_METHOD_POINT) { %>
  	<option value="<%=Product.ORDER_METHOD_POINT%>" selected="selected">구매순</option>
  <%} else { %>
  	<option value="<%=Product.ORDER_METHOD_POINT%>">구매순</option>
  <%} %>
  <%if(orderMethod==Product.ORDER_METHOD_HPRICE) { %>
  	<option value="<%=Product.ORDER_METHOD_HPRICE%>" selected="selected">가격높은순</option>
  <%} else { %>
  	<option value="<%=Product.ORDER_METHOD_HPRICE%>">가격높은순</option>
  <%} %>
  <%if(orderMethod==Product.ORDER_METHOD_LPRICE) { %>
  	<option value="<%=Product.ORDER_METHOD_LPRICE%>" selected="selected">가격낮은순</option>
  <%} else { %>
  	<option value="<%=Product.ORDER_METHOD_LPRICE%>">가격낮은순</option>
  <%} %>
  </select></span>
</form>
			<div class="seese-containerWrap seese-extra-width">
				<div class="seese-background seese-background-outer">
					<div class="container-fluid">
						<div
							class="seese-background-inner seese-padding-none seese-container-inner"
							style="">
							<div class="row">
									
								<div class="desk_viewer">

									<!-- Content Col Start -->
									<div class=" seese-contentCol">
										<div class="seese-content-area">


<%for(Product p: productList) { %>
											<div class="subsection store-main">
												<div class="subsection-wrapper" style="padding-bottom: 0px;">
													<div class="section-content aligncenter">
														<div class="subsection-box box1 product-box-clickable"
															data-link="product_list_detail.jsp?pNo=<%=p.getpNO() %>"
															data-unsellable="N" style="margin-bottom: 0px;">
															<div class="image" style="display: block;">
																<a
																	href="product_list_detail.jsp?pNo=<%=p.getpNO() %>"><img
																	src="./image/<%=p.getpImage()%>"
																	width="298"></a>
															</div>
															<div class="bluetag-area">
																<div class="bluetag-best"
																	style="font-size: 14px; float: right;">BEST</div>
															</div>
															<div class="desc">
																<div class="product-badge">
																	<div
																		style="padding: 3px 10px 0px; font-size: 10px; font-weight: bold; color: #0096ff; border: 1px solid #0096ff; display: inline-block; letter-spacing: 0px; line-height: 16px;">UPGRADE</div>
																</div>
																<div class="product-name" style="margin-top: 3px;">
																	<a href="product_list_detail.jsp?pNo=<%=p.getpNO()%>"><%=p.getpName() %></a>
																</div>
																<div class="product-desc"><%=p.getpDesc() %></div>
																<div class="product-price">
																	<span class="price-sale"> <%=p.getpPrice() %> 원 </span>
																	<div class="product-shpping">
																		<span>무료배송</span>
																	</div>
																</div>

																<div class="star_info bigbox">
																	<div class="star_icon">
																		<%  int onCnt = (int)p.getpPoint();
																			double rmPoint = p.getpPoint() - onCnt;
																			for(int i = 1; i<= 5; i++){ 
																				if(--onCnt>=0){ %>
																					<img src="./res/star-on.png" width="16">
																			<%} else if(rmPoint >= 0.75) { %>
																					<img src="./res/star-on.png" width="16">
																			<% rmPoint = 0.;} else if(rmPoint >= 0.35) { %>
																					<img src="./res/star-half.png" width="16">
																			<% rmPoint = 0.;} else { %>
																					<img src="./res/star-off.png" width="16">
																		<%}} %>
																	</div>
																	<div class="star_score"><%=p.getpPoint() %></div>
																	<div class="star_count"><%=p.getBuyCount() %>구매</div>
																</div>

																<div class="hidden-xs hidden-sm">
																	<a href="product_list_detail.jsp?pNo=<%=p.getpNO() %>"
																		class="btn-strokeblue btn-mgTop50 floatR"><span>자세히 보기</span></a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
<%} %>

											
										</div>
									</div>
								</div>
								<!-- Content Col End -->

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<br>
	<style>
	
		.paging {
			text-align: center;
			padding:20px;
			margin:20px;
			font-size:20px;
		}
	</style>
		
	<div class="paging">
		<%if (prdtListPage.isShowFirst()) {%> 
			<a href="./product_list.jsp?pageno=1">◀◀</a>&nbsp; 
		<%}%> 
		<%if (prdtListPage.isShowPreviousGroup()) {%>
			<a href="./product_list.jsp?pageno=<%=prdtListPage.getPreviousGroupStartPageNo()%>">◀</a>&nbsp;&nbsp;
		<%}%>
		<%
		 	for (int i = prdtListPage.getStartPageNo(); i <= prdtListPage
		 			.getEndPageNo(); i++) {
		 	if (prdtListPage.getSelectPageNo() == i) {
		%>
		 <font color='red'><strong><%=i%></strong></font>&nbsp;
		<%} else {%>
		<a href="./product_list.jsp?pageno=<%=i%>"><strong><%=i%></strong></a>&nbsp;
		<%
		   }
		  }%>
		   <%
			 	if (prdtListPage.isShowNextGroup()) {
			 %> <a
		href="./product_list.jsp?pageno=<%=prdtListPage.getNextGroupStartPageNo()%>">▶&nbsp;</a>
		<%
			}
		%> <%
			 	if (prdtListPage.isShowLast()) {
			 %> <a
		href="./product_list.jsp?pageno=<%=prdtListPage.getTotalPageCount()%>">▶▶</a>&nbsp;
		<%
			}
		%>
	</div>
	<script>

window.onload = function(){
jQuery(document).ready(function($){

	$(".product-box-clickable").click(function(e){
		e.preventDefault();
		var link = $(this).attr("data-link");
		var unsellable = $(this).attr("data-unsellable");
		if(unsellable == "N"){
			location.href = link;
		}
	});

});
};
</script>

	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KNJCD96"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<style>
a, .infomark {
	cursor: pointer;
}

#bg-lightbox-product-detail {
	pointer-events: none;
}

#ajax-loading-div {
	background-image:
		url(https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-ajax-spinner-70x70.gif);
	background-size: cover;
	width: 70px;
	height: 70px;
	z-index: 9998;
	top: 50%;
	left: 50%;
	margin-top: -35px;
	margin-left: -35px;
	position: fixed;
	display: none;
}
</style>


	<div id="lb-notification" class="lb-notification"
		style="display: none;">
		<a class="btn-close"></a>
		<p class="lb-message"></p>
		<div class="lastbtnBox">
			<a class="btn-fillBlue btn-width250 btn-last-close"><span>확인</span></a>
		</div>
		<div class="clear"></div>
	</div>
	<div id="bg-lb-notification" class="lightBoxBg" style="display: none;"></div>
	<div id="bg-lightbox-product-detail" class="lightBoxBg"
		style="display: none;" data-target=""></div>

	<div id="ajax-loading-div"></div>



	<script>
function after_notice_call(){
	jQuery("#lb-notification").style("max-height",jQuery(window).height()+"px","important");
	jQuery("#lb-notification").style("bottom","unset","important");
	jQuery("#lb-notification").style("top",(jQuery(window).height()-jQuery("#lb-notification").height())/2+"px","important");
	jQuery("#lb-notification .lb-message").style("margin-top","40px","important");

};
</script>
	<!-- Seese Wrapper End -->

	<div class="container-fluid seese-bottomboxes">
		<div class="row"></div>
	</div>
	<!-- Footer Start -->
	<footer class="seese-footer">
		<!-- Footer Widgets Start -->
		<jsp:include page="common_footer.jsp"/>
		<!-- Footer Widgets End -->
	</footer>
	<!-- Footer End-->

	<!-- Seese Wrap End -->


</body>
</html>