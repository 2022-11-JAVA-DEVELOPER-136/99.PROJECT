/*
 * All Plugins Used in this Seese Theme
 * Author & Copyright: VictorThemes
 * URL: http://themeforest.net/user/VictorThemes
 */

var wiselyIsMobile = {
	Android: function() {
		return navigator.userAgent.match(/Android/i);
	},
	BlackBerry: function() {
		return navigator.userAgent.match(/BlackBerry/i);
	},
	iOS: function() {
		return navigator.userAgent.match(/iPhone|iPad|iPod/i);
	},
	Opera: function() {
		return navigator.userAgent.match(/Opera Mini/i);
	},
	Windows: function() {
		return navigator.userAgent.match(/IEMobile/i) || navigator.userAgent.match(/WPDesktop/i);
	},
	any: function() {
		return (wiselyIsMobile.Android() || wiselyIsMobile.BlackBerry() || wiselyIsMobile.iOS() || wiselyIsMobile.Opera() || wiselyIsMobile.Windows());
	}
};

(function($){

	'use strict';

	$(window).load(function() {

        $('.seese-preloader-mask').delay(200).fadeOut();
        $('#preloader').delay(350).fadeOut('slow');
        $('body').delay(350).css({'overflow':'visible'});

		// OWL Carousel For Single Post Slider Images
		$('.seese-blog-post .seese-featureImg-carousel').owlCarousel({
			items: 1,
			loop: true,
			nav: true,
			dots: false,
			autoplay: false,
			autoHeight: true,
			navText: ["<i class='fa fa-angle-left' aria-hidden='true'></i>", "<i class='fa fa-angle-right' aria-hidden='true'></i>"],
			responsive: {
				0: {
					items: 1
				},
				600: {
					items: 1
				}
			}
		});

	});

	$(document).ready(function() {

		var isIE = document.body.style.msTouchAction !== undefined;
		if(isIE) {
			$('html').addClass('ie10');
		} else {
			$('html').addClass('seese-browser');
		}

		// Slicknav Mobile Menu
        /*
		$("#seese-menu").slicknav({
			label: '',
			duplicate: true,
			nestedParentLinks: true,
			duration: 200,
			allowParentLinks: true,
			prependTo: "#seese-mobilemenu"
		});*/

		// Products Click
		$('.product').on('click touchend', function(e) {
			var el = $(this);
			$(el).trigger('hover');
		});

		// Magnific Popup Gallery
		$(".seese-gallery").magnificPopup({
			delegate: 'a',
			type: 'image',
			closeOnContentClick: false,
			closeBtnInside: false,
			mainClass: 'mfp-with-zoom',
			image: {
				verticalFit: true,
			},
			gallery: {
				enabled: true,
			},
			zoom: {
				enabled: true,
				duration: 300,
				opener: function(element) {
					return element.find("img");
				}
			}
		});

		// Magnific Popup Single Image
		$(".seese-img-popup").magnificPopup({
			type: 'image',
			closeOnContentClick: false,
			closeOnBgClick: true,
			closeBtnInside: false,
			mainClass: 'mfp-with-zoom',
			image: {
				verticalFit: true
			},
			zoom: {
				enabled: true,
				duration: 300,
				opener: function(element) {
					return element.find("img");
				}
			}
		});

		// Scrolling Header
		$(window).scroll(function() {
			var scroll = $(window).scrollTop();
			if (scroll >= 20) {
				$(".seese-header").addClass("scrolling");
			} else {
				$(".seese-header").removeClass("scrolling");
			}
		});
		
		// Scrolling Wrapper
		$(window).scroll(function() {
			var scroll = $(window).scrollTop();
			if (scroll >= 20) {
				$(".seese-wrapper").addClass("scrolling");
			} else {
				$(".seese-wrapper").removeClass("scrolling");
			}
		});

		// Go To Top
		var duration = 500;
		$('.seese-gototop a').click(function(event) {
			event.preventDefault();
			$('html, body').animate({
				scrollTop: 0
			}, duration);
			return false;
		})

		// FitJs Video
		$(".seese-content-area").fitVids();

		// Blog Masonary Call
		var $blog_masonry_container;
		if ($('.seese-blog-wrapper').hasClass('seese-masonry-blog')) {
			$blog_masonry_container = $('.seese-blog-msnry');
			$blog_masonry_container.imagesLoaded(function() {
				$blog_masonry_container.masonry({
					itemSelector: '.seese-blog-msnry-item',
					columnWidth: '.seese-blog-msnry-sizer',
				});
			});
		}

		// OWL Carousel Blog Feature Image
		$('.seese-blog-wrapper .seese-featureImg-carousel').owlCarousel({
			items: 1,
			loop: true,
			nav: true,
			dots: false,
			autoplay: false,
			autoHeight: false,
			navText: ["<i class='fa fa-angle-left' aria-hidden='true'></i>", "<i class='fa fa-angle-right' aria-hidden='true'></i>"],
			responsive: {
				0: {
					items: 1
				},
				600: {
					items: 1
				}
			}
		});

		// Blog Post Ajax Load
		var $nextPageLinkBlog = $('.seese-blog-load-more-link').find('a');
		var $loadMoreControlsBlog = $('.seese-blog-load-more-controls');
		var nextPageUrlBlog = $nextPageLinkBlog.attr('href');

		if (nextPageUrlBlog) {
			$('.seese-blog-load-more-controls #seese-loaded').addClass('seese-link-present');
		} else {
			$loadMoreControlsBlog.addClass('seese-hide-btn');
		}

		$('.seese-blog-wrapper #seese-blog-load-more-btn').on('click', function(e) {
			e.preventDefault();

			if (nextPageUrlBlog) {
				if ($loadMoreControlsBlog.hasClass('seese-hide-btn')) {
					$loadMoreControlsBlog.removeClass('seese-hide-btn');
				}
				$loadMoreControlsBlog.addClass('seese-loader');

				$.ajax({
					url: nextPageUrlBlog,
					dataType: 'html',
					method: 'GET',
					error: function(XMLHttpRequest, textStatus, errorThrown) {
						//console.log('SEESE: AJAX error - ' + errorThrown);
					},
					complete: function() {
						$loadMoreControlsBlog.removeClass('seese-loader');
					},
					success: function(response) {
						if ($('.seese-blog-wrapper').hasClass('seese-masonry-blog')) {
							var $newElements = $($.parseHTML(response)).find('.seese-blogs').children('.seese-blog-msnry-item');
							$blog_masonry_container.append($newElements).imagesLoaded(function() {
								$blog_masonry_container.masonry('appended', $newElements);
							});
						} else {
							var $newElements = $($.parseHTML(response)).find('.seese-blogs').children('.row');
							$('.seese-blog-wrapper').find('.seese-blogs').append($newElements);
						}

						// Magnific Popup Gallery
						$(".seese-gallery").magnificPopup({
							delegate: 'a',
							type: 'image',
							closeOnContentClick: false,
							closeBtnInside: false,
							mainClass: 'mfp-with-zoom',
							image: {
								verticalFit: true,
							},
							gallery: {
								enabled: true,
							},
							zoom: {
								enabled: true,
								duration: 300,
								opener: function(element) {
									return element.find("img");
								}
							}
						});

						// Magnific Popup Single Image
						$(".seese-img-popup").magnificPopup({
							type: 'image',
							closeOnContentClick: false,
							closeOnBgClick: true,
							closeBtnInside: false,
							mainClass: 'mfp-with-zoom',
							image: {
								verticalFit: true
							},
							zoom: {
								enabled: true,
								duration: 300,
								opener: function(element) {
									return element.find("img");
								}
							}
						});

						('.seese-blog-wrapper .seese-featureImg-carousel').owlCarousel({
							items: 1,
							loop: true,
							nav: true,
							dots: false,
							autoplay: false,
							autoHeight: false,
							navText: ["<i class='fa fa-angle-left' aria-hidden='true'></i>", "<i class='fa fa-angle-right' aria-hidden='true'></i>"],
							responsive: {
								0: {
									items: 1
								},
								600: {
									items: 1
								}
							}
						});

	                    $(".seese-content-area").fitVids();

						nextPageUrlBlog = $($.parseHTML(response)).find('.seese-blog-load-more-link').children('a').attr('href');
						if (nextPageUrlBlog) {
							$nextPageLinkBlog.attr('href', nextPageUrlBlog);
						} else {
							$loadMoreControlsBlog.addClass('seese-all-loaded');
							$nextPageLinkBlog.removeAttr('href');
							$('.seese-blog-load-more-controls #seese-loaded').removeClass('seese-link-present');
						}
					}
				});
			} else {
				$loadMoreControlsBlog.addClass('seese-hide-btn');
			}
		});

		/** lightboxes (global jQuery function) */

		var l = $("#lb-notification");
		var bg = $("#bg-lb-notification");

		// lightbox w/ msg
		$.show_notification_msg_lightbox = function(msg){
			l.find(".lb-message").html(msg);
			l.find(".lastbtnBox").css("display", "block");

			var l_width = $(window).width() * 0.7;
			l.css("position", "fixed");
			l.width(l_width);
			l.css("left", ($(window).width() - l.width() - 84)/2);
			l.css("top", Math.max(($(window).height() - l.height() - 56)/2, 20));

			l.fadeIn();
			bg.fadeIn();

			if( typeof after_notice_call == "function" ){
				after_notice_call();
			}
		};

		// lightbox w/ msg + yes(okay)-no(close)
		$.show_notification_msg_lightbox_yes_no = function(msg, callback){
			l.find(".lb-message").html(msg);
			l.find(".lastbtnBox").css("display", "block");

			var l_width = $(window).width() * 0.7;
			l.css("position", "fixed");
			l.width(l_width);
			l.css("left", ($(window).width() - l.width() - 84)/2);
            l.css("top", Math.max(($(window).height() - l.height() - 56)/2, 20));

			l.fadeIn();
			bg.fadeIn();

			// set an action on the 'okay' button
			$("#lb-notification .btn-last-close").click(function(e){
				e.preventDefault();
				callback();
			});
		};

		// lightbox w/ msg + custom button text
		$.show_notification_msg_lightbox_custom = function(msg, btnText, cbClick){
			l.find(".lb-message").html(msg);
			l.find(".lastbtnBox").css("display", "block");

			var l_width = $(window).width() * 0.7;
			l.css("position", "fixed");
			l.width(l_width);
			l.css("left", ($(window).width() - l.width() - 84)/2);
			l.css("top", Math.max(($(window).height() - l.height() - 56)/2, 20));

			if(btnText) {
				l.find('.btn-last-close span').text(btnText).show();
			} else {
				l.find('.btn-last-close span').hide();
			}
			l.fadeIn();
			bg.fadeIn();

			// set an action on the 'okay' button
			if(typeof cbClick == 'function') {
				$("#lb-notification .btn-last-close").click(function(e){
					e.preventDefault();
					cbClick();
				});
			}
		};

		// lightbox w/ iframe having url+width+height
		$.show_notification_iframe_lightbox = function(url, width, height){
            l.find(".lb-message").html("<iframe src='"+url+"' width='100%' height='"+(l.height()*0.9)+"' frameborder=0></iframe>");

			var l_width = (width == null ? ($(window).width() * 0.7) : (width > $(window).width() ? $(window).width() * 0.8 : width));
			var l_height = (height == null ? ($(window).height() * 0.6) : (height > $(window).height() ? $(window).height() * 0.8 : height));

            l.css("position", "fixed");
			l.find(".lastbtnBox").css("display", "none");
			l.width(l_width).height(l_height);

			l.css("left", ($(window).width() - l.width() - 84)/2);
            l.css("top", ($(window).height() - l.height() - 56)/2);
            l.fadeIn();
            bg.fadeIn();
		};
        $("#lb-notification .btn-close").click(function(){
            bg.fadeOut();
            l.fadeOut();
        });
		$("#lb-notification .lastbtnBox .btn-last-close").click(function(){
			$("#lb-notification .btn-close").click();
		});
		$("#bg-lb-notification").click(function(e){
			e.preventDefault();
			$("#lb-notification .btn-close").click();
		});

		$(".wisely-ext-lightbox").click(function(e){
			e.preventDefault();

			var hash = $(this).is("li") ? $(this).children()[0].hash : $(this)[0].hash;
			if(hash == "#privacy"){
				//$.show_notification_iframe_lightbox("https://drive.google.com/file/d/1oCg5hQID_4O0thNX_PHmx6jG_gZNwdwM/preview");
				var url = "/privacy";
				window.open(url, "_blank");
			}else if(hash == "#terms"){
				//$.show_notification_iframe_lightbox("https://drive.google.com/file/d/1JDY3HiYWI_FbRbauRX5gEXn92J9auMuP/preview");
				var url = "/terms";
				window.open(url, "_blank");
			}else if(hash == "#terms-commerce"){
				$.show_notification_iframe_lightbox("https://drive.google.com/file/d/1fgTr4LcRD_X5xejsDFd2jLZjZBKnj1El/preview");
			}else if(hash == "#terms-subscription"){
				$.show_notification_iframe_lightbox("https://drive.google.com/file/d/1Q1bs5IXA_aNL5Z5k5D1b1JlVfkOnbY1q/preview");
			}else if(hash == "#guide"){
				//$.show_notification_iframe_lightbox("https://drive.google.com/file/d/1-CsiuRk1dwi-kr2zFTiQjnwQKBN5UJV0/preview");
				var url = "/guides";
				window.open(url, "_blank");
			}else if(hash == "#company-info"){
				//$.show_notification_iframe_lightbox("https://ftc.go.kr/bizCommPop.do?wrkr_no=3448800965");
				var url = "http://ftc.go.kr/bizCommPop.do?wrkr_no=3448800965";
				window.open(url, "bizCommPop", "width=750, height=700;");
			}else if(hash == "#nicepay"){
				$.show_notification_iframe_lightbox("https://pg.nicepay.co.kr/issue/IssueEscrow.jsp?Mid=IMPwisel2m&CoNo=3448800965", 450, 450);
			}
		});

		$("#menu-item-2724517").click(function(e){
			var url = "https://www.notion.so/wiselyco/eafebaebc3d44ea98a7570ae6d0e08a8";
			window.open(url, "_blank");
		});


		(function($) {    
		if ($.fn.style) {
		return;
		}

		// Escape regex chars with \
		var escape = function(text) {
		return text.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&");
		};

		// For those who need them (< IE 9), add support for CSS functions
		var isStyleFuncSupported = !!CSSStyleDeclaration.prototype.getPropertyValue;
		if (!isStyleFuncSupported) {
		CSSStyleDeclaration.prototype.getPropertyValue = function(a) {
		return this.getAttribute(a);
		};
		CSSStyleDeclaration.prototype.setProperty = function(styleName, value, priority) {
		this.setAttribute(styleName, value);
		var priority = typeof priority != 'undefined' ? priority : '';
		if (priority != '') {
		// Add priority manually
		var rule = new RegExp(escape(styleName) + '\\s*:\\s*' + escape(value) +
		'(\\s*;)?', 'gmi');
		this.cssText =
		this.cssText.replace(rule, styleName + ': ' + value + ' !' + priority + ';');
		}
		};
		CSSStyleDeclaration.prototype.removeProperty = function(a) {
		return this.removeAttribute(a);
		};
		CSSStyleDeclaration.prototype.getPropertyPriority = function(styleName) {
		var rule = new RegExp(escape(styleName) + '\\s*:\\s*[^\\s]*\\s*!important(\\s*;)?',
		'gmi');
		return rule.test(this.cssText) ? 'important' : '';
		}
		}

		// The style function
		$.fn.style = function(styleName, value, priority) {
		// DOM node
		var node = this.get(0);
		// Ensure we have a DOM node
		if (typeof node == 'undefined') {
		return this;
		}
		// CSSStyleDeclaration
		var style = this.get(0).style;
		// Getter/Setter
		if (typeof styleName != 'undefined') {
		if (typeof value != 'undefined') {
		// Set style property
		priority = typeof priority != 'undefined' ? priority : '';
		style.setProperty(styleName, value, priority);
		return this;
		} else {
		// Get style property
		return style.getPropertyValue(styleName);
		}
		} else {
		// Get CSSStyleDeclaration
		return style;
		}
		};
		})(jQuery);
	});

	$(window).scroll(function() {

		if( ( $(window).scrollTop() + $(window).height() ) < ( $(document).height() - ( $(".seese-footer").height() + $(".seese-footer").height() ) ) ) {
	        $('.seese-gototop').css({ 'opacity' : 1 }).css({ 'visibility' : 'visible' });
	        $('.seese-specialPage').css({ 'opacity' : 1 }).css({ 'visibility' : 'visible' });
		}
	    if( ( $(window).scrollTop() + $(window).height() ) > ( $(document).height() - ( $(".seese-footer").height() + $(".seese-footer").height() ) ) ) {
      		$('.seese-gototop').css({ 'opacity' : 0 }).css({ 'visibility' : 'hidden' });
      		$('.seese-specialPage').css({ 'opacity' : 0 }).css({ 'visibility' : 'hidden' });
	 	}

	});

			// WPML Dropdown
		$('.seese-topdd-content').hide();
    $('.seese-top-dropdown').each(function() {

      var $this    = $(this),
          $open    = $this.find('.seese-top-active'),
          $content = $this.find('.seese-topdd-content');

      $open.on('click', function( e ) {

        e.preventDefault();
        e.stopPropagation();

				if ($( ".seese-top-active i" ).hasClass( "fa-angle-down" ) ){
					$( ".seese-top-active i" ).removeClass('fa-angle-down');
					$( ".seese-top-active i" ).addClass('fa-angle-up');
				} else {
				  $( ".seese-top-active i" ).addClass('fa-angle-down');
				  $( ".seese-top-active i" ).removeClass('fa-angle-up');
				}
				$(document.body).on('click', function () {
		      $( ".seese-top-active i" ).addClass('fa-angle-down');
				  $( ".seese-top-active i" ).removeClass('fa-angle-up');
		    });

        if( $content.hasClass('seese-opened') ) {
          $content.removeClass('seese-opened').fadeOut('fast');
        } else {
          $content.trigger('close-modals').addClass('seese-opened').fadeIn('fast');
          $content.find('input').focus();
        }

      });

      $content.on('click', function ( event ) {

        if (event.stopPropagation) {
          event.stopPropagation();
        } else if ( window.event ) {
          window.event.cancelBubble = true;
        }

      });

      $(document.body).on('click close-modals', function () {
	      $('.seese-topdd-content').removeClass('seese-opened').fadeOut('fast');
	    });

    });

})(jQuery);
