<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = (String) request.getAttribute("email");
	if(email == null) {
		email = "";
	}
	String pwd = (String) request.getAttribute("pwd");
	if(pwd == null){
		pwd = "";
	}
	String birth = (String) request.getAttribute("birth");
	if(birth == null){
		birth = "";
	}
	String tel = (String) request.getAttribute("tel");
	if(tel == null){
		tel = "";
	}
	String msg = (String) request.getAttribute("msg");
	if(msg == null){
		msg = "";
	}
%>
<!DOCTYPE html>
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">

<!-- Mirrored from www.wiselyshave.com/signup/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jan 2020 11:05:30 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<link rel="profile" href="http://gmpg.org/xfn/11"/>

<meta name="google-site-verification" content="Kd_LFdQNt5vRWUmO9Qt2ovvL9BdZUWBB-lf8_E5gcfg" />
<script type="text/javascript">
	function member_join_submit() {
		if (f.email.value == "") {
			alert('이메일을 입력하세요');
			return false;
		}
		if (f.password.value == "") {
			alert('비밀번호를 입력하세요');
			return false;
		}
		if (f.birthday.value == "") {
			alert('생년월일을 입력하세요');
			return false;
		}
		if (f.main_phone.value == "") {
			alert('휴대전화를 입력하세요');
			return false;
		}
		if (document.f.rsltCk.value == "" || document.f.rsltCk.value == null) {
			alert("이메일 중복체크 하십시오");
			return false;
		}
		if (document.f.rsltCk.value == "이미 가입한 이메일입니다") {
			alert("이미 존재한 이메일입니다");
			return false;
		}
		/*
		if (document.f.idDuplication.value!='idCheck') {
			alert("아이디중복체크를 하여야합니다.");
			document.f.email.focus();
			return false;
		}
		*/
		document.getElementsByClassName("signup-form").item(0).action='member_write_action.jsp';
		document.getElementsByClassName("signup-form").item(0).method='GET';
		document.getElementsByClassName("signup-form").item(0).submit();
	}
	
	// 아이디 중복체크 화면open
/*	function openIdChk(){*/
		/*
		if (document.f.userId.value == "") {
			alert("아이디를 입력하십시요.");
			document.f.userId.focus();
			return false;
		}
		*/
/*		var param= "?email=" + document.f.email.value;
		window.name = "parentForm";
		window.open("member_email_check.jsp" + param, "chkForm", "width=500,height=300,resizable = no,scrollbars = no");	
	}*/
	
	function loadDoc_idCheck() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("result").innerHTML = this.responseText.trim();
			f.rsltCk.value = this.responseText.trim();
		}
        };
        xhttp.open("GET", "member_email_check.jsp?email=" + f.email.value, true);
        xhttp.send();
	}
	
	function enterkey() {
		if (window.event.keyCode == 13) {
			member_join_submit();
		}
	}
</script>
<script>var dataLayer=[];</script>
<script>
	dataLayer.push({
		"site_type": "d"
	});
</script>
<script>
	dataLayer.push({
		"sjk_user_number": "",
		"sjk_user_diplay_name": "",
		"sjk_user_email": ""
	});
</script>




<link rel="stylesheet" href="../../maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<title>회원가입 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날</title>



<script type='text/javascript' src='./wp-includes/js/jquery/jqueryb8ff.js?ver=1.12.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/unveil-lazyload8a54.js?ver=1.0.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/theme-scriptcc2a.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='../../cdn.iamport.kr/js/iamport.payment-1.1.6-20181005cf44.js?ver=20181009'></script>
<script type='text/javascript' src='./wp-content/plugins/iamport-for-woocommerce/assets/js/url.mincc2a.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='./wp-content/plugins/iamport-for-woocommerce/assets/js/iamport.woocommercecf44.js?ver=20181009'></script>
<script type='text/javascript' src='https://d3sfvyfh4b9elq.cloudfront.net/pmt/web/device.json?ver=4.8.3.01'></script>
<link rel='https://api.w.org/' href='./wp-json/index.html' />
<meta name="generator" content="WordPress 4.8.3.01" />
<meta name="generator" content="WooCommerce 3.2.2" />
<link rel='shortlink' href='../index43c4.html?p=2990' />
	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	</head>

<body class="page-template-default page page-id-2990">


	  <div class="seese-aside" id="seese-aside"><h2>장바구니</h2><div class="widget_shopping_cart_content">

	<p class="woocommerce-mini-cart__empty-message">장바구니에 상품이 없습니다.</p>


</div></div>		      <div class="seese-specialPage">
		        <a href="#">
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


<div class="seese-containerWrap seese-extra-width">
  <div class="seese-background seese-background-outer">
    <div class="container">
      <div class="seese-background-inner  seese-container-inner" style="">
        <div class="row">

          
          <!-- Content Col Start -->
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 seese-no-sidebar seese-contentCol">
            <div class="row seese-content-area">

                <div class="subsection">
                    <div class="subsection-wrapper wrapper960 paddingtb">
                        <div class="section-content aligncenter">
                            <div class="subsection-text">

								<div class="mypage-title">회원가입<a href="member_login_form.jsp" class="btn-arrow-left"><i class="fa fa-angle-left" aria-hidden="true"></i></a></div>
                                <div class="signupBox">
                                    <form class="signup-form" method="post" name="f">
<!--
									<input type="hidden" name="wisely-signup" value="1" />
-->
									<input type="hidden" name="gender" value="M" />
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">이메일</label></div>
                                            <div class="col-xs-12 col-sm-10">
                                            <input type="email" name="email" value="<%=email%>" maxlength="50" class="signup-input" data-validated="" placeholder="email@email.com" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"/></div>
                                        	<button type="button" onclick="loadDoc_idCheck()">중복확인</button>
											<span id="result"></span>
       		 								<input type="hidden" name="rsltCk" value="">
<!--
                                        	<input type="button" value="아이디중복검사" onclick="openIdChk();">
											<input type="hidden" name="idDuplication" value="idUncheck" >
-->
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">비밀번호</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="password" name="password" value="<%=pwd%>" minlength="1" maxlength="50" class="signup-input" data-validated="" placeholder="비밀번호" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">생년월일</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="number" name="birthday" value="<%=birth%>" class="signup-input" data-validated="" placeholder="19880917" required pattern="[0-9]{8}" maxlength="8" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">휴대폰</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="number" name="main_phone" value="<%=tel%>" class="signup-input" data-validated="" placeholder="01012345678" required pattern="[0-9]{11}" maxlength="11" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">성별</label></div>
                                            <div class="col-xs-12 col-sm-10">
                                                <div class="btn-sex hover" data-selected="true" data-value="M">남자</div>
                                                <div class="btn-sex" data-selected="false" data-value="F">여자</div>
                                            </div>
                                        </div>
                                        <font color="red"><%=msg%></font>
                                       <!--  
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-offset-2 col-sm-10">
                                                <div class="checkBox">
                                                    <label><input type="checkbox" name="agree_terms" value="1"><span class="checkmark"></span> 아래 약관과 회원 가입에 동의합니다 (필수)<br /><a href="#terms" class="wisely-ext-lightbox">이용약관,</a> <a href="#privacy" class="wisely-ext-lightbox">개인정보처리방침</a></label>
                                                </div>
                                                <div class="checkBox">
                                                    <label><input type="checkbox" name="agree_marketing_notices" value="1"><span class="checkmark"></span> 할인 혜택, 쿠폰 등 마케팅 수신 동의 (선택)</label>
                                                </div>
                                            </div>
                                        </div>
                                        -->
										<div class="error_msg"></div>
                                        <div class="form-group">
                                            <button type="button"  onclick="member_join_submit();" class="btn-fillBlue aligncenter btn-width250">가입완료</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
          </div>
          <!-- Content Col End -->

          
        </div>
      </div>
	</div>
  </div>
</div>


<style>
input{ background-position: right; }
input[data-validated=true]{ background: url(./wp-content/themes/wisely/assets/images/ico-roundBox-selected.png) no-repeat right; }
input[data-validated=false]{ background: url(./wp-content/themes/wisely/assets/images/ico-roundBox-error.png) no-repeat right; }
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
} 
input[type="number"] {
    -moz-appearance: textfield;
}
.btn-sex[data-selected=true]{ border: 2px solid #0097ff; padding: 9px 10px !important; }
.error_msg { font-size:20px; color:#da0000; margin:20px 0;}
</style>

<script>
window.onload = function(){
	jQuery(document).ready(function($){

		function validateEmptiness(o){
			if(o.val() == ""){
				o.attr("data-validated", "false");
				return false;
			}else{
				o.attr("data-validated", "true");
				return true;
			}
		}
/*
		// email
		function emailValidateCheck( obj ){
			var o = $(obj);
			// check email format
			if(validateEmptiness(o)){
				var regex_email = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
				if(regex_email.test(o.val())){
					o.attr("data-validated", "true");
					return true;
				}else{
					o.attr("data-validated", "false");
					return false;
				}
			}
			return false;
		}
		$("input[name=email]").keyup(function() { emailValidateCheck( $(this) ); });
		$("input[name=email]").focusout(function() { emailValidateCheck( $(this) ); });
		$("input[name=email]").on("awesomplete-selectcomplete", function(e){ emailValidateCheck( $(this) ); });

		// password, birthday
		$("input[name=password], input[name=birthday]").keyup(function(){
			var o = $(this);
			if(validateEmptiness(o)){
				var regex = /^(.+){6,}$/
				if(regex.test(o.val())){
					o.attr("data-validated", "true");
					return true;
				}else{
					o.attr("data-validated", "false");
					return false;
				}
			}
			return false;
		});
*/
/*
		// main_phone
		$("input[name=main_phone]").keyup(function(){
			var o = $(this);
			var num = o.val().replace(/-/gi, "");

			if(validateEmptiness(o)){
				var regex = /^01[0-9]([0-9]+){7,8}$/
				var regex_test = regex.test( num );
				if( num.length > 11 ){ regex_test = false; }

				o.attr("data-validated", regex_test ? "true" : "false");

				var madePhone = phoneFomatter(num);
				o.val( madePhone );

				return regex_test;
			}
			return false;
		});
*/
/*
		// form validation
		$("form.signup-form").submit(function(e){
			e.preventDefault();
			$(".error_msg").text("");
			var input_text = ["email", "password", "birthday", "main_phone"];
			for(var i=0; i<input_text.length; i++){
				if($("input[name="+input_text[i]+"]").attr("data-validated") == "false"){
					$.show_notification_msg_lightbox("입력하신 항목들을 다시한번 확인해주세요.");
					return false;
				}
			}
			//console.log("part2");
*/			
			// (required) agree_terms
			// (optional) agree_marketing_notices
/*
			var obj = $("input[name=agree_terms]");
			if(obj.attr("checked") != "checked"){
				$.show_notification_msg_lightbox("약관에 동의하셔야 회원으로 가입할 수 있습니다.");
				return false;
			}
*/
			//console.log("part3");
/*
			$("#ajax-loading-div").fadeIn();
			$.post(
				"./wp-admin/admin-ajax.html", { 
					action: 'wisely_register', 
					data:$(this).serialize() 
				}, 
				function(response){
					if(response.is_succeeded == false){
						//$(".error_msg").text(response.error_msg);
						$.show_notification_msg_lightbox(response.error_msg);
					}else{
						location.href = "../signed-up/index.html";
					}
				}, "json")
				.always(function(){ $("#ajax-loading-div").fadeOut(); });
		});
*/
		// switch gender: M/F
		$(".btn-sex").click(function(){
			$(".btn-sex").each(function(){
				$(this).attr("data-selected", "false");
			});
			$(this).attr("data-selected", "true");
			$(".signup-form input[name=gender]").val($(this).attr("data-value"));
		});


		new Awesomplete('input[type="email"]', {
            list: ["naver.com", "gmail.com", "daum.net", "hanmail.net", "nate.com", "hotmail.com", "icloud.com"],
            data: function (text, input) {
                return input.slice(0, input.indexOf("@")) + "@" + text;
            },
            filter: Awesomplete.FILTER_STARTSWITH,
            sort: false
        });
        $("input[type='email']").focus();
	});
};



function phoneFomatter(getnum,type)
{
	var num = getnum.replace(/-/gi, "");
	var formatNum = '';
	if(num.length>3 & num.length<7){
		if(num.indexOf('02')==0){
			formatNum = num.replace(/(\d{2})/, '$1-');
		}else{
			formatNum = num.replace(/(\d{3})/, '$1-');
		}
	}
	else if(num.length<=10){
		if(num.indexOf('02')==0){
			if(num.length==10){
				formatNum = num.replace(/(\d{2})(\d{4})/, '$1-$2-');
			}else{
				formatNum = num.replace(/(\d{2})(\d{3})/, '$1-$2-');
			}
		}else{
			formatNum = num.replace(/(\d{3})(\d{3})/, '$1-$2-');
		}
	}
	else if(num.length==11){
		formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
	}
	/*
	else if(num.length==8){
		formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
	}
	*/
	else{
		formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
	}
	return formatNum;
}
</script>
<style>
.awesomplete{ width:100%; }
</style>
<link rel="stylesheet" href="./wp-content/themes/wisely/assets/js/awesomplete/awesomplete.css" />
<script src="./wp-content/themes/wisely/assets/js/awesomplete/awesomplete.min.js" async></script>


<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KNJCD96"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<style>
a, .infomark{ cursor:pointer; }
#bg-lightbox-product-detail { pointer-events:none; }
#ajax-loading-div { 
	background-image:url(./wp-content/themes/wisely/assets/images/ico-ajax-spinner-70x70.gif); 
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
                            <a href="../index.html">
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
<link rel='stylesheet' id='seese-default-style-css'  href='./wp-content/themes/wisely/stylecc2a.css?ver=4.8.3.01' type='text/css' media='all' />
<style id='seese-default-style-inline-css' type='text/css'>
.no-class {}.seese-title-bg-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-title-default .page-title {color:;}.no-class {}.seese-title-bg-outer::before {content:"";position:absolute;top:0;left:0;width:100%;height:100%;background-color:;}.no-class {}.seese-title-bg-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-background-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-background-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-footer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}body.page-id- {}.no-class {}@media (max-width:767px) {.seese-mainmenu {display:none;}.slicknav_menu {display:block;}.slicknav_menu .nav.navbar-nav {display:block;}.navbar {min-height:inherit;}.seese-navicon {padding-top:14px;padding-bottom:13px;}.sub-menu.row {margin:0 !important;}.seese-fixed-header .scrolling.seese-header .seese-topright,.seese-topright {padding-right:50px;}}.no-class {}.seese-preloader-mask {background-color:#FFFFFF;height:100%;position:fixed;width:100%;z-index:100000;top:0;right:0;bottom:0;left:0;line-height:0px;}#seese-preloader-wrap {display:table;margin:0 auto;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-moz-transform:translateY(-50%);position:relative;line-height:0px;}.seese-preloader-html. > div {background-color:;color:;}body, .woocommerce .seese_single_product_excerpt p,#tab-description p,.woocommerce-Reviews .description p{font-family:"Noto Sans", Arial, sans-serif;font-size:14px;line-height:1.42857143;font-style:normal;}.seese-header .seese-logo a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-mainmenu ul li a, #seese-mobilemenu .slicknav_nav li a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}#seese-mobilemenu .slicknav_nav li a.seese-title-menu,.seese-mainmenu ul li a.seese-title-menu,.seese-mainmenu ul li.seese-megamenu > ul > li > a:link,.seese-mainmenu ul li.seese-megamenu > ul > li > a:active,.seese-mainmenu ul li.seese-megamenu > ul > li > a:visited{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.woocommerce .variations label,.woocommerce p.woocommerce-result-count,.seese-single-team .seese-team-member-name,.woocommerce p.stock.out-of-stock,.seese-load-more-controls.seese-btn-mode .seese-btn,.woocommerce .group_table td del .woocommerce-Price-amount,.woocommerce .group_table td.label a,.woocommerce table.shop_table_responsive tr td:before, .woocommerce-page table.shop_table_responsive tr td:before,.seese-single-product-share .container > a,.woocommerce-Tabs-panel .comment_container .meta strong,.seese-product-summary-col .entry-summary ins .woocommerce-Price-amount,h1, h2, h3, h4, h5, h6,.seese-aside h2,.seese-aside .widget_shopping_cart_content .buttons a,.seese-specialPage a,.seese-gototop a,.modal-content input[type="search"],.seese-filterTabs li a,.seese-footer .widget_nav_menu li a,.seese-contentCol h1, .seese-contentCol h2, .seese-contentCol h3, .seese-contentCol h4, .seese-contentCol h5, .seese-contentCol h6,.seese-contentCol .seese-publish li a,.single .seese-article strong,.seese-sharebar .sharebox a,.seese-author .author-content a,.seese-author .author-content label,.seese-commentbox h3.comment-reply-title,.seese-commentbox h3.comments-title,.seese-readmore a,.seese-sidebar h2.widget-title,.seese-team-box .seese-team-info .seese-lift-up .member-name a,.seese-team-box .seese-team-info .seese-lift-up .member-name,.seese-testi-name a,.seese-testi-name,.woocommerce-checkout .checkout_coupon .form-row-last input[type="submit"],.woocommerce-checkout .login input[type="submit"],.woocommerce table strong,.woocommerce table th,.woocommerce-checkout-review-order-table strong,.woocommerce-checkout-review-order-table th,.cart-empty,.woocommerce-message,.woocommerce ul.products li a.added_to_cart.wc-forward,.woocommerce ul.products li a.button,.seese-dropcap,.seese-form-order-filter select,.seese-content-area .seese-result-count p,.page-numbers a,.page-numbers span.current,.wp-pagenavi span.current,.wp-pagenavi a,.seese-product-summary-col .entry-summary .woocommerce-Price-amount.amount{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-price,.seese-product-summary-col .product_meta span,.seese-sidebar .seese-recent-blog .boxright label,.seese-sidebar .tagcloud a,.seese-sidebar th,.seese-sidebar td,.seese-testi-name:before,.seese-testi-name:after,.woocommerce textarea,.woocommerce input[type="tel"],.woocommerce input[type="text"],.woocommerce input[type="password"],.woocommerce input[type="email"],.woocommerce input[type="url"],.woocommerce .select2-container .select2-choice,.woocommerce-checkout .checkout_coupon input[type="text"],.woocommerce-checkout .login input[type="password"],.woocommerce-checkout .login input[type="text"],.track_order input[type="text"],.woocommerce-ResetPassword input[type="text"],.seese-containerWrap #seese-woo-register-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="url"],.seese-containerWrap #seese-woo-login-wrap textarea,.seese-containerWrap #seese-woo-login-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="search"],.seese-containerWrap #seese-woo-login-wrap input[type="text"],.seese-containerWrap #seese-woo-login-wrap input[type="password"],.woocommerce-checkout .woocommerce-info,#ship-to-different-address .checkbox,#ship-to-different-address .input-checkbox,.woocommerce-checkout-payment label{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-sidebar h2.widget-title a,.up-sells.products h2,.related.products h2,.woocommerce p.cart-empty,#review_form h3.comment-reply-title,.wc-tabs-wrapper .wc-tabs li a,.seese-product-summary-col .quantity input,.seese-contentCol h1.product_title,button,.button,.vc_btn3-container a.vc_general,.seese-blog-pagination a,.seese-btn,input[type="submit"],input[type="button"],.seese-filterOptions h3,.wpcf7-form input[type="submit"],.seese-cntr-box .cntr-value,.seese-cntr-box .cntr-title,.slick-slider .seese-prslr-content .seese-prslr-shopNow-title a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-bottomboxes h4,.seese-contentCol strong,.seese-contentCol h1.post-heading,.seese-title-area .page-title,.track_order h2,.seese-containerWrap #seese-woo-register-wrap h2,.seese-containerWrap #seese-woo-login-wrap h2,.woocommerce-checkout .checkout_coupon input[type="submit"],.woocommerce-checkout .login input[type="submit"],.track_order input[type="submit"],.woocommerce-ResetPassword input[type="submit"],.seese-containerWrap #seese-woo-register-wrap .seese-btn#seese-show-login-button,.seese-containerWrap #seese-woo-register-wrap input[type="submit"],.seese-containerWrap #seese-woo-login-wrap .seese-btn,.seese-containerWrap #seese-woo-login-wrap input[type="submit"],.form-row.place-order input[type="submit"]{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-title,.woocommerce td, .woocommerce th, .woocommerce-checkout-review-order-table td, .woocommerce-checkout-review-order-table th,.seese-filterOptions li span,.price_slider_amount .price_label,.woocommerce ul.products li.product-category h3,.seese-custom-badge,.seese-product-image-col .onsale,.woocommerce ul.products li span.onsale,.seese-product-summary-col .entry-summary del .woocommerce-Price-amount,.woocommerce div.product .woocommerce-product-rating a,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-name,.seese-aside .product_list_widget li a,.seese-aside .product_list_widget li .quantity,.seese-aside .widget_shopping_cart_content .total,.seese-aside .widget_shopping_cart_content .total strong,.seese-filterOptions li a,.seese-copyright,.seese-sidebar .comment-publish label,.wpcf7-form select,.wpcf7-form input,.wpcf7-form textarea,input[type="date"],input[type="tel"],input[type="number"],.woocommerce .select2-container .select2-choice,input[type="password"],select,input[type="url"],textarea,input[type="email"],input[type="search"],input[type="text"],.tagbox .taglist a,.seese-pagination a .seese-label,.seese-pagination a .post-name,.breadcrumbs li,.wp-pagenavi span.pages,.seese-sidebar,.seese-sidebar li,.seese-sidebar li a,.seese-sidebar .widget_categories li a,.seese-sidebar .seese-recent-blog .boxright h4 a,.seese-sidebar table,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.woocommerce p,.woocommerce-checkout .checkout_coupon p,.woocommerce-checkout .login p,.track_order p,.woocommerce-ResetPassword p,.seese-containerWrap #seese-woo-register-wrap form.register p,.seese-containerWrap #seese-woo-login-wrap form.login p,.woocommerce label,.woocommerce-checkout .checkout_coupon label,.woocommerce-checkout .login label,.track_order label,.woocommerce-ResetPassword label,.seese-containerWrap #seese-woo-register-wrap form.register label,.seese-containerWrap #seese-woo-login-wrap form.login label,.seese-containerWrap #seese-woo-login-wrap form.login .woocommerce-LostPassword a,.seese-containerWrap .seese-login-form-divider span,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.seese-catslr-box .seese-catslr-text .seese-catslr-name,.seese-catdt-box .seese-catdt-text .seese-catdt-name{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-single-team .seese-team-member-job,.woocommerce-Tabs-panel .comment_container .meta time,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-desc,.seese-bottomboxes .subtitle,blockquote,.seese-contentCol .seese-publish li,.comment-wrapper .comments-date,.seese-commentbox .date,.comment-wrapper .comments-date .comments-reply a,.seese-sidebar .comment-publish span,.seese-cntr-box .cntr-details,.seese-team-box .seese-team-info .seese-lift-up .member-job,.seese-team-box .seese-team-text em,.seese-testi-pro a,.seese-testi-pro,address,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.slick-slider .seese-prslr-content .seese-prslr-desc,.seese-catslr-box .seese-catslr-text .seese-catslr-desc,.seese-catdt-box .seese-catdt-text .seese-catdt-desc{font-family:"Lora", Arial, sans-serif;font-style:normal;}.your-custom-class{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var channel_io_options = {"channel_io_plugin_key":"7f424af9-c2ee-400f-aef2-b5edbe4a944e","channel_io_hide_default_launcher":"","channel_io_custom_launcher_selector":"","login":""};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/channel-io/channel_plugin_scriptcc2a.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/core.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/widget.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/mouse.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/resizable.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/draggable.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/button.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/position.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/dialog.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.minee9a.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_b2627323470bbe1531b576244c5bb266"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.minee9a.js?ver=3.2.2'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/bootstrap.mine485.js?ver=3.3.6'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/pluginsc2c0.js?ver=1.1.0.04'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/scriptsc2c0.js?ver=1.1.0.04'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/glidejs/dist/glide.min5152.js?ver=1.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/simple-calendar/jquery.simple-calendar8d64.js?ver=1580295866'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/raty/jquery.raty5152.js?ver=1.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/jquery.validate.min8162.js?ver=1.9.0'></script>
<script type='text/javascript'>
jQuery(document).ready(function($) {$("#commentform").validate({rules: {author: {required: true,minlength: 2},email: {required: true,email: true},comment: {required: true,minlength: 10}}});});
</script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/wc-scripts5152.js?ver=1.0'></script>
<script type="text/javascript" src="../../wcs.naver.net/wcslog.js"></script>
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
						<div style="display:inline-block; width:20px; height:20px; background:url('./wp-content/themes/wisely/assets/images/ic-close.png') 0 0 no-repeat; cursor:pointer;" onclick="closeAlert();"></div>
					</div>
					<div style="padding:0px 0px 25px 0px; font-size:20px; font-weight:bold; color:#000000;">
						<리필 면도날 배송 지연 안내>
					</div>
					<div style="font-size:14px; font-weight:bold; color:#000000; line-height:20px; padding:0px 20px 20px 20px;">
						주문 폭주로 인한 품절로 <리필 면도날 4개>의 배송이 지연되고 있습니다.<br>
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
          <img src="./wp-content/themes/wisely/assets/images/svg/pulse.svg" style="height:60px; margin-top:-20px; margin-bottom:-30px;">
        </div>
      </div>
    </div>
  </div>
</div>



</body>

<!-- Mirrored from www.wiselyshave.com/signup/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jan 2020 11:05:30 GMT -->
</html>
