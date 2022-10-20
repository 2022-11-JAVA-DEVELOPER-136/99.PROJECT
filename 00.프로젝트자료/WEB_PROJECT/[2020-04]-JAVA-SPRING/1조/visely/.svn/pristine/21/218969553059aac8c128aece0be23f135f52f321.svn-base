<%@page import="com.itwill.dto.ProductImage"%>
<%@page import="com.itwill.dto.Address"%>
<%@page import="com.itwill.service.AddressService"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.itwill.dto.Product"%>
<%@page import="com.itwill.dto.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.service.CartService"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@page import="com.itwill.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session = "true" %>
<%@include file= "member_session.jspf" %>
<%
	request.setCharacterEncoding("UTF-8");
	String eMail =(String)session.getAttribute("loginId");
	HashMap hm = new HashMap();
	ArrayList<Map> prodDetailList = new ArrayList<Map>();
	ProductService pds = ProductServiceImpl.getProductService();
	int amt=0;
	int cPrice =0;
	String status=null;
	/*바로구매*/
	
	if(request.getParameter("requestGubun").equals("Direct")){
		status = request.getParameter("requestGubun");
		int pNo = Integer.parseInt(request.getParameter("pNo"));
		String pName = (String)request.getParameter("pName");
		int qty = Integer.parseInt(request.getParameter("qty"));
		cPrice = Integer.parseInt(request.getParameter("amt"));
		//System.out.println("바로구매");
		hm.put("pNo",pNo);
		hm.put("pName",pName);
		hm.put("cQty", qty);
		hm.put("cPrice", cPrice);
		amt = cPrice;
		prodDetailList.add(hm);
		
	} else if(request.getParameter("requestGubun").equals("Cart")){  /*카트*/
		status = request.getParameter("requestGubun");
		CartService cs = CartService.getInstance();
		prodDetailList = cs.selectJoin(eMail);
		
		for(Map h : prodDetailList){
			
			amt += (Integer)h.get("cPrice");
			
		}
	}
	AddressService as = AddressService.getInstance();
	Address addr = as.findOneAddress(eMail);


%>    
 
<!DOCTYPE html>
<!-- saved from url=(0037)https://www.wiselyshave.com/checkout/ -->
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#" class="seese-browser"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">

<meta name="google-site-verification" content="Kd_LFdQNt5vRWUmO9Qt2ovvL9BdZUWBB-lf8_E5gcfg">

<!-- 강사님 다음 코드 -->
<script src="./res/postcode.v2.js.다운로드"></script><script charset="UTF-8" type="text/javascript" src="./res/200117.js.다운로드"></script>
<script src="./res/190107.js.다운로드"></script>


<script type="text/javascript" async="" src="./res/ch-plugin-web.js.다운로드" charset="UTF-8"></script><script type="text/javascript" async="" src="./res/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./res/js"></script><script async="" src="./res/fs.js.다운로드"></script><script src="./res/1975823006072148" async=""></script><script async="" src="./res/fbevents.js.다운로드"></script><script type="text/javascript" async="" src="./res/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./res/uwt.js.다운로드"></script><script type="text/javascript" async="" src="./res/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./res/hotjar-1281523.js.다운로드"></script><script type="text/javascript" async="" src="./res/f.txt"></script><script async="" src="./res/gtm.js.다운로드"></script><script>var dataLayer=[];</script>
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

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- 함수 -->
  <script type="text/JavaScript">
	
	function submit_charge(){
		//Memo , address, phone, name
		document.f.action = "order_checkout_action.jsp";

		document.f.aName.value = document.getElementById("name").value;
		document.f.aAddress.value = document.getElementById("address").value
		document.f.aAddressDetail.value =	document.getElementById("address2").value;
		document.f.aPhone.value = document.getElementById("phone").value;
		document.f.aMemo.value = document.getElementById("memo").value;
		document.f.method ="POST";
		
		if(submit_check()){
			document.f.submit();
		} else {
			return false;
		}

	}
	
	
	function submit_check(){
		
		var isaName = document.f.aName.value;
		var isaAddress = document.f.aAddress.value;
		var isaAddressDetail = document.f.aAddressDetail.value;
		var isaPhone = document.f.aPhone.value;
		var isaMemo = document.f.aMemo.value;
		var isPayment_method = document.f.payment_method.value;
		
		if(isaName ==null || isaName==""){
			alert("받는 사람을 입력하세요.");
			return false;
		}
		
		if(isaAddress == null || isaAddress==""){
			alert("배송주소를 입력하세요.");
			return false;
		}
		
		if(isaAddressDetail == null || isaAddressDetail==""){
			alert("상세주소를 입력하세요.");
			return false;
		}
		
		if(isaPhone == null || isaPhone==""){						
			alert("연락가능한 전화번호를 입력하세요.");
			return false;
		}
		

		
		if(isPayment_method == null || isPayment_method==""){						
			alert("지불 방법을 선택하세요.");
			return false;
		}

		return true;
		
	}
	
	 
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수

	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	           // document.getElementById('new_address_zipcode').value = data.zonecode;
	            document.getElementById("address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("address2").focus();
	        }
	    }).open();
	}
	

	</script>

				

<link rel="stylesheet" href="./res/font-awesome.min.css">

<title>주문 및 결제하기 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날</title>

</head>
<body class="page-template-default page page-id-3035 logged-in woocommerce-checkout woocommerce-page" style="overflow: visible;">

		    
    <!-- Seese Wrap Start -->
    <iframe height="0" width="0" style="display: none; visibility: hidden;" src="./res/activityi.html"></iframe><div id="seese-wrap" class="simple seese-fixed-header">

	  <header class="seese-header scrolling" style="">

		<jsp:include page="common_top_menu.jsp"/>
	      </header>
	    
	    <!-- Seese Wrapper Start -->
	    <div class="seese-wrapper scrolling">

<div class="seese-containerWrap seese-extra-width">
	<div class="seese-background seese-background-outer">
		<div class="container">
			<div class="seese-background-inner  seese-container-inner" style="">
				<div class="row">

				
				<!-- Content Col Start -->
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 seese-no-sidebar seese-contentCol">
					<div class="seese-content-area">
						<style>
#btn-order-review-next, #btn_recent_shipping_address, #btn_new_shipping_address { cursor:pointer; }
ul.wc_payment_methods, ul.wc_payment_methods li{ list-style-type:none; font-size: 18px;}
.payment_method_iamport_subscription { font-size: 15px; }
.payment_methods .payment_method_description { display:none; }
.wisely-order-review { margin:100px auto 0; width:960px;}
.total-subscription{ font-size:24px; color:#666; }
.line { border-top: 2px solid #ccc !important; }
#terms-of-use-wrapper.invalidated { border: 1px solid #f00; box-shadow: 0 0 4px 0 #f00; padding:20px 20px 10px; margin-bottom:10px; }
#shipping_info_area input[data-validated=false]{ border: 1px solid #f00; box-shadow: 0 0 4px 0 #f00; }
#signup_area input[data-validated='']{ background-position: right; }
#signup_area input[data-validated=true]{ background: url(https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-roundBox-selected.png) no-repeat right; }
#signup_area input[data-validated=false]{ background: url(https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-roundBox-error.png) no-repeat right; }
.btn-sex[data-selected=true]{ border: 2px solid #0097ff; padding: 9px 10px !important; }
.error_msg { font-size:20px; color:#da0000; margin:20px 0;}
.woocommerce-error {font-size:17px; text-align:center !important;}
#password_recovery_area .msg .success { color: #0097ff; }
#password_recovery_area .msg .error { color: #da0000; }
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button { -webkit-appearance: none; margin: 0; } 
input[type="number"] { -moz-appearance: textfield; }
.wrap-zipcode { -webkit-overflow-scrolling: touch; overflow-y: scroll; }
.price-strike { color: #ccc; text-decoration: line-through;}

</style>



						<div class="row" id="wisely-checkout">

						<script>
						/** pure javascript patch (not using jquery here) for removing 'woocommerce' class */
						document.getElementById("wisely-checkout").parentNode.classList.remove("woocommerce");
						</script>

												<div class="wisely-order-review" id="order_view_area">
							<div class="subsection orderList">
								<div class="subsection-wrapper">
									<div class="section-content">
										<div class="subsection-text">

											
											
											<div class="mypage-title">
											주문 상세내역											
											</div>

											<table class="table orderDetailTable">
											<tbody><tr class="Topbar">
												<td>상품정보</td>
												<td>수량</td>
												<td>금액</td>
											</tr>
								

											
											<%
												int insertPno =-1;
												String p; 
												ProductServiceImpl psi = ProductServiceImpl.getProductService();
											%>
											<%for(Map prodInfo : prodDetailList){%>
											<tr class="product last woocommerce-cart-form__cart-item" product-id="1084" product-type="simple" cart-key="" product-price="8900" product-price-o="8900" product-price-d="" cart-quantity="1" support-free-shipping="Y">
												<td class="productList">
													
													<% 
														insertPno = (Integer)prodInfo.get("pNo");
														System.out.println(insertPno);
														p = psi.getProductImageName(insertPno);
														System.out.println(p);
													%>
													
													<img class="m-productImg" width="115" height="115" src="./image/<%=p%>"%>
													<div class="m-productName" style="padding-left:10px;"> <%=prodInfo.get("pName")%> </div>
                                                    <div class="m-productQuantity hidden-sm hidden-md hidden-lg" style="padding-left:10px;">
                                                    	수량: <%=prodInfo.get("cQty") %>                                                    </div>
												</td>
																						<td align="center"><div class="hidden-xs"><%=prodInfo.get("cQty") %></div></td>
												<td class="text-right">
													<div class="m-productPrice">
																												<span class="price-sale"><%=prodInfo.get("cPrice") %> 원</span>
													</div>
												</td>
												
											</tr>
											<%}%>																																	<tr class="shipping">
												<td colspan="3" class="text-right">
																										<span id="shipping-fee" data-shipping-fee="0">
																													 무료배송
																																										</span>
												</td>
											</tr>

																																																											
																						<tr class="total">
												<td colspan="3" class="text-right">
												총 결제금액:	<span class="totalArea" id="summary-total" data-shipping-fee="0" data-price-total="8900" data-summary-total="8900">
																<%=amt%> 원															</span>
												</td>
											</tr>

											
											</tbody></table>

											<div class="mypage-msg text-center col-xs-12 col-sm-12 col-md-12 col-lg-12 btn-mgTop100">
												<div style="color:#333333; padding:0px 10px;">
												평일 17시 이전 주문 시 오늘 출고												</div>
											</div>

											<div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
												
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear btn-mgBottom50"></div>

						                        
                        <div id="loggedin_area" style="display:none;" class="subsection">
							<div class="subsection-wrapper paddingtb">
								<div class="section-content aligncenter">
									<div class="subsection-text">
										<div class="stitle2">로그인 완료</div>
                                        <div class="loggedinBox">
                                            <div class="aligncenter">
                                                <p><span class="logged-email"></span><br>환영합니다</p>
                                            </div>
                                        </div>

                                        <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <a id="btn-logged-in-next" href="https://www.wiselyshave.com/checkout/#shipping_info_area" class="btn-fillBlue btn-aligncenter btn-mgTop50 btn-width250"><span>다음</span></a>
                                        </div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear"></div>

								<!-- 다음 클릭시 이쪽으로 이동 shipping_info_area -->
												<div id="shipping_info_area" style="display: block;" class="wisely-shipping-info">
							<div class="title">배송 정보</div>
							
							<div class="subsection">
								<div class="subsection-wrapper btn-mgBottom50">
									<div class="section-content">
										<div class="subsection-text">
											<ul class="tabBar">
												
												<li id="btn_new_shipping_address" class="selected">배송지 정보</li>
											</ul>
											
										<%if(addr ==null || addr.getAddress()==""){ %>
											<div class="new-address" style="">
												<div class="checkout-row form-inline">
													<dl class="dl-horizontal mypage-form half">
														<dt>이름</dt>
														<dd><input type="text" class="mypage-input" id="name" name="name" placeholder="" size="30" value="" data-validated="true"></dd>
													</dl>
													<dl class="dl-horizontal mypage-form half">
														<dt>휴대전화</dt>
														<dd><input type="tel" class="mypage-input" id="phone" name="phone" placeholder="" size="35" maxlength="13" value="" data-validated="true"></dd>
														<dd id="new_address_phone_exact" style="color:#0096ff; font-size:12px;"></dd>
													</dl>
												</div>
												<div class="checkout-row form-inline">
													<dl class="dl-horizontal mypage-form half">
														<dt>배송 주소</dt>
														<!-- <dd> -->
															<input type="hidden" class="mypage-input" id="new_address_zipcode" name="new_address_zipcode" size="16" readonly="" placeholder="우편번호" data-validated="true" value="10895">
															<!-- <a class="btn-filldarkgreyBox" id="new_address_zipcode_search" style="margin-left:0px; display:none;">주소 찾기</a> -->
														<!-- </dd> -->
														<dd style="position:relative;">
								
															<input type="text" class="mypage-input" id="address" name="address" placeholder="도로명, 건물명, 번지 중 검색" size="35" 
															data-validated="true" onclick="sample6_execDaumPostcode()" value="">
															<div id="wrap-zipcode-new" class="wrap-zipcode" style="border: 1px solid; width: 100%; height: 2095px; display: none;">
																<img src="./res/close.png" class="btn-fold-wrap-zipcode" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" alt="접기 버튼">
															</div>
														</dd>

														<dd style="margin-top:10px;">
															<input type="text" class="mypage-input" id="address2" name="address2" placeholder="나머지 주소" size="35" value="">
														</dd>
													</dl>
													<dl class="dl-horizontal mypage-form half">
													  <dt><div class="hidden-xs">배송 메모<br>(선택)</div><div class="hidden-sm hidden-md hidden-lg">배송 메모 (선택)</div></dt>
													  <dd><textarea name="memo" id="memo" cols="45" rows="2" class="mypage-input" size="30"></textarea></dd>
													</dl>
												</div>
											</div>
										<%}else{%>
										<div class="new-address" style="">
											<div class="checkout-row form-inline">
												<dl class="dl-horizontal mypage-form half">
													<dt>이름</dt>
													<dd><input type="text" class="mypage-input" id="name" name="name" placeholder="" size="30" value="<%=addr.getaName()%>" data-validated="true"></dd>
												</dl>
												<dl class="dl-horizontal mypage-form half">
													<dt>휴대전화</dt>
													<dd><input type="tel" class="mypage-input" id="phone" name="phone" placeholder="" size="35" maxlength="13" value="<%=addr.getaPhone() %>" data-validated="true"></dd>
													<dd id="new_address_phone_exact" style="color:#0096ff; font-size:12px;"></dd>
												</dl>
											</div>
											<div class="checkout-row form-inline">
												<dl class="dl-horizontal mypage-form half">
													<dt>배송 주소</dt>
												
													<dd style="position:relative;">

														<input type="text" class="mypage-input" id="address" name="address" 
														placeholder="도로명, 건물명, 번지 중 검색" size="35" data-validated="true" 
														onclick="sample6_execDaumPostcode()" value="<%=addr.getAddress()%>">
														<div id="wrap-zipcode-new" class="wrap-zipcode" style="border: 1px solid; width: 100%; height: 2095px; display: none;">
															<img src="./res/close.png" class="btn-fold-wrap-zipcode" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" alt="접기 버튼">
														</div>
													</dd>

													<dd style="margin-top:10px;">
															<input type="text" class="mypage-input" id="address2" name="address2" placeholder="나머지 주소" size="35" value=<%=addr.getAddressDetail()%>>
													</dd>
												</dl>
												<dl class="dl-horizontal mypage-form half">
												  <dt><div class="hidden-xs">배송 메모<br>(선택)</div><div class="hidden-sm hidden-md hidden-lg">배송 메모 (선택)</div></dt>
												  <dd><textarea name="memo" id="memo" cols="45" rows="2" class="mypage-input" size="30"><%=addr.getaMemo()%></textarea></dd>
												</dl>
											</div>
										</div>
										<%} %>
											
										</div>
									</div>
								</div>
							</div>

							<div class="nextbtnBox text-center">
								<div class="mypage-msg"><p>산간 및 도서지역 배송비 3,000원 추가</p></div>
								
							</div>
						</div>
						<div class="clear"></div>

												<div class="wisely-billing-info" style="display: block;" id="billing-info">
							<div class="title">결제 정보</div>
                                                        	<div class="desc text-center">
                            	고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br>
                                나이스페이먼츠(주)의 구매안전서비스를 이용하실 수 있습니다.<br>
                                <a class="underline wisely-ext-lightbox" href="https://www.wiselyshave.com/checkout/#nicepay" rel="noopener">서비스 가입사실 확인</a>
                            	</div>
                            							
							<div class="subsection col-xs-12 col-sm-12 col-md-4 col-md-offset-4">
							  <div class="subsection-wrapper btn-mgBottom50">
								  <div class="section-content">
									  <div class="subsection-text">

										<!-- 결제 완료 버튼 form!!!!-->
									<form id="f" name="f">
										
										<input type="hidden" name="woocommerce_checkout_place_order" value="1">
										<input type="hidden" name="payment_type" value="regular">
										<!-- requestGubun 이 있어야 focus가됨 -->
										<!-- Status1 -->
										<% if(status.equals("Cart")){%>
											<input type="hidden" name="requestGubun" value="Cart">
										<%}else if(status.equals("Direct")){ %>
											<input type="hidden" name="requestGubun" value="Direct">
										<%}%>
										<input type="hidden" name="billing_country" value="KR">
										<!-- 배송정보 -->
										<input type="hidden" id="aName" name="aName" value="">
										<input type="hidden" id="aPhone" name="aPhone" value="">
										<input type="hidden" id="cEmail" name="cEmail" value="">
										<input type="hidden" id="aMemo" name="aMemo" value="">
										<input type="hidden" id="aAddress" name="aAddress" value="">
										<input type="hidden" id="aAddressDetail" name="aAddressDetail" value="">
										
										<!-- 제품별 수량 및 가격 -->
										<%int ordProductCnt =0; %>
										<%for(Map prodInfo : prodDetailList){%>
											<%ordProductCnt++;%>
											<input type="hidden" id="pNo<%=ordProductCnt%>" name="pNo" value="<%=prodInfo.get("pNo")%>">
											<input type="hidden" id="pName<%=ordProductCnt%>" name="pName" value="<%=prodInfo.get("pName")%>">
											<input type="hidden" id="cQty<%=ordProductCnt%>" name="cQty" value="<%=prodInfo.get("cQty")%>">
											<input type="hidden" id="cPrice<%=ordProductCnt%>" name="cPrice" value="<%=prodInfo.get("cPrice")%>">
					
										<%}%>
										
										<input type="hidden" id=oCnt name="oCnt" value="<%=ordProductCnt%>">
										<input type="hidden" id=oAmount name="oAmount" value="<%=amt%>">

										<!-- 결재 방법 -->
										<!-- name =payment_method -->
										<!-- id = payment_method_kakaopay -->
										<!-- id = payment_method_iamport_card -->
										<!-- id = payment_method_iamport_payco -->
																				<div class="checkout-billing col-xs-12 col-sm-12 col-md-12">
											
												<ul class="wc_payment_methods payment_methods methods">
																									<li class="payment_method_kakaopay " data-id="kakaopay">

														<input type="radio" name="payment_method" id="payment_method_kakaopay" value="카카오페이">

																												<label for="payment_method_kakaopay" class="payment_method_title">
															카카오페이 <img src="./res/kakaopay_bi_yellow_btn.png" class="btn-kakao-pay-log"> <!-- 카카오페이이미지 -->														</label>
														
																											</li>
																									<li class="payment_method_iamport_card " data-id="iamport_card">

														<input type="radio" name="payment_method" id="payment_method_iamport_card" value="신용카드">

																												<label for="payment_method_iamport_card" class="payment_method_title">
															신용·체크카드 														</label>
														
																																													<div class="payment_method_iamport_card payment_method_description">
																																	</div>
																																										</li>
																									<li class="payment_method_iamport_payco " data-id="iamport_payco">

														<input type="radio" name="payment_method" id="payment_method_iamport_payco" value="PAYCO">

																												<label for="payment_method_iamport_payco" class="payment_method_title">
															PAYCO 														</label>
														
																																													<div class="payment_method_iamport_payco payment_method_description">
																																	</div>
																																										</li>
																									<li class="payment_method_iamport_subscription hide" data-id="iamport_subscription">

														<input type="radio" name="payment_method" id="payment_method_iamport_subscription" value="iamport_subscription">

																					<div style="clear:both;"></div>
																			<div style="padding-top:18px;">
																				
																			</div>
																		</div>
																	</div>
																</div>
																																										</li>
													
										
										<div class="checkout-last form-group mr-bt35 col-xs-12 col-sm-12 col-md-12 btn-mgBottom100">
											<div class="totla-price text-center">
												결제금액: <span class="price" id="billing-summary-total"><%=amt%> 원</span>
											</div>
											
											<input type = "hidden" name =" "  id=""></input>
											<input type="button" onclick="submit_charge()" name="woocommerce_checkout_place_order" id="place_order" value="결제하기" data-value="결제하기"><input type="hidden" id="_wpnonce" name="_wpnonce" value="e65802e2c0"><input type="hidden" name="_wp_http_referer" value="/checkout/">																					</div>
											<!--  type="submit" class="button alt btn-order" name="woocommerce_checkout_place_order" id="place_order" value="결제하기" data-value="결제하기"><input type="hidden" id="_wpnonce" name="_wpnonce" value="e65802e2c0"><input type="hidden" name="_wp_http_referer" value="/checkout/">	--> 																				</div>
										</form>

									  </div>
								  </div>
							  </div>
							</div>

						</div>
						<div class="clear"></div>

						<div id="mobile-indicator" class="hide-xs"></div>

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

#find_login_list_area {
	height: 100%;
	max-height: 150px;
	overflow-y: scroll;
}

#find_login_list_area .find_login_title {
	font-family: 'notokr-light';
	font-weight: 600;
	font-size: 12px;
	text-align: right;
	margin-top: 10px;
	margin-bottom: -5px;
}

#find_login_list_area .find_login_list {
	color: #155724;
    background-color: #d4edda;
	border-color: #c3e6cb;
	border: 1px;
	padding: 10px 15px;
	font-weight: 500;
	margin-bottom: 3px;
	position: relative;
}

#find_login_list_area .find_login_list .sub_info {
	position: absolute;
	top: 12px;
	right: 12px;
	font-size: 12px;;
	font-weight: 600;
	border-radius: 4px;
	cursor: pointer;
}

.login-input input{
    width: 100%;
    color: #121218;
    font-size: 16px !important;
    letter-spacing: -.5px;
    padding: 0 !important;
}

#find_login_area {
	display:none;
	margin:0 50% !important;
	left:-200px;
}

@media (max-width: 767px) {
	#find_login_area {
		margin: 0 !important;
		left: 5%;
		width: 90% !important;
	}
}


.awesomplete{ width:100%; }
</style>
<link rel="stylesheet" href="./res/awesomplete.css">
<script src="./res/awesomplete.min.js.다운로드" async=""></script>


<style>
.subsection{ z-index:unset; }
.lb-message{ font-size:18px !important; }
input.input-text.wc-credit-card-form-card-number,
input.input-text.wc-credit-card-form-card-expiry,
input.input-text.wc-credit-card-form-card-birth,
input.input-text.wc-credit-card-form-card-pwd
{
	height:40px !important;
	font-size:14px;
	margin-top:0px;
	border-radius: 3px;
	font-family:'Spoqa Han Sans' !important;
}
.form-row label{ margin-top:12px !important; font-family:'Spoqa Han Sans'; font-weight:bold; }
.seese-contentCol p{ padding-bottom:0px !important; }

input[type=text]::-ms-clear, input[type=password]::-ms-clear, input[type=email]::-ms-clear, input[type=tel]::-ms-clear, input[type=number]::-ms-clear {
	display:none !important;
}
.signupBox .signup-input{ padding-right:50px; }
</style>


<script>
function hideEasyPayIntro(){
	jQuery('#place_order').removeAttr('disabled'); 
	jQuery("#ajax-loading-div").fadeOut();
	//jQuery("#bg-lb-notification").fadeOut();
	jQuery("#easypay_intro_layer").fadeOut();
}

function select_easypay(){
	jQuery("li.payment_method_iamport_card").addClass("hide");
	jQuery("li.payment_method_iamport_subscription").removeClass("hide");
	jQuery("#payment_method_iamport_subscription").trigger("click");
	jQuery('#place_order').trigger('click');
}

function select_isp(){
	jQuery("li.payment_method_iamport_card").addClass("hide");
	jQuery("li.payment_method_iamport_subscription").removeClass("hide");
	jQuery("#payment_method_iamport_card").trigger("click");
	jQuery('#place_order').trigger('click');
}
</script>
<div id="easypay_intro_layer" style="position:fixed; width:100%; height:100%; top:0px; left:0px; background-color:rgba(1,1,1,0.1); display:none; z-index:10000;">
	<div style="position:absolute; background-color:#f6f6f6; width:310px; height:480px; left:50%; top:50%; margin-left:-155px; margin-top:-240px;">
		<div style="color:#000; font-size:20px; padding:15px 20px; position:relative; font-family:&#39;Spoqa Han Sans&#39;;">
			카드 결제 방식 선택
			<div style="position:absolute; top:13px; right:15px; cursor:pointer;" onclick="hideEasyPayIntro();">
				<img src="./res/ic-close.png">
			</div>
		</div>
		<div style="padding:5px 20px 20px 20px;">
			<div style="background-color:#fff; width:100%; height:190px; position:relative; border-radius:10px; cursor:pointer; margin-bottom:20px;" onclick="javascript:select_easypay();">
				<div style="width:100%; height:100%; padding:30px 60px 30px 10px; text-align:center;">
					<div><img src="./res/choice_card_2x.png" style="height:95px;"></div>
					<div style="padding-top:20px; font-size:12px; color:#666; font-family:&#39;Spoqa Han Sans&#39;;">
						<strong style="font-size:18px;">카드번호를 직접 입력</strong> 할게요.
					</div>
				</div>
				<div style="position:absolute; top:0px; right:0px; background-color:#484848; width:50px; height:100%; border-top-right-radius:10px; border-bottom-right-radius:10px;">
					<div style="position:absolute; top:50%; left:50%; margin-top:-30px; margin-left:-30px; width:60px; height:60px;">
						<img src="./res/white_arrow_right.png">
					</div>
				</div>
			</div>
			<div style="background-color:#fff; width:100%; height:190px; position:relative; border-radius:10px; cursor:pointer;" onclick="javascript:select_isp();">
				<div style="width:100%; height:100%; padding:30px 60px 30px 10px; text-align:center;">
					<div><img src="./res/choice_isp_2x.png" style="height:95px;"></div>
					<div style="padding-top:20px; font-size:12px; color:#666; font-family:&#39;Spoqa Han Sans&#39;;">
						<strong style="font-size:18px; color:#0096ff;">앱카드/간편결제</strong> 를 이용할게요.
					</div>
				</div>
				<div style="position:absolute; top:0px; right:0px; background-color:#0096ff; width:50px; height:100%; border-top-right-radius:10px; border-bottom-right-radius:10px;">
					<div style="position:absolute; top:50%; left:50%; margin-top:-30px; margin-left:-30px; width:60px; height:60px;">
						<img src="./res/white_arrow_right.png">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<link href="./res/SpoqaHanSans-kr.css" rel="stylesheet" type="text/css">
<style>
.totla-price{ font-family:'Spoqa Han Sans' !important; font-size:22px; }
.totla-price .price{ font-family:'Spoqa Han Sans' !important; font-size:28px; font-weight:bold; }
.price-sale, .totalArea, .woocommerce-cart-form__cart-item, .mypage-msg{ font-family:'Spoqa Han Sans'; }
.mypage-msg div{ color:#999 !important; margin-bottom:10px; }
.mypage-msg p{ color:#999 !important; margin-bottom:10px; }
input[type='tel']{ font-family:'Spoqa Han Sans' !important; font-weight:300; }
.Topbar td{ font-family:'Spoqa Han Sans'; }


.lds-dual-ring {
  display: inline-block;
  width: 25px;
  height: 25px;
  vertical-align: middle;
}
.lds-dual-ring:after {
  content: " ";
  display: block;
  width: 20px;
  height: 20px;
  margin: 1px;
  border-radius: 50%;
  border: 5px solid #fff;
  border-color: #fff transparent #fff transparent;
  animation: lds-dual-ring 1.2s linear infinite;
}
@keyframes lds-dual-ring {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>



<div id="kakaopay_area" style="display:none; position:fixed; top:0px; left:0px; width:100%; height:100%; z-index:1000000;">
	<div id="kakaopay_layers" style="position:absolute; top:50%; left:50%; margin-top:-245px; margin-left:-220px; width:440px; height:490px; background-color:#fff; border-radius:5px; overflow:hidden; box-shadow:5px 5px 5px 0px #888; border-top:2px solid #fdd835;">
		<div style="margin-top:240px; font-size:18px; text-align:center; font-family:&#39;notokr-regular&#39;;">카카오페이를 불러오는 중입니다.</div>
	</div>
</div>

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


<div id="lb-notification" class="lb-notification" style="position: fixed; width: 1388.1px; left: 687.5px; top: 365px !important; max-height: 888px !important; bottom: unset !important; display: none;">
	<a class="btn-close"></a>
	<p class="lb-message" style="margin-top: 40px !important;">우편번호, 배송 주소, 휴대전화 항목을 다시 입력해주세요.</p>
	<div class="lastbtnBox" style="display: block;">
		<a class="btn-fillBlue btn-width250 btn-last-close"><span>확인</span></a>
	</div>
	<div class="clear"></div>
</div>
<div id="bg-lb-notification" class="lightBoxBg" style="display: none;"></div>
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
                            <a href="https://www.wiselyshave.com/">
                                <svg xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg" viewBox="0 0 123 47" width="100%" height="100%">
<g><path d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"></path></g></svg>                            </a>
                        </div>
                    </div>
                    <div class="ft-right col-xs-12 col-sm-8 col-sm-offset col-md-8 col-md-offset col-lg-8 col-lg-offset">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class=" seese-widget footer-1-widget widget_nav_menu"><ul id="menu-footer-menu" class="main-navigation"><li id="menu-item-3969" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3969 seese-dropdown-menu"><a href="https://www.wiselyshave.com/checkout/#privacy">개인정보처리방침</a></li>
<li id="menu-item-3971" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3971 seese-dropdown-menu"><a href="https://www.wiselyshave.com/checkout/#terms">이용약관</a></li>
<li id="menu-item-3972" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3972 seese-dropdown-menu"><a href="https://www.wiselyshave.com/checkout/#guide">이용안내</a></li>
<li id="menu-item-2724517" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2724517 seese-dropdown-menu"><a href="https://www.wiselyshave.com/checkout/#career">채용</a></li>
</ul><div class="clear"></div></div> <!-- end widget --><div class=" seese-widget footer-1-widget widget_text">			<div class="textwidget"><p><b>주식회사 와이즐리컴퍼니</b>&nbsp;서울특별시 성동구 왕십리로 125, 8층 801호(성수동1가, KD타워)<br>
<b>대표자:</b> 김동욱 <b>사업자등록번호:</b> 344-88-00965 <a class="underline wisely-ext-lightbox" href="https://www.wiselyshave.com/checkout/#company-info" rel="noopener">사업자정보확인</a><br>
<b>통신판매업신고번호:</b> 2019-서울성동-01739&nbsp;<b>개인정보보호책임자:</b> 김윤호 <a class="link-email" href="mailto:yhkim@wiselyshave.com" target="_blank" rel="noopener">yhkim@wiselyshave.com</a><br>
<b>전화번호:</b> <a class="link-email" href="tel:1833-9133">1833-9133</a> <b>E-mail:</b> <a class="link-email" href="mailto:help@wiselyshave.com" target="_blank" rel="noopener">help@wiselyshave.com</a></p>
<div>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 나이스페이먼츠(주)의 구매안전서비스를 이용하실 수 있습니다. <a class="underline wisely-ext-lightbox" href="https://www.wiselyshave.com/checkout/#nicepay" rel="noopener">서비스 가입사실 확인</a></div>
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
        
	</footer></div><script type="text/javascript" id="">var ecmLogServer="adlog.cresendo.net",ecmCookieDays=45,ecmtoday=new Date,ecmToDay=ecmtoday.getFullYear()+""+FN_ZoneMark(ecmtoday.getMonth())+FN_ZoneMark(ecmtoday.getDate()),ecmID="wisely",ecmGoodNm="",ecmAmount="",ecmTarget="",ecmLogSend="Y",ecmCV="",ecmPN="";function FN_ZoneMark(a){return 10>a?"0"+a:a}
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


<script type="text/javascript" id="">kakaoPixel("5292146620548728567").pageView();</script>
<script type="text/javascript" id="" src="./res/js(1)"></script>
<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","UA-112004353-1",{page_title:google_tag_manager["GTM-KNJCD96"].macro(12),page_path:google_tag_manager["GTM-KNJCD96"].macro(13)});</script>

<!-- Footer Widgets End -->    
    <!-- Footer End-->
  
<!-- Seese Wrap End -->

 
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
<script type="text/javascript" src="./res/selectWoo.full.min.js.다운로드"></script>
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
var wc_country_select_params = {"countries":"{\"KR\":[]}","i18n_select_state_text":"\uc635\uc158\uc744 \uc120\ud0dd\ud558\uc138\uc694\u2026","i18n_no_matches":"\uc77c\uce58\ud558\ub294 \uac83\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4","i18n_ajax_error":"\ub85c\ub529\uc774 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4","i18n_input_too_short_1":"1 \uc774\uc0c1\uc758 \uae00\uc790\ub97c \uc785\ub825\ud558\uc138\uc694","i18n_input_too_short_n":"%qty% \uc774\uc0c1\uc758 \uae00\uc790\ub97c \uc785\ub825\ud558\uc138\uc694","i18n_input_too_long_1":"1 \uae00\uc790\ub97c \uc0ad\uc81c\ud558\uc138\uc694","i18n_input_too_long_n":"%qty% \uae00\uc790\ub97c \uc0ad\uc81c\ud558\uc138\uc694","i18n_selection_too_long_1":"1 \uc544\uc774\ud15c\ub9cc \uc120\ud0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4","i18n_selection_too_long_n":"%qty%\uc758 \uc544\uc774\ud15c\ub9cc \uc120\ud0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4","i18n_load_more":"\ub354 \ub9ce\uc740 \uacb0\uacfc \ub85c\ub529\u2026","i18n_searching":"\uac80\uc0c9\uc911\u2026"};
/* ]]> */
</script>
<script type="text/javascript" src="./res/country-select.min.js.다운로드"></script>
<script type="text/javascript">
/* <![CDATA[ */
var wc_address_i18n_params = {"locale":"{\"KR\":{\"state\":{\"required\":false}},\"default\":{\"first_name\":{\"label\":\"\\uc774\\ub984\",\"required\":true,\"class\":[\"form-row-first\"],\"autocomplete\":\"given-name\",\"autofocus\":true,\"priority\":10},\"last_name\":{\"label\":\"\\uc131\",\"required\":true,\"class\":[\"form-row-last\"],\"autocomplete\":\"family-name\",\"priority\":20},\"company\":{\"label\":\"\\ud68c\\uc0ac\\uba85\",\"class\":[\"form-row-wide\"],\"autocomplete\":\"organization\",\"priority\":30},\"country\":{\"type\":\"country\",\"label\":\"\\uad6d\\uac00\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\",\"update_totals_on_change\"],\"autocomplete\":\"country\",\"priority\":40},\"address_1\":{\"label\":\"\\uc8fc\\uc18c\",\"placeholder\":\"House number and street name\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-line1\",\"priority\":50},\"address_2\":{\"placeholder\":\"\\uc544\\ud30c\\ud2b8 \\ud638\\uc218 \\ub4f1. (\\uc120\\ud0dd\\uc801)\",\"class\":[\"form-row-wide\",\"address-field\"],\"required\":false,\"autocomplete\":\"address-line2\",\"priority\":60},\"city\":{\"label\":\"\\uc8fc\\uc18c - \\uc2dc\\\/\\ub3c4(\\ubc88\\uc9c0 \\uc774\\uc804\\uae4c\\uc9c0)\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-level2\",\"priority\":70},\"state\":{\"type\":\"state\",\"label\":\"\\uc8fc\\\/\\uad70\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"validate\":[\"state\"],\"autocomplete\":\"address-level1\",\"priority\":80},\"postcode\":{\"label\":\"\\uc6b0\\ud3b8\\ubc88\\ud638\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"validate\":[\"postcode\"],\"autocomplete\":\"postal-code\",\"priority\":90}}}","locale_fields":"{\"address_1\":\"#billing_address_1_field, #shipping_address_1_field\",\"address_2\":\"#billing_address_2_field, #shipping_address_2_field\",\"state\":\"#billing_state_field, #shipping_state_field, #calc_shipping_state_field\",\"postcode\":\"#billing_postcode_field, #shipping_postcode_field, #calc_shipping_postcode_field\",\"city\":\"#billing_city_field, #shipping_city_field, #calc_shipping_city_field\"}","i18n_required_text":"\ud544\uc218"};
/* ]]> */
</script>
<script type="text/javascript" src="./res/address-i18n.min.js.다운로드"></script>
<script type="text/javascript">
/* <![CDATA[ */
var wc_checkout_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","update_order_review_nonce":"387f4a43f1","apply_coupon_nonce":"8a363d3436","remove_coupon_nonce":"06a92df3d9","option_guest_checkout":"no","checkout_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=checkout","is_checkout":"1","debug_mode":"","i18n_checkout_error":"\uacb0\uc81c \ucc98\ub9ac \uc624\ub958. \ub2e4\uc2dc \ud574\uc8fc\uc138\uc694."};
/* ]]> */
</script>
<script type="text/javascript" src="./res/checkout.min.js.다운로드"></script>
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
<script type="text/javascript" src="./res/jquery.payment.min.js.다운로드"></script>
<script type="text/javascript" src="./res/credit-card-form.min.js.다운로드"></script>
<script type="text/javascript" src="./res/wcslog.js.다운로드"></script>
<script type="text/javascript">

if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_5a2dac8d7891";
if (!_nasa) var _nasa={};
wcs.inflow("wiselyshave.com");
wcs_do(_nasa);
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



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
      <div style="font-size:16px; font-weight:bold; color:#333;" class="waitContents">결제를 마칠 때까지 기다려 주세요.</div>
    </div>
  </div>
</div>





<script src="./res/adsct" type="text/javascript"></script><div id="ch-plugin"><div id="ch-plugin-script" style="display:none"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;" src="./res/saved_resource.html"></iframe></div><div id="ch-plugin-core"><style data-styled="" data-styled-version="4.3.2"></style><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-erNlkL fHFScb sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><div hidden="" class="sc-kEmuub jXeZgo sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><div size="300" class="sc-bwzfXH hMnCjf"></div><div class="sc-bxivhb bEUGlK"><div class="sc-ifAKCX ccgoiG"><div class="textLauncherContent sc-EHOje blkbwA"></div><div class="textLauncherIcon sc-bZQynM jqbAJa"><div hidden="" class="sc-htpNat sc-htoDjs jiXddj">0</div></div></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><iframe name="_hjRemoteVarsFrame" title="_hjRemoteVarsFrame" id="_hjRemoteVarsFrame" src="./res/box-469cf41adb11dc78be68c1ae7f9457a4.html" style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe></body></html>