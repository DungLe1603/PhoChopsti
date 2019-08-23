<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>

<!-- <script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery/jquery-1.11.0.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/wow/jquery.js"></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/modernizr.custom.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.easing.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.mmenu.all.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.slider/jquery.gallery.product.js"></script>


<!-- <script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.slider/jssor.slider.js"></script> -->
<!-- <script src="<?php echo HOME_URL;?>/js/jssor.slider.min.js" type="text/javascript"></script> -->
<script type="text/javascript" src='<?php echo HOME_URL;?>/js/asset/wow.min.js'></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.carousels-slider.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.popup/jquery.modal.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.responsive-tabs.js"></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/script.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fancybox/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fancybox/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

<?php if($_SESSION["language"]=="vi"){?>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.popup/jquery.boxes.js"></script>
<?php }else{?>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.popup/jquery.boxes1.js"></script>
<?php } ?>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.popup/jquery.boxes.repopup.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/owlcarousel2/assets/owlcarousel/owl.carousel.js"></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.calendar/jquery.datetimepicker.js"></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/swiper.min.js"></script> 

<script src="<?php echo HOME_URL; ?>/js/full_bao/fullcalendar.min.js"></script>
<script src="<?php echo HOME_URL; ?>/js/jquery.sumoselect.js"></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap/fileinput.js"></script>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/slick.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/auto-numeric.js"></script>

<script type="text/javascript">
	new WOW().init();
	jQuery(function($) {
		$('.auto-number').autoNumeric('init');
	});
</script>
<?php echo getConstant('google_analytics')?>
<?php echo getConstant('chat_online')?>
