<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
?>
<div class="container nergioithome">
	<div class="tg_gthome">
		<h1><?php echo $gtvgm;?></h1>
		<ul>
			<li><img src="<?php echo HOME_URL;?>/images/sao.svg"></li>
			<li><img src="<?php echo HOME_URL;?>/images/sao.svg"></li>
			<li><img src="<?php echo HOME_URL;?>/images/sao.svg"></li>
		</ul>
	</div>
</div>
<div class="container-fluid fluidkhoahoc">
</div>
<div class="container nernewhome">
</div>
<div class="divborderngan"></div>
<div class="container nerslykien">
</div>
<script type="text/javascript">
	var wd = window.innerWidth;
	if(wd > 501){
	    $(document).on('ready', function() {
	        $('.slider-for').slick({
	            slidesToShow: 5,
	            slidesToScroll: 1,
	            arrows: true,
	            autoplay: true,
	            dots: true,
	            autoplaySpeed: 2500,
	            fade: false,
	            infinite: true,
	            asNavFor: '.slider-nav'
	        });
	        $('.slider-nav').slick({
	            slidesToShow: 1,
	            slidesToScroll: 1,
	            arrows: false,
	            asNavFor: '.slider-for',
	            dots: false,
	            infinite: true,
	            focusOnSelect: true
	        });
	    });
	}else{
		$(document).on('ready', function() {
	        $('.slider-for').slick({
	            slidesToShow: 3,
	            slidesToScroll: 1,
	            arrows: true,
	            autoplay: true,
	            dots: true,
	            autoplaySpeed: 2500,
	            fade: false,
	            infinite: true,
	            asNavFor: '.slider-nav'
	        });
	        $('.slider-nav').slick({
	            slidesToShow: 1,
	            slidesToScroll: 1,
	            arrows: false,
	            asNavFor: '.slider-for',
	            dots: false,
	            infinite: true,
	            focusOnSelect: true
	        });
	    });
	}
</script>