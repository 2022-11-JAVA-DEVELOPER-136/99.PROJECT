jQuery(document).ready(function($) {
  "use strict";

	String.prototype.getDecimals || (String.prototype.getDecimals = function() {
    var a = this,
        b = ("" + a).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
    return b ? Math.max(0, (b[1] ? b[1].length : 0) - (b[2] ? +b[2] : 0)) : 0
	});

	function priceHtml(price) {
		var html = '',
			pattern = /(\d+)(\d{3})/;
		price = parseFloat(price);

		if ('disabled' != ipw_product_params.price_format.rounding) {
			price /= ipw_product_params.price_format.rounding_increment;

			switch (ipw_product_params.price_format.rounding) {
				case 'up':
					price = Math.ceil(price);
					break;

				case 'down':
					price = Math.floor(price);
					break;

				case 'nearest':
					price = Math.round(price);
					break;
			}

			price *= ipw_product_params.price_format.rounding_increment;
			price -= ipw_product_params.price_format.auto_subtract;
		}

		price = price.toFixed(ipw_product_params.price_format.decimals);
		html = price.toString().replace('.', ipw_product_params.price_format.decimal_sep);
		html = html.replace(/^\d+/, function (w) {
			while (pattern.test(w)) {
				w = w.replace(pattern, '$1' + ipw_product_params.price_format.thousand_sep + '$2');
			}

			return w;
		});
		if('NaN'===html) {
			return '';
		}
		html = ipw_product_params.price_format.format
			.replace('%1$s', '<span class="woocommerce-Price-currencySymbol">' + ipw_product_params.price_format.currency_symbol + '</span>')
			.replace('%2$s', html);
		html = '<span class="woocommerce-Price-amount amount">' + html + '</span>';

		return html;
	}

  var ipwAddToCart = {
    $form: $('.cart'),
		attrColor: null,
		attrQty: null,
		currentPrice: false,
		valueTarget: $('.add_to_cart_button'),
		hasInlineShipping: $('.ipw-inline-shipping_fee').length,
		curProductType: 'general',

    onColorClick:function(e) {
      ipwAddToCart.attrColor.find('select').val($(this).data('color_name')).prop('selected', true);
      $('#product_id').val($(this).data('product_id'));
    },

		onQtyClick:function() {
			var a = $(this).closest(".quantity").find(".qty"),
					b = parseFloat(a.val()),
					c = parseFloat(a.attr("max")),
					d = parseFloat(a.attr("min")),
					e = a.attr("step");
			b && "" !== b && "NaN" !== b || (b = 0), "" !== c && "NaN" !== c || (c = ""), "" !== d && "NaN" !== d || (d = 0), "any" !== e && "" !== e && void 0 !== e && "NaN" !== parseFloat(e) || (e = 1), $(this).is(".plus") ? c && b >= c ? a.val(c) : a.val((b + parseFloat(e)).toFixed(e.getDecimals())) : d && b <= d ? a.val(d) : b > 0 && a.val((b - parseFloat(e)).toFixed(e.getDecimals())), a.trigger("change");

			ipwAddToCart.valueTarget.data('quantity', a.val());
			ipwAddToCart.calculate();
		},

		onQtyChange:function() {
			var q = $(this).val();
			q && ''!==q && 'NaN'!==q && 'NaN'!==parseInt(q) || (q=0);

			ipwAddToCart.valueTarget.data('quantity', q);
			ipwAddToCart.calculate();
		},

    onReset:function() {
			ipwAddToCart.currentPrice = false;
			ipwAddToCart.calculate();
			$('.ipw-product_descriptions').hide();
    },

    onFoundVariation:function(e, data) {
			ipwAddToCart.currentPrice = data.display_price;
			ipwAddToCart.valueTarget.data('product_id', data.variation_id);
			ipwAddToCart.calculate();
			$('.ipw-product_descriptions').hide();
			$('.ipw-product_descriptions.ipw-product_desc-'+data.variation_id).show();
    },

		onBundleClick:function() {
			ipwAddToCart.valueTarget.data('bundle_id', $(this).is(':checked') ? $(this).val() : '');
			ipwAddToCart.calculate();
		},

		onButtonUpdated:function(e, data) {
			if(data.redirect) {
				window.location = data.redirect;
			} else {
				$('.box-added-to-cart').fadeIn();
			}
		},

		calculate:function() {
			var html = '';
			var subTotal = ipwAddToCart.currentPrice;
			if(subTotal) {
				$('.bundle-select:checked').each(function(){
					subTotal += parseInt($(this).closest('.item-select-wrap').find('.item-price').val());
				});

				subTotal *= parseInt($('.quantity .qty').val());
			}

			if(ipw_product_params.is_shipping_free || 'subscription'==ipwAddToCart.curProductType || parseInt(subTotal)>=ipw_product_params.free_shipping_amount) {
				$('.ipw-shipping-notice').addClass('free');
				$('.ipw-inline-shipping_fee').addClass('free');
			} else {
				$('.ipw-shipping-notice').removeClass('free');
				$('.ipw-inline-shipping_fee').removeClass('free');
				if(ipwAddToCart.hasInlineShipping) {
					subTotal += 2500;
				}
			}

			if(subTotal) {
				html = priceHtml(subTotal);
			}
			ipwAddToCart.$form.find('div.price').html(html);
		},

		onProductTypeGeneral: function() {
			$('.ipw_on_product_general').show();
			$('.ipw_off_product_general').hide();
			ipwAddToCart.curProductType = 'general';
			ipwAddToCart.calculate();
		},

		onProductTypeSubscription: function() {
			$('.cart .qty').val(1);
			ipwAddToCart.valueTarget.data('quantity', 1);
			$('.ipw_on_product_subscription').show();
			$('.ipw_off_product_subscription').hide();
			ipwAddToCart.curProductType = 'subscription';
			ipwAddToCart.calculate();
		},

    init:function() {
      if(this.attrColor = $('.ipw-attribute-color')) {
				$('select', this.attrColor).prop('disabled', 'disabled');
				this.attrColor.on('click', '.color-buttons input', this.onColorClick);
			}

			$('.ipw-select').ipwSelectbox();
			$('.ipw-product_type').ipwProductTypeBox();
			
			if(this.attrQty = $('.quantity', this.$form)) {
				$('<input type="button" value="" class="minus" />').insertBefore($('input.qty', this.attrQty));
				$('<input type="button" value="" class="plus" />').insertAfter($('input.qty', this.attrQty));
				this.attrQty.addClass('buttons_added');
				$('input.minus, input.plus').on('click', this.onQtyClick);
				this.attrQty.on('keyup', this.onQtyChange);
			}

			$('.bundle-select').on('click', this.onBundleClick);

      this.$form.on('found_variation', this.onFoundVariation)
								.on('reset_data', this.onReset);
			
			$(document.body).on('added_to_cart', this.onButtonUpdated);

			$(document.body).on('product_type_general', this.onProductTypeGeneral)
											.on('product_type_subscription', this.onProductTypeSubscription);
			
			this.onProductTypeGeneral();
    }
  };

	$(".btn-close").click(function(){
		$(this).parent().fadeOut();
	});

	var ipwSelectbox = function() {
		var init = function(id) {
			var target = $('[id="'+id+'"]'),
					selected = target.val(),
					selectedText = target.children('option').filter(':selected').text(),
					$form = $('.cart');

			target.css('display', 'none');

			var selectWrap = $('<div class="ipw-sb-wrap ipw-select-'+id+'"></div>');
			var selectBox = $('<div class="ipw-sb-select"><span>'+selectedText+'</span></div>');

			var optionsWrap = $('<div class="ipw-sb-options-wrap" style="display: none;"></div>');
			
			var options = $('<ul class="ipw-sb-options"></ul>');
			options.append($('<div class="ipw-sb-desc"><span>'+$('label[for="'+id+'"]').text()+'</span></div'));

			target.children().each(function() {
				var optVal = $(this).attr('value'),
						optText = $(this).text();
				
				if(!optVal) {
					return true;
				}
				var optSelected = selected == optVal ? ' selected ' : '';
				options.append('<li class="ipw-sb-option '+optSelected+'" data-value="'+optVal+'" data-text="'+optText+'"><span>'+optText+'</span></li>');
			});

			optionsWrap.append(options);
			
			selectWrap.append(selectBox);
			selectWrap.append(optionsWrap);
			selectWrap.insertAfter(target);

			selectBox.on('click', function() {
				optionsWrap.toggle();
			});

			optionsWrap.find('.ipw-sb-options').children('.ipw-sb-option').on('click', function() {
				options.children('.selected').removeClass('selected');
				$(this).addClass('selected');
				target.val($(this).data('value')).trigger('change');
				selectBox.find('span').text($(this).data('text'));
				optionsWrap.hide();
			});

			$form.on('reset_data', function() {
				if(!target.val()) {
					target.val(options.find('.selected').data('value'));
				}
			});
		};

		$(this).not('.has-ipwSelectbox').each(function() {
			$(this).uniqueId().addClass('has-ipwSelectbox');
			init($(this).attr('id'));
		});

		return this;
	};

	var ipwProductTypeBox = function() {
		var init = function(id) {
			var target = $('[id="'+id+'"]'),
					selected = target.val(),
					$form = $('.cart');

			var triggerEvent = function() {
				var e;
				if(e = target.find('option:selected').data('event')) {
					$(document.body).trigger('product_type_'+e);
				}
			};

			target.css('display', 'none');
			$('label[for="'+id+'"]').css('display', 'none');

			var selectWrap = $('<div class="ipw-pt-wrap ipw-product-type-'+id+'"></div>');

			var optionsWrap = $('<div class="ipw-pt-options-wrap"></div>');
			
			var options = $('<ul class="ipw-pt-options"></ul>');

			target.children().each(function() {
				var optVal = $(this).attr('value'),
						optText = $(this).text(),
						optType = $(this).data('event');
				
				if(!optVal) {
					return true;
				}

				var shipping = 'subscription'==optType ? '<span class="shipping-type">무료배송</span>' : '';
				var optSelected = selected == optVal ? ' selected ' : '';
				options.append('<li class="ipw-pt-option '+optSelected+'" data-value="'+optVal+'" data-text="'+optText+'"><span class="type-name">'+optText+'</span>'+shipping+'<span class="type-price"></span></li>');
			});

			var variationData        = $form.data( 'product_variations' );
			for(var i in variationData) {
				var value = variationData[i].attributes['attribute_product_type'];
				options.find('[data-value="'+value+'"] .type-price').addClass('price-for-'+variationData[i].variation_id).html(priceHtml(variationData[i].display_price));
			}


			optionsWrap.append(options);
			
			selectWrap.append(optionsWrap);
			selectWrap.insertAfter(target);

			optionsWrap.find('.ipw-pt-options').children('.ipw-pt-option').on('click', function() {
				options.children('.selected').removeClass('selected');
				$(this).addClass('selected');
				target.val($(this).data('value')).trigger('change');
				triggerEvent();
			});

			$form.on('reset_data', function() {
				target.find('option:eq(0)').prop('selected', true);
				options.children('.selected').removeClass('selected');
				options.find('[data-value="'+target.val()+'"]').addClass('selected');
				setTimeout(function() {
					target.trigger('change');
				}, 200);
				triggerEvent();
			}).on('found_variation', function(e, data) {
				options.find('.price-for-'+data.variation_id).html(priceHtml(data.display_price));
				if(target.children().length<2) {
					selectWrap.addClass('hide');
				} else {
					selectWrap.removeClass('hide');
				}
			});
		};

		$(this).not('.has-ipwPtBox').each(function() {
			$(this).uniqueId().addClass('has-ipwPtBox');
			init($(this).attr('id'));
		});

		return this;
	};

	$.fn.ipwSelectbox = ipwSelectbox;
	$.fn.ipwProductTypeBox = ipwProductTypeBox;

	ipwAddToCart.init();
});