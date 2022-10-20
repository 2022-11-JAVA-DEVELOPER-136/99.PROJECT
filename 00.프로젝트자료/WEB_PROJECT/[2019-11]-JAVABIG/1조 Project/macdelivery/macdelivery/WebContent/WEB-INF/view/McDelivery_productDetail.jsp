<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.product.model.Product"%>
<%@page import="com.itwill.product.model.Product"%>
<%@page import="com.itwill.product.model.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("member") == null) {
		response.sendRedirect("McDelivery_login_form.do");
	}
	Product product = (Product) request.getAttribute("single");
	ArrayList<Product> largeSet = null;
	ArrayList<Product> set = null;
	if(product.getP_up_no() == 101 ||product.getP_up_no() == 102){
		largeSet = (ArrayList<Product>)request.getAttribute("largeSet");
		set = (ArrayList<Product>)request.getAttribute("set");
	}

%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Mcdonald</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
	function test() {

		var largePlus = document.getElementById("largePlus")
		var largeMinus = document.getElementById("largeMinus")
		var setPlus = document.getElementById("setPlus")
		var setMinus = document.getElementById("setMinus")
		var singlePlus = document.getElementById("singlePlus")
		var singMinus = document.getElementById("singleMinus")
<%if(product.getP_up_no() == 101 ||product.getP_up_no() == 102){%>
		largePlus.addEventListener("click", function(e) {
			var largeset = document.getElementById("largesetQuantity");
			var largeCount = parseInt(largeset.value);
			largeData(largeCount);
		}, false);

		largeMinus.addEventListener("click", function(e) {
			var largeset = document.getElementById("largesetQuantity");
			var largeCount = parseInt(largeset.value);
			largeData(largeCount);
		}, false);
		
		setPlus.addEventListener("click", function(e) {
			var set = document.getElementById("setQuantity");
			var setCount = parseInt(set.value);
			setData(setCount);
		}, false);

		setMinus.addEventListener("click", function(e) {
			var set = document.getElementById("setQuantity");
			var setCount = parseInt(set.value);
			setData(setCount);
		}, false);
<%}%>
		singlePlus.addEventListener("click", function(e) {
			var single = document.getElementById("singleQuantity");
			var singleCount = parseInt(single.value);
			singleData(singleCount);
		}, false);

		singleMinus.addEventListener("click", function(e) {
			var single = document.getElementById("singleQuantity");
			var singleCount = parseInt(single.value);
			singleData(singleCount);
		}, false);
	}
<%if(product.getP_up_no() == 101 ||product.getP_up_no() == 102){%>
	function largeData(largeCount) {
		document.getElementById('largeDiv').innerHTML = "";

		for (var i = 1; i <= largeCount; i++) {
			document.getElementById('largeDiv').innerHTML = document
					.getElementById('largeDiv').innerHTML
					+ '<div id="largesetBlock'+i+'">'
					+ '<div class="site-section site-section-sm site-blocks-1">'
					+ '<div class="container">'
					+ '<div class="row">'
					+ '<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">'
					+ '<div class="text">'
					+ '<h2 class="text-uppercase"><%=largeSet.get(0).getP_name()%></h2>'
					+ '</div>'
					+ '</div>'
					+ '<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">'
					+ '<div class="text">'
					+ '<h2>후렌치후라이L</h2>'
					+ '</div>'
					+ '</div>'
					+ '<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">'
					+ '<div class="text">'
					+ '<h2>코카콜라L</h2>'
					+ '</div>'
					+ '</div>'
					+ '</div>'
					+ '</div>'
					+ '</div>'

		}

	}
	
	function setData(setCount){
		document.getElementById('setDiv').innerHTML = "";
		
		for (var i = 1; i <= setCount; i++) {
			document.getElementById('setDiv').innerHTML = 
				document.getElementById('setDiv').innerHTML +
				'<div id="setBlock'+i+'">' +
			'<div class="site-section site-section-sm site-blocks-1">' +
				'<div class="container">' +
					'<div class="row">' +
						'<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">' +
							'<div class="text">' +
								'<h2 class="text-uppercase"><%=set.get(0).getP_name()%></h2>' +
							'</div>' +
						'</div>' +
						'<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">' +
							'<div class="text">' 
							+ '<h2>후렌치후라이</h2>'
							+
							'</div>' +
						'</div>' +
						'<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">' +
							'<div class="text">'
							+ '<h2>코카콜라</h2>'
							'</div>' +
							
						'</div>' +
					'</div>' +
				'</div>' +
			'</div>' +


		'</div>'
		}
	}
	<%}%>	
	function singleData(singleCount){
		document.getElementById('singleDiv').innerHTML = "";
		for (var i = 1; i <= singleCount; i++) {
			document.getElementById('singleDiv').innerHTML = 
				document.getElementById('singleDiv').innerHTML +
				'<div id="singleBlock'+i+'">' +
			'<div class="site-section site-section-sm site-blocks-1">' +
				'<div class="container">' +
					'<div class="row">' +
						'<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4">' +
							'<div class="text">' +
								'<h2 class="text-uppercase"><%=product.getP_name()%></h2>' +
							'</div>' +
						'</div>' +
					'</div>' +
				'</div>' +
			'</div>' +
		'</div>'
		}
	}

	window.onload = test;

	function addToCart() {
		<%if(product.getP_up_no() == 101 ||product.getP_up_no() == 102){%>
		var largeset = document.getElementById("largesetQuantity");
		var largeCount = parseInt(largeset.value);
		
		var set = document.getElementById("setQuantity");
		var setCount = parseInt(set.value);
		
		var single = document.getElementById("singleQuantity");
		var singleCount = parseInt(single.value);
		
		window.location.href = 
			'McDelivery_cart_add_action.do?p_no1='+<%=largeSet.get(0).getP_no()%>+
			'&p_no2='+<%=set.get(0).getP_no()%>+
			'&p_no3='+<%=product.getP_no()%>+
			'&p_quantity1='+ largeCount+
			'&p_quantity2='+ setCount+
			'&p_quantity3='+ singleCount;
		<%}else {%>
		var single = document.getElementById("singleQuantity");
		var singleCount = parseInt(single.value);
		
		window.location.href = 
			'McDelivery_cart_add_action.do?p_no='+<%=product.getP_no()%>+
			'&p_quantity='+singleCount;
		<%}%>
		
	}

</script>
</head>
<body>

	<div class="site-wrap">
		<header class="site-navbar" role="banner">
			<div class="site-navbar-top">
				<div class="container">
					<div class="row align-items-center">

						<div
							class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-center">
						</div>
						<div
							class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-center"
							style="padding-left: 10px;">
							<a href="McDelivery_main.do" class="js-logo-clone"> <image
									src="images/maclogo.jpg" sizealt="" width="150" class="center"></a>
						</div>

						<div class="col-6 col-md-4 order-3 order-md-3 text-right">
							<div class="site-top-icons">

								<ul>
									<li><a href="McDelivery_mypage_jumunhistory.do"> <span
											class="icon icon-person"></span>
									</a></li>
									<li><a href="McDelivery_cart_form.do" class="site-cart">
											<span class="icon icon-shopping_cart"></span> <span
											class="count"></span>
									</a></li>
									<li class="d-inline-block d-md-none ml-md-0"><a href="#"
										class="site-menu-toggle js-menu-toggle"> <span
											class="icon-menu"></span>
									</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<nav class="site-navigation text-right text-md-center"
				role="navigation">
				<div class="container">
					<ul class="site-menu js-clone-nav d-none d-md-block">
						<li ><a href="McDelivery_main.do">Home</a></li>
						<li><a href="McDelivery_product_list.do">메뉴</a></li>
						<%
							if (session.getAttribute("member") == null) {
						%>
						<li><a href="McDelivery_login_form.do">로그인</a></li>
						<%
							} else {
						%>
						<li><a href="McDelivery_mypage_jumunhistory.do">마이페이지</a></li>
						<li><a href="McDelivery_logout_action.do">로그아웃</a></li>
						<%
							}
						%>
					</ul>
				</div>
			</nav>
		</header>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black"><%=product.getP_name()%></strong>
					</div>
				</div>
			</div>
		</div>
		<style type="text/css">
#img {
	padding-top: 20px;
	padding-left: 110px;
}
</style>
		<div class="site-section">
			<div class="container">
				<div class="row">
					<div id="img" class="col-md-6 col-md-offset-3">

						<img src="images/<%=product.getP_no()%>.png" width="150"
							alt="Image" class="img-fluid">
					</div>
					<div class="col-md-6">
						<br />
						<h2 class="text-black"><%=product.getP_name()%></h2>
						<p><%=product.getP_desc()%><br /> <br /> <br /> <br />
						</p>
					</div>
				</div>
				<hr>
				<br />
				<%
					if (product.getP_up_no() == 101 || product.getP_up_no() == 102) {
				%>
				<div class="row">
					<div class="col-md-3 col-md-offset-3 text-center">
						<div class="input-group mb-3" style="max-width: 120px;">
							<div class="input-group-prepend">
								<button id="largeMinus"
									class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
							</div>
							<input id="largesetQuantity" type="text"
								class="form-control text-center" value="0" placeholder=""
								aria-label="Example text with button addon"
								aria-describedby="button-addon1">
							<div class="input-group-append">
								<button id="largePlus"
									class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<p>라지세트</p>
					</div>
					<div class="col-md-4 text-right">
						<p>
							<strong id= "largeSetPrice" class="text-primary h4">₩ <%=largeSet.get(0).getP_price()%>
								&nbsp;
							</strong>
						</p>
					</div>
				</div>
				<hr>
				<br />

				<div class="row">
					<div class="col-md-3 col-md-offset-3">
						<div class="input-group mb-3" style="max-width: 120px;">
							<div class="input-group-prepend">
								<button id="setMinus" class="btn btn-outline-primary js-btn-minus"
									type="button">&minus;</button>
							</div>
							<input id="setQuantity" type="text"
								class="form-control text-center" value="0" placeholder=""
								aria-label="Example text with button addon"
								aria-describedby="button-addon1">
							<div class="input-group-append">
								<button id="setPlus" class="btn btn-outline-primary js-btn-plus"
									type="button">&plus;</button>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<p>세트</p>
					</div>
					<div class="col-md-4 text-right">
						<p>
							<strong id= "setPrice" class="text-primary h4">₩ <%=set.get(0).getP_price()%>
								&nbsp;
							</strong>
						</p>
					</div>
				</div>
				<hr>
				<br />
				<%
					}
				%>
				<div class="row">
					<div class="col-md-3 col-md-offset-3">
						<div class="input-group mb-3" style="max-width: 120px;">
							<div class="input-group-prepend">
								<button id="singleMinus"class="btn btn-outline-primary js-btn-minus"
									type="button">&minus;</button>
							</div>
							<input id="singleQuantity" type="text"
								class="form-control text-center" value="0" placeholder=""
								aria-label="Example text with button addon"
								aria-describedby="button-addon1">
							<div class="input-group-append">
								<button id="singlePlus" class="btn btn-outline-primary js-btn-plus"
									type="button">&plus;</button>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<p>단품</p>
					</div>
					<div class="col-md-4 text-right">
						<p>
							<strong id= "singlePrice" class="text-primary h4">₩ <%=product.getP_price()%>
								&nbsp;
							</strong>
						</p>
					</div>
				</div>
				<hr>
			</div>
			<!-- 여기서부터(라지세트) -->
			<div id='largeDiv'>

			</div>
			<!--여기까지-->

			<!-- 여기서부터(세트) -->
			<div id = 'setDiv'>
			
			</div>
			<!--여기까지-->

			<!-- 여기서부터(단품) -->
			<div id = "singleDiv">
			
			</div>
			
			<!--여기까지-->
			<div class="site-section">
				<div class="container">
					<div class="row">
						<div id="img" class="col-md-6 col-md-offset-3"></div>
						<p>
							<a href="javascript:addToCart();" class="buy-now btn btn-sm btn-primary">Add To Cart</a>
						</p>
					</div>
				</div>
			</div>
		</div>



		<footer class="site-footer border-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<div class="row">
							<div class="col-md-6 col-lg-4">
								<h3 class="footer-heading mb-4">메뉴</h3>
								<ul class="list-unstyled">
									<li><a href="#">버거&세트</a></li>
									<li><a href="#">스낵&사이드</a></li>
									<li><a href="#">음료</a></li>
									<li><a href="#">디저트</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<h3 class="footer-heading mb-4">기타정보</h3>
						<ul class="list-unstyled">
							<li><a href="#">이용약관</a></li>
							<li><a href="#">개인정보취급방침</a></li>
							<li><a href="#">고객문의</a></li>
						</ul>
					</div>
					<div class="col-md-6 col-lg-4">
						<div class="block-5 mb-5">
							<h3 class="footer-heading mb-4">팔로우</h3>
							<ul class="list-unstyled">
								<li class="address">페이스북</li>
								<li class="phone">인스타그램</li>
								<li class="email">유튜브</li>
							</ul>
						</div>

						<div class="block-7">
							<form action="#" method="post">
								<label for="email_subscribe" class="footer-heading">Subscribe</label>
								<div class="form-group">
									<input type="text" class="form-control py-4"
										id="email_subscribe" placeholder="Email"> <input
										type="submit" class="btn btn-sm btn-primary" value="Send">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script data-cfasync="false"
								src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="icon-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>

				</div>
			</div>
		</footer>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

</body>
</html>