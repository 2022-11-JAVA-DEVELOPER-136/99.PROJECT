<%@page import="com.itwill.dto.ProductImage"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.dto.Product"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		
	if (request.getParameter("pNo") == null || request.getParameter("pNo").equals("")) {
		response.sendRedirect("product_list.jsp");
		return;
	}
	int pNo = Integer.parseInt(request.getParameter("pNo"));
	

	ProductServiceImpl psi = ProductServiceImpl.getProductService();
	Product product = psi.getProductDetail(pNo);
	
	ArrayList<ProductImage> imgList = psi.getImageList(pNo);
	//장바구니, 바로구매시 로그인 후 해당 핸재페이지로 다시 돌아오기 위해 셋팅해줌
	session.setAttribute("redirectPage", "product_list_detail.jsp?pNo="+pNo);
%>    
<!DOCTYPE html>
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">

<!-- Mirrored from www.wiselyshave.com/product/shaver/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jan 2020 11:05:17 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
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
		"PageType": "ProductPage",
		"product_id": <%=product.getpNO() %>
	});
</script>
		<script>
		dataLayer.push({
			"productId":<%=product.getpNO() %>,
			"productName":<%=product.getpName() %>,
			"productAmt":<%=product.getpPrice() %>
		});
	</script>


<link rel="stylesheet" href="../../../maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<title>면도기 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날</title>

<script type='text/javascript' src='./wp-includes/js/jquery/jqueryb8ff.js?ver=1.12.4'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_single_product_params = {"i18n_required_rating_text":"\ud3c9\uac00\ub97c \uc120\ud0dd\ud574\uc8fc\uc138\uc694","review_rating_required":"yes","flexslider":{"rtl":false,"animation":"slide","smoothHeight":true,"directionNav":false,"controlNav":"thumbnails","slideshow":false,"animationSpeed":500,"animationLoop":false,"allowOneSlide":false},"zoom_enabled":"","photoswipe_enabled":"","photoswipe_options":{"shareEl":false,"closeOnScroll":false,"history":false,"hideAnimationDuration":0,"showAnimationDuration":0},"flexslider_enabled":""};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/frontend/single-product.minee9a.js?ver=3.2.2'></script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce/assets/js/jquery-tiptip/jquery.tipTip.minee9a.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_product_reviews_pro = {"is_user_logged_in":"","user_id":"0","comment_registration":"","product_id":"2172","ajax_url":"https:\/\/www.wiselyshave.com\/wp-admin\/admin-ajax.php","nonce":"314603569c","comment_type":null,"file_size_max":"209715200","i18n":{"loading":"\ub85c\ub529\uc911...","attach_a_photo":"\uc0ac\uc9c4 \ucca8\ubd80","attach_a_video":"\ube44\ub514\uc624 \ucca8\ubd80","attach_photo_url":"\uc0ac\uc9c4\uc744 \ub2e4\ub978 \uc6f9\uc0ac\uc774\ud2b8\uc5d0\uc11c \uac00\uc838\uc640 \ucca8\ubd80\ud558\uae30","attach_photo_file":"\uc0ac\uc9c4\uc744 \uc790\uc2e0\uc758 \ucef4\ud4e8\ud130\uc5d0\uc11c \ucca8\ubd80\ud558\uae30","attach_video_url":"\ub2e4\ub978 \uc6f9\uc0ac\uc774\ud2b8\uc5d0\uc11c \uac00\uc838\uc640 \ube44\ub514\uc624 \ucca8\ubd80\ud558\uae30","attach_video_file":"\uc790\uc2e0\uc758 \ucef4\ud4e8\ud130\uc5d0\uc11c \ube44\ub514\uc624 \ucca8\ubd80\ud558\uae30","flag_failed":"Could not flag contribution. Please try again later.","subscribe_failed":"An error occurred. Your request could not be processed.","vote_failed":"Could not cast your vote. Please try again later.","comment_karma":"%1$d out of %2$d people found this helpful","error_attach_file":"\ud30c\uc77c\uc744 \ucca8\ubd80\ud558\uc138\uc694.","error_required":"\ud544\uc218 \ud544\ub4dc\uc785\ub2c8\ub2e4.","error_too_short":"\ucd5c\uc18c\ud55c %d \uac1c\uc758 \ub2e8\uc5b4\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","error_too_long":"\ucd5c\ub300 %d \ub2e8\uc5b4\uae4c\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.","error_file_not_allowed":"jpg, png, gif, bmp and tiff \ud30c\uc77c\ub9cc \uac00\ub2a5\ud569\ub2c8\ub2e4","error_file_size_max":"\ud30c\uc77c\uc774 \ub108\ubb34 \ud07d\ub2c8\ub2e4. \ud06c\uae30\ub294 200 MB \uc774\ud558\uc5ec\uc57c \ud569\ub2c8\ub2e4.","error_login_signup":"\uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \ud574\uc8fc\uc138\uc694.","remove_attachment":"Remove Attachment","review_update_confirmation":"Hold up -- it looks like you've already left a review for this product. You can update your existing review instead.\n\nPlease click \"OK\" to send a confirmation email to update your existing review, or \"Cancel\" to go back."}};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/plugins/woocommerce-product-reviews-pro/assets/js/frontend/wc-product-reviews-pro-frontend.minb37e.js?ver=1.13.3'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/unveil-lazyload8a54.js?ver=1.0.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/theme-scriptcc2a.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='../../../cdn.iamport.kr/js/iamport.payment-1.1.6-20181005cf44.js?ver=20181009'></script>
<script type='text/javascript' src='./wp-content/plugins/iamport-for-woocommerce/assets/js/url.mincc2a.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='./wp-content/plugins/iamport-for-woocommerce/assets/js/iamport.woocommercecf44.js?ver=20181009'></script>
<script type='text/javascript' src='https://d3sfvyfh4b9elq.cloudfront.net/pmt/web/device.json?ver=4.8.3.01'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ipw_product_params = {"price_format":{"currency_symbol":"","format":"%1$s&nbsp;%2$s \uc6d0","decimals":0,"currency_position":"left_space","rounding":"disabled","decimal_sep":".","thousand_sep":","},"is_shipping_free":"","free_shipping_amount":"15000"};
/* ]]> */
</script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/ipw-productcc2a.js?ver=4.8.3.01'></script>
<link rel='https://api.w.org/' href='./wp-json/index.html' />
<meta name="generator" content="WordPress 4.8.3.01" />
<meta name="generator" content="WooCommerce 3.2.2" />
<link rel='shortlink' href='../../indexa50b.html?p=2172' />
	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	</head>

<body class="product-template-default single single-product postid-2172 woocommerce woocommerce-page">


	  <div class="seese-aside" id="seese-aside"><h2>장바구니</h2><div class="widget_shopping_cart_content">

	<p class="woocommerce-mini-cart__empty-message">장바구니에 상품이 없습니다.</p>


</div></div>
    <!-- Seese Wrap Start -->
    <div id="seese-wrap" class="seese-fixed-header">

	    	      <header class="seese-header" style="">
	        


<!-- Menubar Starts -->
<jsp:include page="common_top_menu.jsp"/>
<!-- Menubar End -->
	      </header>
	    
	    <!-- Seese Wrapper Start -->
	    <div class="seese-wrapper">


<!-- ContainerWrap Start-->
<div class="seese-containerWrap seese-extra-width" >
  <div class="seese-background seese-background-outer">
    <div class="container">
      <div class="seese-background-inner seese-padding-none seese-container-inner" style="">

        
        <div class="row seese-shop-default-content">
          
          <!-- Content Area Start-->
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 seese-no-sidebar seese-contentCol">
            <div class="row seese-content-area">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                
                <div class="woo-content ">
                  

<div id="product-2172" class="post-2172 product type-product status-publish has-post-thumbnail product_cat-repurchase first instock shipping-taxable purchasable product-type-simple">
    
    <!-- Custom Changes Starts -->
    <script>
    jQuery(document).ready(function($){
        /* resize: center image */
        /*
        var single_img_selector = ".woocommerce-product-gallery__image img.attachment-shop_single";
        var _w = $(single_img_selector).width();
        var _h = $(single_img_selector).height();
        $(single_img_selector).css({'margin-top': (_w/2 - parseInt(_h/2)) +'px'});
        */
        /** resize: left-side thumbs */
        $(".wisely-thumb-img").each(function(){
            var _w = $(this).width();
            var _h = $(this).height();
            if(_h < _w){
                var _delta = (_w/2 - parseInt(_h/2)); 
                $(this).css({
                    'padding-top': _delta + 'px',
                    'padding-bottom': _delta + 'px'
                });
            }
        });
    });
    </script>
    <div class="seese-single-product-showcase">   
        <div class="container">
                            
                <div class="seese-product-image-col col-lg-8 col-md-8 ">  
				





<script src="./cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.6/js/swiper.min.js"></script>
<link rel="stylesheet" href="./cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.6/css/swiper.min.css">
<style>
.swiper-container {
	width: 100%;
	height: 300px;
	margin-left: auto;
	margin-right: auto;
}
.swiper-slide {
	background-size: cover;
	background-position: center;
}
.gallery-thumbs {
	float: left;
	box-sizing: border-box;
	padding: 10px 0;
	width: 110px;
	height: 450px;
}
.slider_body{
	width: 100%;
	height: 450px;
	padding-left: 110px;
}
.gallery-top {
	width: 450px;
	height: 450px;
	text-align: center;
}
.gallery-thumbs .swiper-slide {
	height: 100%;
	opacity: 0.4;
	border:1px solid #eee;
}
.gallery-thumbs .swiper-slide-thumb-active {
	opacity: 1;
}

.slide-area{
	width:100%;
}
.like_hide{
	width:0px;
	height:0px;
	overflow:hidden;
}
.divider {
	height:100px;
}

@media screen and (max-width: 767px){
	.gallery-thumbs {
		width:0px;
		height:0px;
		overflow:hidden;
	}
	.slider_body{
		padding-left: 0px;
	}
	.gallery-top {
		width:100%;
		height:450px;
		margin-left:0px;
	}
	.divider {
		height:10px;
	}
}

.swiper-pagination-bullet{ background-color:#666 !important; }
</style>

<div class="product_image_area" style="height:450px; overflow:hidden;">


<div class="slide-area slide-area-2172">
      <div class="swiper-container gallery-thumbs gallery-thumbs-2172">
			<div class="swiper-wrapper">
				<%for (ProductImage pi : imgList) { %>
				<div class="swiper-slide" style="background-image:url(./image/<%=pi.getImgName() %>);"></div>
				<%} %>
			</div>
		</div>

		<div class="slider_body">
			<div class="swiper-container gallery-top gallery-top-2172">
				<div class="swiper-wrapper">
					<%for (ProductImage pi : imgList) { %>
					<div class="swiper-slide" style="background-image:url(./image/<%=pi.getImgName() %>);"></div>
					<%} %>
				</div>

				<div class="swiper-pagination"></div>

			</div>
		</div>
</div>


<script>
var galleryThumbs2172 = new Swiper('.gallery-thumbs-2172', {
	slidesPerView: 4,
	spaceBetween: 10,
	watchSlidesVisibility: true,
	watchSlidesProgress: true,
	direction: 'vertical',
});

var galleryTop2172 = new Swiper('.gallery-top-2172', {
	loop:true,
	loopedSlides: 4,
	pagination: {
		el: '.swiper-pagination',
		clickable: true
	},
	thumbs: {
		swiper: galleryThumbs2172,
	},
});

galleryTop2172.on('slideChangeTransitionStart', function () {
	var clickedIndex = galleryTop2172.realIndex;
	galleryThumbs2172.slideTo( clickedIndex, 500);
});


jQuery(document).ready(function($){
	$(".slide-area").not(":first").addClass("like_hide");
	$("input[name='variation_color']").on('change', function(){
		var product_id = $(this).data("product_id");
		$(".slide-area").addClass("like_hide");
		$(".slide-area-"+product_id).removeClass("like_hide");
	});


	// swiper 높이 재조정하기
	function resize_swiper(){
		$(".product_image_area").height( 450 );
		$('.slider_body .swiper-container').height( 450 );
		$('.slider_body .swiper-slide').height( 450 );
		if( $(window).width() < 768 ){
			$(".product_image_area").height( $(window).width() );
			$('.slider_body .swiper-container').height( $(window).width() );
			$('.slider_body .swiper-slide').height( $(window).width() );
		}
	}

	resize_swiper();
	$(window).resize(function(){
		resize_swiper();
	});
});
</script>





<script>
var galleryThumbs1118383 = new Swiper('.gallery-thumbs-1118383', {
	slidesPerView: 4,
	spaceBetween: 10,
	watchSlidesVisibility: true,
	watchSlidesProgress: true,
	direction: 'vertical',
});

var galleryTop1118383 = new Swiper('.gallery-top-1118383', {
	loop:true,
	loopedSlides: 4,
	pagination: {
		el: '.swiper-pagination',
		clickable: true
	},
	thumbs: {
		swiper: galleryThumbs1118383,
	},
});

galleryTop1118383.on('slideChangeTransitionStart', function () {
	var clickedIndex = galleryTop1118383.realIndex;
	galleryThumbs1118383.slideTo( clickedIndex, 500);
});


jQuery(document).ready(function($){
	$(".slide-area").not(":first").addClass("like_hide");
	$("input[name='variation_color']").on('change', function(){
		var product_id = $(this).data("product_id");
		$(".slide-area").addClass("like_hide");
		$(".slide-area-"+product_id).removeClass("like_hide");
	});


	// swiper 높이 재조정하기
	function resize_swiper(){
		$(".product_image_area").height( 450 );
		$('.slider_body .swiper-container').height( 450 );
		$('.slider_body .swiper-slide').height( 450 );
		if( $(window).width() < 768 ){
			$(".product_image_area").height( $(window).width() );
			$('.slider_body .swiper-container').height( $(window).width() );
			$('.slider_body .swiper-slide').height( $(window).width() );
		}
	}

	resize_swiper();
	$(window).resize(function(){
		resize_swiper();
	});
});
</script>




<script>
var galleryThumbs1118384 = new Swiper('.gallery-thumbs-1118384', {
	slidesPerView: 4,
	spaceBetween: 10,
	watchSlidesVisibility: true,
	watchSlidesProgress: true,
	direction: 'vertical',
});

var galleryTop1118384 = new Swiper('.gallery-top-1118384', {
	loop:true,
	loopedSlides: 4,
	pagination: {
		el: '.swiper-pagination',
		clickable: true
	},
	thumbs: {
		swiper: galleryThumbs1118384,
	},
});

galleryTop1118384.on('slideChangeTransitionStart', function () {
	var clickedIndex = galleryTop1118384.realIndex;
	galleryThumbs1118384.slideTo( clickedIndex, 500);
});


jQuery(document).ready(function($){
	$(".slide-area").not(":first").addClass("like_hide");
	$("input[name='variation_color']").on('change', function(){
		var product_id = $(this).data("product_id");
		$(".slide-area").addClass("like_hide");
		$(".slide-area-"+product_id).removeClass("like_hide");
	});


	// swiper 높이 재조정하기
	function resize_swiper(){
		$(".product_image_area").height( 450 );
		$('.slider_body .swiper-container').height( 450 );
		$('.slider_body .swiper-slide').height( 450 );
		if( $(window).width() < 768 ){
			$(".product_image_area").height( $(window).width() );
			$('.slider_body .swiper-container').height( $(window).width() );
			$('.slider_body .swiper-slide').height( $(window).width() );
		}
	}

	resize_swiper();
	$(window).resize(function(){
		resize_swiper();
	});
});
</script>

</div>
<div class="divider"></div>                </div>


                <div class="seese-product-summary-col col-lg-4 col-md-4 col-xs-12">
                    <div class="summary entry-summary">
                    
<div class="hidden-lg" style="height:10px;"></div>
<div class="wisely-shipping-desc" style="margin-top:0px; margin-left:2px;"></div>

<h1 class="product_title entry-title" style="font-family:'Noto Sans', Arial, sans-serif !important; font-size:35px;"><%=product.getpName() %></h1>
<!-- <div class="wisely-shipping-desc"></div> -->

<a href="#" class="product-tab-link" data-key="reviews">
	<div class="stars stars_normal" style="margin-top:10px;">
		<div style="display:inline-block;">
		<div class="star_icon">
			<%  int onCnt = (int)product.getpPoint();
				double rmPoint = product.getpPoint() - onCnt;
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
		</div>
		<div style="display:inline-block; font-size:16px; font-family:'Spoqa Han Sans'; color:#000000; font-weight:bold; padding:0px 10px;"><%=product.getpPoint() %></div>
		<div style="display:inline-block; font-size:16px; font-family:'Spoqa Han Sans'; color:#999999;">(<%=product.getBuyCount() %>구매)</div>
	</div>
</a>
<div class="hidden-lg" style="height:20px;"></div>


<input type="hidden" id="support_free_shipping" value="" />
<link href='../../../spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<style>.cart-total-price-value, .price, .price-sale{ font-family:'Spoqa Han Sans' !important; font-weight:500; }</style><div class="seese_single_product_excerpt"></div><div class="product_meta">
</div>
<p class="first-payment-date"><small></small></p>	
<script>
	jQuery(document).ready(function($){

		$("input[name='variation_color']").filter(':checked').trigger('click');

		//$('.visual-toggle').hide();
		
		$('.visual-switch').on('click', function() {
			var targetId = $(this).data('product_id');

			$('.visual-toggle').hide();

			if(targetId) {
				$('.visible-on-'+targetId).show();
			}
		});

		function popBundleDetail(html) {
			$.show_notification_msg_lightbox_custom(html, '추가하기', function() {
				if(!$('.bundle-select').is(':checked')) {
					$('div.bundle-ctrl.item-select-wrap').trigger('click');
				}
			});
			$('.glide').glide({ type:'carousel', startAt:1, autoplay:false });
			$(".lb-notification_body").fadeIn();
			jQuery("#lb-notification").style("max-height",(jQuery(window).height()-30)+"px","important");
			jQuery("#lb-notification").style("bottom","unset","important");
			jQuery("#lb-notification").style("top",(jQuery(window).height()-jQuery("#lb-notification").height())/2+"px","important");
		}

		$('.product-detail-link').on('click', function(e) {
			e.preventDefault();

			var $this = $(this);
			var html = $(this).data('detail_html');
			if(!html) {
				var product_id = $(this).data('product_id');
				if(product_id) {
					$.ajax({
						url: './wp-admin/admin-ajax.php',
						method: 'POST',
						data: {
							action: 'get_product_detail',
							product_id: product_id
						},
						beforeSend: function() {
							$("#ajax-loading-div").fadeIn();
						},
						success: function(ret) {
							if(ret.success) {
								html = ret.data;
								$this.data('detail_html', html);
								popBundleDetail(html);
							} else {
								$.show_notification_msg_lightbox("서버와의 통신에 실패하였습니다.<br />잠시 후 다시 시도해 주세요.");
							}
						},
						complete: function() {
							$("#ajax-loading-div").fadeOut();
						}
					});
				}
			} else {
				popBundleDetail(html);
			}
		});

		function calculate_total_price(){
			var min_checkout_free_shipping = parseInt("15000");
			var shipping_cost	= $('.shipping-cost').length ? parseInt($(".shipping-cost").attr("data-value")) : 0;
			var quantity		= parseInt($(".wisely-cart-container .cart-val").text());
			var price_per_item	= parseInt($(".wisely-cart-container .price-sale").text());
			if(shipping_cost > 0 && (price_per_item * quantity) >= min_checkout_free_shipping){
				// free-shipping from now.
				shipping_cost = 0;
			}
			$(".shipping-cost.span").text((shipping_cost == 0) ? "무료배송" : "+배송비 " + shipping_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+" 원");
			
			var total_price = shipping_cost + price_per_item * quantity;
			$(".cart-total-price-value").text(total_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+" 원");
			
			f.qty.value = quantity;
			f.amt.value = total_price;
			
		}
		
		
		
		// Cart Button: Minus (-)
		$(".wisely-cart-container .minus-roundbutton").click(function(e){
			e.preventDefault();
			var q_selector = ".wisely-cart-container .cart-val";
			var curr = parseInt($(q_selector).text());
			if(curr > 1){
				$(q_selector).text(curr-1);
				calculate_total_price();
			}
		});

		// Cart Button: Plus (+)
		$(".wisely-cart-container .plus-roundbutton").click(function(e){
			e.preventDefault();
			var q_selector = ".wisely-cart-container .cart-val";
			var curr = parseInt($(q_selector).text());
			$(q_selector).text(curr+1);
			calculate_total_price();
		});

		// Cart Button (Main)
		$(".wisely-checkout-buttons .wisely-cart-button").click(function(e){
			e.preventDefault();
			if(!$(this).hasClass("disabled")){
				$("#bg-lb-notification").show();
				$("#pleaseWait").show();

				wisely_add_to_cart("cart-main"); 
			}
		});
		/** floating cart (PC) */
		$(".wisely-checkout-scrolling .btn-scrolling-cart").click(function(e){
			e.preventDefault();
			$(this).hide();
			$(".wisely-checkout-scrolling-buttons").fadeIn();
			$(".wisely-checkout-scrolling-buttons .wisely-cart-button").fadeIn();
			$(".wisely-checkout-scrolling-buttons .wisely-checkout-button").fadeIn();
			$(".wisely-checkout-scrolling .btn-scrolling-close").fadeIn();
		});
		$(".wisely-checkout-scrolling .btn-scrolling-close").click(function(e){
			e.preventDefault();
			$(this).hide();
			$(".wisely-checkout-scrolling-buttons").fadeOut();
			$(".wisely-checkout-scrolling .btn-scrolling-cart").fadeIn();
		});
		// cart-button (floating-pc)
		$(".wisely-checkout-scrolling .wisely-cart-button").click(function(e){ 
			e.preventDefault();
			if(!$(this).hasClass("disabled")){
				wisely_add_to_cart("cart-floating-pc"); 
			}
		});
		// cart-button (floating-mobile)
		$(".wisely-checkout-buttons-mobile .wisely-cart-button").click(function(e){ 
			e.preventDefault();
			if(!$(this).hasClass("disabled")){
				$("#bg-lb-notification").show();
				$("#pleaseWait").show();

				wisely_add_to_cart("cart-floating-mobile");
			}
		});

		var counters = 0;
		// Checkout Button
		$(".wisely-checkout-button").click(function(e){
			$("#bg-lb-notification").show();
			$("#pleaseWait").show();

			e.preventDefault();

			///////////////////////////////////////////////////////////////////////
			// sold out check logic
			///////////////////////////////////////////////////////////////////////
			// var id = $('#product_id').val();
			// if( id == "2844" ){
			// 	if( $("input[name=progressMode]").val() == "" ){
			// 		$("#alert_notice_area").show();
			// 		$("input[name=progressMode]").val("checkout");
			// 		return;
			// 	}else{
			// 		$("input[name=progressMode]").val("");
			// 		counters++;
			// 		if( counters > 1 ){ return; }
			// 	}
			// }
			///////////////////////////////////////////////////////////////////////
			

			if($(".price-subscription").hasClass("selected")){
				$("form[name=subscription-item]").submit();
											}else{
				var id = $('#product_id').val();
				var type = "simple";
				var quantity = parseInt($(".wisely-cart-container .cart-val").text());
				var bundle_id = $('.bundle-select').filter(':checked').val();
				if('undefined' == typeof bundle_id) {
					bundle_id = null;
				}
												// empty cart first
				$.get(
					"./wp-admin/admin-ajax.html", { action: 'empty_cart' }, function(response){
					// then add item to the cart & submit to the /checkout/ page
					$.post(
						"./wp-admin/admin-ajax.html", {
							action: 'add_to_cart',
							product_id: id,
							bundle_id: bundle_id,
							quantity: quantity
						}, function(response){
							var post = "<input type=\"hidden\" name=\"product_id[]\" value=\""+ id +"\" />"+
								"<input type=\"hidden\" name=\"product_type[]\" value=\""+ type +"\" />"+
								"<input type=\"hidden\" name=\"product_quantity[]\" value=\""+ quantity +"\" />";

							if(bundle_id) {
								post += 								"<input type=\"hidden\" name=\"bundle_id[]\" value=\""+ bundle_id +"\" />";
							}

							$("#checkout-products").append(post);
							$("form[name=form-checkout]").submit();
						});
				}, "json");
			}
		});

		var priceBase = parseInt('6000');
		var priceBundle = parseInt('');
		$('div.bundle-ctrl.item-select-wrap').on('click', function() {
			var checkbox = $(this).find('.bundle-select');
			var ipwDiv = $(this).closest('div.ipw-product-bundle');
			if(checkbox.is(':checked')) {
				checkbox.prop('checked', false);
				ipwDiv.removeClass('active');
			} else {
				checkbox.prop('checked', true);
				ipwDiv.addClass('active');
			}
			var priceNew = checkbox.is(':checked') ? priceBase+priceBundle : priceBase;
			$(".price-sale").text(priceNew.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+" 원");
		});

		function wisely_add_to_cart(type){
			var id = $('#product_id').val();
			var quantity = parseInt($(".wisely-cart-container .cart-val").text());
			var cart_count = parseInt($(".seese-cart-count").text());
			var bundle_id = $('.bundle-select').filter(':checked').val();
			if('undefined' == typeof bundle_id) {
					bundle_id = null;
				}

			$.post(
				"./wp-admin/admin-ajax.html", {
					action: 'add_to_cart',
					product_id: id,
					bundle_id: bundle_id,
					quantity: quantity
				}, function(response){
					//console.log(response);
					if(bundle_id) {
						quantity*=2;
					}
					if(cart_count>0){
						$(".seese-cart-count").text(cart_count+quantity);
					}else{ 
						$("#seese-cart-trigger").prepend("<span class=\"seese-cart-count\">"+quantity+"</span>");
					}

					if(type == "cart-main"){
						// set top-position of the message box
						$(".box-added-to-cart").css({ 
							position: 'absolute',
							top: $(".wisely-checkout-buttons").position().top-100 + "px",
							left: $(".wisely-checkout-buttons").position().left + "px",
						});
						$(".box-added-to-cart").fadeIn();
					}else if(type == "cart-floating-pc"){						
						// set top-position of the message box
						$(".box-added-to-cart-floating").css({ 
							position: 'fixed',
							top: $(".wisely-checkout-scrolling-buttons").position().top-130 + "px",
							left: $(".wisely-checkout-scrolling-buttons").position().left + "px",
						});
						$(".box-added-to-cart-floating").fadeIn();
					}else if(type == "cart-floating-mobile"){						
						$(".cart-inside-msg").fadeIn("fast").delay("3000").fadeOut("fast");
					}else if(type == "checkout"){
						$(location).attr("href", "../../cart/index.html");
					}


					///////////////////////////////////////////////////////////////////////
					// sold out check logic
					///////////////////////////////////////////////////////////////////////
					// if( id == "2844" ){
					// 	$("input[name=progressMode]").val("addtocart");
					// 	$("#alert_notice_area").fadeIn();
					// }
					///////////////////////////////////////////////////////////////////////

					$("#bg-lb-notification").hide();
					$("#pleaseWait").hide();

				}, "json");

								}

		
		/** box-added-to-cart */
		$(".btn-close").click(function(){
			$(this).parent().fadeOut();
		});

				//$(".wisely-checkout-scrolling-buttons .wisely-cart-button").addClass("disabled");
		
	});
	
	function myFunction() {

		f.action = "./order_checkout.jsp";
		f.method='POST';
		f.submit();

	}
	
	function myCart() {

		f.action = "./cart_insert_action.jsp";
		f.method='POST';
		f.submit();

	}
	</script>

	<input type="hidden" id="product_id" value="2172" />

		<div style="border:1px solid #eee; border-radius:10px; padding:20px 0px 15px 10px; margin:10px 0px; box-shadow:0px 0px 5px 0px rgba(0, 0, 0, .1); position:relative;">

		<!-- 일시품절 -->
				<!--
		<div style="position:absolute; top:0px; left:0px; font-size:11px; font-weight:bold; color:#fff; background-color:#9db1bf; padding:4px 7px 2px; border-radius:0 0 4px 4px; margin:0px 8px; line-height:normal;">
		카키/ 버건디 일시품절
		</div>
		-->
		
		<table class="variations" cellspacing="0">
			<tbody>
				<tr>
					<td class="value">
						<div class="ipw-attribute-color">
							<label for="variation_color" class="attr_title" style="font-weight:bold;">색상</label>
							<div class="color-text" style="max-width:90px; overflow-x:hidden;">
								<select id="variation_color_select" class="" name="attribute_variation_color_select" data-attribute_name="attribute_variation_color_select" data-show_option_none="no"><option value="">옵션을 선택하세요</option><option value="네이비"  selected='selected'>네이비</option><option value="버건디" >버건디</option><option value="카키" >카키</option></select>							</div>
							<div class="color-buttons" style="padding:1px 8px;">
																	<label class="color-container" >
										<input  type="radio" name="variation_color" id="variation_color"  checked='checked' data-color_name="네이비" data-product_id="2172" /><span class="checkmark" style="background-color: #375e77"></span>
									</label>
																		<label class="color-container" >
										<input  type="radio" name="variation_color" id="variation_color"  data-color_name="버건디" data-product_id="1118383" /><span class="checkmark" style="background-color: #a12c36"></span>
									</label>
																		<label class="color-container" >
										<input  type="radio" name="variation_color" id="variation_color"  data-color_name="카키" data-product_id="1118384" /><span class="checkmark" style="background-color: #586520"></span>
									</label>
																</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	<div class="box-added-to-cart">
		<div class="btn-close"><img src="./wp-content/themes/wisely/assets/images/btn_close.png" width="18"/></div>
		<div class="msg">상품이 장바구니에 담겼습니다.</div>
		<a class="button" href="../../cart/index.html">장바구니 가기</a>
	</div>


	<div class="wisely-cart-container wisely-quantity-editor" style="/*border-top:1px dotted #dddddd; padding-top:15px; margin-top:20px;*/">

		<div class="quantity-editor">
			<a class="qt-minus"><span class="icon minus-roundbutton"></span></a>
			<span class="cart-val">1</span>
			<a class="qt-plus"><span class="icon plus-roundbutton"></span></a>
		</div>

		<div class="wisely-price-selection-single">
			<div class="single-item-price">
				 <span class="price-sale">
					<%=product.getpPrice() %>원				 
				</span>
				<div class="shipping-cost" data-value="2500">
					1.5 만원 이상 <span>무료배송!</span>				
				</div>
			</div>
		</div>
		
	</div>

	<div class="wisely-price-total-amt" style="margin:20px; width:400px;">
			 <span>총 구매금액 : </span>
			 <span class="cart-total-price-value" style="margin:20px; width:300px;">
				<%=product.getpPrice() %>원				 
			</span>
	</div>

	<div class="clear">
	</div>

	
	<div class="ipw-cross-info" style="padding-top:0px; margin-top:-5px;">
			
	</div>
	
	
	
	<style>
	.wisely-cart-button:hover{ color:#fff !important; background-image:none !important; }
	.wisely-cart-button.disabled, .wisely-cart-button.disabled:hover{ color:#ccc !important; background-image:none !important; }
	</style>

	
	
		
	<style>
	.product-desc { display:inline; }
	#checkout_products { display:inline;}
	</style>
	
	
	<form name="f"  onsubmit="member_login_form.jsp">
		<input type="hidden" name="requestGubun" value="Direct" />
		<input type="hidden" name="pNo" value="<%=product.getpNO() %>" />
		<input type="hidden" name="pName" value="<%=product.getpName() %>" />
		<input type="hidden" name="qty" value="1" />
		<input type="hidden" name="amt" value="<%=product.getpPrice() %>" />
		<div>
				<span><h2><a href='javascript:myCart()'>장바구니</a>&nbsp;&nbsp;&nbsp;
				<a href='javascript:myFunction()'>바로구매</a></h2></span>
		</div>
	</form>
	
	
                    </div>
               </div><!-- .summary -->
               
        </div>
    </div>
      
	
	<script>
	jQuery(document).ready(function($){
		$("a.product-tab-link").click(function(e){
			e.preventDefault();
			var key = $(this).attr("data-key");
			var tab = $("ul.faq-tabs[data-key="+key+"]");
			var scroll_height = tab.offset().top;
			$('html, body').animate({ scrollTop: scroll_height }, 600);
		});
		
		$("li.reviews_tab a[data-key=reviews]").text(
			"리뷰 (" + $(".product-review-number span.num_reviews").text() + ")");
	});
	</script>


	<div class="tabs-wrapper">

				<ul class="faq-tabs" data-key="description" >
						<li class="description_tab product-tab-link active">
				<a href="javascript:;" class="product-tab-link" data-key="description" style="font-family:'Spoqa Han Sans';">상세정보</a>
			</li>
						<li class="reviews_tab product-tab-link ">
				<a href="javascript:;" class="product-tab-link" data-key="reviews" style="font-family:'Spoqa Han Sans';">리뷰</a>
			</li>
						<li class="faq_tab product-tab-link ">
				<a href="javascript:;" class="product-tab-link" data-key="faq" style="font-family:'Spoqa Han Sans';">자주 묻는 질문</a>
			</li>
					</ul>

						<div class="wrapper-desc">
			


<style>
p{}
@media (max-width: 767px){ .somethingNew{ padding-top:48px; } }
.somethingNew_toggle .more_btn {
	margin-left:7px;
	width:14px;
	height:14px;
	background-image:url("./wp-content/uploads/2018/02/pc_down.png");
}
.somethingNew_toggle .more_btn.show {
	background-image:url("./wp-content/uploads/2018/02/pc_up.png");
}
</style>
<script>
jQuery(document).ready(function($){
	$(".somethingNew_toggle").click( function(){
		$(".somethingNew_area").slideToggle(500);

		if( $(".somethingNew_toggle").find(".more_btn").hasClass("show") ){
			$(".somethingNew_toggle").find(".more_btn").removeClass("show");
		}else{
			$(".somethingNew_toggle").find(".more_btn").addClass("show");
		}
	});
});
</script>
<div class="hidden-xs">
<div class="somethingNew">
<div style="padding: 40px 20px; background-color: #008fff; color: #fff; text-align: center; font-size: 28px; position: relative;">
<div style="font-size: 22px;">9월16일부터 새롭게 업그레이드 출시된</div>
<div style="margin-top: 5px; font-size: 22px;"><strong>와이즐리 면도날 2세대</strong>로 발송됩니다.</div>
<div style="font-size: 14px; margin-top: 20px;">
<div class="somethingNew_toggle" style="padding: 10px 20px; background-color: #ffffff; border-radius: 10px; color: #2590f8; font-weight: bold; display: inline-block; margin: 0 auto; cursor: pointer; box-shadow: 3px 3px 3px 0px rgba(0, 0, 0, 0.3);">
<div style="margin-top: 5px;">
<div style="display: inline-block;">무엇이 바뀌었나요?</div>
<div class="more_btn" style="float: right; margin-top: 5px;"></div>
</div>
</div>
</div>
<div style="position: absolute; left: 0px; bottom: 0px; box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.4); width: 100%; height: 10px;"></div>
</div>
<div class="somethingNew_area" style="display: none;"><img class="aligncenter size-ful" src="./wp-content/uploads/2019/09/2nd-blade-pc-1.jpg" width="1920" height="757" /></div>
</div>
<p><img class="aligncenter size-full wp-image-2457656" src="./wp-content/uploads/2019/09/2nd-blade-pc-2.jpg" alt="" width="1920" height="818" srcset="./wp-content/uploads/2019/09/2nd-blade-pc-2.jpg 1920w, ./wp-content/uploads/2019/09/2nd-blade-pc-2-300x128.jpg 300w, ./wp-content/uploads/2019/09/2nd-blade-pc-2-768x327.jpg 768w, ./wp-content/uploads/2019/09/2nd-blade-pc-2-1024x436.jpg 1024w" sizes="(max-width: 1920px) 100vw, 1920px" /><img class="aligncenter size-full wp-image-4215" src="./wp-content/uploads/2017/02/product03-pc-02.jpg" alt="" width="1920" height="1440" srcset="./wp-content/uploads/2017/02/product03-pc-02.jpg 1920w, ./wp-content/uploads/2017/02/product03-pc-02-300x225.jpg 300w, ./wp-content/uploads/2017/02/product03-pc-02-768x576.jpg 768w, ./wp-content/uploads/2017/02/product03-pc-02-1024x768.jpg 1024w" sizes="(max-width: 1920px) 100vw, 1920px" /> <img class="aligncenter size-full wp-image-4216" src="./wp-content/uploads/2018/01/product03-pc-03-modified.jpg" alt="" width="1920" height="757" /> <img class="aligncenter size-full wp-image-4217" src="./wp-content/uploads/2018/03/product03-pc-04-modified.jpg" alt="" width="1920" height="1792" /> <img class="aligncenter size-full wp-image-2457657" src="./wp-content/uploads/2019/09/2nd-blade-pc-3.jpg" alt="" width="1920" height="2755" srcset="./wp-content/uploads/2019/09/2nd-blade-pc-3.jpg 1920w, ./wp-content/uploads/2019/09/2nd-blade-pc-3-209x300.jpg 209w, ./wp-content/uploads/2019/09/2nd-blade-pc-3-768x1102.jpg 768w, ./wp-content/uploads/2019/09/2nd-blade-pc-3-714x1024.jpg 714w" sizes="(max-width: 1920px) 100vw, 1920px" /><img class="aligncenter size-full wp-image-2457658" src="./wp-content/uploads/2019/09/2nd-blade-pc-4.jpg" alt="" width="1920" height="980" srcset="./wp-content/uploads/2019/09/2nd-blade-pc-4.jpg 1920w, ./wp-content/uploads/2019/09/2nd-blade-pc-4-300x153.jpg 300w, ./wp-content/uploads/2019/09/2nd-blade-pc-4-768x392.jpg 768w, ./wp-content/uploads/2019/09/2nd-blade-pc-4-1024x523.jpg 1024w" sizes="(max-width: 1920px) 100vw, 1920px" /><img class="aligncenter size-full wp-image-4219" src="./wp-content/uploads/2017/02/product03-pc-06.jpg" alt="" width="1920" height="1538" srcset="./wp-content/uploads/2017/02/product03-pc-06.jpg 1920w, ./wp-content/uploads/2017/02/product03-pc-06-300x240.jpg 300w, ./wp-content/uploads/2017/02/product03-pc-06-768x615.jpg 768w, ./wp-content/uploads/2017/02/product03-pc-06-1024x820.jpg 1024w" sizes="(max-width: 1920px) 100vw, 1920px" /></p>
<div class="somethingNew" style="margin-top: -90px;">
<div style="padding: 40px 20px; background-color: #008fff; color: #fff; text-align: center; font-size: 28px; position: relative;">
<div style="font-size: 14px;">9월16일부터 새롭게 업그레이드 출시된</div>
<div style="margin-top: 5px; font-size: 22px;"><strong>와이즐리 면도날 2세대</strong>로 발송됩니다.</div>
<div style="position: absolute; left: 0px; bottom: 0px; box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.4); width: 100%; height: 10px;"></div>
</div>
<div><img class="aligncenter size-ful" src="./wp-content/uploads/2019/09/2nd-blade-pc-1.jpg" width="1920" height="757" /></div>
</div>
<p><img class="aligncenter size-full wp-image-4220" src="./wp-content/uploads/2017/02/product03-pc-07.jpg" alt="" width="1920" height="3067" srcset="./wp-content/uploads/2017/02/product03-pc-07.jpg 1920w, ./wp-content/uploads/2017/02/product03-pc-07-188x300.jpg 188w, ./wp-content/uploads/2017/02/product03-pc-07-768x1227.jpg 768w, ./wp-content/uploads/2017/02/product03-pc-07-641x1024.jpg 641w" sizes="(max-width: 1920px) 100vw, 1920px" /> <img class="aligncenter size-full wp-image-4221" src="./wp-content/uploads/2017/02/product03-pc-08.jpg" alt="" width="1920" height="1335" srcset="./wp-content/uploads/2017/02/product03-pc-08.jpg 1920w, ./wp-content/uploads/2017/02/product03-pc-08-300x209.jpg 300w, ./wp-content/uploads/2017/02/product03-pc-08-768x534.jpg 768w, ./wp-content/uploads/2017/02/product03-pc-08-1024x712.jpg 1024w" sizes="(max-width: 1920px) 100vw, 1920px" /> <img class="aligncenter size-full wp-image-4222" src="./wp-content/themes/wisely/assets/images/store/delivery_change/pc_shave.jpg" alt="" width="1920" height="1861" /> <img class="aligncenter size-full wp-image-4223" src="./wp-content/uploads/2018/03/product03-pc-10-modified.jpg" alt="" width="1920" height="2711" /></p>
</div>
<div class="hidden-sm hidden-md hidden-lg">
<div class="somethingNew">
<div style="padding: 40px 20px; background-color: #008fff; color: #fff; text-align: center; font-size: 28px; position: relative;">
<div style="font-size: 22px;">9월16일부터 새롭게 업그레이드 출시된</div>
<div style="margin-top: 5px; font-size: 22px;"><strong>와이즐리 면도날 2세대</strong>로 발송됩니다.</div>
<div style="font-size: 14px; margin-top: 20px;">
<div class="somethingNew_toggle" style="padding: 10px 20px; background-color: #ffffff; border-radius: 10px; color: #2590f8; font-weight: bold; display: inline-block; margin: 0 auto; cursor: pointer; box-shadow: 3px 3px 3px 0px rgba(0, 0, 0, 0.3);">
<div style="margin-top: 5px;">
<div style="display: inline-block;">무엇이 바뀌었나요?</div>
<div class="more_btn" style="float: right; margin-top: 5px;"></div>
</div>
</div>
</div>
<div style="position: absolute; left: 0px; bottom: 0px; box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.4); width: 100%; height: 10px;"></div>
</div>
<div class="somethingNew_area" style="display: none;"><img class="aligncenter size-ful" src="./wp-content/uploads/2019/09/2nd-blade-mobile-1.jpg" width="1920" height="757" /></div>
</div>
<p><img class="aligncenter size-full wp-image-2457648" src="./wp-content/uploads/2019/09/2nd-blade-mobile-2.jpg" alt="" width="480" height="1034" srcset="./wp-content/uploads/2019/09/2nd-blade-mobile-2.jpg 480w, ./wp-content/uploads/2019/09/2nd-blade-mobile-2-139x300.jpg 139w, ./wp-content/uploads/2019/09/2nd-blade-mobile-2-475x1024.jpg 475w" sizes="(max-width: 480px) 100vw, 480px" /><img class="aligncenter size-full wp-image-4258" src="./wp-content/uploads/2017/02/product03-mobile-02.jpg" alt="" width="480" height="936" srcset="./wp-content/uploads/2017/02/product03-mobile-02.jpg 480w, ./wp-content/uploads/2017/02/product03-mobile-02-154x300.jpg 154w" sizes="(max-width: 480px) 100vw, 480px" /><img class="aligncenter size-full wp-image-4259" src="./wp-content/uploads/2017/02/product03-mobile-03.jpg" alt="" width="480" height="683" srcset="./wp-content/uploads/2017/02/product03-mobile-03.jpg 480w, ./wp-content/uploads/2017/02/product03-mobile-03-211x300.jpg 211w" sizes="(max-width: 480px) 100vw, 480px" /><img class="aligncenter size-full wp-image-4260" src="./wp-content/uploads/2018/01/product03-mobile-04-modified.jpg" alt="" width="480" height="870" /><img class="aligncenter size-full wp-image-4261" src="./wp-content/uploads/2018/03/product03-mobile-05-modified.jpg" alt="" width="480" height="2348" /><img class="aligncenter size-full wp-image-2457649" src="./wp-content/uploads/2019/09/2nd-blade-mobile-3.jpg" alt="" width="480" height="2130" srcset="./wp-content/uploads/2019/09/2nd-blade-mobile-3.jpg 480w, ./wp-content/uploads/2019/09/2nd-blade-mobile-3-231x1024.jpg 231w" sizes="(max-width: 480px) 100vw, 480px" /><img class="aligncenter size-full wp-image-2457650" src="./wp-content/uploads/2019/09/2nd-blade-mobile-4.jpg" alt="" width="720" height="1580" srcset="./wp-content/uploads/2019/09/2nd-blade-mobile-4.jpg 720w, ./wp-content/uploads/2019/09/2nd-blade-mobile-4-137x300.jpg 137w, ./wp-content/uploads/2019/09/2nd-blade-mobile-4-467x1024.jpg 467w" sizes="(max-width: 720px) 100vw, 720px" /><img class="aligncenter size-full wp-image-4263" src="./wp-content/uploads/2017/02/product03-mobile-07.jpg" alt="" width="480" height="1979" srcset="./wp-content/uploads/2017/02/product03-mobile-07.jpg 480w, ./wp-content/uploads/2017/02/product03-mobile-07-73x300.jpg 73w" sizes="(max-width: 480px) 100vw, 480px" /></p>
<div class="somethingNew" style="padding-top: 0px !important; margin-top: -35px;">
<div style="padding: 40px 20px; background-color: #008fff; color: #fff; text-align: center; font-size: 28px; position: relative;">
<div style="font-size: 14px;">9월16일부터 새롭게 업그레이드 출시된</div>
<div style="margin-top: 5px; font-size: 22px;"><strong>와이즐리 면도날 2세대</strong>로 발송됩니다.</div>
<div style="position: absolute; left: 0px; bottom: 0px; box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.4); width: 100%; height: 10px;"></div>
</div>
<div><img class="aligncenter size-ful" src="./wp-content/uploads/2019/09/2nd-blade-mobile-1.jpg" width="1920" height="757" /></div>
</div>
<p><img class="aligncenter size-full wp-image-4264" src="./wp-content/uploads/2017/02/product03-mobile-08.jpg" alt="" width="480" height="2167" srcset="./wp-content/uploads/2017/02/product03-mobile-08.jpg 480w, ./wp-content/uploads/2017/02/product03-mobile-08-227x1024.jpg 227w" sizes="(max-width: 480px) 100vw, 480px" /><img class="aligncenter size-full wp-image-4265" src="./wp-content/uploads/2017/02/product03-mobile-09.jpg" alt="" width="481" height="808" srcset="./wp-content/uploads/2017/02/product03-mobile-09.jpg 481w, ./wp-content/uploads/2017/02/product03-mobile-09-179x300.jpg 179w" sizes="(max-width: 481px) 100vw, 481px" /><img class="aligncenter size-full wp-image-4266" src="./wp-content/themes/wisely/assets/images/store/delivery_change/mo_blade%26shave.jpg" alt="" width="481" height="2479" /><img class="aligncenter size-full wp-image-4267" src="./wp-content/uploads/2018/03/product03-mobile-11-modified.jpg" alt="" width="481" height="1839" /></p>
</div>
                
		</div>
		
						<ul class="faq-tabs" data-key="reviews" id="review">
						<li class="description_tab product-tab-link ">
				<a href="javascript:;" class="product-tab-link" data-key="description" style="font-family:'Spoqa Han Sans';">상세정보</a>
			</li>
						<li class="reviews_tab product-tab-link active">
				<a href="javascript:;" class="product-tab-link" data-key="reviews" style="font-family:'Spoqa Han Sans';">리뷰</a>
			</li>
						<li class="faq_tab product-tab-link ">
				<a href="javascript:;" class="product-tab-link" data-key="faq" style="font-family:'Spoqa Han Sans';">자주 묻는 질문</a>
			</li>
					</ul>

						<div class="entry-content">
			<div class="wrapper960">
				<div id="reviews" class="wrapper960">
		
		<div>
			<div class="product-rating">
				<span class="product-rating-average" data-value="4.609523809523809" style="font-family:'Spoqa Han Sans' !important; font-weight:bold;">4.6</span> 
				/ <span class="product-rating-full" style="font-family:'Spoqa Han Sans' !important;">5</span>
			</div>
			<div class="product-rating-stars"></div>
		</div>

		<div class="product-review-number">

		<!-- 총 <span class="num_reviews">317</span>개의 리뷰 -->
		총 <span class="num_reviews" style="font-family:'Spoqa Han Sans' !important;">317</span>명이 리뷰를 남겼습니다.
		</div>




		<div style="text-align:center;"><table align="center" style="width:100% !important; border:unset; margin-top:10px; margin-bottom:30px; max-width:480px;"><tr>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; width:50px; font-family:'Spoqa Han Sans' !important;">별 5개</td>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; min-width:100px;">
				<div style="width:100%; border:1px solid #efefef;">
					<div style="width:77%; background-color:#0096ff;">&nbsp;</div>
				</div>
			</td>
			<td style="padding:5px 0px 5px 0px; border-bottom:unset; width:40px; color:#999; font-family:'Spoqa Han Sans' !important; text-align:right;">77%</td>
			</tr><tr>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; width:50px; font-family:'Spoqa Han Sans' !important;">별 4개</td>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; min-width:100px;">
				<div style="width:100%; border:1px solid #efefef;">
					<div style="width:12%; background-color:#0096ff;">&nbsp;</div>
				</div>
			</td>
			<td style="padding:5px 0px 5px 0px; border-bottom:unset; width:40px; color:#999; font-family:'Spoqa Han Sans' !important; text-align:right;">12%</td>
			</tr><tr>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; width:50px; font-family:'Spoqa Han Sans' !important;">별 3개</td>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; min-width:100px;">
				<div style="width:100%; border:1px solid #efefef;">
					<div style="width:5%; background-color:#0096ff;">&nbsp;</div>
				</div>
			</td>
			<td style="padding:5px 0px 5px 0px; border-bottom:unset; width:40px; color:#999; font-family:'Spoqa Han Sans' !important; text-align:right;">5%</td>
			</tr><tr>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; width:50px; font-family:'Spoqa Han Sans' !important;">별 2개</td>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; min-width:100px;">
				<div style="width:100%; border:1px solid #efefef;">
					<div style="width:3%; background-color:#0096ff;">&nbsp;</div>
				</div>
			</td>
			<td style="padding:5px 0px 5px 0px; border-bottom:unset; width:40px; color:#999; font-family:'Spoqa Han Sans' !important; text-align:right;">3%</td>
			</tr><tr>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; width:50px; font-family:'Spoqa Han Sans' !important;">별 1개</td>
			<td style="padding:5px 5px 5px 0px; border-bottom:unset; min-width:100px;">
				<div style="width:100%; border:1px solid #efefef;">
					<div style="width:1%; background-color:#0096ff;">&nbsp;</div>
				</div>
			</td>
			<td style="padding:5px 0px 5px 0px; border-bottom:unset; width:40px; color:#999; font-family:'Spoqa Han Sans' !important; text-align:right;">1%</td>
			</tr></table></div>


				
	<h3 class="review-title">리뷰남기기</h3>
	<div id="review-comment-area-unlogged-in">
	<form class="form-contribution form-review">
		<div class="review-rating-stars"></div>
		<textarea name="review_comment" disabled class="textarea-review_comment" placeholder="리뷰를 입력해주세요"></textarea>
		<p class="form-row text-right">
			<button type="submit" class="button disabled" disabled>작성하기</button>
		</p>
			</form>
	</div>
		<div id="comments">
		<div id="contributions-list">
			<div class="contributions-container">
									<ol class="commentlist">
											<style>
						.comment-list-item .rating-stars img { width:20px; margin-left:-4px; }
						</style>
						<li class="comment-list-item" data-id="13540055" id="comment-13540055">
							<div style="position:relative; margin-bottom:15px;">
								<div class="rating-stars"></div>
								
								<div style="position:absolute; top:5px; right:0px;" class="author" style="text-align:right;"> <span class="regdate" style="font-family:'Spoqa Han Sans'; background-color:#f6f6f6; display:inline-block; padding:0px 10px; border-radius:8px;">jong****</span></div>
							</div>

							<div class="desc-full" style="color:#000;">3일정도 사용결과 면도날이 좀 아쉽네요
수염이 많지도않고 두껍지도 않은데 상처가 납니다
쉐이빙젤은 만족합니다</div>

							
							<div class="desc-short" style="color:#000;">
								3일정도 사용결과 면도날이 좀 아쉽네요
수염이 많지도않고 두껍지도 않은데 상처가 납니다
쉐이빙젤은 만족합니다
															</div>

							
							<div style="margin-top:5px; font-size:12px; color:#666; font-family:'Spoqa Han Sans';">2020.01.28</div>

							
														<form action="./wp-comments-post.php" method="post" 
								enctype="multipart/form-data" novalidate class="form-contribution form-contribution_comment">
														</form>

													</li>
											<style>
						.comment-list-item .rating-stars img { width:20px; margin-left:-4px; }
						</style>
						<li class="comment-list-item" data-id="13514564" id="comment-13514564">
							<div style="position:relative; margin-bottom:15px;">
								<div class="rating-stars"></div>
								<div style="position:absolute; top:5px; right:0px;" class="author" style="text-align:right;"> <span class="regdate" style="font-family:'Spoqa Han Sans'; background-color:#f6f6f6; display:inline-block; padding:0px 10px; border-radius:8px;">pjh6****</span></div>
							</div>

							<div class="desc-full" style="color:#000;">가성비 갑. 절삭력은 질레트가 조금더 좋은 듯하지만 불편한 정도는 아니며 가격으로 모든게 커버됨. </div>

							
							<div class="desc-short" style="color:#000;">
								가성비 갑. 절삭력은 질레트가 조금더 좋은 듯하지만 불편한 정도는 아니며 가격으로 모든게 커버됨. 
															</div>

							
							<div style="margin-top:5px; font-size:12px; color:#666; font-family:'Spoqa Han Sans';">2020.01.27</div>

							
														<form action="./wp-comments-post.php" method="post" 
								enctype="multipart/form-data" novalidate class="form-contribution form-contribution_comment">
														</form>

													</li>
											<style>
						.comment-list-item .rating-stars img { width:20px; margin-left:-4px; }
						</style>
						<li class="comment-list-item" data-id="13509862" id="comment-13509862">
							<div style="position:relative; margin-bottom:15px;">
								<div class="rating-stars"></div>
								<div style="position:absolute; top:5px; right:0px;" class="author" style="text-align:right;"> <span class="regdate" style="font-family:'Spoqa Han Sans'; background-color:#f6f6f6; display:inline-block; padding:0px 10px; border-radius:8px;">upnw****</span></div>
							</div>

							<div class="desc-full" style="color:#000;">업그레이드 버전의 사용감이 탁월하네요</div>

							
							<div class="desc-short" style="color:#000;">
								업그레이드 버전의 사용감이 탁월하네요
															</div>

							
							<div style="margin-top:5px; font-size:12px; color:#666; font-family:'Spoqa Han Sans';">2020.01.27</div>

							
														<form action="./wp-comments-post.php" method="post" 
								enctype="multipart/form-data" novalidate class="form-contribution form-contribution_comment">
														</form>

													</li>
											<style>
						.comment-list-item .rating-stars img { width:20px; margin-left:-4px; }
						</style>
						<li class="comment-list-item" data-id="13506596" id="comment-13506596">
							<div style="position:relative; margin-bottom:15px;">
								<div class="rating-stars"></div>
								<div style="position:absolute; top:5px; right:0px;" class="author" style="text-align:right;"> <span class="regdate" style="font-family:'Spoqa Han Sans'; background-color:#f6f6f6; display:inline-block; padding:0px 10px; border-radius:8px;">kims****</span></div>
							</div>

							<div class="desc-full" style="color:#000;">역시 최고입니다</div>

							
							<div class="desc-short" style="color:#000;">
								역시 최고입니다
															</div>

							
							<div style="margin-top:5px; font-size:12px; color:#666; font-family:'Spoqa Han Sans';">2020.01.27</div>

							
														<form action="./wp-comments-post.php" method="post" 
								enctype="multipart/form-data" novalidate class="form-contribution form-contribution_comment">
														</form>

													</li>
											<style>
						.comment-list-item .rating-stars img { width:20px; margin-left:-4px; }
						</style>
						<li class="comment-list-item" data-id="13424488" id="comment-13424488">
							<div style="position:relative; margin-bottom:15px;">
								<div class="rating-stars"></div>
								<div style="position:absolute; top:5px; right:0px;" class="author" style="text-align:right;"> <span class="regdate" style="font-family:'Spoqa Han Sans'; background-color:#f6f6f6; display:inline-block; padding:0px 10px; border-radius:8px;">asa2****</span></div>
							</div>

							<div class="desc-full" style="color:#000;">너무너무괜찮아요.날도아주견고하고
정말구입잘했어요</div>

							
							<div class="desc-short" style="color:#000;">
								너무너무괜찮아요.날도아주견고하고
정말구입잘했어요
															</div>

							
							<div style="margin-top:5px; font-size:12px; color:#666; font-family:'Spoqa Han Sans';">2020.01.24</div>

							
														<form action="./wp-comments-post.php" method="post" 
								enctype="multipart/form-data" novalidate class="form-contribution form-contribution_comment">
														</form>

													</li>
										</ol>


							</div>

		</div>
	</div>
</div>

<div class="pagination" style="font-family:'Spoqa Han Sans';">
		<a href="javascript:;"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		<a class="current" href="javascript:;">1</a> 
		<a class="" href="2/index.html#reviews">2</a> 
		<a class="" href="3/index.html#reviews">3</a> 
		<a class="" href="4/index.html#reviews">4</a> 
		<a class="" href="5/index.html#reviews">5</a> 
		<a href="6/index.html#reviews"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
</div>

<script>
window.onload = function(){
	jQuery(document).ready(function($){

				
		$('div.product-rating-stars').raty({ 
				path: './wp-content/themes/wisely/assets/raty/images/blue',
				score: 4.6,
				readOnly: true,
				hints: [undefined,undefined,undefined,undefined,undefined]
			});
			$('#review-comment-area-unlogged-in').click(function(e){
			e.preventDefault();
			$.show_notification_msg_lightbox_yes_no('로그인 후 리뷰입력이 가능합니다. 로그인하시겠습니까?', function(){
				location.href = './member_login_form.jsp';
			});
		});$('div.review-rating-stars').raty({ 
				path: './wp-content/themes/wisely/assets/raty/images/yellow-big',
				score: 0,
				scoreName: 'review_rating',
				hints: [undefined,undefined,undefined,undefined,undefined]
			});$('#comment-13540055 div.rating-stars').raty({ 
								path: './wp-content/themes/wisely/assets/raty/images/yellow-small',
								score: 2,
								readOnly: true,
								hints: [undefined,undefined,undefined,undefined,undefined]
							});$('#comment-13514564 div.rating-stars').raty({ 
								path: './wp-content/themes/wisely/assets/raty/images/yellow-small',
								score: 3,
								readOnly: true,
								hints: [undefined,undefined,undefined,undefined,undefined]
							});$('#comment-13509862 div.rating-stars').raty({ 
								path: './wp-content/themes/wisely/assets/raty/images/yellow-small',
								score: 5,
								readOnly: true,
								hints: [undefined,undefined,undefined,undefined,undefined]
							});$('#comment-13506596 div.rating-stars').raty({ 
								path: './wp-content/themes/wisely/assets/raty/images/yellow-small',
								score: 5,
								readOnly: true,
								hints: [undefined,undefined,undefined,undefined,undefined]
							});$('#comment-13424488 div.rating-stars').raty({ 
								path: './wp-content/themes/wisely/assets/raty/images/yellow-small',
								score: 5,
								readOnly: true,
								hints: [undefined,undefined,undefined,undefined,undefined]
							});
		$(".comment-list-item .see-more").click(function(e){
			e.preventDefault();
			var desc_full = $(this).prev();
			desc_full.toggle();

			// var desc_short = desc_full.prev();
			// desc_short.toggle();

			$(this).hide();
		});

		function show_notification_lightbox(msg, btn_action){
			var target_id = "lb-notification";
			var l = $("#" + target_id);
			l.css("position", "fixed");
			l.css("top", ($(window).height() - l.height())/2);
			l.find(".lb-message").html(msg);
			l.fadeIn();
			$("#bg-lightbox-product-detail").fadeIn();
			$("#bg-lightbox-product-detail").attr("data-target", target_id);
			// set an action on the 'okay' button
			$("#lb-notification .btn-last-close").click(function(e){
				e.preventDefault();
				btn_action();
			});
		}
		$("#bg-lightbox-product-detail").click(function(e){
			e.preventDefault();
			var target_id = $(this).attr("data-target");
			if(target_id != ""){
				$("#" + target_id).fadeOut();
			}
			$("#bg-lightbox-product-detail").fadeOut();
		});
		$("#lb-notification .btn-close").click(function(e){
			e.preventDefault();
			$("#bg-lightbox-product-detail").click();
		});

	});
};
</script>
                
			</div>
		</div>
						<ul class="faq-tabs" data-key="faq" >
						<li class="description_tab product-tab-link ">
				<a href="javascript:;" class="product-tab-link" data-key="description" style="font-family:'Spoqa Han Sans';">상세정보</a>
			</li>
						<li class="reviews_tab product-tab-link ">
				<a href="javascript:;" class="product-tab-link" data-key="reviews" style="font-family:'Spoqa Han Sans';">리뷰</a>
			</li>
						<li class="faq_tab product-tab-link active">
				<a href="javascript:;" class="product-tab-link" data-key="faq" style="font-family:'Spoqa Han Sans';">자주 묻는 질문</a>
			</li>
					</ul>

						<div class="entry-content">
			<div class="wrapper960">
				<div class="single-product-faq-content"><h3 id="faq-product" class="arconix-faq-term-title arconix-faq-term-product">제품</h3><div id="faq-3131" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">더 부드러운 면도, 어떻게 해야하나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><p><img class="size-full wp-image-5298 aligncenter" src="./wp-content/uploads/2018/02/%ec%99%80%ec%9d%b4%ec%a6%90%eb%a6%ac-%eb%b8%8c%eb%a1%9c%ec%85%94_%ec%99%80%ec%9d%b4%ec%a6%90%eb%a6%ac-%ec%a3%bc%ec%8b%9d%ed%9a%8c%ec%82%ac-17-1.jpg" alt="" width="667" height="2008" srcset="./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-17-1.jpg 667w, ./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-17-1-100x300.jpg 100w, ./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-17-1-340x1024.jpg 340w" sizes="(max-width: 667px) 100vw, 667px" /></p>
</div></div><div id="faq-3123" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">머리에 사용해도 되나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><ul>
<li>머리 면도에도 사용할 수 있지만, 각별히 주의해주세요! 와이즐리는 얼굴 면도에 최적화되어 설계되었습니다.</li>
</ul>
</div></div><div id="faq-4297" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">면도기와 면도날은 어떻게 보관해야 하나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><p><img class="size-full wp-image-5305 aligncenter" src="./wp-content/uploads/2018/02/%ec%99%80%ec%9d%b4%ec%a6%90%eb%a6%ac-%eb%b8%8c%eb%a1%9c%ec%85%94_%ec%99%80%ec%9d%b4%ec%a6%90%eb%a6%ac-%ec%a3%bc%ec%8b%9d%ed%9a%8c%ec%82%ac-18-2.jpg" alt="" width="1335" height="2008" srcset="./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-18-2.jpg 1335w, ./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-18-2-199x300.jpg 199w, ./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-18-2-768x1155.jpg 768w, ./wp-content/uploads/2018/02/와이즐리-브로셔_와이즐리-주식회사-18-2-681x1024.jpg 681w" sizes="(max-width: 1335px) 100vw, 1335px" /></p>
</div></div><div id="faq-3121" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">면도날 상단부에 위치한 날은 무슨 용도인가요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><ul>
<li>후면에 있는 면도날은 프리시전 트리머입니다. 인중, 구레나룻 등 면도날이 닿기 힘든 곳을 더 정확하게 면도할 수 있습니다.</li>
</ul>
</div></div><div id="faq-3117" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">면도날과 면도기는 어디에서 생산되나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><ul>
<li>면도날은 독일, 면도기는 대한민국에서 생산됩니다.</li>
</ul>
</div></div><div id="faq-3125" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">면도날은 얼마나 자주 교체해야 하나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><ul>
<li>일반적으로 10~15회 사용하시는 것을 권장드립니다. 단 수염의 양, 모질 및 사용 습관에 따라 개인차가 있을 수 있습니다.</li>
</ul>
</div></div><div id="faq-1265705" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">쉐이빙젤과 여행용 쉐이빙젤은 무엇이 다른가요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><p>성분은 동일하고, 용량이 다릅니다.<br />
여행용 쉐이빙젤은 75ml로서 약 1~2개월 사용 가능하고,<br />
쉐이빙젤은 150ml로서 약 2~3개월 사용이 가능합니다. </p>
</div></div><div id="faq-1265867" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">쉐이빙젤은 어디에서 만들어 지나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><p>유럽 벨기에에서 생산합니다.<br />
세계적인 제조기술과 위생적이고 안전한 생산 공정을 위해, 와이즐리 쉐이빙젤은 전량 유럽 벨기에에서 생산됩니다.<br />
현지의 높은 인건비나 한국까지의 운송비 등을 고려하면 비용은 매우 높아지지만, 그만큼 와이즐리 고객님들께 더 훌륭하고 좋은 제품을 제공할 수 있기 때문입니다.</p>
</div></div><div id="faq-1265771" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">쉐이빙젤은 어떤 형태의 젤인가요? 거품이 많이 나나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><p>네, 쉐이빙젤을 손에 덜어 물과 함께 문지르면 풍성하고 밀도 높은 거품으로 변합니다. </p>
</div></div><div id="faq-1265924" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">쉐이빙젤을 꼭 써야 하나요? 비누나 클렌징폼을 써도 되지 않나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><p>비누나 클렌징폼도 거품을 만들어 내기는 하지만, 거품이 전부가 아닙니다.</p>
<p>1.부드러운 수염 : 수염에 수분을 공급해 줍니다.<br />
쉐이빙젤은 수염에 달라붙어 뭍이 흘러내리지 않고 수염에 흡수되도록 돕습니다.<br />
반면 비누는 각질층을 파괴하려 강알칼리성을 띠기 때문에 오히려 수염 주변을 건조하게 만듭니다.</p>
<p>2.절삭력 향상 : 누운 수염 일으켜 세우기<br />
쉐이빙젤의 거품은 밀도와 점성이 아주 높습니다. 이 거품들은 수염을 수직으로 일으켜 세워 면도날에 잘리기 쉽게 합니다.<br />
일반 비누나 클렌징 폼 거품의 밀도와 점성, 피부 밀착력은 쉐이빙젤에 훨씬 못 미치기 때문에 같은 효과를 기대하기 어렵습니다.</p>
<p>3.피부 보호 : 상처입은 피부 진정시키기<br />
면도 시 칼날이 피부 위를 지나가기 때문에 약간의 피부 자극은 불가피합니다.<br />
쉐이빙젤은 면도가 끝난 피부를 진정시키고 수분이 빠져나가지 않도록 합니다.<br />
비누는 노폐물을 제거하는 데 특화되어 있을 뿐 보습이나 피부 재생에는 도움이 되지 않습니다. </p>
</div></div><div id="faq-3127" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">여자도 사용할 수 있나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><ul>
<li>네! 이미 수많은 여성 고객들이 와이즐리를 사용하고 계십니다.</li>
</ul>
</div></div><div id="faq-3119" class="arconix-faq-wrap"><div id="faq-" class="arconix-faq-title faq-closed">와이즐리 면도날은 다른 브랜드 제품과 호환되나요?<a class="faq-arrow faq-arrow-open pull-right"></a></div><div class="arconix-faq-content faq-closed"><ul>
<li>와이즐리 면도날은 와이즐리 면도기로만 사용가능하며, 다른 브랜드와 호환되지 않습니다.</li>
</ul>
</div></div></div>
<div class="faq-more">
	<h4>더 궁금하세요?</h4>
	<ul>
		<li>
			<div class="floatL"><i class="fa fa-phone" aria-hidden="true"></i> 전화</div>
			<div class="floatR">1833-9133</div>
		</li>
		<li>
			<div class="floatL"><i class="fa fa-envelope-o" aria-hidden="true"></i> 이메일</div>
			<div class="floatR">help@wiselyshave.com</div>
		</li>
		<li>
			<div class="floatL"><i class="fa fa-comment-o" aria-hidden="true"></i> 카카오톡 플러스친구</div>
			<div class="floatR">@wisely (와이즐리)</div>
		</li>
		<li>
			<div class="floatL"><i class="fa fa-clock-o" aria-hidden="true"></i> 운영시간</div>
			<div class="floatR">평일 09:00 - 18:00</div>
		</li>
	</ul>
</div>
                
			</div>
		</div>
					</div>

 

    <meta itemprop="url" content="index.html" />

</div><!-- #product-2172 -->

                </div>

                
              </div>
            </div>
          </div>
          <!-- Content Area End-->

                  </div>

      </div>
    </div>
  </div>
</div>
<!-- ContainerWrap End-->


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
                            <a href="../../index.html">
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
<script type="application/ld+json">{"@context":"https:\/\/schema.org\/","@type":"Product","@id":"https:\/\/www.wiselyshave.com\/product\/shaver\/","name":"\uba74\ub3c4\uae30","image":"https:\/\/www.wiselyshave.com\/wp-content\/uploads\/2017\/02\/starter-set-04-modified.jpg","description":"9\uc6d416\uc77c\ubd80\ud130 \uc0c8\ub86d\uac8c \uc5c5\uadf8\ub808\uc774\ub4dc \ucd9c\uc2dc\ub41c \uc640\uc774\uc990\ub9ac \uba74\ub3c4\ub0a0 2\uc138\ub300\ub85c \ubc1c\uc1a1\ub429\ub2c8\ub2e4. \ubb34\uc5c7\uc774 \ubc14\ub00c\uc5c8\ub098\uc694? 9\uc6d416\uc77c\ubd80\ud130 \uc0c8\ub86d\uac8c \uc5c5\uadf8\ub808\uc774\ub4dc \ucd9c\uc2dc\ub41c \uc640\uc774\uc990\ub9ac \uba74\ub3c4\ub0a0 2\uc138\ub300\ub85c \ubc1c\uc1a1\ub429\ub2c8\ub2e4. 9\uc6d416\uc77c\ubd80\ud130 \uc0c8\ub86d\uac8c \uc5c5\uadf8\ub808\uc774\ub4dc \ucd9c\uc2dc\ub41c \uc640\uc774\uc990\ub9ac \uba74\ub3c4\ub0a0 2\uc138\ub300\ub85c \ubc1c\uc1a1\ub429\ub2c8\ub2e4. \ubb34\uc5c7\uc774 \ubc14\ub00c\uc5c8\ub098\uc694? 9\uc6d416\uc77c\ubd80\ud130 \uc0c8\ub86d\uac8c \uc5c5\uadf8\ub808\uc774\ub4dc \ucd9c\uc2dc\ub41c \uc640\uc774\uc990\ub9ac \uba74\ub3c4\ub0a0 2\uc138\ub300\ub85c \ubc1c\uc1a1\ub429\ub2c8\ub2e4.","sku":"W-003","offers":[{"@type":"Offer","price":"6000","priceCurrency":"KRW","availability":"https:\/\/schema.org\/InStock","url":"https:\/\/www.wiselyshave.com\/product\/shaver\/","seller":{"@type":"Organization","name":"\uc640\uc774\uc990\ub9ac :: Wisely","url":"https:\/\/www.wiselyshave.com"},"category":"repurchase"}],"aggregateRating":{"@type":"AggregateRating","ratingValue":"4.62","ratingCount":"314","reviewCount":"313","bestRating":"5"}}</script><link rel='stylesheet' id='seese-default-style-css'  href='./wp-content/themes/wisely/stylecc2a.css?ver=4.8.3.01' type='text/css' media='all' />
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
<script type='text/javascript' src='./wp-content/themes/wisely/assets/simple-calendar/jquery.simple-calendar9423.js?ver=1580295859'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/raty/jquery.raty5152.js?ver=1.0'></script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/jquery.validate.min8162.js?ver=1.9.0'></script>
<script type='text/javascript'>
jQuery(document).ready(function($) {$("#commentform").validate({rules: {author: {required: true,minlength: 2},email: {required: true,email: true},comment: {required: true,minlength: 10}}});});
</script>
<script type='text/javascript' src='./wp-content/themes/wisely/assets/js/wc-scripts5152.js?ver=1.0'></script>
<script type='text/javascript' src='./wp-includes/js/comment-reply.mincc2a.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='./wp-includes/js/jquery/ui/accordion.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='./wp-content/plugins/arconix-faq/includes/js/arconix-faq51a2.js?ver=1.6.1'></script>
<script type="text/javascript" src="../../../wcs.naver.net/wcslog.js"></script>
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

<!-- Mirrored from www.wiselyshave.com/product/shaver/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jan 2020 11:05:25 GMT -->
</html>
