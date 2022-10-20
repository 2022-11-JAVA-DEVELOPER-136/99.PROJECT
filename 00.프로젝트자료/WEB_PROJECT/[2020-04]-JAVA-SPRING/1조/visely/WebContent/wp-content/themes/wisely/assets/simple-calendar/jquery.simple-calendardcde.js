// the semi-colon before function invocation is a safety net against concatenated
// scripts and/or other plugins which may not be closed properly.
;(function ( $, window, document, undefined ) {
	"use strict";

    // create the defaults once
    var pluginName = "wisely_simple_calendar";
    var defaults = {
			days: ['일','월','화','수','목','금','토'],
			paymentDate: null,
			onChangeDate: function(date){ }
        };

    // The actual plugin constructor
    function Plugin(element, options){
        this.element		= element;
        this.settings		= $.extend({}, defaults, options);
        this._defaults		= defaults;
        this._name			= pluginName;
		this.todayDate		= new Date();
        this.currentDate	= new Date(this.settings.paymentDate);
		this.paymentDate	= new Date(this.settings.paymentDate);
		this.onChangeDate	= this.settings.onChangeDate;
        this.init();
    }

    // Avoid Plugin.prototype conflicts
    $.extend(Plugin.prototype, {
        init: function () {
            var container = $(this.element);
			var paymentDate = this.paymentDate;
            var calendar  = $('<div class="calendar"></div>');
            var header    = $('<header><h2 class="month"></h2><a class="btn btn-prev"><i class="fa fa-angle-left" style="font-size:40px; margin-top:-12px;"></i></a><a class="btn btn-next"><i class="fa fa-angle-right" style="font-size:40px; margin-top:-12px;"></i></a></header>');

			this.updateHeader(paymentDate, header);
            calendar.append(header);

            this.buildCalendar(paymentDate, calendar);
            container.append(calendar);

            this.bindEvents();

        },
        
		redrawCalendar: function(){
			this.buildCalendar(this.currentDate, $('.calendar'));
			this.updateHeader(this.currentDate, $('.calendar header'));
		},

        //Update the current month header
        updateHeader: function (date, header) {
            header.find('.month').html(date.getFullYear() + "년 " + (date.getMonth() + 1) + "월");
        },

        //Build calendar of a month from date
        buildCalendar: function (fromDate, calendar) {
			var p = this;

            calendar.find('table').remove();

            var body = $('<table></table>');
            var thead = $('<thead></thead>');
            var tbody = $('<tbody></tbody>');
            
            //Header day in a week ( (1 to 8) % 7 to start the week by monday)
            for(var i=1; i<=p.settings.days.length; i++) {
                thead.append($('<td>'+p.settings.days[i%7].substring(0,3)+'</td>'));
            }

            //setting current year and month
            var y = fromDate.getFullYear(), m = fromDate.getMonth();

            //first day of the month
            var firstDay = new Date(y, m, 1);

			//If not monday set to previous monday
            while(firstDay.getDay() != 1){
                firstDay.setDate(firstDay.getDate()-1);
            }

			//last day of the month
            var lastDay = new Date(y, m + 1, 0);

			//If not sunday set to next sunday
            while(lastDay.getDay() != 0){
                lastDay.setDate(lastDay.getDate()+1);
            }

            // for firstDay to lastDay
            for(var day = firstDay; day <= lastDay; day.setDate(day.getDate())) {
                var tr = $('<tr></tr>');
                // for each row
                for(var i=0; i<7; i++) {
                    var td = $(
						'<td data-y="'+y+'" data-j="'+(m+1)+'" data-d="'+day.getDate()+'">'+
						'<a class="day">'+day.getDate()+'</a>'+
						'</td>');

					//if this day is the 'paymentDate'
					if(day.toDateString() === this.paymentDate.toDateString()){
                        td.find(".day").addClass("payment-date");
						//console.log(this.paymentDate.toDateString());
                    }
                    
					//if day is not in this month
                    if(day.getMonth() != fromDate.getMonth()){
                       td.find(".day").addClass("wrong-month"); 
                    }
                    //Binding day event
                    td.on('click', function(e) {
						//console.log("clicked");
						var y = $(this).attr("data-y"),
							j = $(this).attr("data-j"),
							d = $(this).attr("data-d");
						var selectedDate = new Date(y, j-1, d);
						if(selectedDate < p.todayDate){
							return false;
						}
						p.paymentDate = selectedDate;
						p.onChangeDate(selectedDate);
						p.redrawCalendar();
                    });
                    
                    tr.append(td);
                    day.setDate(day.getDate() + 1);
                }
                tbody.append(tr);
            }
            body.append(thead);
            body.append(tbody);
            calendar.append(body);
        },

		//Init global events listeners
        bindEvents: function(){
            var p = this;
            
            $('.btn-prev').click(function(){
                p.currentDate.setMonth(p.currentDate.getMonth()-1);
                p.buildCalendar(p.currentDate, $('.calendar'));
                p.updateHeader(p.currentDate, $('.calendar header'));
            });
            
            $('.btn-next').click(function(){
                p.currentDate.setMonth(p.currentDate.getMonth()+1);
                p.buildCalendar(p.currentDate, $('.calendar'));
                p.updateHeader(p.currentDate, $('.calendar header'));
            });
        },
    });

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn[pluginName] = function(options){
        return this.each(function(){
			if(!$.data(this, "plugin_"+pluginName)){
				$.data(this, "plugin_"+pluginName, new Plugin(this, options));
			}
        });
    };

})( jQuery, window, document );
