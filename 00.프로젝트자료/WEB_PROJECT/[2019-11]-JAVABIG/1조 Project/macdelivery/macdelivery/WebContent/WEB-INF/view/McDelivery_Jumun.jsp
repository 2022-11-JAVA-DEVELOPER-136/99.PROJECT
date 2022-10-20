<%@page import="java.util.HashMap"%>
<%@page import="com.itwill.store.model.Store"%>
<%@page import="com.itwill.store.model.StoreService"%>
<%@page import="com.itwill.product.model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.product.model.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int cartCount=0;
 	if(session.getAttribute("member") != null){
 		cartCount =(int)request.getAttribute("cartCount");
 	}
%>
<%
ArrayList<HashMap> itemList = (ArrayList<HashMap>) request.getAttribute("cartList");
session.setAttribute("cartList",itemList);
%>
<!DOCTYPE html>
<html>
<head>
<title>Mcdonald</title>
<script>
	function jumunAction() {
		f.action = "McDelivery_jumun_detail_action.do";
		f.method='POST';
		f.submit();
	}
</script>
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
<link rel="stylesheet" href="css/mypageAddress.css">
</head>
<body>
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
                        <%if(session.getAttribute("member") != null){ %>
                           <li><a href="McDelivery_mypage_myinfo_form.do"> <span
                                 class="icon icon-person"></span>
                           </a></li>
                           <li><a href="McDelivery_cart_form.do" class="site-cart">
                                 <span class="icon icon-shopping_cart"></span> <span
                                 class="count"><%=cartCount %></span>
                           </a></li>
                           <%}else{ %>
                           <li><a href="McDelivery_login_form.do"> <span
                                 class="icon icon-person"></span>
                           </a></li>
                           <li><a href="McDelivery_login_form.do" class="site-cart">
                                 <span class="icon icon-shopping_cart"></span> 
                           </a></li>
                           <%} %>
                           
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
					<a href="index.html">MyPage</a> <span class="mx-2 mb-0">/</span> <strong
						class="text-black">주문 내역</strong>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section">
		<div class="container">

			<div class="row mb-5">
				<!-- 여기서부터 -->
				<div class="col-md-12 order-2">
					<div>
						<h3>주문 내역</h3>
						<hr>
					</div>
					<div class="site-section">
			<%for(int i = 0 ; i<itemList.size();i++){
				HashMap cartList = itemList.get(i);
			
				%>
					
						<div class="container">
							<div class="row">
								<div id="img" class="col-md-6 col-md-offset-3"
									style="padding-left: 120px;">

									<img src="images/<%=cartList.get("p_no") %>.png" width="150" alt="Image"
										class="img-fluid">
								</div>
								<div class="col-md-6">
									<br />
									<h4 class="text-black"><%=cartList.get("p_name") %></h4>
									<h5>
										<%=cartList.get("p_price") %>원 <br /> <br /> <br /> <br />
									</h5>
								</div>
							</div>
						</div>
					
<%} %>
</div>
					<hr>
					<br />

					<div class="wrapper">
						<form class="form-signin" name="f" method="post">
							<h4>정보입력</h4>
							<div class="row">
								<div class="col-md-2" style="font-style: medium;">
									<p>받으실 분</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control" name="receiver"
										value="" placeholder="" required="" autofocus="" />
								</div>
							</div>
							<br />

							<div class="row">
								<div class="col-md-2" style="font-style: medium;">
									<p>주소</p>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control" name="j_address"
										value="" placeholder="" required="" autofocus="" />
								</div>
							</div>
							<br />

							<div class="row">
								<div class="col-md-2" style="font-style: medium;">주문매장</div>
								<div class="col-md-2">
									<select name="s_name">
										<option value="">지점 선택</option>
										<option value="역삼점">역삼점</option>

									</select>
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-md-2" style="font-style: medium;">
									<p>연락처</p>
								</div>
								<div class="col-md-10">
									<input type="text" class="form-control" name="j_phone" value=""
										placeholder="" required="" autofocus="" />
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-md-2" style="font-style: medium;">
									<p>배송 시 요청사항</p>
								</div>
								<div class="col-md-10">
									<input type="text" class="form-control" name="j_demand"
										value="" placeholder="" required="" autofocus="" />
								</div>
							</div>
						</form>

					</div>
					<br /> <br /> <br />
					<div class="row">
						<div class="col-md-12 margin-auto">
							<div class="col-md-3 mb-6 mb-md-0">
								<button onclick="jumunAction();"
									class="btn btn-primary btn-sm btn-block"
									style="margin-left: 400px;">결제하기</button>
							</div>
						</div>
					</div>
					<!-- 여기까지 -->


				</div>
			</div>
		</div>
</body>
</html>