<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.service.OrderDetailService"%>
<%@page import="com.itwill.dao.OrderDetailDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>
<%
	int count=1;
	String loginId = (String)session.getAttribute("loginId");
	String onoStr = request.getParameter("ono");
	System.out.print(onoStr);
	int oNo = Integer.parseInt(onoStr);
%>
<%
	OrderDetailService ordS = OrderDetailService.getInstance();
	ArrayList<Map> orList = ordS.findOrderResult(oNo);
%>


<!DOCTYPE html>
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<link rel="profile" href="http://gmpg.org/xfn/11"/>

<meta name="google-site-verification" content="Kd_LFdQNt5vRWUmO9Qt2ovvL9BdZUWBB-lf8_E5gcfg" />

<script>var dataLayer=[];</script>
<script>
	dataLayer.push({
		"site_type": "d"
	});
</script>
<script>
	dataLayer.push({
		"sjk_user_number": "173467",
		"sjk_user_diplay_name": "이준수",
		"sjk_user_email": "wnstn1342@naver.com"
	});
</script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<title>주문내역 조회: 주문상세내역 &ndash; 와이즐리 :: Wisely</title>

	</head>

<body class="page-template-default page page-id-3183 page-child parent-pageid-2988 logged-in">

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KNJCD96"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->





<		      <div class="seese-specialPage">
		        <a href="">
		          		        </a>
		      </div>
		    
    <!-- Seese Wrap Start -->
    <div id="seese-wrap" class="seese-fixed-header">

	    	      <header class="seese-header" style="">
	        


<!-- Menubar Starts -->
<jsp:include page="common_top_menu.jsp"/>
<!-- Menubar End -->
	      </header>
	    
	    <!-- Seese Wrapper Start -->
	    <div class="seese-wrapper">


<div class="seese-extra-width">
  <div class="seese-background seese-background-outer">
	<div class="mypage">
	  <div class="seese-background-inner  seese-container-inner" style="">

			<!-- Content Col Start -->
			
					<div class="sidebar col-xs-12 col-sm-4 col-md-4 col-lg-4">
						<div class="mypage-sidebar pull-right">
							

<ul class="mypage-sidemenu hidden-xs">
	<div class="title">마이페이지</div>
	<li class="active"><a href="order_list.jsp">주문내역 조회</a></li>
	<li class=""><a href="member_modify_form.jsp">정보 수정</a></li>
	<li><a href="logout.jsp">로그아웃</a></li>
</ul>

<div id="mypage-mobile-menu-container" class="hidden-sm hidden-md hidden-lg">
<!-- 3566183  -->	
				<div style="font-size:20px; color:#333333; margin-top:20px; font-family:'notokr-medium';">주문 상세내역</div>
		<div style="position:absolute; top:3px; left:0px; padding:20px;">
			<a href="javascript:history.go(-1);">
				<img src="/wp-content/uploads/icons/ic-back@3x.png" style="width:25px;">
			</a>
		</div>
			
<!--
	<button class="btn btn-dropdownmenu dropdown-toggle" type="button" id="mypage-mobile-menu" data-toggle="dropdown" aria-expanded="true">
		<span id="mypage-mobile-menu-selected" class="pull-left"></span> 
		<i class="fa fa-angle-down pull-right" aria-hidden="true" style="border-left:1px solid #eeeeee; padding-left:15px;"></i>
	</button>
	<ul class="dropdown-menu" role="menu" aria-labelledby="mypage-mobile-menu" style="position:absolute; left:50%; margin-left:-115px; top:90px;">
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="/mypage/" menu-type="menu2">주문내역 조회</a>
		</li>
		<li role="presentation" class="divider"></li>
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="/mypage/settings" menu-type="menu1">정기구매 관리</a>
		</li>
		<li role="presentation" class="divider"></li>
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="/mypage/myinfo/" menu-type="menu3">정보 수정</a>
		</li>
		<li role="presentation" class="divider"></li>
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="https://www.wiselyshave.com/wisely-login/?action=logout&amp;_wpnonce=7cfaff9f4d">로그아웃</a>
		</li>
	</ul>
-->
</div>


<script>
jQuery(".deep_dive").click(function(e){
	jQuery("#pleaseWait").show();
	jQuery("#bg-lb-notification").show();
});

jQuery(document).ready(function($){
	jQuery(".mypage-title a.btn-arrow-left").click(function(e){
		jQuery("#pleaseWait").show();
		jQuery("#bg-lb-notification").show();
	});
});
</script>						</div>
					</div>
					
					<div class="mypage-content col-xs-12 col-sm-8 col-md-8 col-lg-8">
					
						<div class="subsection orderList">
						  <div class="subsection-wrapper mypage840">
							  <div class="section-content" style="padding:50px 0px;">
								  <div class="subsection-text">
									
									<!-- <ul class="tabBar orderList">
										<li class=""><a href="/mypage/orders-on-process/">진행중</a></li>
										<li class="selected"><a href="/mypage/orders-done/">배송 완료</a></li>
									</ul> -->
									<div class="mypage-title col-xs-12 col-sm-12 col-md-12 hidden-xs" style="margin-top:0px !important;">
										<a href="./order_list.jsp" class="btn-arrow-left" style="font-size:20px;">
											<i class="fa fa-angle-left" aria-hidden="true"></i>
										</a>
										<div style="text-align:center; color:#333; font-family:'Spoqa Han Sans'; font-size:30px;">주문 상세내역</div>
									</div>
									
									<ul class="orderDetailBox" style="font-family:'Spoqa Han Sans';">



							
									
										<style>
										@media (max-width:767px) {
											.section-content { padding: 10px 20px 50px 20px !important; }
											.item_price { display:block !important; margin-top:2px !important; float:unset !important; }
											.item_lists { padding-bottom:10px !important; margin-bottom:10px !important; }
											.more_info_area { margin-left:-20px; margin-right:-20px; margin-bottom:-50px !important; padding-bottom:80px !important; }
										}
										</style>
										<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
										<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>

										<div style="border-bottom:1px solid #eeeeee; padding-left:0px; padding-bottom:5px; margin-top:10px; margin-bottom:25px; color;#999999;">
										</div>

										<div style="border-bottom:1px solid #eeeeee; padding-bottom:20px; margin-bottom:25px;">
											<div style="float:left; font-family:'Spoqa Han Sans'; letter-spacing:-1px; font-weight:bold; font-size:18px; color:#0096ff; padding-left:10px;">완료됨</div>
											<div style="float:right;">
																								<div style="display:inline-block; border:1.5px solid #C1E5FF; padding:5px 15px; border-radius:5px; font-size:12px; letter-spacing:-1px; color:#0096ff; cursor:pointer;" class="btn-refund-exchange-order" data-order-id="3566183">교환/반품 신청</div>
																							</div>
											<div style="clear:both;"></div>
										</div>

							<%for(Map map : orList) {%>
											<div class="item_lists" style="border-bottom:1px solid #eeeeee; padding-bottom:15px; margin-bottom:15px;">
											<div style="display:table; width:100%;">
												<div style="display:table-cell; vertical-align:middle; width:120px; padding:20px 20px;">
													<img src="./image/<%=map.get("imgName") %>" style="width:100%; ">
												</div>
												<div style="display:table-cell; vertical-align:middle;">
													<div style="display:inline-block;">
														<div style="display:inline-block; background-color:#9db1bf; border-radius:10px; padding:2px 10px; font-size:12px; color:#ffffff; font-family:'Spoqa Han Sans';">
																													</div>
														<div style="font-size:20px; color:#333333; font-family:'Spoqa Han Sans'; letter-spacing:-1px;">
															<%=map.get("pName") %>												</div>
													</div>

													<div class="item_price" style="display:inline-block; font-family:'Spoqa Han Sans'; color:#333333; font-size:20px; margin-right:10px; float:right;">
														<%=map.get("pPrice")%> / <%=map.get("oDqty")%>개
													</div>
												</div>
											</div>
										</div>
									<%} %>
									<%for(Map map : orList){ %>

									
																				<div style="text-align:right; padding-top:15px; margin-right:10px;">
											<div style="display:inline-block; width:80px; font-family:'Spoqa Han Sans'; font-size:18px; text-align:left;">배송비</div>
											<div style="display:inline-block; width:80px; font-family:'Spoqa Han Sans'; font-size:18px; color:#0096ff;">무료배송</div>
										</div>

										
										<div style="padding:20px 30px; background-color:#f6f6f6; border-radius:4px; margin-top:40px; margin-bottom:40px;">
											<div style="float:left; font-family:'Spoqa Han Sans'; font-size:18px; color:#999999; padding-top:5px;">결제금액</div>
											<div style="float:right; font-family:'Spoqa Han Sans'; font-size:22px; color:#333333; font-weight:bold;"><%=map.get("oAmount") %>원</div>
											<div style="clear:both;"></div>
										</div>



																				<input type="hidden" id="get_payment_method_3566183" name="get_payment_method" value="card" />
										<input type="hidden" id="get_order_stat" name="get_order_stat" value="completed" />
										<div class="more_info_area" style="padding:40px 30px 50px; background-color:#f6f6f6; margin-top:40px; margin-bottom:40px;">
																						<div style="margin-bottom:15px;">
												<div style="display:inline-block; font-family:'Spoqa Han Sans'; font-size:18px; color:#666666;">결제정보</div>
											</div>
											<div style="display:table-row;">
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">결제수단</div>
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;"><%=map.get("oCharge") %> 결제</div>
											</div>
											
											<div style="height:1px; border-top:1px solid #e7e7e7; margin:30px 0px;"></div>

											<div style="margin-bottom:15px;">
												<div style="display:inline-block; font-family:'Spoqa Han Sans'; font-size:18px; color:#666666;">배송정보</div>
																							</div>
											<li class="shipping-info" style="margin-bottom:10px;">
												<div style="display:table-row;">
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">이름</div>
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;"><%=map.get("aName") %></div>
												</div>
												<div style="display:table-row;">
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">휴대전화</div>
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;"><%=map.get("aPhone") %></div>
												</div>
												<div style="display:table-row;">
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">배송주소</div>
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;"><%=map.get("address") %></div>
												</div>
												<div style="display:table-row;">
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">배송메모</div>
													<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;"><%=map.get("aMemo") %></div>
												</div>
											</li>
											<div style="clear:both;"></div>

											
											

																						<div style="height:1px; border-top:1px solid #e7e7e7; margin:10px 0px;"></div>

											<div style="display:table-row;">
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">택배사</div>
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;">CJ대한통운</div>
											</div>
											<div style="display:table-row;">
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">송장번호</div>
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;">354238371826</div>
											</div>
											<div style="display:table-row;">
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#999999; width:80px;">배송조회</div>
												<div style="display:table-cell; padding:4px 0px; font-family:'Spoqa Han Sans'; font-size:16px; color:#666666; letter-spacing:0px;">
													<a href="https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT2&invc_no=354238371826" target="_blank">
														<div style="display:inline-block; padding:5px 15px; border-radius:5px; font-size:12px; letter-spacing:-1px; background-color:#0296ff; color:#ffffff; cursor:pointer;">배송조회</div>
													</a>
												</div>
											</div>
																					</div>
										
		
















									</ul>

								  </div>
							  </div>
						  </div>
						</div>
					  
				  </div>
				  <%count++;
				  	if(count == 2){
				  		break;
				  	}
				  %>
				  	<%} %>
		<!-- Content Col End -->
		  
	  </div>
	</div>
  </div>
</div>


<style>
</style>

<div id="lb-cancel-order" class="lightBox" style="display:none;" data-order-id="">
	<a class="btn-close"></a>
	<p class="lb-message"></p>
	<div id="vbank_refund_info" style="display:none; text-align:center; margin-bottom:20px;">
		<div style="width:300px; display:inline-block; position:relative;">
			<div style="margin-bottom:10px;">
				환불받으실 입금가능한 계좌정보를 입력해주세요.
			</div>
			<div style="margin:5px 0px; text-align:left;">
				<label style="width:60px;">은행명</label>
				<input type="text" name="refund_bank" style="padding:5px; width:235px;" />
			</div>
			<div style="margin:5px 0px; text-align:left;">
				<label style="width:60px;">계좌번호</label>
				<input type="text" name="refund_account" style="padding:5px; width:235px;" />
			</div>
			<div style="margin:5px 0px; text-align:left;">
				<label style="width:60px;">예금주명</label>
				<input type="text" name="refund_account_owner" style="padding:5px; width:235px;" />
			</div>

			<div id="refund_msg_area" style="display:none; position:absolute; top:-10px; left:0px; border:1px solid #f5c6cb; background-color:#f8d7da; color:#721c24; width:100%; height:30px; padding:5px; font-size:14px; border-radius:2px;">
				<div id="refund_msg"></div>
			</div>
		</div>
	</div>
	<div class="lastbtnBox">
		<a class="btn-strokrdarkgrey btn-yes"><span>예</span></a>&nbsp;&nbsp;&nbsp; 
		<a class="btn-strokrdarkgrey btn-no"><span>아니오</span></a>
	</div>
</div>

<div id="lb-refund-exchange-order" class="lightBox" style="display:none;" data-order-id="">
	<a class="btn-close"></a>
	
	<div class="lb-section-types">
		<a class="btn-orderBlue btn-type" data-type="exchange">교환신청</a> 
		<a class="btn-orderGrey btn-type" data-type="refund">반품신청</a>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>

	<div style="text-align:center; margin-bottom:30px;">
		<div class="dropdown" style="display:inline-block; padding-bottom:0px;">
			<button id="dropdown-refund-exchange-reason" type="button"
					class="btn btn-dropdownmenu dropdown-toggle" 
					data-toggle="dropdown" aria-expanded="true">
				<span id="txt-reason" data-selected-value="">사유 선택</span>
				<i class="fa fa-angle-down pull-right" aria-hidden="true"></i>
			</button>
			<ul class="dropdown-menu" role="menu" style="width:100%; top:auto;">
							<li role="presentation"><a role="menuitem" tabindex="-1" data-value="제품 불량">제품 불량</a></li>
								<li role="presentation" class="divider"></li>
											<li role="presentation"><a role="menuitem" tabindex="-1" data-value="단순 변심">단순 변심</a></li>
								<li role="presentation" class="divider"></li>
											<li role="presentation"><a role="menuitem" tabindex="-1" data-value="기타">기타</a></li>
										</ul>
			<div class="clear"></div>
			<textarea id="txt-reason-etc" style="display:none; width:100%; margin-top:10px; padding:10px;" placeholder="사유를 작성해 주세요."></textarea>

			<div id="refund_account_area" style="display:none; padding-top:20px;">
				<div style="padding:5px; text-align:left;">
					<label style="width:60px; font-weight:500; color:#000000;">은행명</label>
					<input style="padding:5px; width:155px;" type="text" name="refund_bank" />
				</div>
				<div style="padding:5px; text-align:left;">
					<label style="width:60px; font-weight:500; color:#000000;">계좌번호</label>
					<input style="padding:5px; width:155px;" type="text" name="refund_account" />
				</div>
				<div style="padding:5px; text-align:left;">
					<label style="width:60px; font-weight:500; color:#000000;">예금주명</label>
					<input style="padding:5px; width:155px;" type="text" name="refund_account_owner" />
				</div>
			</div>
		</div>
	</div>

	<div class="description">
		<ul class="lv1">
			<li>고객센터에서 검토 후, 교환 및 반품 절차를 전화로 안내드릴 예정입니다.</li>
			<li>아래와 같은 경우 교환/반품이 제한될 수 있습니다.
				<ul class="lv2">
					<li>고객의 사용, 시간 경과에 의하여 상품의 가치가 현저히 감소한 경우</li>
					<li>구성품의 분실, 누락 및 파손으로 상품의 가치가 현저히 감소한 경우</li>
					<li>고객 변심의 경우 왕복 배송비 발생 가능</li>
				</ul>
			</li>
		</ul>
	</div>

	<div class="lastbtnBox">
		<a class="btn-fillgrey btn-save"><span>저장</span></a>
	</div>
</div>


<div id="lb-change-shipping-info" class="lightBox" style="display:none;" data-order-id="">
	<a class="btn-close"></a>
	<p class="lb-message"></p>
	<div class="lastbtnBox">
		<a class="btn-strokrdarkgrey btn-yes"><span>예</span></a>&nbsp;&nbsp;&nbsp; 
		<a class="btn-strokrdarkgrey btn-no"><span>아니오</span></a>
	</div>
</div>


<script>
window.onload = function(){
    jQuery(document).ready(function($){

		/**
		|----------------------------------------------------
		| "cancel-order" related functions & events
		|----------------------------------------------------
		|*/

		function close_cancel_order_lb(){
			var l = $("#lb-cancel-order");
			var bg = $("#bg-lightbox-product-detail");
			l.fadeOut();
			bg.fadeOut();
			// clear attributes
			l.attr("data-order-id", "");
		}
		function show_cancel_order_lb(id, msg){
			var msg = "주문을 취소하시겠습니까?";
			var oid = $(this).attr("data-order-id");
			var l = $("#lb-cancel-order");
			var bg = $("#bg-lightbox-product-detail");

			if( oid == undefined ){ oid = id; }
			var get_payment_method = $("#get_payment_method_"+oid).val();
			$("#vbank_refund_info").hide();
			$("input[name='refund_bank']").val("");
			$("input[name='refund_account']").val("");
			$("input[name='refund_account_owner']").val("");

			var get_order_stat = $("#get_order_stat").val();
			if( get_payment_method == "vbank" && get_order_stat != "awaiting-vbank" ){
				$("#vbank_refund_info").show();
			}

			l.css("position", "fixed");
			l.css("top", ($(window).height() - l.height())/2);
			l.find(".lb-message").text(msg);
			l.fadeIn();			
			bg.fadeIn();
			// set attributes
			l.attr("data-order-id", id);
		}

		/** show "cancel-order" notification */
		$(".btn-cancel-order").click(function(){
			var order_id = $(this).attr("data-order-id");
			show_cancel_order_lb(order_id);
		});

		/** close lightbox */
		$("#lb-cancel-order .btn-close, #lb-cancel-order .btn-no").click(function(){
			close_cancel_order_lb();
		});

		/** do cancel-order */
		$("#lb-cancel-order .btn-yes").click(function(){
			var order_id = $(this).parent().parent().attr("data-order-id");

			// 가상계좌 주문취소 환급계좌정보 확인
			var get_payment_method = $("#get_payment_method_"+order_id).val();
			var refund_bank = $("input[name='refund_bank']").val();
			var refund_account = $("input[name='refund_account']").val();
			var refund_account_owner = $("input[name='refund_account_owner']").val();
			var get_order_stat = $("#get_order_stat").val();

			if( get_payment_method == "vbank" && get_order_stat != "awaiting-vbank" ){
				if(refund_bank == ""){ show_refund_form_validate_msg("refund_bank"); return false; }
				if(refund_account == ""){ show_refund_form_validate_msg("refund_account"); return false; }
				if(refund_account_owner == ""){ show_refund_form_validate_msg("refund_account_owner"); return false; }
			}

			$("#ajax-loading-div").fadeIn();

			$.post(
				"/wp-admin/admin-ajax.php", {
					action: 'mypage_cancel_order',
					order_id: order_id,

					get_payment_method: get_payment_method,
					refund_bank: refund_bank,
					refund_account: refund_account,
					refund_account_owner: refund_account_owner

				}, function(response){
					$("#ajax-loading-div").fadeOut();
					close_cancel_order_lb();

					if( response.status == "exported" ){
						$.show_notification_msg_lightbox("출고중인 주문을 취소하시려면 고객센터로 문의 주세요.");
					}else{
						$("#order-" + order_id).remove();
						document.location.reload();
						//$.show_notification_msg_lightbox("주문이 취소되었습니다.");
					}
				}, "json");
		});

		function show_refund_form_validate_msg( types )
		{
			$("#refund_msg").html("환불 정보를 모두 입력해 주세요.");
			$("#refund_msg_area").fadeIn('fast', function () {
				$(this).delay(3000).fadeOut('slow');
			});
			$("input[name='"+types+"']").focus();
		}

		/**
		|----------------------------------------------------
		| "refund-exchange-order" related functions & events
		|----------------------------------------------------
		|*/
		function show_refund_exchange_order_lb(id){
			var oid = $(this).attr("data-order-id");
			var l = $("#lb-refund-exchange-order");
			var bg = $("#bg-lightbox-product-detail");
			l.css("position", "fixed");
			l.css("top", ($(window).height() - l.height())/2);
			l.fadeIn();			
			bg.fadeIn();
			// set attributes
			l.attr("data-order-id", id);
		}
		
		function close_refund_exchange_order_lb(){
			var l = $("#lb-refund-exchange-order");
			var bg = $("#bg-lightbox-product-detail");
			l.fadeOut();
			bg.fadeOut();
			// clear attributes & values
			// 1. order-id: empty
			l.attr("data-order-id", "");
			// 2. type: exchange
			l.find(".lb-section-types .btn-type[data-type=exchange]").click();
			// 3. reason: empty
			l.find("#txt-reason").text("사유 선택");
			l.find("#txt-reason").attr("data-selected-value", "");
			l.find("#txt-reason-etc").hide();
			// 4. save button: grey
			set_save_button_color('grey');
		}

		function validate_refund_exchange_order_lb(){
			var l = $("#lb-refund-exchange-order");
			var order_id = l.attr("data-order-id");
			
			// validate forms and get values in it
			
			// 1. type: exchange or refund
			var selected_type_obj = l.find(".lb-section-types .btn-orderBlue");
			//console.log("# selected_type: " + selected_type_obj.length);
			if(selected_type_obj.length == 0){ set_save_button_color('grey'); return false; }
			var selected_type = selected_type_obj.attr("data-type");
			//console.log("selected_type: " +selected_type);

			// 2. reason
			var selected_reason = l.find("#txt-reason").attr("data-selected-value");
			//console.log("selected_reason: " + selected_reason);
			if(selected_reason == ""){ set_save_button_color('grey'); return false; }

			// Add Refund Account Info
			var get_payment_method = $("#get_payment_method_"+order_id).val();
			if( selected_type == 'refund' && get_payment_method == 'vbank' )
			{
				var refund_bank = $("input[name='refund_bank']").val();
				var refund_account = $("input[name='refund_account']").val();
				var refund_account_owner = $("input[name='refund_account_owner']").val();
				if(refund_bank == ""){ set_save_button_color('grey'); return false; }
				if(refund_account == ""){ set_save_button_color('grey'); return false; }
				if(refund_account_owner == ""){ set_save_button_color('grey'); return false; }
			}

			// change the save button as blue
			set_save_button_color('blue');
			return true;
		}

		// Add For Refund Account Info
		$("input[name='refund_bank']").keyup(function() { validate_refund_exchange_order_lb(); });
		$("input[name='refund_account']").keyup(function() { validate_refund_exchange_order_lb(); });
		$("input[name='refund_account_owner']").keyup(function() { validate_refund_exchange_order_lb(); });

		function set_save_button_color(color){
			var btn = $("#lb-refund-exchange-order .btn-save");
			if(color == "grey"){
				btn.removeClass("btn-fillBlue");
				btn.addClass("btn-fillgrey");
			}else if(color == "blue"){
				btn.removeClass("btn-fillgrey");
				btn.addClass("btn-fillBlue");
			}
		}

		/** show "refund-exchange-order" notification */
		$(".btn-refund-exchange-order").click(function(){
			var order_id = $(this).attr("data-order-id");
			show_refund_exchange_order_lb(order_id);
		});

		/** close lightbox */
		$("#lb-refund-exchange-order .btn-close").click(function(){
			close_refund_exchange_order_lb();
		});
		
		/** type selection: 'exchange' or 'refund' */
		var selected_type = "exchange";
		$(".lb-section-types .btn-type").click(function(){
			var type		= $(this).attr("data-type");
			var p			= $(this).parent();
			var t_exchange	= p.find("a.btn-type[data-type=exchange]");
			var t_refund	= p.find("a.btn-type[data-type=refund]");

			$("#refund_account_area").fadeOut();

			if(type == "exchange"){ 
				// exchange
				t_exchange.removeClass("btn-orderGrey");
				if(!t_exchange.hasClass("btn-orderBlue")){
					t_exchange.addClass("btn-orderBlue");
				}
				t_refund.removeClass("btn-orderBlue");
				if(!t_refund.hasClass("btn-orderGrey")){
					t_refund.addClass("btn-orderGrey");
				}
				selected_type = "exchange";
			
			}else{
				// refund			
				t_refund.removeClass("btn-orderGrey");
				if(!t_refund.hasClass("btn-orderBlue")){
					t_refund.addClass("btn-orderBlue");
				}
				t_exchange.removeClass("btn-orderBlue");
				if(!t_exchange.hasClass("btn-orderGrey")){
					t_exchange.addClass("btn-orderGrey");
				}
				selected_type = "refund";
				var get_payment_method = $("input[name='get_payment_method']").val();
				if( get_payment_method == "vbank" ){
					$("#refund_account_area").fadeIn();
				}
			}
			// validate
			validate_refund_exchange_order_lb();
		});

		/** dropdown item selection */
		$("#lb-refund-exchange-order .dropdown ul li a[role=menuitem]").click(function(){
			var val = $(this).attr("data-value");
			//console.log(val);
			$("#txt-reason").text(val);
			$("#txt-reason").attr("data-selected-value", val);
			if(val == "기타"){
				$("#txt-reason-etc").show();
			}else{
				$("#txt-reason-etc").hide();
			}
			// validate
			validate_refund_exchange_order_lb();
		});

		/** lightbox */
		$("#lb-refund-exchange-order .btn-save").click(function(){
			if(validate_refund_exchange_order_lb()){
				if( confirm("교환/반품 요청을 진행하시겠습니까?") ){
					var order_id = $(this).parent().parent().attr("data-order-id");
					var reason = $("#txt-reason").attr("data-selected-value");
					var reason_etc = $("#txt-reason-etc").val();

					var get_payment_method = $("#get_payment_method_"+order_id).val();
					var refund_bank = $("input[name='refund_bank']").val();
					var refund_account = $("input[name='refund_account']").val();
					var refund_account_owner = $("input[name='refund_account_owner']").val();

					$.post(
						"/wp-admin/admin-ajax.php", {
							action:		'mypage_refund_exchange_order',
							order_id:	order_id,
							type:		selected_type,
							reason:		reason,
							reason_etc:	reason_etc,

							get_payment_method: get_payment_method,
							refund_bank:refund_bank,
							refund_account:refund_account,
							refund_account_owner:refund_account_owner
						}, function(response){
							//console.log(response);
							if(response.is_succeeded){
								var order_obj = $("#order-" + order_id);
								// change title text
								order_obj.find(".stitle strong").text((selected_type == "exchange" ? "교환" : "반품") + "요청");
								// hide buttons
								order_obj.find(".product-order").hide();

								// close the lightbox
								close_refund_exchange_order_lb();
								document.location.reload();
							}
						}, "json");
				}else{
					return false;
				}
			}
		});
	});
};
</script>


<style>
a, .infomark{ cursor:pointer; }
#bg-lightbox-product-detail { pointer-events:none; }
#ajax-loading-div { 
	background-image:url(https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-ajax-spinner-70x70.gif); 
	background-size:cover;
	width:70px; height:70px; z-index:9998;
	top: 50%; left: 50%;
	margin-top: -35px; margin-left: -35px;
	position: fixed;
	display: none;
}
</style>


<div id="lb-notification" class="lb-notification" style="display:none;">
	<a class="btn-close"></a>
	<p class="lb-message"></p>
	<div class="lastbtnBox">
		<a class="btn-fillBlue btn-width250 btn-last-close"><span>확인</span></a>
	</div>
	<div class="clear"></div>
</div>
<div id="bg-lb-notification" class="lightBoxBg" style="display:none;"></div>
<div id="bg-lightbox-product-detail" class="lightBoxBg" style="display:none;" data-target=""></div>

<div id="ajax-loading-div"></div>

</div>

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
    <div class="row">
          </div>
  </div>
    <!-- Footer Start -->
    <footer class="seese-footer">
      <!-- Footer Widgets Start -->
        <div class="center-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="ft-left col-sm-4 col-md-4 col-lg-4">
                        <ul class="ft-sns">
                        	<li><a href="http://pf.kakao.com/_xkFAmxl" target="_blank"><i class="fa fa-comment fa-2x" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.facebook.com/wiselyshave" target="_blank"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/wiselyshave" target="_blank"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
                        </ul>
                        <div class="footer_logo hidden-xs">
                            <a href="product_list.jsp">
                                <svg xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg" viewBox="0 0 123 47" id="logo" width="100%" height="100%">
<g><path d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"/></g></svg>                            </a>
                        </div>
                    </div>
                    <div class="ft-right col-xs-12 col-sm-8 col-sm-offset col-md-8 col-md-offset col-lg-8 col-lg-offset">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class=" seese-widget footer-1-widget widget_nav_menu"><ul id="menu-footer-menu" class="main-navigation"><li id="menu-item-3969" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3969 seese-dropdown-menu"><a  href="#privacy">개인정보처리방침</a></li>
<li id="menu-item-3971" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3971 seese-dropdown-menu"><a  href="#terms">이용약관</a></li>
<li id="menu-item-3972" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3972 seese-dropdown-menu"><a  href="#guide">이용안내</a></li>
<li id="menu-item-2724517" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2724517 seese-dropdown-menu"><a  href="#career">채용</a></li>
</ul><div class="clear"></div></div> <!-- end widget --><div class=" seese-widget footer-1-widget widget_text">			<div class="textwidget"><p><b>주식회사 와이즐리컴퍼니</b> 서울특별시 성동구 왕십리로 125, 8층 801호(성수동1가, KD타워)<br />
<b>대표자:</b> 김동욱 <b>사업자등록번호:</b> 344-88-00965 <a class="underline wisely-ext-lightbox" href="#company-info" rel="noopener">사업자정보확인</a><br />
<b>통신판매업신고번호:</b> 2019-서울성동-01739 <b>개인정보보호책임자:</b> 김윤호 <a class="link-email" href="mailto:yhkim@wiselyshave.com" target="_blank" rel="noopener">yhkim@wiselyshave.com</a><br />
<b>전화번호:</b> <a class="link-email" href="tel:1833-9133">1833-9133</a> <b>E-mail:</b> <a class="link-email" href="mailto:help@wiselyshave.com" target="_blank" rel="noopener">help@wiselyshave.com</a></p>
<div>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 나이스페이먼츠(주)의 구매안전서비스를 이용하실 수 있습니다. <a class="underline wisely-ext-lightbox" href="#nicepay" rel="noopener">서비스 가입사실 확인</a></div>
<div>와이즐리는 서비스 품질 보증을 위하여 <strong>개인정보배상책임보험</strong>과 <strong>생산물피해보상보험</strong>에 가입하였습니다.</div>
</div>
		<div class="clear"></div></div> <!-- end widget --></div>                        <div class="seese-copyright col-xs-12">
                          <div class="">
                                    Copyright &copy;2020 WISELY. All rights reserved.                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	</div>
</div>
<!-- Footer Widgets End -->    </footer>
    <!-- Footer End-->
  
</div><!-- Seese Wrap End -->

  <a href="javascript:void(0)" id="seese-closebtn"><i class="fa fa-times" aria-hidden="true"></i></a>
<link rel='stylesheet' id='seese-default-style-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/style.css?ver=4.8.3.01' type='text/css' media='all' />
<style id='seese-default-style-inline-css' type='text/css'>
.no-class {}.seese-title-bg-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-title-default .page-title {color:;}.no-class {}.seese-title-bg-outer::before {content:"";position:absolute;top:0;left:0;width:100%;height:100%;background-color:;}.no-class {}.seese-title-bg-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-background-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-background-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-footer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}body.page-id- {}.no-class {}@media (max-width:767px) {.seese-mainmenu {display:none;}.slicknav_menu {display:block;}.slicknav_menu .nav.navbar-nav {display:block;}.navbar {min-height:inherit;}.seese-navicon {padding-top:14px;padding-bottom:13px;}.sub-menu.row {margin:0 !important;}.seese-fixed-header .scrolling.seese-header .seese-topright,.seese-topright {padding-right:50px;}}.no-class {}.seese-preloader-mask {background-color:#FFFFFF;height:100%;position:fixed;width:100%;z-index:100000;top:0;right:0;bottom:0;left:0;line-height:0px;}#seese-preloader-wrap {display:table;margin:0 auto;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-moz-transform:translateY(-50%);position:relative;line-height:0px;}.seese-preloader-html. > div {background-color:;color:;}body, .woocommerce .seese_single_product_excerpt p,#tab-description p,.woocommerce-Reviews .description p{font-family:"Noto Sans", Arial, sans-serif;font-size:14px;line-height:1.42857143;font-style:normal;}.seese-header .seese-logo a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-mainmenu ul li a, #seese-mobilemenu .slicknav_nav li a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}#seese-mobilemenu .slicknav_nav li a.seese-title-menu,.seese-mainmenu ul li a.seese-title-menu,.seese-mainmenu ul li.seese-megamenu > ul > li > a:link,.seese-mainmenu ul li.seese-megamenu > ul > li > a:active,.seese-mainmenu ul li.seese-megamenu > ul > li > a:visited{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.woocommerce .variations label,.woocommerce p.woocommerce-result-count,.seese-single-team .seese-team-member-name,.woocommerce p.stock.out-of-stock,.seese-load-more-controls.seese-btn-mode .seese-btn,.woocommerce .group_table td del .woocommerce-Price-amount,.woocommerce .group_table td.label a,.woocommerce table.shop_table_responsive tr td:before, .woocommerce-page table.shop_table_responsive tr td:before,.seese-single-product-share .container > a,.woocommerce-Tabs-panel .comment_container .meta strong,.seese-product-summary-col .entry-summary ins .woocommerce-Price-amount,h1, h2, h3, h4, h5, h6,.seese-aside h2,.seese-aside .widget_shopping_cart_content .buttons a,.seese-specialPage a,.seese-gototop a,.modal-content input[type="search"],.seese-filterTabs li a,.seese-footer .widget_nav_menu li a,.seese-contentCol h1, .seese-contentCol h2, .seese-contentCol h3, .seese-contentCol h4, .seese-contentCol h5, .seese-contentCol h6,.seese-contentCol .seese-publish li a,.single .seese-article strong,.seese-sharebar .sharebox a,.seese-author .author-content a,.seese-author .author-content label,.seese-commentbox h3.comment-reply-title,.seese-commentbox h3.comments-title,.seese-readmore a,.seese-sidebar h2.widget-title,.seese-team-box .seese-team-info .seese-lift-up .member-name a,.seese-team-box .seese-team-info .seese-lift-up .member-name,.seese-testi-name a,.seese-testi-name,.woocommerce-checkout .checkout_coupon .form-row-last input[type="submit"],.woocommerce-checkout .login input[type="submit"],.woocommerce table strong,.woocommerce table th,.woocommerce-checkout-review-order-table strong,.woocommerce-checkout-review-order-table th,.cart-empty,.woocommerce-message,.woocommerce ul.products li a.added_to_cart.wc-forward,.woocommerce ul.products li a.button,.seese-dropcap,.seese-form-order-filter select,.seese-content-area .seese-result-count p,.page-numbers a,.page-numbers span.current,.wp-pagenavi span.current,.wp-pagenavi a,.seese-product-summary-col .entry-summary .woocommerce-Price-amount.amount{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-price,.seese-product-summary-col .product_meta span,.seese-sidebar .seese-recent-blog .boxright label,.seese-sidebar .tagcloud a,.seese-sidebar th,.seese-sidebar td,.seese-testi-name:before,.seese-testi-name:after,.woocommerce textarea,.woocommerce input[type="tel"],.woocommerce input[type="text"],.woocommerce input[type="password"],.woocommerce input[type="email"],.woocommerce input[type="url"],.woocommerce .select2-container .select2-choice,.woocommerce-checkout .checkout_coupon input[type="text"],.woocommerce-checkout .login input[type="password"],.woocommerce-checkout .login input[type="text"],.track_order input[type="text"],.woocommerce-ResetPassword input[type="text"],.seese-containerWrap #seese-woo-register-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="url"],.seese-containerWrap #seese-woo-login-wrap textarea,.seese-containerWrap #seese-woo-login-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="search"],.seese-containerWrap #seese-woo-login-wrap input[type="text"],.seese-containerWrap #seese-woo-login-wrap input[type="password"],.woocommerce-checkout .woocommerce-info,#ship-to-different-address .checkbox,#ship-to-different-address .input-checkbox,.woocommerce-checkout-payment label{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-sidebar h2.widget-title a,.up-sells.products h2,.related.products h2,.woocommerce p.cart-empty,#review_form h3.comment-reply-title,.wc-tabs-wrapper .wc-tabs li a,.seese-product-summary-col .quantity input,.seese-contentCol h1.product_title,button,.button,.vc_btn3-container a.vc_general,.seese-blog-pagination a,.seese-btn,input[type="submit"],input[type="button"],.seese-filterOptions h3,.wpcf7-form input[type="submit"],.seese-cntr-box .cntr-value,.seese-cntr-box .cntr-title,.slick-slider .seese-prslr-content .seese-prslr-shopNow-title a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-bottomboxes h4,.seese-contentCol strong,.seese-contentCol h1.post-heading,.seese-title-area .page-title,.track_order h2,.seese-containerWrap #seese-woo-register-wrap h2,.seese-containerWrap #seese-woo-login-wrap h2,.woocommerce-checkout .checkout_coupon input[type="submit"],.woocommerce-checkout .login input[type="submit"],.track_order input[type="submit"],.woocommerce-ResetPassword input[type="submit"],.seese-containerWrap #seese-woo-register-wrap .seese-btn#seese-show-login-button,.seese-containerWrap #seese-woo-register-wrap input[type="submit"],.seese-containerWrap #seese-woo-login-wrap .seese-btn,.seese-containerWrap #seese-woo-login-wrap input[type="submit"],.form-row.place-order input[type="submit"]{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-title,.woocommerce td, .woocommerce th, .woocommerce-checkout-review-order-table td, .woocommerce-checkout-review-order-table th,.seese-filterOptions li span,.price_slider_amount .price_label,.woocommerce ul.products li.product-category h3,.seese-custom-badge,.seese-product-image-col .onsale,.woocommerce ul.products li span.onsale,.seese-product-summary-col .entry-summary del .woocommerce-Price-amount,.woocommerce div.product .woocommerce-product-rating a,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-name,.seese-aside .product_list_widget li a,.seese-aside .product_list_widget li .quantity,.seese-aside .widget_shopping_cart_content .total,.seese-aside .widget_shopping_cart_content .total strong,.seese-filterOptions li a,.seese-copyright,.seese-sidebar .comment-publish label,.wpcf7-form select,.wpcf7-form input,.wpcf7-form textarea,input[type="date"],input[type="tel"],input[type="number"],.woocommerce .select2-container .select2-choice,input[type="password"],select,input[type="url"],textarea,input[type="email"],input[type="search"],input[type="text"],.tagbox .taglist a,.seese-pagination a .seese-label,.seese-pagination a .post-name,.breadcrumbs li,.wp-pagenavi span.pages,.seese-sidebar,.seese-sidebar li,.seese-sidebar li a,.seese-sidebar .widget_categories li a,.seese-sidebar .seese-recent-blog .boxright h4 a,.seese-sidebar table,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.woocommerce p,.woocommerce-checkout .checkout_coupon p,.woocommerce-checkout .login p,.track_order p,.woocommerce-ResetPassword p,.seese-containerWrap #seese-woo-register-wrap form.register p,.seese-containerWrap #seese-woo-login-wrap form.login p,.woocommerce label,.woocommerce-checkout .checkout_coupon label,.woocommerce-checkout .login label,.track_order label,.woocommerce-ResetPassword label,.seese-containerWrap #seese-woo-register-wrap form.register label,.seese-containerWrap #seese-woo-login-wrap form.login label,.seese-containerWrap #seese-woo-login-wrap form.login .woocommerce-LostPassword a,.seese-containerWrap .seese-login-form-divider span,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.seese-catslr-box .seese-catslr-text .seese-catslr-name,.seese-catdt-box .seese-catdt-text .seese-catdt-name{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-single-team .seese-team-member-job,.woocommerce-Tabs-panel .comment_container .meta time,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-desc,.seese-bottomboxes .subtitle,blockquote,.seese-contentCol .seese-publish li,.comment-wrapper .comments-date,.seese-commentbox .date,.comment-wrapper .comments-date .comments-reply a,.seese-sidebar .comment-publish span,.seese-cntr-box .cntr-details,.seese-team-box .seese-team-info .seese-lift-up .member-job,.seese-team-box .seese-team-text em,.seese-testi-pro a,.seese-testi-pro,address,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.slick-slider .seese-prslr-content .seese-prslr-desc,.seese-catslr-box .seese-catslr-text .seese-catslr-desc,.seese-catdt-box .seese-catdt-text .seese-catdt-desc{font-family:"Lora", Arial, sans-serif;font-style:normal;}.your-custom-class{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var channel_io_options = {"channel_io_plugin_key":"7f424af9-c2ee-400f-aef2-b5edbe4a944e","channel_io_hide_default_launcher":"","channel_io_custom_launcher_selector":"","login":"1","id":"173467","display_name":"\uc900\uc218 \uc774","user_email":"wnstn1342@naver.com"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/channel-io/channel_plugin_script.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/resizable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/draggable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/button.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/position.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/dialog.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_b2627323470bbe1531b576244c5bb266"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.2.2'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/bootstrap.min.js?ver=3.3.6'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/plugins.js?ver=1.1.0.04'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/scripts.js?ver=1.1.0.04'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/glidejs/dist/glide.min.js?ver=1.0'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/simple-calendar/jquery.simple-calendar.js?ver=1580951765'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/raty/jquery.raty.js?ver=1.0'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/jquery.validate.min.js?ver=1.9.0'></script>
<script type='text/javascript'>
jQuery(document).ready(function($) {$("#commentform").validate({rules: {author: {required: true,minlength: 2},email: {required: true,email: true},comment: {required: true,minlength: 10}}});});
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/wc-scripts.js?ver=1.0'></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_5a2dac8d7891";
if (!_nasa) var _nasa={};
wcs.inflow("wiselyshave.com");
wcs_do(_nasa);
</script>



<div id="alert_notice_area" style="display:none; position:fixed; z-index:1000000; top:0px; left:0px; width:100%; height:100%; text-align:center; background-color:rgba(0,0,0,0.5);">
	<script>
	function closeAlert()
	{
		jQuery("input[name=progressMode]").val("");
		document.getElementById('alert_notice_area').style.display='none';
	}

	function goCheck()
	{
		var getProgress = jQuery("input[name=progressMode]").val();
		if( getProgress == "checkout"){
			jQuery(".wisely-checkout-button").trigger( "click" );
		}else if( getProgress == "addtocart"){
			closeAlert();
		}
	}
	</script>
	<input name="progressMode" type="hidden" value="" />
	<table style="border:0px !important; width:100%; height:100%;">
		<tr>
			<td align="center" valign="middle" style="border:0px !important; padding:0px 20px !important;">
				<div style="max-width:800px; background-color:#fff; border-radius:4px; padding:20px 20px; 20px 10px;">
					<div style="text-align:right;">
						<div style="display:inline-block; width:20px; height:20px; background:url('/wp-content/themes/wisely/assets/images/ic-close.png') 0 0 no-repeat; cursor:pointer;" onclick="closeAlert();"></div>
					</div>
					<div style="padding:0px 0px 25px 0px; font-size:20px; font-weight:bold; color:#000000;">
						<리필 면도날 배송 지연 안내>
					</div>
					<div style="font-size:14px; font-weight:bold; color:#000000; line-height:20px; padding:0px 20px 20px 20px;">
						주문 폭주로 인한 품절로 <리필 면도날 4개>의 배송이 지연되고 있습니다.<br>
						지금 주문 시 3월 28일(목)부터 순차적으로 배송이 시작될 예정이고, 늦어도 3월 29일(금)에는 배송이 시작될 예정입니다.<br>
						고객님들의 양해를 부탁드리며 뜨거운 성원에 다시 한번 감사드립니다.
					</div>
					<div>
						<div style="display:inline-block; background-color:#0096ff; color:#fff; font-size:16px; font-family:'notokr-demilight'; padding:10px 30px; border-radius:4px; cursor:pointer;" onclick="goCheck();">
							확인했어요!
						</div>
					</div>
				</div>
			</td>
		</tr>
	</table>
</div>




<div id="pleaseWait" style="display:none; position:fixed; left:50%; top:50%; width:276px; height:110px; margin-left:-138px; margin-top:-55px; background-color:#fff; z-index:90000; border-radius:5px;">
  <div style="display:table; width:100%; height:100%;">
    <div style="display:table-cell; vertical-align:middle; text-align:center;">
      <div style="font-size:16px; font-weight:bold; color:#333;" class="waitContents">
        <div>잠시만 기다려 주세요 :)</div>
        <div style="overflow:hidden;">
          <img src="/wp-content/themes/wisely/assets/images/svg/pulse.svg" style="height:60px; margin-top:-20px; margin-bottom:-30px;">
        </div>
      </div>
    </div>
  </div>
</div>



</body>
</html>
