OlaObject.prototype.Home=function(){var e=new Object
e={debug:!0,rules:{pickupDate:{required:!0},cityID:{required:!0},pickupTime:{required:!0}},errorElement:"label",errorPlacement:function(e,i){e.appendTo("intercityID"==$(i).attr("id")?i.parent("div").parent("div"):i.parent("div").parent("td").prev("td"))},messages:{pickupDate:'<img src="img/errow.png" class="wrongDestination wrongInputImg" />',pickupTime:""},submitHandler:function(e){e.submit()}},$("#search_form").validate(e)
var i=function(){function e(){this.date=Ola.DateUtils,this.header=Ola.Header,this.selectCityList=new Ola.selectCityList("search_form_home"),this.pickup_date=$("#pickupDate"),this.pickup_time=$("#pickupTime"),this.submit_btn=$("button[type=submit]")}return e.prototype.init=function(){var e=this
this.selectCityList.select_field=$("#cityID"),this.selectCityList.init(),this.selectCityList.onSelect=function(i){e.header.set_stdCode(i.currentTarget.value)}},e.prototype.timeChange=function(e){var i=this.pickup_date.val(),t=e.val()
this.date.is_shortTimeBooking(i,t)?(this.submit_btn.attr("disabled","disabled").addClass("disabled"),this.short_time_booking_text.removeClass("hide")):(this.submit_btn.removeClass("disabled").removeAttr("disabled"),this.short_time_booking_text.addClass("hide"))},e}(),t=new i,a=new Ola.dateUtils,r=a.year,s=a.month,n=a.today,o=Number(a.day),l=15*parseInt(a.minute/15)+15,d=a.fullHour+":"+l,c=new Date(r,s,0).getDate()
23==Number(a.fullHour)&&a.minute>=45?($(".dateInput").each(function(){$(this).datepicker({dateFormat:"dd/mm/yy",minDate:1})}),c==o?(s=parseInt(s)+1,10>s&&(s="0"+s),o="01"):(o+=1,10>o&&(o="0"+o)),$("#pickupDate").val(o+"/"+s+"/"+r)):$(".dateInput").each(function(){$(this).datepicker({dateFormat:"dd/mm/yy",minDate:0})}),$("#pickupTime").timepicker($("#pickupDate").val()==n?{timeFormat:"h:i A",step:15,minTime:d,maxTime:"23:46",scrollDefaultNow:!0}:{timeFormat:"h:i A",step:15}),$("#pickupDate").change(function(){$("#pickupTime").val("").trigger("change").removeClass("error")
var e=new Ola.dateUtils,i=e.month,t=$("#pickupDate").val().split("/"),a=Number(e.day),r=e.year,s=e.today,n=15*parseInt(e.minute/15)+15,o=e.fullHour+":"+n,l=new Date(r,i,0)
23==e.fullHour&&e.minute>=45&&e.day==t[0]&&(l==t?(i=parseInt(i)+1,10>i&&(i="0"+i),a="01"):(a+=1,10>a&&(a="0"+a)),$("#pickupDate").val(a+"/"+i+"/"+r)),$("#pickupTime").timepicker($("#pickupDate").val()==s?{timeFormat:"h:i A",step:15,minTime:o,maxTime:"23:46",scrollDefaultNow:!0}:{timeFormat:"h:i A",step:15})}),t.init()},OlaObject.prototype.ImageSlider=function(){function e(e){new fadeSlideShow({wrapperid:e,dimensions:[o[e].width,o[e].height],imagearray:o[e].img_array,displaymode:{type:"auto",pause:5e3,cycles:0,wraparound:!1},persist:!1,fadeduration:300,descreveal:"peekaboo",togglerid:o[e].green_slider_id?o[e].green_slider_id:"toggleSlideGreen",screen_slider_id:o[e].screen_slider_id,onslide:function(e,i){var t=0,a=$("#"+this.setting.togglerid+" .slideButton"),r=$(a[i])
if(this.setting.screen_slider_id)for(var s=0;s<this.setting.imagearray.length;s++)t=s+1,$("#"+this.setting.screen_slider_id).find("#screen"+t.toString()).hide(),t==this.setting.curimage+1&&$("#"+this.setting.screen_slider_id).find("#screen"+t.toString()).show()
else for(var s=0;s<this.setting.imagearray.length;s++)t=s+1,$("#screen"+t.toString()).hide(),t==this.setting.curimage+1&&$("#screen"+t.toString()).show()
a.removeClass("activeSlide").addClass("defaultSlide"),r.addClass("activeSlide").removeClass("defaultSlide")}})}function i(e){new fadeSlideShow({wrapperid:e,dimensions:[o[e].width,o[e].height],imagearray:o[e].img_array,displaymode:{type:"auto",pause:5e3,cycles:0,wraparound:!1},persist:!1,fadeduration:300,descreveal:"peekaboo",togglerid:"toggleSlideGreenWebsite",onslide:function(e,i){var t=$("#"+this.setting.togglerid+" .slideButton"),a=$(t[i])
t.removeClass("activeSlide").addClass("defaultSlide"),a.addClass("activeSlide").removeClass("defaultSlide")}})}function t(e){new fadeSlideShow({wrapperid:e,dimensions:[o[e].width,o[e].height],imagearray:o[e].img_array,displaymode:{type:"auto",pause:5e3,cycles:0,wraparound:!1},persist:!1,fadeduration:300,descreveal:"peekaboo",togglerid:o[e].green_slider_id,screen_slider_id:o[e].screen_slider_id,onslide:function(e,i){if(this.setting.screen_slider_id)for(var t=0,a=0;a<this.setting.imagearray.length;a++)t=a+1,$("#"+this.setting.screen_slider_id).find("#screen"+t.toString()).hide(),t==this.setting.curimage+1&&$("#"+this.setting.screen_slider_id).find("#screen"+t.toString()).show()
if(this.setting.togglerid){var r=$("#"+this.setting.togglerid+" .slideButton"),s=$(r[i])
r.removeClass("activeSlide").addClass("defaultSlide"),s.addClass("activeSlide").removeClass("defaultSlide")}}})}var a=$("#slider_id").val(),r=$("#slider_2").val(),s=$("#website_slider_id").val(),n=$("#banner_id").val(),o={website_home_banners:{img_array:[],width:370,height:280,img_array:[],green_slider_id:"website_home_banners_slider"},ola_prime_slider:{img_array:[["/static/img/slide/ola_prime/1.jpg","","_BLANK",""],["/static/img/slide/ola_prime/2.jpg","","_BLANK",""],["/static/img/slide/ola_prime/3.jpg","","_BLANK",""]],width:"100%",height:400,green_slider_id:"toggle_slide"},mobile_iphone_android:{img_array:[["/static/img/slide/iphone_android/1.png","","_BLANK",""],["/static/img/slide/iphone_android/2.png","","_BLANK",""],["/static/img/slide/iphone_android/3.png","","_BLANK",""],["/static/img/slide/iphone_android/4.png","","_BLANK",""],["/static/img/slide/iphone_android/5.png","","_BLANK",""],["/static/img/slide/iphone_android/6.png","","_BLANK",""]],width:"100%",height:503},mobile_windows:{img_array:[["/static/img/slide/windows/1.jpg","","_BLANK",""],["/static/img/slide/windows/2-1.jpg","","_BLANK",""],["/static/img/slide/windows/2-2.jpg","","_BLANK",""],["/static/img/slide/windows/3.jpg","","_BLANK",""],["/static/img/slide/windows/4.jpg","","_BLANK",""],["/static/img/slide/windows/5.jpg","","_BLANK",""],["/static/img/slide/windows/6.jpg","","_BLANK",""],["/static/img/slide/windows/7.jpg","","_BLANK",""],["/static/img/slide/windows/8.jpg","","_BLANK",""],["/static/img/slide/windows/9.jpg","","_BLANK",""],["/static/img/slide/windows/10.jpg","","_BLANK",""]],width:213,height:375,green_slider_id:"toggleSlideGreen_2",screen_slider_id:"screen_slider_mobile_windows"},r_v_mobile_img:{img_array:[["/static/img/recharge_voucher/mobile/4.png","","_BLANK",""],["/static/img/recharge_voucher/mobile/5.png","","_BLANK",""],["/static/img/recharge_voucher/mobile/6.png","","_BLANK",""],["/static/img/recharge_voucher/mobile/7.png","","_BLANK",""]],width:"100%",height:475},r_c_mobile_img:{img_array:[["/static/img/referral_code/mobile/1.png","","_BLANK",""],["/static/img/referral_code/mobile/2.png","","_BLANK",""],["/static/img/referral_code/mobile/3.png","","_BLANK",""],["/static/img/referral_code/mobile/4.png","","_BLANK",""],["/static/img/referral_code/mobile/5.png","","_BLANK",""],["/static/img/referral_code/mobile/6.png","","_BLANK",""],["/static/img/referral_code/mobile/7.png","","_BLANK",""]],width:"100%",height:475},how_to_refer_mobile_img:{img_array:[["/static/img/how_to_refer/mobile/1.png","","_BLANK",""],["/static/img/how_to_refer/mobile/2.png","","_BLANK",""],["/static/img/how_to_refer/mobile/3.png","","_BLANK",""],["/static/img/how_to_refer/mobile/4.png","","_BLANK",""],["/static/img/how_to_refer/mobile/5.png","","_BLANK",""],["/static/img/how_to_refer/mobile/6.png","","_BLANK",""],["/static/img/how_to_refer/mobile/7.png","","_BLANK",""]],width:"100%",height:475},how_to_refer_website_img:{img_array:[["/static/img/how_to_refer/website/1.png","","_BLANK",""],["/static/img/how_to_refer/website/2.png","","_BLANK",""],["/static/img/how_to_refer/website/3.png","","_BLANK",""],["/static/img/how_to_refer/website/4.png","","_BLANK",""],["/static/img/how_to_refer/website/5.png","","_BLANK",""],["/static/img/how_to_refer/website/6.png","","_BLANK",""],["/static/img/how_to_refer/website/7.png","","_BLANK",""]],width:694,height:410},recharge_voucher_website_img:{img_array:[["/static/img/recharge_voucher/website/1.png","","_BLANK",""],["/static/img/recharge_voucher/website/2.png","","_BLANK",""],["/static/img/recharge_voucher/website/3.png","","_BLANK",""]],width:694,height:410},slideshow:{img_array:[["/img/mobile/coupons/1.jpg","","_BLANK",""],["/img/mobile/coupons/2.jpg","","_BLANK",""],["/img/mobile/coupons/3.jpg","","_BLANK",""],["/img/mobile/coupons/4.jpg","","_BLANK",""],["/img/mobile/coupons/5.jpg","","_BLANK",""],["/img/mobile/coupons/6.jpg","","_BLANK",""],["/img/mobile/coupons/7.jpg","","_BLANK",""],["/img/mobile/coupons/8.jpg","","_BLANK",""]],width:230,height:440,green_slider_id:"toggleSlideGreen",screen_slider_id:"slide_screen"}}
o[a]&&e(a),o[r]&&e(r),o[s]&&i(s)
var l={ajax_response:function(e){if(e){var i="",a=e.banners.map(function(e,t){var a=["","","_SELF",""]
return a[0]=e.banner_image,a[1]=e.banner_link?e.banner_link:"",i+=t?'<div class="slideButton defaultSlide" data-index="'+t.toString()+'"></div>':'<div class="slideButton activeSlide" data-index="'+t.toString()+'"></div>',a})
o[n].img_array=a,$("#"+o[n].green_slider_id).html(i),t(n)}}}
if(n){var d=$("#city_id").val()?$("#city_id").val():"home",c=$.ajax({url:"/offers/ajax_get_banners",data:{page_name:d},type:"GET"})
c.success(function(e){l.ajax_response(e,"success")}),c.fail(function(e){l.ajax_response(e,"failure")})}},function(e){function i(i){var t=i.data("settings"),r=i.siblings(".ui-timepicker-list")
r&&r.length&&r.remove(),r=e("<ul />"),r.attr("tabindex",-1),r.addClass("ui-timepicker-list"),t.className&&r.addClass(t.className)
var l=i.css("zIndex")
l=l+0==l?l+2:2,r.css({display:"none",position:"absolute",left:i.position().left,zIndex:l}),null!==t.minTime&&t.showDuration&&r.addClass("ui-timepicker-with-duration")
var d=null!==t.durationTime?t.durationTime:t.minTime,m=null!==t.minTime?t.minTime:0,g=null!==t.maxTime?t.maxTime:m+c-1
m>=g&&(g+=c)
for(var p=m;g>=p;p+=60*t.step){var u=p%c,_=e("<li />")
if(_.data("time",u),_.text(o(u,t.timeFormat)),null!==t.minTime&&t.showDuration){var h=e("<span />")
h.addClass("ui-timepicker-duration"),h.text(" ("+n(p-d)+")"),_.append(h)}r.append(_)}i.after(r),a(i,r),r.delegate("li","click",{timepicker:i},function(){i.addClass("ui-timepicker-hideme"),i[0].focus(),r.find("li").removeClass("ui-timepicker-selected"),e(this).addClass("ui-timepicker-selected"),s(i),r.hide()})}function t(i,t,a){if(!a&&0!==a)return!1
var r=i.data("settings"),s=!1
return t.find("li").each(function(i,t){var n=e(t)
return Math.abs(n.data("time")-a)<=30*r.step?(s=n,!1):void 0}),s}function a(e,i){var a=l(e.val()),r=t(e,i,a)
r&&r.addClass("ui-timepicker-selected")}function r(i){var t=e(this),a=t.siblings(".ui-timepicker-list")
if(!a.is(":visible")){if(40!=i.keyCode)return!0
t.focus()}switch(i.keyCode){case 13:return s(t),g.hide.apply(this),i.preventDefault(),!1
case 38:var r=a.find(".ui-timepicker-selected")
if(r.length)r.is(":first-child")||(r.removeClass("ui-timepicker-selected"),r.prev().addClass("ui-timepicker-selected"),r.prev().position().top<r.outerHeight()&&a.scrollTop(a.scrollTop()-r.outerHeight()))
else{var r
a.children().each(function(i,t){return e(t).position().top>0?(r=e(t),!1):void 0}),r.addClass("ui-timepicker-selected")}break
case 40:var r=a.find(".ui-timepicker-selected")
if(0==r.length){var r
a.children().each(function(i,t){return e(t).position().top>0?(r=e(t),!1):void 0}),r.addClass("ui-timepicker-selected")}else r.is(":last-child")||(r.removeClass("ui-timepicker-selected"),r.next().addClass("ui-timepicker-selected"),r.next().position().top+2*r.outerHeight()>a.outerHeight()&&a.scrollTop(a.scrollTop()+r.outerHeight()))
break
case 27:a.find("li").removeClass("ui-timepicker-selected"),a.hide()
break
case 9:case 16:case 17:case 18:case 19:case 20:case 33:case 34:case 35:case 36:case 37:case 39:case 45:return
default:return void a.find("li").removeClass("ui-timepicker-selected")}}function s(e){var i=e.data("settings"),t=e.siblings(".ui-timepicker-list"),r=null,s=t.find(".ui-timepicker-selected")
if(s.length)var r=s.data("time")
else if(e.val()){var r=l(e.val())
a(e,t)}if(null!==r){var n=o(r,i.timeFormat)
e.attr("value",n)}i.onSelect.call(e),e.trigger("change")}function n(e){var i=Math.round(e/60)
if(60>i)return i+" mins"
if(60==i)return"1 hr"
var t=i/60
return t.toFixed(1)+" hrs"}function o(e,i){for(var t=new Date(d.valueOf()+1e3*e),a="",r=0;r<i.length;r++){var s=i.charAt(r)
switch(s){case"a":a+=t.getHours()>11?"pm":"am"
break
case"A":a+=t.getHours()>11?"PM":"AM"
break
case"g":var n=t.getHours()%12
a+=0==n?"12":n
break
case"G":a+=t.getHours()
break
case"h":var n=t.getHours()%12
0!=n&&10>n&&(n="0"+n),a+=0==n?"12":n
break
case"H":var n=t.getHours()
a+=n>9?n:"0"+n
break
case"i":var o=t.getMinutes()
a+=o>9?o:"0"+o
break
case"s":var e=t.getSeconds()
a+=e>9?e:"0"+e
break
default:a+=s}}return a}function l(e){if(""==e)return null
if(e+0==e)return e
"object"==typeof e&&(e=e.getHours()+":"+e.getMinutes())
var i=(new Date(0),e.toLowerCase().match(/(\d+)(?::(\d\d))?\s*([pa]?)/))
if(!i)return null
var t=parseInt(1*i[1])
if(i[3])if(12==t)var a="p"==i[3]?12:0
else var a=t+("p"==i[3]?12:0)
else var a=t
var r=1*i[2]||0
return 3600*a+60*r}var d=new Date
d.setHours(0),d.setMinutes(0)
var c=86400,m={className:null,minTime:null,maxTime:null,durationTime:null,step:30,showDuration:!1,timeFormat:"g:ia",scrollDefaultNow:!1,onSelect:function(){}},g={init:function(i){return this.each(function(){var t=e(this)
if("SELECT"==t[0].tagName){for(var a=e("<input />"),s={type:"text",value:t.val()},n=t[0].attributes,d=0;d<n.length;d++)s[n[d].nodeName]=n[d].nodeValue
a.attr(s),t.replaceWith(a),t=a}var c=e.extend({},m)
if(i&&(c=e.extend(c,i)),c.minTime&&(c.minTime=l(c.minTime)),c.maxTime&&(c.maxTime=l(c.maxTime)),c.durationTime&&(c.durationTime=l(c.durationTime)),t.data("settings",c),t.attr("autocomplete","off"),t.click(g.show).focus(g.show).keydown(r),t.addClass("ui-timepicker-input"),t.val()){var p=o(l(t.val()),c.timeFormat)
t.val(p)}var u=e('<span class="ui-timepicker-container" />')
t.wrap(u),e("body").attr("tabindex",-1).focusin(function(i){0==e(i.target).closest(".ui-timepicker-container").length&&g.hide()})})},show:function(){var a=e(this),r=a.siblings(".ui-timepicker-list")
if(a.hasClass("ui-timepicker-hideme"))return a.removeClass("ui-timepicker-hideme"),void r.hide()
if(!r.is(":visible")){g.hide(),0==r.length&&(i(a),r=a.siblings(".ui-timepicker-list")),r.css(a.offset().top+a.outerHeight(!0)+r.outerHeight()>e(window).height()+e(window).scrollTop()?{top:a.position().top-r.outerHeight()}:{top:a.position().top+a.outerHeight(!0)}),r.show()
var s=a.data("settings"),n=r.find(".ui-timepicker-selected")
if(!n.length&&null===s.minTime&&s.scrollDefaultNow){var o=l(new Date)
n=t(a,r,o)}if(n&&n.length){var d=r.scrollTop()+n.position().top-n.outerHeight()
r.scrollTop(d)}else r.scrollTop(0)}},hide:function(){e(".ui-timepicker-list:visible").each(function(){var i=e(this),t=i.siblings(".ui-timepicker-input")
s(t),i.hide()})},option:function(i,t){var a=e(this),r=a.data("settings"),s=a.siblings(".ui-timepicker-list")
if("object"==typeof i)r=e.extend(r,i)
else if("string"==typeof i&&"undefined"!=typeof t)r[i]=t
else if("string"==typeof i)return r[i]
r.minTime&&(r.minTime=l(r.minTime)),r.maxTime&&(r.maxTime=l(r.maxTime)),r.durationTime&&(r.durationTime=l(r.durationTime)),a.data("settings",r),s.remove()},getSecondsFromMidnight:function(){return l(e(this).val())},setTime:function(i){var t=e(this),a=o(l(i),t.data("settings").timeFormat)
t.val(a)}}
e.fn.timepicker=function(i){return g[i]?g[i].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof i&&i?void e.error("Method "+i+" does not exist on jQuery.timepicker"):g.init.apply(this,arguments)}}(jQuery)
