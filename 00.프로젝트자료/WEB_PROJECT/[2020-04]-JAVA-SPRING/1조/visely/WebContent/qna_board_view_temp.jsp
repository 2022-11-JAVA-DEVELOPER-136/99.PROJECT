
<%@page import="com.itwill.dto.Board"%>
<%@page import="com.itwill.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>






<!DOCTYPE html>
<html lang="en">
<head>
<script src="js/board.js"></script>
</head>
<body>
	<!-- common_top_menu start -->


	<link rel='stylesheet' id='channel_io_dashicons-css'
		href='./wp-content/plugins/channel-io/css/channeliconscc2a.css?ver=4.8.3.01'
		type='text/css' media='all' />
	<link rel='stylesheet' id='dashicons-css'
		href='./wp-includes/css/dashicons.mincc2a.css?ver=4.8.3.01'
		type='text/css' media='all' />
	<link rel='stylesheet' id='wp-jquery-ui-dialog-css'
		href='./wp-includes/css/jquery-ui-dialog.mincc2a.css?ver=4.8.3.01'
		type='text/css' media='all' />
	<link rel='stylesheet' id='woocommerce-smallscreen-css'
		href='./wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreenee9a.css?ver=3.2.2'
		type='text/css' media='only screen and (max-width: 768px)' />
	<link rel='stylesheet' id='wp-pagenavi-css'
		href='./wp-content/plugins/wp-pagenavi/pagenavi-css44fd.css?ver=2.70'
		type='text/css' media='all' />
	<link rel='stylesheet' id='jquery-ui-smoothness-css'
		href='../../ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.mine899.css?ver=1.11.4'
		type='text/css' media='all' />
	<link rel='stylesheet' id='arconix-faq-css'
		href='./wp-content/plugins/arconix-faq/includes/css/arconix-faq95c7.css?t=1580295866&amp;ver=1.6.1'
		type='text/css' media='all' />
	<link rel='stylesheet' id='font-awesome-css'
		href='./wp-content/themes/wisely/inc/theme-options/cs-framework/assets/css/font-awesome.mincc2a.css?ver=4.8.3.01'
		type='text/css' media='all' />
	<link rel='stylesheet' id='bootstrap-css-css'
		href='./wp-content/themes/wisely/assets/css/bootstrap.min7433.css?ver=3.3.7'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-own-loader-css'
		href='./wp-content/themes/wisely/assets/css/loaderse2dc.css?ver=0.9.9'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-own-carousel-css'
		href='./wp-content/themes/wisely/assets/css/owl.carousel.min7793.css?ver=2.4'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-own-slider-css'
		href='./wp-content/themes/wisely/assets/css/slick-slider.minf24c.css?ver=1.6'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-own-popup-css'
		href='./wp-content/themes/wisely/assets/css/magnific-popup.mine2dc.css?ver=0.9.9'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-own-scrollbar-css'
		href='./wp-content/themes/wisely/assets/css/mcustom-scrollbar.minc6bd.css?ver=3.1.5'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-own-animate-css'
		href='./wp-content/themes/wisely/assets/css/animate8a54.css?ver=1.0.0'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-menu-styles-css'
		href='./wp-content/themes/wisely/assets/css/menuc2c0.css?ver=1.1.0.04'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-styles-css'
		href='./wp-content/themes/wisely/assets/css/stylesc2c0.css?ver=1.1.0.04'
		type='text/css' media='all' />
	<link rel='stylesheet' id='glidejs-styles-css'
		href='./wp-content/themes/wisely/assets/glidejs/dist/css/glide.core.min5152.css?ver=1.0'
		type='text/css' media='all' />
	<link rel='stylesheet' id='glidejs-styles-theme-css'
		href='./wp-content/themes/wisely/assets/glidejs/dist/css/glide.theme.min5152.css?ver=1.0'
		type='text/css' media='all' />
	<link rel='stylesheet' id='simple-calendar-styles-css'
		href='./wp-content/themes/wisely/assets/simple-calendar/simple-calendar8d64.css?ver=1580295866'
		type='text/css' media='all' />
	<link rel='stylesheet' id='raty-styles-css'
		href='./wp-content/themes/wisely/assets/raty/jquery.raty5152.css?ver=1.0'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-woocommerce-css'
		href='./wp-content/themes/wisely/inc/plugins/woocommerce/woocommercec2c0.css?ver=1.1.0.04'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-woocommerce-responsive-css'
		href='./wp-content/themes/wisely/inc/plugins/woocommerce/woocommerce-responsivec2c0.css?ver=1.1.0.04'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-responsive-css'
		href='./wp-content/themes/wisely/assets/css/responsivec2c0.css?ver=1.1.0.04'
		type='text/css' media='all' />
	<link rel='stylesheet' id='seese-google-fonts-css'
		href='http://fonts.googleapis.com/css?family=Noto+Sans%3A400%2C400i%2C500%2C600%7CLora%3A400%2C400i%2C500%2C600&amp;subset=latin'
		type='text/css' media='all' />

	<div class="hd-wrapper" style="">
		<div class="container-fluid">
			<div class="row">

				<div class="header_logo">
					<a href="product_list.jsp"> <svg
							xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg"
							viewBox="0 0 123 47" width="100%" height="100%">
<g>
									<path
								d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"></path></g></svg>
						<span> 바이즐리 :: Visely </span>
					</a>
				</div>

				<div class="seese-mainmenu hidden-xs">
					<ul id="seese-menu" class="main-navigation">

						<li id="menu-item-28"
							class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-18 current_page_item menu-item-28 seese-dropdown-menu">
							<a href="product_list.jsp">상품 리스트</a>
						</li>

						<li id="menu-item-27"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-27 seese-dropdown-menu">
							<a href="qna_board_list.jsp">고객게시판</a>
						</li>
						<!--
					<li id="menu-item-26"
						class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26 seese-dropdown-menu"><a
						href="https://www.wiselyshave.com/brand-story/">브랜드 스토리</a></li>
-->
					</ul>
				</div>

				<div class="seese-topright" id="seese-topright">
					<ul>
						<!--
					<li class="hidden-xs"><a
						href="https://www.wiselyshave.com/help/">고객센터</a></li>
-->



						<li class="hidden-xs"><a href="member_modify_form.jsp"
							style="color: blue">a님</a></li>
						<li class="hidden-xs"><a href="order_list.jsp"
							style="color: green;">마이페이지</a></li>
						<li class="hidden-xs"><a href="member_logout_action.jsp"
							style="color: red;">로그아웃</a></li>


						<li><a href="cart_view.jsp" id="seese-cart-trigger"> <img
								src="./res/cart_icon.png" alt="장바구니" width="30"
								class="hidden-xs"> <img src="./res/cart_icon_grey.png"
								alt="장바구니" width="30" class="hidden-sm hidden-md hidden-lg">
						</a></li>
					</ul>
				</div>
				<div class="hd-bar"></div>

			</div>
		</div>

		<style>
#seese-mobilemenu .mobileSide {
	margin-left: -100%;
}
</style>

		<script>
			jQuery(document).ready(function($) {
				$("#btn-mobile-menu").click(function(e) {
					e.preventDefault();
					$("#seese-mobilemenu .lightBoxBg").show();
					$("#seese-mobilemenu .mobileSide").show();
					$("#seese-mobilemenu .mobileSide").animate({
						'margin-left' : '0'
					}, 500);
				});
				$("#btn-mobile-close").click(function(e) {
					e.preventDefault();
					$("#seese-mobilemenu .mobileSide").animate({
						'margin-left' : '-100%'
					}, 500, function() {
						$(this).hide();
						$("#seese-mobilemenu .lightBoxBg").hide();
					});
				});
				$("#seese-mobilemenu .lightBoxBg").click(function(e) {
					e.preventDefault();
					if ($(this).css("display") != "none") {
						$("#btn-mobile-close").click();
					}
				});

				// mobile navigation links
				$("#seese-mobilemenu ul li.m_store").click(function(e) {
					e.preventDefault();
					location.href = "/store/";
				});
				$("#seese-mobilemenu ul li.m_subscription").click(function(e) {
					e.preventDefault();
					location.href = "/subscription/";
				});
			});
		</script>

		<div class="container" id="seese-mobilemenu">
			<div class="slicknav_menu">
				<a id="btn-mobile-menu" aria-haspopup="true" tabindex="0"
					class="slicknav_btn slicknav_collapsed"> <span
					class="slicknav_menutxt"></span> <span
					class="slicknav_icon slicknav_no-text"> <span
						class="slicknav_icon-bar"></span> <span class="slicknav_icon-bar"></span>
						<span class="slicknav_icon-bar"></span>
				</span>
				</a>
			</div>
			<ul class="mobileSide hidden-sm hidden-md hidden-lg"
				style="display: none;">
				<a href="https://www.wiselyshave.com/store/#" id="btn-mobile-close"
					class="btn-close taphover" style="left: 22px;"></a>
				<li
					style="padding: 80px 20px 10px 20px; font-size: 20px; font-family: &amp; amp;">

					<div style="line-height: 56px;">
						<div style="margin-left: 10px;">
							<a class="taphover" href="https://www.wiselyshave.com/store/">상품
								리스트</a>
						</div>
						<!-- 
					<div style="margin-left: 10px;">
						<a class="taphover"
							href="https://www.wiselyshave.com/subscription/">정기구매 신청</a>
					</div>
					<div style="margin-left: 10px;">
						<a class="taphover"
							href="https://www.wiselyshave.com/brand-story/">브랜드 스토리</a>
					</div>
					<div style="margin-left: 10px;">
						<a class="taphover" href="https://www.wiselyshave.com/help/">고객센터</a>
					</div>
-->
					</div>

					<div style="height: 35px;"></div>

					<div style="line-height: 46px;">
						<div
							style="border: 1px solid #dddddd; border-radius: 3px; text-align: center;">
							<a class="taphover" href="member_login_form.jsp">로그인</a>
						</div>
					</div>
				</li>
				<style>
a.taphover:hover, a.taphover.hover {
	color: #0096ff;
}
</style>

			</ul>
			<div class="lightBoxBg hidden-sm hidden-md hidden-lg"></div>
		</div>

	</div>
	<!-- common_top_menu end -->



	<style>
	/*
* {
	box-sizing: initial;
}

body {
	width: 60%;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	margin: 10px, 10px, 10px, 10px padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=button] {
	background-color: #007bff;
	color: #fff;
	margin: 5px;
	border: none;
	border-color: #007bff;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

input[type=button]:hover {
	background-color: #45a049;
}

.container {
	width: 80%;
	border-radius: 5px;
	padding: 20px;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}


.row:after {
	content: "";
	display: table;
	clear: both;
}

#btn1, #btn2, #btn3, #btn4 {
	width: 100px;
}
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
*/
</style>


	<br />
	<br />

	<h2>문의글</h2>

	<div class="container">

		<form name='f' class="form-inline">
			<div class="row">
				<div class="col-25">
					<label for="fname">번호</label>
				</div>
				<div class="col-75">
					<input type="text" id="boardno" name="boardno" value='175' readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">제목</label>
				</div>
				<div class="col-75">
					<input type="text" id="boardtitle" name="boardtitle"
						value='Q: 사이트 거지같네' readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="country">글쓴이</label>
				</div>
				<div class="col-75">
					<input type="text" id="boardid" name="boardid"
						value='hero@naver.com' readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="subject">내용</label>
				</div>
				<div class="col-75">
					<textarea id="boardcontent" name="boardcontent"
						style="height: 200px" readonly>발로 만들었냐!</textarea>
				</div>
			</div>
			<div class="row">






				<div>
					<span> <a href='javascript:moveBoardList()'><h2>목록</h2></a>



					</span>
				</div>
			</div>
		</form>

	</div>

	<br />
	<br />

	<!-- common_footer start -->
	<!-- Footer Start -->
	<footer class="seese-footer">
		<!-- Footer Widgets Start -->
		<div class="center-block">
			<div class="container-fluid">
				<div class="row">
					<div class="ft-left col-sm-4 col-md-4 col-lg-4">
						<ul class="ft-sns">
							<li><a href="http://pf.kakao.com/_xkFAmxl" target="_blank"><i
									class="fa fa-comment fa-2x" aria-hidden="true"></i></a></li>
							<li><a href="https://www.facebook.com/wiselyshave"
								target="_blank"><i class="fa fa-facebook-official fa-2x"
									aria-hidden="true"></i></a></li>
							<li><a href="https://www.instagram.com/wiselyshave"
								target="_blank"><i class="fa fa-instagram fa-2x"
									aria-hidden="true"></i></a></li>
						</ul>
						<div class="footer_logo hidden-xs">
							<a href="product_list.jsp"> <svg
									xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg"
									viewBox="0 0 123 47" id="logo" width="100%" height="100%">
<g>
									<path
										d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z" /></g></svg>
							</a>
						</div>
					</div>
					<div
						class="ft-right col-xs-12 col-sm-8 col-sm-offset col-md-8 col-md-offset col-lg-8 col-lg-offset">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class=" seese-widget footer-1-widget widget_nav_menu">
								<ul id="menu-footer-menu" class="main-navigation">
									<li id="menu-item-3969"
										class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3969 seese-dropdown-menu"><a
										href="#privacy">개인정보처리방침</a></li>
									<li id="menu-item-3971"
										class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3971 seese-dropdown-menu"><a
										href="#terms">이용약관</a></li>
									<li id="menu-item-3972"
										class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3972 seese-dropdown-menu"><a
										href="#guide">이용안내</a></li>
									<li id="menu-item-2724517"
										class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2724517 seese-dropdown-menu"><a
										href="#career">채용</a></li>
								</ul>
								<div class="clear"></div>
							</div>
							<!-- end widget -->
							<div class=" seese-widget footer-1-widget widget_text">
								<div class="textwidget">
									<p>
										<b>주식회사 와이즐리컴퍼니</b> 서울특별시 성동구 왕십리로 125, 8층 801호(성수동1가, KD타워)<br />
										<b>대표자:</b> 김동욱 <b>사업자등록번호:</b> 344-88-00965 <a
											class="underline wisely-ext-lightbox" href="#company-info"
											rel="noopener">사업자정보확인</a><br /> <b>통신판매업신고번호:</b>
										2019-서울성동-01739 <b>개인정보보호책임자:</b> 김윤호 <a class="link-email"
											href="mailto:yhkim@wiselyshave.com" target="_blank"
											rel="noopener">yhkim@wiselyshave.com</a><br /> <b>전화번호:</b>
										<a class="link-email" href="tel:1833-9133">1833-9133</a> <b>E-mail:</b>
										<a class="link-email" href="mailto:help@wiselyshave.com"
											target="_blank" rel="noopener">help@wiselyshave.com</a>
									</p>
									<div>
										고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 나이스페이먼츠(주)의 구매안전서비스를
										이용하실 수 있습니다. <a class="underline wisely-ext-lightbox"
											href="#nicepay" rel="noopener">서비스 가입사실 확인</a>
									</div>
									<div>
										와이즐리는 서비스 품질 보증을 위하여 <strong>개인정보배상책임보험</strong>과 <strong>생산물피해보상보험</strong>에
										가입하였습니다.
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<!-- end widget -->
						</div>
						<div class="seese-copyright col-xs-12">
							<div class="">Copyright &copy;2020 WISELY. All rights
								reserved.</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		</div>
		</div>
		<!-- Footer Widgets End -->
	</footer>
	<!-- Footer End-->
	<!-- common_footer end -->
</body>
</html>