<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>
<%
	CustomerService customerService = new CustomerService();
	String msg = (String) request.getAttribute("msg");
	if(msg == null) {
		msg = "";
	}
%>
<!DOCTYPE html>
<!-- saved from url=(0042)https://www.wiselyshave.com/mypage/myinfo/ -->
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#" class=" seese-browser">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" async="" src="./res/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./res/js"></script><script async="" src="./res/fs.js.다운로드"></script><script src="./res/1975823006072148" async=""></script><script async="" src="./res/fbevents.js.다운로드"></script><script type="text/javascript" async="" src="./res/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./res/uwt.js.다운로드"></script><script type="text/javascript" async="" src="./res/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./res/hotjar-1281523.js.다운로드"></script><script type="text/javascript" async="" src="./res/f.txt"></script><script type="text/javascript" async="" src="./res/ch-plugin-web.js.다운로드" charset="UTF-8"></script>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">

<meta name="google-site-verification" content="Kd_LFdQNt5vRWUmO9Qt2ovvL9BdZUWBB-lf8_E5gcfg">
<script type="text/javascript">
	function change_tel() {
		if(document.getElementById("main_phone").value == "") {
			alert('전화번호를 입력하세요');
			return false;
		}
		for (var i = 0; i < f.tel.value.length; i++) {
			if (!(f.tel.value.charAt(i) >= 0 &&
				  f.tel.value.charAt(i) <= 9)) {
				alert("휴대전화는 숫자로만 구성됩니다");
				f.tel.focus();
				return false;
			}
		}
		document.f.action = "member_change_tel_action.jsp";
		document.f.submit();
	}
	
	function enterkey() {
		if(window.event.keyCode == 13) {
			change_tel();
		}
	}
</script>
<script async="" src="./res/gtm.js.다운로드"></script><script>var dataLayer=[];</script>
<script>
	dataLayer.push({
		"site_type": "d"
	});
</script>
<script>
	dataLayer.push({
		"sjk_user_number": "620541",
		"sjk_user_diplay_name": "",
		"sjk_user_email": "hero8081@naver.com"
	});
</script>



<link rel="stylesheet" href="./res/font-awesome.min.css">

<title>정보 수정 – 와이즐리 :: Wisely</title>

</head>
<body class="page-template-default page page-id-3106 page-child parent-pageid-2988 logged-in" style="overflow: visible;">

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KNJCD96"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


	
		    
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
	<li class=""><a href="order_list.jsp">주문내역 조회</a></li>
<!--
	<li class=""><a href="https://www.wiselyshave.com/mypage/settings" class="deep_dive">정기구매 관리</a></li>
-->
	<li class="active">정보 수정</li>
	<li><a href="member_logout_action.jsp">로그아웃</a></li>
</ul>

<div id="mypage-mobile-menu-container" class="hidden-sm hidden-md hidden-lg">
<!-- 3106  -->	
				<div style="font-size:20px; color:#333333; margin-top:20px; font-family:&#39;notokr-medium&#39;;">회원정보 수정</div>
		<div style="position:absolute; top:3px; left:0px; padding:20px;">
			<a href="https://www.wiselyshave.com/mypage">
				<img src="./res/ic-back@3x.png" style="width:25px;">
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
			<a role="menuitem" tabindex="-1" href="https://www.wiselyshave.com/wisely-login/?action=logout&amp;_wpnonce=a8825219d6">로그아웃</a>
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
</script>                        </div>
                    </div>
                    
                    <div class="mypage-content col-xs-12 col-sm-8 col-md-8 col-lg-8">
                        
                        <div class="subsection fillbackground">
                          <div class="subsection-wrapper mypage840">
                              <div class="section-content">
                                  <div class="subsection-text">
                                  	<div class="title">개인 정보</div>


                                    <div class="mypage-row">
                                    	<dl class="dl-horizontal mypage-info half">
                                            <dt>이메일</dt>
                                            <dd><%=cEmail %></dd>
                                        </dl>
                                        <dl class="dl-horizontal mypage-info half">
                                            <dt>비밀번호</dt>
                                            <dd><a href="member_password_change.jsp" class="btn-fillgreyBox">변경</a></dd>
                                            <font color="red"><%=msg%></font>
                                        </dl>
                                    </div>
                                    <div class="mypage-row">
                                    	<dl class="dl-horizontal mypage-info half">
                                            <dt>생년월일</dt>
                                            <dd><%=customerService.findByEmail(cEmail).getcBirth() %></dd>
                                        </dl>
                                        <dl class="dl-horizontal mypage-info half">
                                            <dt>성별</dt>
                                            <dd><%if(customerService.findByEmail(cEmail).getcSex().equalsIgnoreCase("F")) {
                                            		out.print("여성");
                                            	} else {
                                            		out.print("남성");
                                            	}%>
                                            </dd>
                                        </dl>
										<dl class="dl-horizontal mypage-info half">
                                            <dt>휴대전화</dt>
                                            <dd>
                                            <form name="f">
												<input type="text" id="main_phone" name="tel" onkeyup="enterkey();" class="mypage-input" maxlength="11" value="<%=customerService.findByEmail(cEmail).getcTel()%>">
												<a id="btn-update-main-phone" class="btn-fillgreyBox" href="javascript:change_tel();">저장</a>
											</form>
											</dd>
                                        </dl>
                                    </div>
<!--
                                    <div class="mypage-row">
                                        <dl class="dl-horizontal mypage-info full">
                                            <dt>마케팅<br>수신동의</dt>
                                            <dd>
                                                <div class="checkBox">
                                                    <label style="width:initial;">
                                                        <input type="checkbox" name="agree_marketing" id="agree_marketing"><span class="checkmark" target="agree_marketing"></span> 할인 혜택, 쿠폰 등 마케팅 수신 동의
                                                    </label>
                                                </div>
                                                <a id="btn-update-marketing" class="btn-fillgreyBox">저장</a>
											</dd>
                                        </dl>
                                    </div>
-->
                                  </div>
                              </div>
                          </div>
                        </div>
                        
                        <div class="mypage-wrapper">
						

                        <div class="subsection">
                          <div class="subsection-wrapper mypage840 btn-mgBottom50">
                              <div class="section-content">
                                  <div class="subsection-text">
<!--
                                        <div class="title">배송 정보</div>

                                                                                
                                        <div class="recent-address" style="">

                                            <div class="mypage-row">
                                                <dl class="dl-horizontal mypage-form half">
                                                    <dt>이름</dt>
                                                    <dd>
                                                        <input type="text" id="billing_name" class="mypage-input" size="16" value="">
                                                        <a id="btn-update-name" class="btn-fillgreyBox">저장</a>
                                                    </dd>
                                                </dl>
                                                <dl class="dl-horizontal mypage-form half">
                                                    <dt>휴대전화</dt>
                                                    <dd>
                                                        <input type="tel" class="mypage-input" id="billing_phone" value="" maxlength="11">
                                                        <a id="btn-update-phone" class="btn-fillgreyBox">저장</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="mypage-row">
                                                
                                                <input type="hidden" id="billing_city" value="">
                                                <dl class="dl-horizontal mypage-form half">
                                                    <dt>배송 주소</dt>

                                                    <dd>
                                                        <div id="wrap-zipcode-recent" class="wrap-zipcode" style="display:none;border:1px solid;width:100%;height:300px;margin:5px 0;position:relative">
                                                                    <img src="./res/close.png" class="btn-fold-wrap-zipcode" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" alt="접기 버튼">
                                                        </div>
                                                        <input type="text" class="mypage-input" id="billing_postcode" name="billing_postcode" size="16" readonly="" placeholder="우편번호" value="">
                                                        <a class="btn-filldarkgreyBox" id="recent_address_zipcode_search">우편번호 찾기</a>
                                                    </dd>
-->   
                                                    <!--
                                                    <dd><input type="text" name="billing_postcode" id="billing_postcode" class="mypage-input" size="16"  value="" />
                                                        <a id="btn-search-postcode" class="btn-filldarkgreyBox">우편번호 찾기</a></dd>-->
<!--
                                                    <dd><input type="text" name="billing_address_1" id="billing_address_1" readonly="" class="mypage-input" size="35" value=""></dd>
                                                    <dd><input type="text" name="billing_address_2" id="billing_address_2" class="mypage-input" placeholder="상세주소" size="35" value=""></dd>
                                                </dl>
                                            </div>

                                            <div class="mypage-row">
                                                <dl class="dl-horizontal mypage-form half">
                                                <dt>배송 메모<br>(선택)</dt>
                                                <dd><textarea name="textarea" id="order_comments" cols="45" rows="5" class="mypage-input" size="35"></textarea></dd>
                                                <dd class="clearfix">
                                                    <a id="btn-update-address" class="btn-fillgreyBox">저장</a></dd>
                                                </dl>
                                            </div>


                                        
                                    </div>
-->
                                    <div class="mypage-row">
                                            <a href="member_remove_action.jsp" onclick="return confirm('정말로 회원 탈퇴 하실겁니까?');" class="link-red">회원 탈퇴</a>
                                        </div>
                                  </div><!-- closing subsection-text-->
                              </div><!-- closing section-content-->
                          </div>
                      </div>
                      
                      </div>
                  </div>
          <!-- Content Col End -->

      </div>
	</div>
  </div>
</div>


<style>
#btn_subscription_shipping_address, #btn_recent_shipping_address { cursor:pointer; }
input[data-validated=false]{ border: 1px solid #f00; box-shadow: 0 0 4px 0 #f00; }
.tabBar{ margin-top:0px;}
.wrap-zipcode { -webkit-overflow-scrolling: touch; overflow-y: scroll; }
</style>

<script src="./res/postcode.v2.js.다운로드"></script><script charset="UTF-8" type="text/javascript" src="./res/200117.js.다운로드"></script>
<script src="./res/190107.js.다운로드"></script>
<script>
jQuery(document).ready(function($){
/*
	var regex_mobile_phone = /^01[0-9]([0-9]+){7,8}$/
	var selected_address_type = "recent";
*/
	/** 
	 * main-phone
	 */
	var main_phone_old = "01026945055";
	var main_phone_new = main_phone_old;
	var btn_update_main_phone = $("#btn-update-main-phone");
/*
	$("#main_phone").keyup(function(){
		main_phone_new = $(this).val().trim();
		if(!regex_mobile_phone.test(main_phone_new)){
			set_button_color(btn_update_main_phone, "grey");
			//$(this).attr("data-validated", "false");
			return false;
		}
		$(this).attr("data-validated", "true");
		set_button_color(
			btn_update_main_phone, 
			(main_phone_old == main_phone_new)? "grey" : "blue"
		);
	});
*/
/*
	btn_update_main_phone.click(function(){
		if($(this).hasClass("btn-fillgreyBox")){ return; }
		$("#ajax-loading-div").fadeIn();
		$.post(
			"/wp-admin/admin-ajax.php", {
				action: 'update_myinfo',
				info_type: 'main_phone',
				info_value: main_phone_new,
				default_value: ''
			}, function(response){
				//console.log(response);
				main_phone_old = main_phone_new;
				set_button_color(btn_update_main_phone, "grey");
				$.show_notification_msg_lightbox("휴대전화가 변경되었습니다.");
			}, "json")
			.always(function(){ $("#ajax-loading-div").fadeOut(); });

	});
*/

	/**
	 * marketing agreement
	 */
	var marketing_old = false;
	var marketing_new = marketing_old;
	var btn_update_marketing = $('#btn-update-marketing');

	$('#agree_marketing').on('click', function() {
		marketing_new = $(this).is(':checked');
		set_button_color(
			btn_update_marketing,
			(marketing_old == marketing_new)? "grey" : "blue"
		);
	});
	btn_update_marketing.on('click', function() {
		if($(this).hasClass("btn-fillgreyBox")){ return; }
		$("#ajax-loading-div").fadeIn();
		$.post(
			"/wp-admin/admin-ajax.php", {
				action: 'update_myinfo',
				info_type: 'agree_marketing_notices',
				info_value: (marketing_new ? '1' : ''),
				default_value: ''
			}, function(response){
				//console.log(response);
				marketing_old = marketing_new;
				set_button_color(btn_update_marketing, "grey");
				$.show_notification_msg_lightbox("마케팅 수신동의 정보가 변경되었습니다.");
			}, "json")
			.always(function(){ $("#ajax-loading-div").fadeOut(); });
	});



	

	/* STARTING recent address */

	/** 
	 * billing_name 
	 */
/*
	var billing_name_old = "";
	var billing_name_new = billing_name_old;
	var btn_update_name = $("#btn-update-name");

	$("#billing_name").keyup(function(){
		billing_name_new = $(this).val();
		set_button_color(
			btn_update_name, 
			(billing_name_old == billing_name_new)? "grey" : "blue"
		);
	});

	btn_update_name.click(function(){
		if($(this).hasClass("btn-fillgreyBox")){ return; }
		$("#ajax-loading-div").fadeIn();
		$.post(
			"/wp-admin/admin-ajax.php", {
				action: 'update_myinfo',
				info_type: 'billing_name',
				info_value: billing_name_new,
				default_value: ''
			}, function(response){
				//console.log(response);
				billing_name_old = billing_name_new;
				set_button_color(btn_update_name, "grey");
				$.show_notification_msg_lightbox("배송 이름이 변경되었습니다.");
			}, "json")
			.always(function(){ $("#ajax-loading-div").fadeOut(); });

	});
*/
	/** 
	 * billing-phone
	 */
/*	
	var billing_phone_old = "";
	var billing_phone_new = billing_phone_old;
	var btn_billing_phone = $("#btn-update-phone");

	$("#billing_phone").keyup(function(){
		billing_phone_new = $(this).val();
		if(!regex_mobile_phone.test(billing_phone_new)){
			set_button_color(btn_billing_phone, "grey");
			$(this).attr("data-validated", "false");
			return false;
		}
		$(this).attr("data-validated", "true");
		set_button_color(
			btn_billing_phone,
			(billing_phone_old == billing_phone_new)? "grey" : "blue"
		);
	});

	btn_billing_phone.click(function(){
		if($(this).hasClass("btn-fillgreyBox")){ return; }
		
		$("#ajax-loading-div").fadeIn();
		$.post(
			"/wp-admin/admin-ajax.php", {
				action: 'update_myinfo',
				info_type: 'billing_phone',
				info_value: billing_phone_new,
				default_value: ''
			}, function(response){
				//console.log(response);
				billing_phone_old = billing_phone_new;
				set_button_color(btn_billing_phone, "grey");
				$.show_notification_msg_lightbox("배송 휴대전화가 변경되었습니다.");
			}, "json")
			.always(function(){ $("#ajax-loading-div").fadeOut(); });

	});
*/

	/** 
	 * postcode popup 
	 */
/*	var billing_postcode_old = "";
	var billing_postcode_new = billing_postcode_old;
	var btn_update_address = $("#btn-update-address");

	var billing_address_1_old = "";
	var billing_address_1_new = billing_address_1_old;

	$("#billing_address_1").keyup(function(){
		billing_address_1_new = $(this).val();
		
		if(billing_postcode_old == billing_postcode_new){
			if(billing_address_1_old == billing_address_1_new){
				set_button_color(btn_update_address, "grey");
			}else{
				set_button_color(btn_update_address, "blue");
			}
		}
*/	});

	/** update address: postcode, address_1, address_2 */
/*	var billing_address_2_old = "";
	var billing_address_2_new = billing_address_2_old;
	$("#billing_address_2").keyup(function(){
		billing_address_2_new = $(this).val();
		if(billing_postcode_old == billing_postcode_new){
			if(billing_address_2_old == billing_address_2_new){
				set_button_color(btn_update_address, "grey");
			}else{
				set_button_color(btn_update_address, "blue");
			}
		}
*/	});

	/** update address: postcode, address_1, address_2 */
/*	var order_comments_old = "";
	var order_comments_new = order_comments_old;
	$("#order_comments").keyup(function(){
		order_comments_new = $(this).val();
		if(billing_postcode_old == billing_postcode_new){
			if(order_comments_old == order_comments_new){
				set_button_color(btn_update_address, "grey");
			}else{
				set_button_color(btn_update_address, "blue");
			}
		}
/*	});

	btn_update_address.click(function(){
		if($(this).hasClass("btn-fillgreyBox")){ return; }

		var billing_city = $("#billing_city").val();

		$("#ajax-loading-div").fadeIn();
		$.post(
			"/wp-admin/admin-ajax.php", {
				action: 'update_myinfo',
				info_type: 'billing_address',
				info_value: [ 
					/** count(info_value): 5 */
/*					$("#billing_postcode").val(), 
					$("#billing_address_1").val(), 
					billing_address_2_new, 
					billing_city,
					order_comments_new
				],
				default_value: ''
			}, function(response){
				//console.log(response);
				billing_postcode_old = billing_postcode_new;
				billing_address_1_old = billing_address_1_new;
				billing_address_2_old = billing_address_2_new;
				order_comments_old = order_comments_new;
				
				set_button_color(btn_update_address, "grey");
				$.show_notification_msg_lightbox("주소가 변경되었습니다.");
			}, "json")
			.always(function(){ $("#ajax-loading-div").fadeOut(); });
	});

	function set_button_color(o, color){
		if(color == "grey"){
			o.removeClass("btn-fillblueBox");
			o.addClass("btn-fillgreyBox");
		}else if(color == "blue"){
			o.removeClass("btn-fillgreyBox");
			o.addClass("btn-fillblueBox");
		}
	}


	$("#btn_subscription_shipping_address").click(function(){
		// buttons
		$("#btn_subscription_shipping_address").addClass("selected");
		$("#btn_recent_shipping_address").removeClass("selected");
		// form
		$(".recent-address").hide();
		$(".subscription-address").show();
		//
		selected_address_type = "subscription";
	});

	$("#btn_recent_shipping_address").click(function(){
		// buttons
		$("#btn_recent_shipping_address").addClass("selected");
		$("#btn_subscription_shipping_address").removeClass("selected");
		// form
		$(".subscription-address").hide();
		$(".recent-address").show();
		//
		selected_address_type = "recent";
/*	});


	/** Daum Zipcode API */
	$(".btn-fold-wrap-zipcode").click(function(e){
		e.preventDefault();
        $("#wrap-zipcode-"+selected_address_type).slideUp();
    });

	$("#subscription_address_zipcode_search, #subscription_billing_postcode, #subscription_billing_address_1").click(function(){
		search_zipcode("subscription_");
	});
	
	$("#recent_address_zipcode_search, #billing_postcode, #billing_address_1").click(function(){
		search_zipcode("");
	});


	function search_zipcode(prefix){
		var old_address_1 = $("#"+prefix + "billing_address_1").val();

		new daum.Postcode({
			oncomplete: function(data){
				// zipcode
				$("#"+prefix + "billing_postcode").val(data.zonecode);
				// road-address 
				$("#"+prefix + "billing_address_1").val(data.roadAddress);
				$("#"+prefix + "billing_address_2").focus();
				// city
				$("input[name="+selected_address_type+"billing_city]").val(data.sido);
				$("#wrap-zipcode-"+selected_address_type).slideUp();

				//console.log("success.old address :"+old_address_1);
				//console.log("new address :"+$("#"+prefix + "billing_address_1").val());

				if(prefix=="subscription_"){
					set_button_color($("#btn-update-subscription-address"), ($("#"+prefix + "billing_address_1").val() == old_address_1)? "grey" : "blue");
				}else{
					set_button_color($("#btn-update-address"), ($("#"+prefix + "billing_address_1").val() == old_address_1)? "grey" : "blue");
				}		
			},
            width : '100%',
            height : '100%'
		}).embed(document.getElementById("wrap-zipcode-"+selected_address_type));

		$("#wrap-zipcode-"+selected_address_type).slideDown();
	}


	
});
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
                                <svg xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg" viewBox="0 0 123 47" width="100%" height="100%">
<g><path d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"></path></g></svg>                            </a>
                        </div>
                    </div>
                    <div class="ft-right col-xs-12 col-sm-8 col-sm-offset col-md-8 col-md-offset col-lg-8 col-lg-offset">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class=" seese-widget footer-1-widget widget_nav_menu"><ul id="menu-footer-menu" class="main-navigation"><li id="menu-item-3969" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3969 seese-dropdown-menu"><a href="https://www.wiselyshave.com/mypage/myinfo/#privacy">개인정보처리방침</a></li>
<li id="menu-item-3971" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3971 seese-dropdown-menu"><a href="https://www.wiselyshave.com/mypage/myinfo/#terms">이용약관</a></li>
<li id="menu-item-3972" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3972 seese-dropdown-menu"><a href="https://www.wiselyshave.com/mypage/myinfo/#guide">이용안내</a></li>
<li id="menu-item-2724517" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2724517 seese-dropdown-menu"><a href="https://www.wiselyshave.com/mypage/myinfo/#career">채용</a></li>
</ul><div class="clear"></div></div> <!-- end widget --><div class=" seese-widget footer-1-widget widget_text">			<div class="textwidget"><p><b>주식회사 와이즐리컴퍼니</b>&nbsp;서울특별시 성동구 왕십리로 125, 8층 801호(성수동1가, KD타워)<br>
<b>대표자:</b> 김동욱 <b>사업자등록번호:</b> 344-88-00965 <a class="underline wisely-ext-lightbox" href="https://www.wiselyshave.com/mypage/myinfo/#company-info" rel="noopener">사업자정보확인</a><br>
<b>통신판매업신고번호:</b> 2019-서울성동-01739&nbsp;<b>개인정보보호책임자:</b> 김윤호 <a class="link-email" href="mailto:yhkim@wiselyshave.com" target="_blank" rel="noopener">yhkim@wiselyshave.com</a><br>
<b>전화번호:</b> <a class="link-email" href="tel:1833-9133">1833-9133</a> <b>E-mail:</b> <a class="link-email" href="mailto:help@wiselyshave.com" target="_blank" rel="noopener">help@wiselyshave.com</a></p>
<div>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 나이스페이먼츠(주)의 구매안전서비스를 이용하실 수 있습니다. <a class="underline wisely-ext-lightbox" href="https://www.wiselyshave.com/mypage/myinfo/#nicepay" rel="noopener">서비스 가입사실 확인</a></div>
<div>와이즐리는 서비스 품질 보증을 위하여&nbsp;<strong>개인정보배상책임보험</strong>과&nbsp;<strong>생산물피해보상보험</strong>에 가입하였습니다.</div>
</div>
		<div class="clear"></div></div> <!-- end widget --></div>                        <div class="seese-copyright col-xs-12">
                          <div class="">
                                    Copyright ©2020 WISELY. All rights reserved.                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	</footer></div>

<!-- Footer Widgets End -->    
    <!-- Footer End-->
  
<!-- Seese Wrap End -->

  <a href="javascript:void(0)" id="seese-closebtn"><i class="fa fa-times" aria-hidden="true"></i></a>
<link rel="stylesheet" id="seese-default-style-css" href="./res/style.css" type="text/css" media="all">
<style id="seese-default-style-inline-css" type="text/css">
.no-class {}.seese-title-bg-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-title-default .page-title {color:;}.no-class {}.seese-title-bg-outer::before {content:"";position:absolute;top:0;left:0;width:100%;height:100%;background-color:;}.no-class {}.seese-title-bg-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-background-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-background-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-footer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}body.page-id- {}.no-class {}@media (max-width:767px) {.seese-mainmenu {display:none;}.slicknav_menu {display:block;}.slicknav_menu .nav.navbar-nav {display:block;}.navbar {min-height:inherit;}.seese-navicon {padding-top:14px;padding-bottom:13px;}.sub-menu.row {margin:0 !important;}.seese-fixed-header .scrolling.seese-header .seese-topright,.seese-topright {padding-right:50px;}}.no-class {}.seese-preloader-mask {background-color:#FFFFFF;height:100%;position:fixed;width:100%;z-index:100000;top:0;right:0;bottom:0;left:0;line-height:0px;}#seese-preloader-wrap {display:table;margin:0 auto;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-moz-transform:translateY(-50%);position:relative;line-height:0px;}.seese-preloader-html. > div {background-color:;color:;}body, .woocommerce .seese_single_product_excerpt p,#tab-description p,.woocommerce-Reviews .description p{font-family:"Noto Sans", Arial, sans-serif;font-size:14px;line-height:1.42857143;font-style:normal;}.seese-header .seese-logo a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-mainmenu ul li a, #seese-mobilemenu .slicknav_nav li a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}#seese-mobilemenu .slicknav_nav li a.seese-title-menu,.seese-mainmenu ul li a.seese-title-menu,.seese-mainmenu ul li.seese-megamenu > ul > li > a:link,.seese-mainmenu ul li.seese-megamenu > ul > li > a:active,.seese-mainmenu ul li.seese-megamenu > ul > li > a:visited{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.woocommerce .variations label,.woocommerce p.woocommerce-result-count,.seese-single-team .seese-team-member-name,.woocommerce p.stock.out-of-stock,.seese-load-more-controls.seese-btn-mode .seese-btn,.woocommerce .group_table td del .woocommerce-Price-amount,.woocommerce .group_table td.label a,.woocommerce table.shop_table_responsive tr td:before, .woocommerce-page table.shop_table_responsive tr td:before,.seese-single-product-share .container > a,.woocommerce-Tabs-panel .comment_container .meta strong,.seese-product-summary-col .entry-summary ins .woocommerce-Price-amount,h1, h2, h3, h4, h5, h6,.seese-aside h2,.seese-aside .widget_shopping_cart_content .buttons a,.seese-specialPage a,.seese-gototop a,.modal-content input[type="search"],.seese-filterTabs li a,.seese-footer .widget_nav_menu li a,.seese-contentCol h1, .seese-contentCol h2, .seese-contentCol h3, .seese-contentCol h4, .seese-contentCol h5, .seese-contentCol h6,.seese-contentCol .seese-publish li a,.single .seese-article strong,.seese-sharebar .sharebox a,.seese-author .author-content a,.seese-author .author-content label,.seese-commentbox h3.comment-reply-title,.seese-commentbox h3.comments-title,.seese-readmore a,.seese-sidebar h2.widget-title,.seese-team-box .seese-team-info .seese-lift-up .member-name a,.seese-team-box .seese-team-info .seese-lift-up .member-name,.seese-testi-name a,.seese-testi-name,.woocommerce-checkout .checkout_coupon .form-row-last input[type="submit"],.woocommerce-checkout .login input[type="submit"],.woocommerce table strong,.woocommerce table th,.woocommerce-checkout-review-order-table strong,.woocommerce-checkout-review-order-table th,.cart-empty,.woocommerce-message,.woocommerce ul.products li a.added_to_cart.wc-forward,.woocommerce ul.products li a.button,.seese-dropcap,.seese-form-order-filter select,.seese-content-area .seese-result-count p,.page-numbers a,.page-numbers span.current,.wp-pagenavi span.current,.wp-pagenavi a,.seese-product-summary-col .entry-summary .woocommerce-Price-amount.amount{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-price,.seese-product-summary-col .product_meta span,.seese-sidebar .seese-recent-blog .boxright label,.seese-sidebar .tagcloud a,.seese-sidebar th,.seese-sidebar td,.seese-testi-name:before,.seese-testi-name:after,.woocommerce textarea,.woocommerce input[type="tel"],.woocommerce input[type="text"],.woocommerce input[type="password"],.woocommerce input[type="email"],.woocommerce input[type="url"],.woocommerce .select2-container .select2-choice,.woocommerce-checkout .checkout_coupon input[type="text"],.woocommerce-checkout .login input[type="password"],.woocommerce-checkout .login input[type="text"],.track_order input[type="text"],.woocommerce-ResetPassword input[type="text"],.seese-containerWrap #seese-woo-register-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="url"],.seese-containerWrap #seese-woo-login-wrap textarea,.seese-containerWrap #seese-woo-login-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="search"],.seese-containerWrap #seese-woo-login-wrap input[type="text"],.seese-containerWrap #seese-woo-login-wrap input[type="password"],.woocommerce-checkout .woocommerce-info,#ship-to-different-address .checkbox,#ship-to-different-address .input-checkbox,.woocommerce-checkout-payment label{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-sidebar h2.widget-title a,.up-sells.products h2,.related.products h2,.woocommerce p.cart-empty,#review_form h3.comment-reply-title,.wc-tabs-wrapper .wc-tabs li a,.seese-product-summary-col .quantity input,.seese-contentCol h1.product_title,button,.button,.vc_btn3-container a.vc_general,.seese-blog-pagination a,.seese-btn,input[type="submit"],input[type="button"],.seese-filterOptions h3,.wpcf7-form input[type="submit"],.seese-cntr-box .cntr-value,.seese-cntr-box .cntr-title,.slick-slider .seese-prslr-content .seese-prslr-shopNow-title a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-bottomboxes h4,.seese-contentCol strong,.seese-contentCol h1.post-heading,.seese-title-area .page-title,.track_order h2,.seese-containerWrap #seese-woo-register-wrap h2,.seese-containerWrap #seese-woo-login-wrap h2,.woocommerce-checkout .checkout_coupon input[type="submit"],.woocommerce-checkout .login input[type="submit"],.track_order input[type="submit"],.woocommerce-ResetPassword input[type="submit"],.seese-containerWrap #seese-woo-register-wrap .seese-btn#seese-show-login-button,.seese-containerWrap #seese-woo-register-wrap input[type="submit"],.seese-containerWrap #seese-woo-login-wrap .seese-btn,.seese-containerWrap #seese-woo-login-wrap input[type="submit"],.form-row.place-order input[type="submit"]{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-title,.woocommerce td, .woocommerce th, .woocommerce-checkout-review-order-table td, .woocommerce-checkout-review-order-table th,.seese-filterOptions li span,.price_slider_amount .price_label,.woocommerce ul.products li.product-category h3,.seese-custom-badge,.seese-product-image-col .onsale,.woocommerce ul.products li span.onsale,.seese-product-summary-col .entry-summary del .woocommerce-Price-amount,.woocommerce div.product .woocommerce-product-rating a,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-name,.seese-aside .product_list_widget li a,.seese-aside .product_list_widget li .quantity,.seese-aside .widget_shopping_cart_content .total,.seese-aside .widget_shopping_cart_content .total strong,.seese-filterOptions li a,.seese-copyright,.seese-sidebar .comment-publish label,.wpcf7-form select,.wpcf7-form input,.wpcf7-form textarea,input[type="date"],input[type="tel"],input[type="number"],.woocommerce .select2-container .select2-choice,input[type="password"],select,input[type="url"],textarea,input[type="email"],input[type="search"],input[type="text"],.tagbox .taglist a,.seese-pagination a .seese-label,.seese-pagination a .post-name,.breadcrumbs li,.wp-pagenavi span.pages,.seese-sidebar,.seese-sidebar li,.seese-sidebar li a,.seese-sidebar .widget_categories li a,.seese-sidebar .seese-recent-blog .boxright h4 a,.seese-sidebar table,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.woocommerce p,.woocommerce-checkout .checkout_coupon p,.woocommerce-checkout .login p,.track_order p,.woocommerce-ResetPassword p,.seese-containerWrap #seese-woo-register-wrap form.register p,.seese-containerWrap #seese-woo-login-wrap form.login p,.woocommerce label,.woocommerce-checkout .checkout_coupon label,.woocommerce-checkout .login label,.track_order label,.woocommerce-ResetPassword label,.seese-containerWrap #seese-woo-register-wrap form.register label,.seese-containerWrap #seese-woo-login-wrap form.login label,.seese-containerWrap #seese-woo-login-wrap form.login .woocommerce-LostPassword a,.seese-containerWrap .seese-login-form-divider span,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.seese-catslr-box .seese-catslr-text .seese-catslr-name,.seese-catdt-box .seese-catdt-text .seese-catdt-name{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-single-team .seese-team-member-job,.woocommerce-Tabs-panel .comment_container .meta time,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-desc,.seese-bottomboxes .subtitle,blockquote,.seese-contentCol .seese-publish li,.comment-wrapper .comments-date,.seese-commentbox .date,.comment-wrapper .comments-date .comments-reply a,.seese-sidebar .comment-publish span,.seese-cntr-box .cntr-details,.seese-team-box .seese-team-info .seese-lift-up .member-job,.seese-team-box .seese-team-text em,.seese-testi-pro a,.seese-testi-pro,address,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.slick-slider .seese-prslr-content .seese-prslr-desc,.seese-catslr-box .seese-catslr-text .seese-catslr-desc,.seese-catdt-box .seese-catdt-text .seese-catdt-desc{font-family:"Lora", Arial, sans-serif;font-style:normal;}.your-custom-class{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}
</style>
<script type="text/javascript">
/* <![CDATA[ */
var channel_io_options = {"channel_io_plugin_key":"7f424af9-c2ee-400f-aef2-b5edbe4a944e","channel_io_hide_default_launcher":"","channel_io_custom_launcher_selector":"","login":"1","id":"620541","display_name":"hero8081@naver.com","user_email":"hero8081@naver.com"};
/* ]]> */
</script>
<script type="text/javascript" src="./res/channel_plugin_script.js.다운로드"></script>
<script type="text/javascript" src="./res/core.min.js.다운로드"></script>
<script type="text/javascript" src="./res/widget.min.js.다운로드"></script>
<script type="text/javascript" src="./res/mouse.min.js.다운로드"></script>
<script type="text/javascript" src="./res/resizable.min.js.다운로드"></script>
<script type="text/javascript" src="./res/draggable.min.js.다운로드"></script>
<script type="text/javascript" src="./res/button.min.js.다운로드"></script>
<script type="text/javascript" src="./res/position.min.js.다운로드"></script>
<script type="text/javascript" src="./res/dialog.min.js.다운로드"></script>
<script type="text/javascript" src="./res/jquery.blockUI.min.js.다운로드"></script>
<script type="text/javascript" src="./res/js.cookie.min.js.다운로드"></script>
<script type="text/javascript">
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type="text/javascript" src="./res/woocommerce.min.js.다운로드"></script>
<script type="text/javascript">
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_b2627323470bbe1531b576244c5bb266"};
/* ]]> */
</script>
<script type="text/javascript" src="./res/cart-fragments.min.js.다운로드"></script>
<script type="text/javascript" src="./res/bootstrap.min.js.다운로드"></script>
<script type="text/javascript" src="./res/plugins.js.다운로드"></script>
<script type="text/javascript" src="./res/scripts.js.다운로드"></script>
<script type="text/javascript" src="./res/glide.min.js.다운로드"></script>
<script type="text/javascript" src="./res/jquery.simple-calendar.js.다운로드"></script>
<script type="text/javascript" src="./res/jquery.raty.js.다운로드"></script>
<script type="text/javascript" src="./res/jquery.validate.min.js.다운로드"></script>
<script type="text/javascript">
jQuery(document).ready(function($) {$("#commentform").validate({rules: {author: {required: true,minlength: 2},email: {required: true,email: true},comment: {required: true,minlength: 10}}});});
</script>
<script type="text/javascript" src="./res/wc-scripts.js.다운로드"></script>
<script type="text/javascript" src="./res/wcslog.js.다운로드"></script>
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
	<input name="progressMode" type="hidden" value="">
	<table style="border:0px !important; width:100%; height:100%;">
		<tbody><tr>
			<td align="center" valign="middle" style="border:0px !important; padding:0px 20px !important;">
				<div style="max-width:800px; background-color:#fff; border-radius:4px; padding:20px 20px; 20px 10px;">
					<div style="text-align:right;">
						<div style="display:inline-block; width:20px; height:20px; background:url(&#39;/wp-content/themes/wisely/assets/images/ic-close.png&#39;) 0 0 no-repeat; cursor:pointer;" onclick="closeAlert();"></div>
					</div>
					<div style="padding:0px 0px 25px 0px; font-size:20px; font-weight:bold; color:#000000;">
						&lt;리필 면도날 배송 지연 안내&gt;
					</div>
					<div style="font-size:14px; font-weight:bold; color:#000000; line-height:20px; padding:0px 20px 20px 20px;">
						주문 폭주로 인한 품절로&nbsp;&lt;리필 면도날 4개&gt;의&nbsp;배송이 지연되고&nbsp;있습니다.<br>
						지금 주문 시 3월 28일(목)부터 순차적으로 배송이 시작될 예정이고, 늦어도 3월 29일(금)에는 배송이 시작될 예정입니다.<br>
						고객님들의 양해를 부탁드리며 뜨거운 성원에 다시 한번 감사드립니다.
					</div>
					<div>
						<div style="display:inline-block; background-color:#0096ff; color:#fff; font-size:16px; font-family:&#39;notokr-demilight&#39;; padding:10px 30px; border-radius:4px; cursor:pointer;" onclick="goCheck();">
							확인했어요!
						</div>
					</div>
				</div>
			</td>
		</tr>
	</tbody></table>
</div>




<div id="pleaseWait" style="display:none; position:fixed; left:50%; top:50%; width:276px; height:110px; margin-left:-138px; margin-top:-55px; background-color:#fff; z-index:90000; border-radius:5px;">
  <div style="display:table; width:100%; height:100%;">
    <div style="display:table-cell; vertical-align:middle; text-align:center;">
      <div style="font-size:16px; font-weight:bold; color:#333;" class="waitContents">
        <div>잠시만 기다려 주세요 :)</div>
        <div style="overflow:hidden;">
          <img src="./res/pulse.svg" style="height:60px; margin-top:-20px; margin-bottom:-30px;">
        </div>
      </div>
    </div>
  </div>
</div><iframe height="0" width="0" style="display: none; visibility: hidden;" src="./res/activityi.html"></iframe>





<script type="text/javascript" id="">var ecmLogServer="adlog.cresendo.net",ecmCookieDays=45,ecmtoday=new Date,ecmToDay=ecmtoday.getFullYear()+""+FN_ZoneMark(ecmtoday.getMonth())+FN_ZoneMark(ecmtoday.getDate()),ecmID="wisely",ecmGoodNm="",ecmAmount="",ecmTarget="",ecmLogSend="Y",ecmCV="",ecmPN="";function FN_ZoneMark(a){return 10>a?"0"+a:a}
function FN_GetDomain(a){var b=a.split(".");return 3==b.length?2==b[1].length||"com"==b[1]?a:b[1]+"."+b[2]:3<b.length?2==b[b.length-2].length||"com"==b[b.length-2]?b[b.length-3]+"."+b[b.length-2]+"."+b[b.length-1]:b[b.length-2]+"."+b[b.length-1]:a}
function FN_SetCookie(a,b,c,d,e){var f=new Date;_ut=f.getTime();c=c?c:"/";null==b&&(e=0);null!=e?(_et=_ut+1E3*e,f.setTime(_et),_pt=" expires\x3d"+f.toUTCString()+";"):_pt="";null!=d&&(_pt+=" domain\x3d"+d+";");document.cookie=a+"\x3d"+escape(b)+"; path\x3d"+c+";"+_pt}function FN_GetCookie(a){return(a=document.cookie.match("(^|;) ?"+a+"\x3d([^;]*)(;|$)"))?unescape(a[2]):""}function FN_StrPos(a,b){for(var c=0;c<a.length;c++)if(a.substring(c,c+1)==b)return c;return-1}
function FN_FullDomain(a){0<FN_StrPos(a,":")&&(a=a.substring(0,FN_StrPos(a,":")));0<FN_StrPos(a,"/")&&(a=a.substring(0,FN_StrPos(a,"/")));return a=FN_GetDomain(a)}function FN_sendChk(a){for(var b=(new Date).getTime(),c=b;c-b<a;)c=(new Date).getTime()}
var _LandYn="N",_BookMark="N",_ecmPR=location.protocol.indexOf("https"),_ecmHostName=location.hostname,_ecmSearch=location.search,_ecmHash=location.hash,_ecmUL=document.URL,_ecmRF=document.referrer,_ecmDoMain=FN_FullDomain(_ecmHostName),_ecmAK=FN_GetCookie(ecmID+"_CTNAAKEY"),_ecmCK=FN_GetCookie(ecmID+"_CTNACKEY"),_ecmSS=FN_GetCookie(ecmID+"_CTNASESSION"),_ecmDate=FN_GetCookie(ecmID+"_CTNADATE"),_ecmInKey="",_ecmCV="",_ecmPN="",_ecmK="",_ecmLogSend="",_ecmSendCheck="Y",_ecmSendParam=_ecmUL.toUpperCase().indexOf("CTNASEND\x3d"),
_ecmULeKey=_ecmUL.toUpperCase().indexOf("CTNAKEY\x3d"),_ecmULTemp="",_ecmULSubDomain="",_ecmRFTemp="",_ecmRFSubDomain="";if(0<_ecmSendParam){var _ii=_ecmUL.indexOf("\x26",_ecmSendParam+9);_ecmSendCheck=0<_ii?_ecmUL.substring(_ecmSendParam+9,_ii):_ecmUL.substring(_ecmSendParam+9)}_ecmSendCheck=_ecmSendCheck.toUpperCase();
if("N"!=_ecmSendCheck){"/"==_ecmUL.charAt(_ecmUL.length-1)&&(_ecmUL=_ecmUL.substring(0,_ecmUL.length-1));_ecmRF&&""!=_ecmRF?(_ecmRF=_ecmRF.replace("'",""),_ecmRFTemp=_ecmRF.replace("http://",""),_ecmRFTemp=_ecmRFTemp.replace("https://",""),_ecmRFSubDomain=FN_FullDomain(_ecmRFTemp)):_ecmRFSubDomain="";_ecmUL=_ecmUL.replace("'","");_ecmULTemp=_ecmUL.replace("http://","");_ecmULTemp=_ecmULTemp.replace("https://","");_ecmULSubDomain=FN_FullDomain(_ecmULTemp);""!=_ecmRFSubDomain?_ecmULSubDomain!=_ecmRFSubDomain&&
0<_ecmULeKey&&(_LandYn="Y"):""!=_ecmCK&&(_BookMark="Y",_ecmInKey=_ecmCK);if("Y"==_LandYn||0<_ecmULeKey){_ii=_ecmUL.indexOf("\x26",_ecmULeKey+8);_ecmK=0<_ii?_ecmUL.substring(_ecmULeKey+8,_ii):_ecmUL.substring(_ecmULeKey+8);var _ss=_ecmK.indexOf("#");0<_ss&&(_ecmK=_ecmK.substring(0,_ss));FN_SetCookie(ecmID+"_CTNAKEY",_ecmK,"/",_ecmDoMain);_ecmK&&""!=_ecmK||(_ecmK="unknown");if("unknown"!=_ecmK){_ecmCK=_ecmK;_ecmDate=ecmToDay;FN_SetCookie(ecmID+"_CTNACKEY",_ecmK,"/",_ecmDoMain,86400*ecmCookieDays);FN_SetCookie(ecmID+
"_CTNADATE",ecmToDay,"/",_ecmDoMain,86400*ecmCookieDays);if(!_ecmSS||""==_ecmSS){var _DT=new Date;_ecmSS=Math.round(900*Math.random())%900+100+""+_DT.getTime()}FN_SetCookie(ecmID+"_CTNASESSION",_ecmSS,"/",_ecmDoMain,86400*ecmCookieDays);_ecmAK&&""!=_ecmAK||(_ecmAK=_ecmK,FN_SetCookie(ecmID+"_CTNAAKEY",_ecmK,"/",_ecmDoMain,86400))}_ecmInKey=0<_ecmPR?_ecmCK:"unknown"==_ecmK?"unknown"==_ecmCK?_ecmAK:_ecmCK:_ecmK}if("Y"==_LandYn||"Y"==_BookMark){if(""!=_ecmInKey||""!=_ecmAK){var _ecmLogUrl="//"+ecmLogServer+
"/?ac\x3d"+ecmID+"\x26k\x3d"+escape(_ecmInKey)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+"\x26gd\x3d"+encodeURIComponent(ecmGoodNm)+"\x26at\x3d"+ecmAmount+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d\x26pn\x3d\x26ss\x3d"+
_ecmSS+"\x26vr\x3d6.3",eLogxhr=new Image;eLogxhr.src=_ecmLogUrl;FN_sendChk(300)}}else 0<_ecmULeKey&&(_ecmLogUrl="//"+ecmLogServer+"/?ac\x3d"+ecmID+"\x26k\x3d"+escape(_ecmInKey)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+"\x26gd\x3d"+encodeURIComponent(ecmGoodNm)+"\x26at\x3d"+ecmAmount+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+
"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d\x26pn\x3d\x26ss\x3d"+_ecmSS+"\x26vr\x3d6.3",eLogxhr=new Image,eLogxhr.src=_ecmLogUrl,FN_sendChk(300))}
function csf(a,b,c,d){c="undefined"==typeof c?"":c;d="undefined"==typeof d?"":d;var e="Y",f=_ecmCK;"N"!=_ecmSendCheck&&"event"==a&&(_ecmCV="undefined"==typeof e||"string"!=typeof e?"":e,_ecmPN="undefined"==typeof b||"string"!=typeof b?"":b,_ecmLogSend="undefined"==typeof ecmLogSend||"string"!=typeof ecmLogSend?"":ecmLogSend,"Y"==_ecmLogSend?""==f&&""==_ecmAK||"Y"!=_ecmCV||(a="//"+ecmLogServer+"/?ac\x3d"+ecmID+"\x26k\x3d"+escape(f)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+
"\x26gd\x3d"+encodeURIComponent(c)+"\x26at\x3d"+d+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d"+_ecmCV+"\x26pn\x3d"+_ecmPN+"\x26ss\x3d"+_ecmSS+"\x26vr\x3d6.3",c=new Image,c.src=a,FN_sendChk(300)):(a="//"+ecmLogServer+"/?ac\x3d"+
ecmID+"\x26k\x3d"+escape(f)+"\x26ak\x3d"+escape(_ecmAK)+"\x26la\x3d"+_LandYn+"\x26bm\x3d"+_BookMark+"\x26gd\x3d"+encodeURIComponent(c)+"\x26at\x3d"+d+"\x26ud\x3d"+escape(_ecmULSubDomain)+"\x26ul\x3d"+escape(_ecmUL)+"\x26rd\x3d"+escape(_ecmRFSubDomain)+"\x26rl\x3d"+escape(_ecmRF)+"\x26pg\x3d"+escape(_ecmUL.replace(_ecmSearch+_ecmHash,""))+"\x26cd\x3d"+_ecmDate+"\x26br\x3d"+escape(navigator.appName)+"\x26os\x3d"+escape(navigator.userAgent)+"\x26et\x3d"+ecmTarget+"\x26cv\x3d"+_ecmCV+"\x26pn\x3d"+_ecmPN+
"\x26ss\x3d"+_ecmSS+"\x26vr\x3d6.3",c=new Image,c.src=a,FN_sendChk(300)))};</script>
<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("set","autoConfig",!1,"1975823006072148");fbq("init","1975823006072148");fbq("track","PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1975823006072148&amp;ev=PageView&amp;noscript=1"></noscript>

<script type="text/javascript" id="" charset="UTF-8" src="./res/kp.js.다운로드"></script><script type="text/javascript" id="">window._fs_debug=!1;window._fs_host="fullstory.com";window._fs_org="KESZK";window._fs_namespace="FS";
(function(f,k,l,m,g,e,a,h){l in f?f.console&&f.console.log&&f.console.log('FullStory namespace conflict. Please set window["_fs_namespace"].'):(a=f[l]=function(c,b,d){a.q?a.q.push([c,b,d]):a._api(c,b,d)},a.q=[],e=k.createElement(m),e.async=1,e.src="https://"+_fs_host+"/s/fs.js",h=k.getElementsByTagName(m)[0],h.parentNode.insertBefore(e,h),a.identify=function(c,b,d){a(g,{uid:c},d);b&&a(g,b,d)},a.setUserVars=function(c,b){a(g,c,b)},a.event=function(c,b,d){a("event",{n:c,p:b},d)},a.shutdown=function(){a("rec",
!1)},a.restart=function(){a("rec",!0)},a.consent=function(c){a("consent",!arguments.length||c)},a.identifyAccount=function(c,b){e="account";b=b||{};b.acctId=c;a(e,b)},a.clearUserCookie=function(){})})(window,document,window._fs_namespace,"script","user");FS.identify("620541",{displayName:"",email:"hero8081@naver.com"});</script>

<div id="ch-plugin"><div id="ch-plugin-script" style="display:none"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;" src="./res/saved_resource.html"></iframe></div><div id="ch-plugin-core"><style data-styled="" data-styled-version="4.3.2"></style><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-erNlkL fHFScb sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><div hidden="" class="sc-kEmuub jXeZgo sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><div size="300" class="sc-bwzfXH hMnCjf"></div><div class="sc-bxivhb bEUGlK"><div class="sc-ifAKCX ccgoiG"><div class="textLauncherContent sc-EHOje blkbwA"></div><div class="textLauncherIcon sc-bZQynM jqbAJa"><div hidden="" class="sc-htpNat sc-htoDjs jiXddj">0</div></div></div></div></div></div>
<script type="text/javascript" id="">kakaoPixel("5292146620548728567").pageView();</script>
<script type="text/javascript" id="" src="./res/js(1)"></script><iframe name="_hjRemoteVarsFrame" title="_hjRemoteVarsFrame" id="_hjRemoteVarsFrame" src="./res/box-469cf41adb11dc78be68c1ae7f9457a4.html" style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe><style data-styled="" data-styled-version="4.3.2"></style>
<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","UA-112004353-1",{page_title:google_tag_manager["GTM-KNJCD96"].macro(14),page_path:google_tag_manager["GTM-KNJCD96"].macro(15)});</script><script src="./res/adsct" type="text/javascript"></script></body></html>
