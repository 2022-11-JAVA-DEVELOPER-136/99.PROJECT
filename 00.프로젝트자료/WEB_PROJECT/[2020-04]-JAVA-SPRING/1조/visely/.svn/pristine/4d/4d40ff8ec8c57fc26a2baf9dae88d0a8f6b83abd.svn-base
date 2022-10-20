<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf" %>

<%    
	//cEmail="1234@email.com";
	if(cEmail==null || cEmail.equals("")){
		response.sendRedirect("member_login_form.jsp");
		return;
	}
	CartService cartService = CartService.getInstance();
	ArrayList<Map> cartList = cartService.selectJoin(cEmail);
	int sum=0;
	for(Map rowMap : cartList){
		sum+=(Integer)rowMap.get("cPrice");
	}
	int count=0;
	for(Map countMap : cartList){
		if(countMap.get("cNo")!=null){
			count++;
		}
	}
	ProductServiceImpl productService = ProductServiceImpl.getProductService();
	//productService.getImageList();
	
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
		"sjk_user_number": "",
		"sjk_user_diplay_name": "",
		"sjk_user_email": ""
	});
</script>
<script>
	dataLayer.push({
		"PageType": "BasketPage",
		"products_info": [{id:'1084', price:'8900', quantity:'2'}]
	});
</script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<title>장바구니 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날</title>


	
<script>

/*
function cart_update_up(pPrice,cNo,cQty){
	var cart_form = document.getElementById('cart_form_'+cNo);
	cart_form.method = "GET";
	cart_form.action = "cart_up_action.jsp";
	cart_form.submit();
}
*/
function cart_delete(cNo){	
	var cart_form = document.getElementById('cart_delete_form_'+cNo);
	cart_form.method = "GET";
	cart_form.action = "cart_delete_item.jsp";
	cart_form.submit();
	
	
	
}
function cart_update_down(pPrice,cNo,cQty){	
	if(document.getElementById("cart-value_"+cNo).innerHTML<=1){
		return false;
	}
	var cart_form = document.getElementById('cart_form_'+cNo);
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState==4){			
			var jsonObject = JSON.parse(this.responseText);
			document.getElementById("cart-value_"+cNo).innerHTML = jsonObject.cQt;
			document.getElementById("price-sum_"+cNo).innerHTML = jsonObject.pPr+"원";		
			document.getElementById("cart_tot_price1").innerHTML = jsonObject.sAmt+"원";
			document.getElementById("cart_tot_price2").innerHTML = jsonObject.sAmt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원";
			
		}
	};
	xhttp.open("GET", "cart_down_action.jsp?cNo="+cNo+"&pPrice="+pPrice+"&cQty="+cQty,true);
	xhttp.send();
}

function cart_update_up(pPrice,cNo,cQty){
	var cart_form = document.getElementById('cart_form_'+cNo);	
	var xHttp = new XMLHttpRequest();
	xHttp.onreadystatechange = function(){
		if(xHttp.readyState==4){		    
			var jsonObject=JSON.parse(this.responseText);
			document.getElementById("cart-value_"+cNo).innerHTML = jsonObject.cQt;
			document.getElementById("price-sum_"+cNo).innerHTML = jsonObject.pPr+"원";		
			document.getElementById("cart_tot_price1").innerHTML = jsonObject.sAmt+"원";
			document.getElementById("cart_tot_price2").innerHTML = jsonObject.sAmt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원";
		}
	}
	xHttp.open("GET", "cart_up_action.jsp?cNo="+cNo+"&pPrice="+pPrice+"&cQty="+cQty,true);
	xHttp.send();
}

function cart_order(sum){
	var cart = document.getElementById("cart_go");
	if(sum!=0){
		cart.method = "GET";
		cart.action = "order_checkout.jsp";
		cart.submit();
	}else{
		alert("상품을 선택하세요");
	}
}
	
	

</script>	
</head>

<body class="page-template-default page page-id-3037 woocommerce-cart woocommerce-page">

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KNJCD96"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


		    
    <!-- Seese Wrap Start -->
    <div id="seese-wrap" class="seese-fixed-header">

<header class="seese-header hidden-xs" style="">
<!-- Menubar Starts -->
<jsp:include page ="common_top_menu.jsp"/>
<!-- Menubar End -->
 </header>
            <header class="seese-header cart hidden-sm hidden-md hidden-lg" style="">
            	<a class="ic-cart-header-arrow" onclick="history.back();"></a>
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
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="woocommerce"><div class="wisely-cart">

	
    <div class="title">장바구니</div>

    
		<div class="sub-title">
			<span class="min-checkout-free-shipping" data-value="15000"></span>구매 시 무료배송 / 평일 17시 이전 주문 시 오늘출고
		</div>

		<table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
		<thead>
		<tr>
			<th class="product-name">상품정보</th>
			<th class="product-quantity">수량</th>
			<th class="product-price">금액</th>
			<th class="product-remove"></th>
		</tr>
		</thead>
		
		<%for(Map cart : cartList){ %>
			<tr>
				<td>
					<div class="img-area"><a href="product_list_detail.jsp?pNo=<%=cart.get("pNo")%>"><img src="./image/<%=cart.get("imgName")%>" width="120" /></a></div>
					<div class="text-area">
						<div class="cart-product-title"><a href="product_list_detail.jsp?pNo=<%=cart.get("pNo")%>"><%=cart.get("pName") %></a></div>
						<div class="cart-product-subtitle"><%=cart.get("pDesc") %></div>
					</div>
					<div class="clear"></div>
				</td>
				<td>
					<form class="woocommerce-cart-form" id="cart_form_<%=cart.get("cNo") %>" name = "cart_form_<%=cart.get("cNo")%>">
						<input type="hidden" name = "cNo" value="<%=cart.get("cNo")%>">
						<input type="hidden" name = "pPrice" value="<%=cart.get("pPrice")%>">
						<input type="hidden" name = "cQty" value="1">
					<span class="cart-minus" id="cart_update_down" onclick="cart_update_down(<%=cart.get("pPrice") %>,<%=cart.get("cNo")%>,1)"></span>					
					<span class="cart-val" id ="cart-value_<%=cart.get("cNo")%>"><%=cart.get("cQty") %></span>
					<span class="cart-plus" id="cart_update_up" onclick="cart_update_up(<%=cart.get("pPrice") %>,<%=cart.get("cNo")%>,1)"></span>
					</form>
				</td>
				<td class="price">
				<span class="price-sale" id="price-sum_<%=cart.get("cNo")%>"><%=cart.get("cPrice")%> 원</span>
				</td>
				
				<td class="remove" id="cart_delete" onclick="cart_delete(<%=cart.get("cNo")%>)">
				<form id="cart_delete_form_<%=cart.get("cNo")%>">
				<input type="hidden" name = "jNo" value="<%=cart.get("cNo")%>"></form>
				<img src="./wp-content/themes/wisely/assets/images/btn_close.png" width="19"/></td>
			</tr>
			<%} %>
				<tr id="cart-no-items" style="display:none;">
			<td colspan="4">장바구니에 상품이 없습니다.</td>
		</tr>
		
		</table>
	   
		
				
		<div class="cart-summary-wrap">
			<div class="cart-summary">
				<div class="cart-summary-item">
					<div class="cart-summary-item-title">총 상품금액:</div>
					<div class="cart-summary-item-value" id="cart_tot_price1" ><%=sum %> 원</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>

				<div class="cart-summary-item" id="discount-fee">
									</div>
				
				<div class="cart-summary-item">
					<div class="cart-summary-item-title">배송비:</div>
					<div class="cart-summary-item-value" id="shipping-fee" data-value="0">
						 무료배송 					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>

			</div>
			<div class="cart-summary-line"></div>
			<div class="cart-summary">
				<div class="cart-summary-total">
					<div class="cart-summary-item-title">총 결제금액:</div>
					<div class="cart-summary-item-value" id="cart_tot_price2" >
						<%=sum %> 원					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>



		<div class="cart-buttons row">
			<div>
    			<a href="product_list.jsp" class="btn-fillBlue btn-width250">더 쇼핑하기</a>
				<a class="btn-fillBlue btn-width250" id="btn-order" onclick="cart_order(<%=sum%>)">주문하기</a>

			</div>
		<!-- 
			<div class="col-6">
				<a href="product_list.jsp" class="btn-strokegrey">더 쇼핑하기</a>
			</div>
			<div class="col-6">
				<a  class="btn-fillBlue btn-width250" id="btn-order" onclick="cart_order(<%=sum%>)">주문하기</a>
			</div>
			 -->
		</div>		  
		<form id="cart_go">
			<input type = "hidden" name="requestGubun" value="Cart">
		</form>
	

<style>
#cart-no-items{ height: 150px; }
.price-strike { color: #ccc; text-decoration: line-through;}
</style>
<!-- script start 
<script>
jQuery(document).ready(function($){

	var min_checkout_free_shipping = parseInt($(".min-checkout-free-shipping").attr("data-value"));

	
	// quantity:minus
    $(".wisely-cart .cart-minus").click(function(e){
        var tr = $(this).parent().parent();
        var id = tr.attr("product-id");
        var key = tr.attr("cart-key");
        var quantity = parseInt(tr.find(".cart-val").text());
        if(quantity > 1){
            $.get(
                "/wp-admin/admin-ajax.php", {
                    action: 'cart_update_item_quantity',
                    key: key,
                    quantity: quantity-1
                }, function(response){
                    //console.log(response);
                    if(response.is_succeeded){
                        tr.find(".cart-val").text(quantity-1);
                        tr.find(".price .price-sale").text(response.line_total.formatted);
                        tr.find(".price .price-strike").text(response.line_total_o.formatted);
                        $("#cart-summary-item").text(response.item_sum.formatted);
                        $("#shipping-fee").text(response.shipping_fee.formatted);
						$('#discount-fee').html(response.discount_fee);
                        $("#cart-summary-total").text(response.total_sum.formatted);
                        set_cart_count(response.quantities);
                    }
                }, "json");
        }
    });

    // quantity:plus
    $(".wisely-cart .cart-plus").click(function(e){
        var tr = $(this).parent().parent();
        var id = tr.attr("product-id");
        var key = tr.attr("cart-key");
        var quantity = parseInt(tr.find(".cart-val").text());
        $.get(
            "/wp-admin/admin-ajax.php", {
                action: 'cart_update_item_quantity',
                key: key,
                quantity: quantity+1
            }, function(response){
                //console.log(response);
                if(response.is_succeeded){
                    tr.find(".cart-val").text(quantity+1);
					tr.find(".price .price-sale").text(response.line_total.formatted);
					tr.find(".price .price-strike").text(response.line_total_o.formatted);
                    $("#cart-summary-item").text(response.item_sum.formatted);
                    $("#shipping-fee").text(response.shipping_fee.formatted);
					$('#discount-fee').html(response.discount_fee);
                    $("#cart-summary-total").text(response.total_sum.formatted);
                    set_cart_count(response.quantities);
                }
            }, "json");
    });

    // remove item
    $(".wisely-cart .remove img").click(function(e){
        var tr = $(this).parent().parent();
        var key = tr.attr("cart-key");
        $.get(
            "/wp-admin/admin-ajax.php", {
                action: 'cart_remove_item',
                key: key
            }, function(response){
                // update UIs
                $("#cart-summary-item").text(response.item_sum.formatted);
                $("#shipping-fee").text(response.shipping_fee.formatted);
                $("#cart-summary-total").text(response.total_sum.formatted);
				$('#discount-fee').html(response.discount_fee);
                set_cart_count(response.quantities);
                // fade the row out
                tr.remove();
                if(response.total_sum.value == 0){
                   $("#cart-no-items").fadeIn();
                }
            }, "json");
    });

    $("#btn-order").click(function(){
        var item_sum = 0;
        $("tr.woocommerce-cart-form__cart-item").each(function(){
			var id		= $(this).attr("product-id");
			var type	= $(this).attr("product-type");
			var price	= parseInt($(this).attr("product-price"));
			var quantity= parseInt($(this).attr("cart-quantity"));
			var quantity= parseInt($(this).find(".cart-val").text());
			$("#checkout-products").append(
				"<input type=\"hidden\" name=\"product_id[]\" value=\""+ id +"\" />"+
				"<input type=\"hidden\" name=\"product_type[]\" value=\""+ type +"\" />"+
				"<input type=\"hidden\" name=\"product_quantity[]\" value=\""+ quantity +"\" />"
			);
			item_sum += price * quantity;
        });
        if(item_sum > 0){
            $("form.woocommerce-cart-form").submit();
        }
    });

	
    // update cart-count on top-menu
    function set_cart_count(new_cart_count){
        var cart_count = parseInt($(".seese-cart-count").text());
        if(cart_count>0){
            $(".seese-cart-count").text(new_cart_count);
        }else{ 
            $("#seese-cart-trigger").prepend("<span class=\"seese-cart-count\">"+new_cart_count+"</span>");
        }
    }

});
</script>
-->
<!-- script end -->
</div>					</div>
				</div>
			</div>
			<!-- Content Col End -->

			        </div>
      </div>
	</div>
  </div>
</div>


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
                            <a href="https://www.wiselyshave.com/">
                                <svg xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg" viewBox="0 0 123 47" id="logo" width="100%" height="100%">
<g><path d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"/></g></svg>                            </a>
                        </div>
                    </div>
                    <div class="ft-right col-xs-12 col-sm-8 col-sm-offset col-md-8 col-md-offset col-lg-8 col-lg-offset">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class=" seese-widget footer-1-widget widget_nav_menu"><ul id="menu-footer-menu" class="main-navigation"><li id="menu-item-3969" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3969 seese-dropdown-menu"><a  href="#privacy">개인정보처리방침</a></li>
<li id="menu-item-3971" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3971 seese-dropdown-menu"><a  href="#terms">이용약관</a></li>
<li id="menu-item-3972" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3972 seese-dropdown-menu"><a  href="#guide">이용안내</a></li>
<li id="menu-item-2724517" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2724517 seese-dropdown-menu"><a  href="#career">채용</a></li>
</ul><div class="clear"></div></div> <!-- end widget --><div class=" seese-widget footer-1-widget widget_text">			<div class="textwidget"><p><b>주식회사 와이즐리컴퍼니</b> 서울특별시 성동구 왕십리로 125, 8층 801호(성수동1가, KD타워)<br />
<b>대표자:</b> 김동욱 <b>사업자등록번호:</b> 344-88-00965 <a class="underline wisely-ext-lightbox" href="#company-info" rel="noopener">사업자정보확인</a><br />
<b>통신판매업신고번호:</b> 2019-서울성동-01739 <b>개인정보보호책임자:</b> 김윤호 <a class="link-email" href="mailto:yhkim@wiselyshave.com" target="_blank" rel="noopener">yhkim@wiselyshave.com</a><br />
<b>전화번호:</b> <a class="link-email" href="tel:1833-9133">1833-9133</a> <b>E-mail:</b> <a class="link-email" href="mailto:help@wiselyshave.com" target="_blank" rel="noopener">help@wiselyshave.com</a></p>
<div>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 나이스페이먼츠(주)의 구매안전서비스를 이용하실 수 있습니다. <a class="underline wisely-ext-lightbox" href="#nicepay" rel="noopener">서비스 가입사실 확인</a></div>
<div>와이즐리는 서비스 품질 보증을 위하여 <strong>개인정보배상책임보험</strong>과 <strong>생산물피해보상보험</strong>에 가입하였습니다.</div>
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
<link rel='stylesheet' id='seese-default-style-css'  href='./wp-content/themes/wisely/style.css?ver=4.8.3.01' type='text/css' media='all' />
<style id='seese-default-style-inline-css' type='text/css'>
.no-class {}.seese-title-bg-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-title-default .page-title {color:;}.no-class {}.seese-title-bg-outer::before {content:"";position:absolute;top:0;left:0;width:100%;height:100%;background-color:;}.no-class {}.seese-title-bg-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-background-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-background-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-footer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}body.page-id- {}.no-class {}@media (max-width:767px) {.seese-mainmenu {display:none;}.slicknav_menu {display:block;}.slicknav_menu .nav.navbar-nav {display:block;}.navbar {min-height:inherit;}.seese-navicon {padding-top:14px;padding-bottom:13px;}.sub-menu.row {margin:0 !important;}.seese-fixed-header .scrolling.seese-header .seese-topright,.seese-topright {padding-right:50px;}}.no-class {}.seese-preloader-mask {background-color:#FFFFFF;height:100%;position:fixed;width:100%;z-index:100000;top:0;right:0;bottom:0;left:0;line-height:0px;}#seese-preloader-wrap {display:table;margin:0 auto;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-moz-transform:translateY(-50%);position:relative;line-height:0px;}.seese-preloader-html. > div {background-color:;color:;}body, .woocommerce .seese_single_product_excerpt p,#tab-description p,.woocommerce-Reviews .description p{font-family:"Noto Sans", Arial, sans-serif;font-size:14px;line-height:1.42857143;font-style:normal;}.seese-header .seese-logo a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-mainmenu ul li a, #seese-mobilemenu .slicknav_nav li a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}#seese-mobilemenu .slicknav_nav li a.seese-title-menu,.seese-mainmenu ul li a.seese-title-menu,.seese-mainmenu ul li.seese-megamenu > ul > li > a:link,.seese-mainmenu ul li.seese-megamenu > ul > li > a:active,.seese-mainmenu ul li.seese-megamenu > ul > li > a:visited{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.woocommerce .variations label,.woocommerce p.woocommerce-result-count,.seese-single-team .seese-team-member-name,.woocommerce p.stock.out-of-stock,.seese-load-more-controls.seese-btn-mode .seese-btn,.woocommerce .group_table td del .woocommerce-Price-amount,.woocommerce .group_table td.label a,.woocommerce table.shop_table_responsive tr td:before, .woocommerce-page table.shop_table_responsive tr td:before,.seese-single-product-share .container > a,.woocommerce-Tabs-panel .comment_container .meta strong,.seese-product-summary-col .entry-summary ins .woocommerce-Price-amount,h1, h2, h3, h4, h5, h6,.seese-aside h2,.seese-aside .widget_shopping_cart_content .buttons a,.seese-specialPage a,.seese-gototop a,.modal-content input[type="search"],.seese-filterTabs li a,.seese-footer .widget_nav_menu li a,.seese-contentCol h1, .seese-contentCol h2, .seese-contentCol h3, .seese-contentCol h4, .seese-contentCol h5, .seese-contentCol h6,.seese-contentCol .seese-publish li a,.single .seese-article strong,.seese-sharebar .sharebox a,.seese-author .author-content a,.seese-author .author-content label,.seese-commentbox h3.comment-reply-title,.seese-commentbox h3.comments-title,.seese-readmore a,.seese-sidebar h2.widget-title,.seese-team-box .seese-team-info .seese-lift-up .member-name a,.seese-team-box .seese-team-info .seese-lift-up .member-name,.seese-testi-name a,.seese-testi-name,.woocommerce-checkout .checkout_coupon .form-row-last input[type="submit"],.woocommerce-checkout .login input[type="submit"],.woocommerce table strong,.woocommerce table th,.woocommerce-checkout-review-order-table strong,.woocommerce-checkout-review-order-table th,.cart-empty,.woocommerce-message,.woocommerce ul.products li a.added_to_cart.wc-forward,.woocommerce ul.products li a.button,.seese-dropcap,.seese-form-order-filter select,.seese-content-area .seese-result-count p,.page-numbers a,.page-numbers span.current,.wp-pagenavi span.current,.wp-pagenavi a,.seese-product-summary-col .entry-summary .woocommerce-Price-amount.amount{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-price,.seese-product-summary-col .product_meta span,.seese-sidebar .seese-recent-blog .boxright label,.seese-sidebar .tagcloud a,.seese-sidebar th,.seese-sidebar td,.seese-testi-name:before,.seese-testi-name:after,.woocommerce textarea,.woocommerce input[type="tel"],.woocommerce input[type="text"],.woocommerce input[type="password"],.woocommerce input[type="email"],.woocommerce input[type="url"],.woocommerce .select2-container .select2-choice,.woocommerce-checkout .checkout_coupon input[type="text"],.woocommerce-checkout .login input[type="password"],.woocommerce-checkout .login input[type="text"],.track_order input[type="text"],.woocommerce-ResetPassword input[type="text"],.seese-containerWrap #seese-woo-register-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="url"],.seese-containerWrap #seese-woo-login-wrap textarea,.seese-containerWrap #seese-woo-login-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="search"],.seese-containerWrap #seese-woo-login-wrap input[type="text"],.seese-containerWrap #seese-woo-login-wrap input[type="password"],.woocommerce-checkout .woocommerce-info,#ship-to-different-address .checkbox,#ship-to-different-address .input-checkbox,.woocommerce-checkout-payment label{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-sidebar h2.widget-title a,.up-sells.products h2,.related.products h2,.woocommerce p.cart-empty,#review_form h3.comment-reply-title,.wc-tabs-wrapper .wc-tabs li a,.seese-product-summary-col .quantity input,.seese-contentCol h1.product_title,button,.button,.vc_btn3-container a.vc_general,.seese-blog-pagination a,.seese-btn,input[type="submit"],input[type="button"],.seese-filterOptions h3,.wpcf7-form input[type="submit"],.seese-cntr-box .cntr-value,.seese-cntr-box .cntr-title,.slick-slider .seese-prslr-content .seese-prslr-shopNow-title a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-bottomboxes h4,.seese-contentCol strong,.seese-contentCol h1.post-heading,.seese-title-area .page-title,.track_order h2,.seese-containerWrap #seese-woo-register-wrap h2,.seese-containerWrap #seese-woo-login-wrap h2,.woocommerce-checkout .checkout_coupon input[type="submit"],.woocommerce-checkout .login input[type="submit"],.track_order input[type="submit"],.woocommerce-ResetPassword input[type="submit"],.seese-containerWrap #seese-woo-register-wrap .seese-btn#seese-show-login-button,.seese-containerWrap #seese-woo-register-wrap input[type="submit"],.seese-containerWrap #seese-woo-login-wrap .seese-btn,.seese-containerWrap #seese-woo-login-wrap input[type="submit"],.form-row.place-order input[type="submit"]{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-title,.woocommerce td, .woocommerce th, .woocommerce-checkout-review-order-table td, .woocommerce-checkout-review-order-table th,.seese-filterOptions li span,.price_slider_amount .price_label,.woocommerce ul.products li.product-category h3,.seese-custom-badge,.seese-product-image-col .onsale,.woocommerce ul.products li span.onsale,.seese-product-summary-col .entry-summary del .woocommerce-Price-amount,.woocommerce div.product .woocommerce-product-rating a,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-name,.seese-aside .product_list_widget li a,.seese-aside .product_list_widget li .quantity,.seese-aside .widget_shopping_cart_content .total,.seese-aside .widget_shopping_cart_content .total strong,.seese-filterOptions li a,.seese-copyright,.seese-sidebar .comment-publish label,.wpcf7-form select,.wpcf7-form input,.wpcf7-form textarea,input[type="date"],input[type="tel"],input[type="number"],.woocommerce .select2-container .select2-choice,input[type="password"],select,input[type="url"],textarea,input[type="email"],input[type="search"],input[type="text"],.tagbox .taglist a,.seese-pagination a .seese-label,.seese-pagination a .post-name,.breadcrumbs li,.wp-pagenavi span.pages,.seese-sidebar,.seese-sidebar li,.seese-sidebar li a,.seese-sidebar .widget_categories li a,.seese-sidebar .seese-recent-blog .boxright h4 a,.seese-sidebar table,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.woocommerce p,.woocommerce-checkout .checkout_coupon p,.woocommerce-checkout .login p,.track_order p,.woocommerce-ResetPassword p,.seese-containerWrap #seese-woo-register-wrap form.register p,.seese-containerWrap #seese-woo-login-wrap form.login p,.woocommerce label,.woocommerce-checkout .checkout_coupon label,.woocommerce-checkout .login label,.track_order label,.woocommerce-ResetPassword label,.seese-containerWrap #seese-woo-register-wrap form.register label,.seese-containerWrap #seese-woo-login-wrap form.login label,.seese-containerWrap #seese-woo-login-wrap form.login .woocommerce-LostPassword a,.seese-containerWrap .seese-login-form-divider span,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.seese-catslr-box .seese-catslr-text .seese-catslr-name,.seese-catdt-box .seese-catdt-text .seese-catdt-name{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-single-team .seese-team-member-job,.woocommerce-Tabs-panel .comment_container .meta time,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-desc,.seese-bottomboxes .subtitle,blockquote,.seese-contentCol .seese-publish li,.comment-wrapper .comments-date,.seese-commentbox .date,.comment-wrapper .comments-date .comments-reply a,.seese-sidebar .comment-publish span,.seese-cntr-box .cntr-details,.seese-team-box .seese-team-info .seese-lift-up .member-job,.seese-team-box .seese-team-text em,.seese-testi-pro a,.seese-testi-pro,address,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.slick-slider .seese-prslr-content .seese-prslr-desc,.seese-catslr-box .seese-catslr-text .seese-catslr-desc,.seese-catdt-box .seese-catdt-text .seese-catdt-desc{font-family:"Lora", Arial, sans-serif;font-style:normal;}.your-custom-class{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var channel_io_options = {"channel_io_plugin_key":"7f424af9-c2ee-400f-aef2-b5edbe4a944e","channel_io_hide_default_launcher":"","channel_io_custom_launcher_selector":"","login":""};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/channel-io/channel_plugin_script.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/resizable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/draggable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/button.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/position.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/dialog.min.js?ver=1.11.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_country_select_params = {"countries":"{\"KR\":[]}","i18n_select_state_text":"\uc635\uc158\uc744 \uc120\ud0dd\ud558\uc138\uc694\u2026","i18n_no_matches":"\uc77c\uce58\ud558\ub294 \uac83\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4","i18n_ajax_error":"\ub85c\ub529\uc774 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4","i18n_input_too_short_1":"1 \uc774\uc0c1\uc758 \uae00\uc790\ub97c \uc785\ub825\ud558\uc138\uc694","i18n_input_too_short_n":"%qty% \uc774\uc0c1\uc758 \uae00\uc790\ub97c \uc785\ub825\ud558\uc138\uc694","i18n_input_too_long_1":"1 \uae00\uc790\ub97c \uc0ad\uc81c\ud558\uc138\uc694","i18n_input_too_long_n":"%qty% \uae00\uc790\ub97c \uc0ad\uc81c\ud558\uc138\uc694","i18n_selection_too_long_1":"1 \uc544\uc774\ud15c\ub9cc \uc120\ud0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4","i18n_selection_too_long_n":"%qty%\uc758 \uc544\uc774\ud15c\ub9cc \uc120\ud0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4","i18n_load_more":"\ub354 \ub9ce\uc740 \uacb0\uacfc \ub85c\ub529\u2026","i18n_searching":"\uac80\uc0c9\uc911\u2026"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/country-select.min.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_address_i18n_params = {"locale":"{\"KR\":{\"state\":{\"required\":false}},\"default\":{\"first_name\":{\"label\":\"\\uc774\\ub984\",\"required\":true,\"class\":[\"form-row-first\"],\"autocomplete\":\"given-name\",\"autofocus\":true,\"priority\":10},\"last_name\":{\"label\":\"\\uc131\",\"required\":true,\"class\":[\"form-row-last\"],\"autocomplete\":\"family-name\",\"priority\":20},\"company\":{\"label\":\"\\ud68c\\uc0ac\\uba85\",\"class\":[\"form-row-wide\"],\"autocomplete\":\"organization\",\"priority\":30},\"country\":{\"type\":\"country\",\"label\":\"\\uad6d\\uac00\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\",\"update_totals_on_change\"],\"autocomplete\":\"country\",\"priority\":40},\"address_1\":{\"label\":\"\\uc8fc\\uc18c\",\"placeholder\":\"House number and street name\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-line1\",\"priority\":50},\"address_2\":{\"placeholder\":\"\\uc544\\ud30c\\ud2b8 \\ud638\\uc218 \\ub4f1. (\\uc120\\ud0dd\\uc801)\",\"class\":[\"form-row-wide\",\"address-field\"],\"required\":false,\"autocomplete\":\"address-line2\",\"priority\":60},\"city\":{\"label\":\"\\uc8fc\\uc18c - \\uc2dc\\\/\\ub3c4(\\ubc88\\uc9c0 \\uc774\\uc804\\uae4c\\uc9c0)\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-level2\",\"priority\":70},\"state\":{\"type\":\"state\",\"label\":\"\\uc8fc\\\/\\uad70\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"validate\":[\"state\"],\"autocomplete\":\"address-level1\",\"priority\":80},\"postcode\":{\"label\":\"\\uc6b0\\ud3b8\\ubc88\\ud638\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"validate\":[\"postcode\"],\"autocomplete\":\"postal-code\",\"priority\":90}}}","locale_fields":"{\"address_1\":\"#billing_address_1_field, #shipping_address_1_field\",\"address_2\":\"#billing_address_2_field, #shipping_address_2_field\",\"state\":\"#billing_state_field, #shipping_state_field, #calc_shipping_state_field\",\"postcode\":\"#billing_postcode_field, #shipping_postcode_field, #calc_shipping_postcode_field\",\"city\":\"#billing_city_field, #shipping_city_field, #calc_shipping_city_field\"}","i18n_required_text":"\ud544\uc218"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/address-i18n.min.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","update_shipping_method_nonce":"25d37466ed","apply_coupon_nonce":"879e01cdc9","remove_coupon_nonce":"a07de0ae1f"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/cart.min.js?ver=3.2.2'></script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/selectWoo/selectWoo.full.min.js?ver=1.0.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var pwsL10n = {"unknown":"\ube44\ubc00\ubc88\ud638 \uac15\ub3c4 \uc54c \uc218 \uc5c6\uc74c","short":"\ub9e4\uc6b0 \uc57d\ud568","bad":"\uc57d\ud568","good":"\ubcf4\ud1b5","strong":"\uac15\ud568","mismatch":"\ube44\ubc00\ubc88\ud638 \ud2c0\ub9bc"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-admin/js/password-strength-meter.min.js?ver=4.8.3.01'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_password_strength_meter_params = {"min_password_strength":"3","i18n_password_error":"\ub354 \uac15\ub825\ud55c \ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","i18n_password_hint":"\ud78c\ud2b8:  \ube44\ubc00\ubc88\ud638\ub294 \ucd5c\uc18c\ud55c 12\uc790 \uc774\uc0c1\uc744 \uc0ac\uc6a9\ud574\uc57c \ud569\ub2c8\ub2e4. \uac15\ud55c \ube44\ubc00\ubc88\ud638\ub97c \ub9cc\ub4dc\ub824\uba74 \uc601\ubb38 \ub300\ubb38\uc790, \uc18c\ubb38\uc790, \uc22b\uc790\uc640 ! \" ? $ % & &\uc640 \uac19\uc740 \ud2b9\uc218\ubb38\uc790\ub97c \uc0ac\uc6a9\ud558\uc138\uc694."};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/password-strength-meter.min.js?ver=3.2.2'></script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_b2627323470bbe1531b576244c5bb266"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.2.2'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/bootstrap.min.js?ver=3.3.6'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/plugins.js?ver=1.1.0.04'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/scripts.js?ver=1.1.0.04'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/glidejs/dist/glide.min.js?ver=1.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/simple-calendar/jquery.simple-calendar.js?ver=1580958262'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/raty/jquery.raty.js?ver=1.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/jquery.validate.min.js?ver=1.9.0'></script>
<script type='text/javascript'>
jQuery(document).ready(function($) {$("#commentform").validate({rules: {author: {required: true,minlength: 2},email: {required: true,email: true},comment: {required: true,minlength: 10}}});});
</script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/wc-scripts.js?ver=1.0'></script>
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
