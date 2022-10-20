<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kor">
  <head>
    <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
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
						<li class="has-children active"><a href="McDelivery_main.do">Home</a></li>
						<li><a href="McDelivery_product_list.do">메뉴</a></li>
						<li><a href="#">고객문의</a></li>
						<%
							if (session.getAttribute("member") == null) {
						%>
						<li><a href="McDelivery_login_form.do">로그인</a></li>
						<%
							} else {
						%>
						<li><a href="McDelivery_mypage_jumunhistory.do">마이페이지</a></li>
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
          <div class="col-md-12 mb-0"><a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Contact</strong></div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <span class="icon-check_circle display-3 text-success"></span>
            <h2 class="display-3 text-black">감사합니다.</h2>
            <p class="lead mb-5">주문이 성공적으로 완료되었습니다.</p>
            <p><a href="McDelivery_main.do" class="btn btn-sm btn-primary">메인으로</a></p>
          </div>
        </div>
      </div>
    </div>

  	<footer class="site-footer border-top">
					<div class="container">
						<div class="row">
							<div class="col-lg-4 mb-5 mb-lg-0">
								<div class="row">
									<div class="col-md-12">
										<h3 class="footer-heading mb-4">메뉴</h3>
									</div>
									<div class="col-md-6 col-lg-4">
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
										document
												.write(new Date().getFullYear());
									</script>
									All rights reserved | This template is made with <i
										class="icon-heart" aria-hidden="true"></i> by <a
										href="https://colorlib.com" target="_blank"
										class="text-primary">Colorlib</a>
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