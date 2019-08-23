function $$$(id) {
	return document.getElementById(id);
}
function	Forward(url) {
	window.location.href = url;
}
function	_postback() {
	return void(1); 
}
//----------------------------------------------------------------------------------------------------------------------
function ajaxFunction() {
	var xmlHttp=null;
	try {
		// Firefox, Internet Explorer 7. Opera 8.0+, Safari.
		xmlHttp = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer 6.
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) {
				return false;
			}
		}
	}
}
//----------------------------------------------------------------------------------------------------------------------
/**
 *
 * @param obj
 * @returns {string}
 */
function $query(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if ((t.attr("type") != "checkbox") && (t.attr("type") != "button") && (t.attr("type") != "radio") ) {
			if (t.attr("type") != "password") {
				query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
			} else {
				query += "&"+t.attr("name")+"="+document.getElementById(t.attr("name")).value;
			}
		}
		else {
			if(t.attr("type") == "checkbox") {
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
			else if (t.attr("type") == "radio") {
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
		}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});
	$(obj).find("select").each(function(i) {
		var t = $(obj).find("select").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});

	return query.substring(1);
}
//----------------------------------------------------------------------------------------------------------------------
function $query_unt(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if((t.attr("type") != "button") && (t.attr("type") != "submit") && (t.attr("type") != "reset") && (t.attr("type") != "hidden")) {
			if ((t.attr("type") != "checkbox") && (t.attr("type") != "radio") ) {
				t.val('');
			} else {
				t.attr("checked", false);
			}
		} else {}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		t.val('');
	});
	return true;
}
//----------------------------------------------------------------------------------------------------------------------
function showLoader() {
	$("#_loading").html("<div style=\"position: fixed; top: 50%; right: 50%; text-align: center; background: transparent; z-index: 999999999;\"><div class=\"windows8\"> <div class=\"wBall\" id=\"wBall_1\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_2\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_3\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_4\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_5\"> <div class=\"wInnerBall\"> </div> </div> </div></div>").hide().fadeIn(10);
	block = true;
}
//----------------------------------------------------------------------------------------------------------------------
function closeLoader() {
	$("#_loading").html("").hide().fadeOut(100);
	block = false;
}
//----------------------------------------------------------------------------------------------------------------------
function showResult(type,data) {
	closeLoader();
	$("#"+type+"").html(data).hide().fadeIn(100);
	block = false;
}
//----------------------------------------------------------------------------------------------------------------------
$(document).ready(function() {
	$(window).scroll(function() {
		if($(this).scrollTop() > 50){
			$('#go-top').stop().animate({
				bottom: '50px'
			}, 500);
		}
		else{
			$('#go-top').stop().animate({
				bottom: '-50px'
			}, 500);
		}
	});
	$('#go-top').click(function() {
		$('html, body').stop().animate({
			scrollTop: 0
		}, 500, function() {
			$('#go-top').stop().animate({
				bottom: '-50px'
			}, 500);
		});
	});
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 150 && window.innerWidth > 960) {
				$('.menu-home').addClass('fixed fadeInDown');
			} else {
				$('.menu-home').removeClass('fixed fadeInDown');
			}
		});
	});
});
(function($) {
	$.fn.menumaker = function(options) {
		var navigation = $(this), settings = $.extend({
			title: "",
			format: "dropdown",
			sticky: false
		}, options);

		return this.each(function() {
			navigation.find('li ul').parent().addClass('has-sub');
			multiTg = function() {
				navigation.find(".has-sub ul li.active").parents('.has-sub').addClass('active');
			};
			multiTg();
		});
	};
	$(document).ready(function(){
		$(document).ready(function() {
			$("nav .navigation").menumaker({
				title: "",
				format: "multitoggle"
			});
		});
	});
})(jQuery);
//----------------------------------------------------------------------------------------------------------------------
function sendMail1(type, id) {
	var dataList = new FormData($('#'+id)[0]);
    dataList.append("url", type);
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: dataList,
        async: false,
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'html',
        success: function(data){
            closeLoader();
            alert('Cảm ơn bạn đã gửi review!');
            $('#MainContent').append(data);
        }
    })
}
//----------------------------------------------------------------------------------------------------------------------
function sendMail(type, id) {
	var dataList = $query('#'+id);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url='+type+'&'+dataList,
		dataType: "html",
		success: function(data){
			closeLoader();
			$query_unt('#'+id);
			alert(data);
		}
	});
	return false;
}
function sendOrder(type, id) {
	var dataList = $query('#'+id);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url='+type+'&'+dataList,
		dataType: "html",
		success: function(data){
			closeLoader();
			$query_unt('#'+id);
			alert(data, function() {
				window.location.reload();
			});
			//alert(data);
		}
	});
	return false;
}
function sendQuestion(type, id) {
	var dataList = $query('#'+id);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url='+type+'&'+dataList,
		dataType: "html",
		success: function(data){
			closeLoader();
			$query_unt('#'+id);
			//alert(data, function() {
			//window.location.reload();
			//});
			alert(data);
		}
	});
	return false;
}
function sendRegEmail() {
	var email = document.forms['email_register']['email'].value;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var test = true;
	var lang = document.forms['email_register']['lang'].value;
	var thongbao = document.forms['email_register']['thongbao'].value;
	test = email_filter.test(email);
	if(test==false) {
		alert(thongbao);
		return false;
	} else {
		showLoader();
		$.ajax({ 
			url:'/action.php',
			type: 'POST',
			data: 'url=register_email&email='+email+'&lang='+lang,
			dataType: "html",
			success: function(data){
				closeLoader();
				$('#_reg_email').val('');
				alert(data);
			}
		});
	}
	return false;
}
// --------------------------------------------------------------------------------------------------------------------
function check_order(){
	var input = document.forms['frm_order'].getElementsByTagName('input');
	var txtarea = document.forms['frm_order'].getElementsByTagName('textarea');
	var err_field = $('#txtEnterField').val();
	var err_email = $('#txtEnterMail').val();
	var err_tell = $('#txtEnterTell').val();

	var hteb = $('#hvteb').val();
	var ntns = $('#ntns').val();
	var kvss1 = $('#kvss').val();
	var dc = $('#diachi').val();
	var sdtph1 = $('#sdtph').val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(id == 'hoten') {
					span.innerHTML = hteb;
				}
				else if(id == 'sinhnhat') {
					span.innerHTML = ntns;
				}
				else if(id == 'khuvuc') {
					span.innerHTML = kvss1;
				}
				else if(id == 'add') {
					span.innerHTML = dc;
				}
				else if(id == 'sodienthoai') {
					span.innerHTML = sdtph1;
				}
				else if(id == 'email') {
					span.innerHTML = 'Email';
				}
				else if(id != '_send_order') {
					span.innerHTML = err_field;
				}
			}
			if(id == 'email' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML = err_email;}
			}
			if(id == 'sodienthoai' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_tell;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_tell;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('_send_order');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e0e1e0';
				valid();
			}
		}
	}
}
// --------------------------------------------------------------------------------------------------------------------

function check_order1(){
	var input = document.forms['frm_order1'].getElementsByTagName('input');
	var txtarea = document.forms['frm_order1'].getElementsByTagName('textarea');
	var err_field = $('#txtEnterField1').val();
	var err_email = $('#txtEnterMail1').val();
	var err_tell = $('#txtEnterTell1').val();

	var hteb = $('#hvteb1').val();
	var ntns = $('#ntns1').val();
	var kvss1 = $('#kvss1').val();
	var dc = $('#diachi1').val();
	var sdtph1 = $('#sdtph1').val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(id == 'hoten1') {
					span.innerHTML = hteb;
				}
				else if(id == 'sinhnhat1') {
					span.innerHTML = ntns;
				}
				else if(id == 'khuvuc1') {
					span.innerHTML = kvss1;
				}
				else if(id == 'add1') {
					span.innerHTML = dc;
				}
				else if(id == 'sodienthoai1') {
					span.innerHTML = sdtph1;
				}
				else if(id == 'email1') {
					span.innerHTML = 'Email';
				}
				else if(id != '_send_order1') {
					span.innerHTML = err_field;
				}
			}
			if(id == 'email1' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML = err_email;}
			}
			if(id == 'sodienthoai1' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_tell;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_tell;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('_send_order1');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e0e1e0';
				valid();
			}
		}
	}
}
//----------------------------------------------------------------------------------------------------------------------
function check_contact(){
	var input = document.forms['frm_contact'].getElementsByTagName('input');
	var txtarea = document.forms['frm_contact'].getElementsByTagName('textarea');
	var err_field = $("[name='lang_field']").val();
	var err_email = $("[name='lang_email']").val();
	var err_phone = $("[name='lang_phone']").val();
	var ht = $('#hoten2').val();
	var sdt = $('#sodienthoai2').val();
	var dc = $('#diachi2').val();
	var nd = $('#noidung2').val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(name == 'full_name') {
					span.innerHTML = ht;
				}
				else if(name == 'add') {
					span.innerHTML = dc;
				}
				else if(name == 'tell') {
					span.innerHTML = sdt;
				}
				else if(name == 'email') {
					span.innerHTML = 'Email';
				}
				else if(name == 'content') {
					span.innerHTML = nd;
				}
				else if(name != 'send_contact') {
					span.innerHTML = err_field;
				}
			}
			if(name == 'email' && value != '') {
				var return_val=email_filter.test(value);
				if(return_val==false){span.innerHTML = err_email;}
			}
			if(name == 'tell' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}
	var register = document.getElementById('_send_contact');
	register.onclick = function(){
		return valid();
	}
	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #cecfce';
				valid();
			}
		}
	}
}
//----------------------------------------------------------------------------------------------------------------------
function check_booking(){
	var input = document.forms['frm_order'].getElementsByTagName('input');
	var txtarea = document.forms['frm_order'].getElementsByTagName('textarea');
	var err_field = $("[name='lang_field']").val();
	var err_email = $("[name='lang_email']").val();
	var err_phone = $("[name='lang_phone']").val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}
			var input_unt = ['hotel', 'room', 'content', 'send_order',  'date_end'];
			var cke = input_unt.indexOf(name);
			if( value == '' && cke < 0){
				span.innerHTML = err_field;
			}
			if(name == 'email' && value != '') {
				var return_val = email_filter.test(value);
				if(return_val == false){ span.innerHTML = err_email; }
			}
			if(name == 'phone' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}
	var register = document.getElementById('send_order');
	register.onclick = function(){
		return valid();
	}
	for(var i=0; i<inputs.length; i++){
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #cecfce';
				valid();
			}
		}
	}
}
//----------------------------------------------------------------------------------------------------------------------
function open_shopping(id) {
	$.post('/action.php?url=shopping&id='+id, function(html) {
		$(html).appendTo('body').modal();
	});
}
//----------------------------------------------------------------------------------------------------------------------
function check_question(){
	var input = document.forms['frm_question'].getElementsByTagName('input');
	var txtarea = document.forms['frm_question'].getElementsByTagName('textarea');
	var err_field = $("[name='lang_field']").val();
	var err_email = $("[name='lang_email']").val();
	var err_phone = $("[name='lang_phone']").val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(name != 'tell' && name != 'company'  && name != 'send_question') {
					span.innerHTML = err_field;
				}
			}
			if(name == 'email' && value != '') {
				var return_val=email_filter.test(value);
				if(return_val==false){span.innerHTML = err_email;}
			}
			if(name == 'tell' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('_send_question');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #cecfce';
				valid();
			}
		}
	}
}
function lien_ket(a){
	if(a!=''){
		window.open(''+a+'','_blank');
	}
}
//----------------------------------------------------------------------------------------------------------------------
$(document).ready(function() {
	$('[data-fancybox]').fancybox({
		youtube : {
			controls : 0,
			showinfo : 0
		},
		vimeo : {
			color : 'f00'
		}
	});
	$().fancybox({
		selector : '[data-fancybox=""]',
		thumbs   : false,
		hash     : false,
	});
	$(".fancy-box").fancybox({
		openEffect	: 'elastic',
		closeEffect	: 'elastic'
	});
	$(".fancybox-group").fancybox({
		openEffect	: 'elastic',
		closeEffect	: 'elastic',
		prevEffect	: 'none',
		nextEffect	: 'none',
		closeBtn	: false,
		helpers     : {
			title	: { type : 'inside' },
			thumbs	: {
				width	: 50,
				height	: 50
			},
			buttons	: {}
		}
	});
});
function listDistrict(value) {
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url=get_location&city='+value,
		dataType: "html",
		success: function(data){
			showResult('_district', data);
		}
	});
	return false;
}
$(document).ready(function () {
	window.asd = $('.SlectBox').SumoSelect({ csvDispCount: 3, selectAll:true, captionFormatAllSelected: "Select all" });
	window.test = $('.testsel').SumoSelect({okCancelInMulti:true, captionFormatAllSelected: "Select all" });
	window.testSelAll = $('.testSelAll').SumoSelect({okCancelInMulti:true, selectAll:true });
	window.testSelAll2 = $('.testSelAll2').SumoSelect({selectAll:true});
	window.testSelAlld = $('.SlectBox-grp').SumoSelect({okCancelInMulti:true, selectAll:true, isClickAwayOk:true });
	window.Search = $('.search-box').SumoSelect({ csvDispCount: 3, search: true, searchText:'Enter here.' });
	window.sb = $('.SlectBox-grp-src').SumoSelect({ csvDispCount: 3, search: true, searchText:'Enter here.', selectAll:true });
	window.searchSelAll = $('.search-box-sel-all').SumoSelect({ csvDispCount: 3, selectAll:true, search: true, searchText:'Enter here.', okCancelInMulti:true });
	window.searchSelAll = $('.search-box-open-up').SumoSelect({ csvDispCount: 3, selectAll:true, search: false, searchText:'Enter here.', up:true });
	window.groups_eg_g = $('.groups_eg_g').SumoSelect({selectAll:true, search:true });
	$('.SlectBox').on('sumo:opened', function(o) {
		console.log("dropdown opened", o)
	});
});
// --------------------------------------------slider carousel-----------------------------------------
function owl_sliderkhoahoc(){
	var owl = $('.sliderkhoahoc');
	btt: true,
	owl.owlCarousel({
	    loop:true,
	    margin:30,
	    autoplay:true,
	    responsiveClass:true,
		autoplayTimeout:5000,
		smartSpeed:2500,
	    nav:false,
		responsive:{
	        0:{
            items:1
	        },
	        426:{
            items:2
	        },
	        667:{
            items:3
	        },
	    },
	});
}
function owl_sliderkhotherc(){
	var owl = $('.sliderkhother');
	btt: true,
	owl.owlCarousel({
	    loop:false,
	    margin:30,
	    autoplay:true,
	    responsiveClass:true,
		autoplayTimeout:5000,
		smartSpeed:2500,
	    nav:false,
		responsive:{
	        0:{
            items:1
	        },
	        426:{
            items:2
	        },
	        667:{
            items:3
	        },
	    },
	});
}
$(document).ready(function() {
	owl_sliderkhoahoc();
	owl_sliderkhotherc();
});
$(window).resize(function() {
	owl_sliderkhoahoc();
	owl_sliderkhotherc();
});


