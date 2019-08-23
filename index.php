<?php
@ob_start();
@session_start();
// System
define( 'TTH_SYSTEM', true );

$url = isset($_GET['url']) ? $_GET['url'] : 'home';
$path = array();
$path = explode('/',$url);
if($path[0]=='en') {
	$_SESSION["language"] = 'en';
} elseif($path[0]=='vi') {
	$_SESSION["language"] = 'vi';
} else {
	$_SESSION["language"] = 'vi';
	array_unshift($path, 'vi');
}
//----------------------------------------------------------------------------------------------------------------------
require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');
//---
require_once(ROOT_DIR . DS ."lang" . DS . TTH_LANGUAGE . ".lang");

include_once(_F_FUNCTIONS . DS . "Function.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}
$account["id"] = empty($_SESSION["user_id"]) ? 0 : $_SESSION["user_id"]+0;
include_once(_F_INCLUDES . DS . "_tth_constants.php");
include_once(_F_INCLUDES . DS . "_tth_url.php");
include_once(_F_INCLUDES . DS . "_tth_online_daily.php");
?>
<!DOCTYPE html>
<html lang="<?php echo TTH_LANGUAGE;?>">


<head>
<?php
include(_F_INCLUDES . DS . "_tth_head.php");
include(_F_INCLUDES . DS . "_tth_script.php");
?>
</head>
<body>

<?php
echo getConstant('script_body');
?>

<!-- #wrapper -->
<div id="wrapper" style="max-width: 1920px; position: relative;">
	<?php
		include(_F_INCLUDES . DS . "tth_header.php");
		if($slug_cat=="home" || $slug_cat=="search"){
			include(_F_INCLUDES . DS . "tth_slider.php");
		}else{
			include(_F_INCLUDES . DS . "tth_slider1.php");
		}
    ?>
	<!-- .container -->
	<section class="" style="position: relative;">
		<?php
			include(_F_MODULES . DS .  str_replace('-','_',$slug_cat) . ".php");
		?>
	</section>
	<!-- / .container -->
	<?php
	include(_F_INCLUDES . DS . "tth_footer.php");
	include(_F_INCLUDES . DS . "tth_menu_sm.php");
	?>
</div>
<!-- / #wrapper -->
<!-- <a href="javascript:void(0)" title="Lên đầu trang" id="go-top"></a> -->

<div id="_loading"></div>
<div id="_loading_popup"></div>
<?php
echo getConstant('script_bottom');
// $active = 0;
// $active = getPage('popup', 'is_active') + 0;
// if($active==1 && !isset($_SESSION['popup'])) {
// 	require_once("popup" . DS . "popup.php");
// 	$_SESSION['popup'] = 'OK';
// }
?>
<script type="text/javascript">
	var lastScrollTop = 0;
	$(window).scroll(function(event){
		if($( window ).width() < 767)
		{
			var st = $(this).scrollTop();
			if (st > lastScrollTop){
				if(st > 100)
				{
					$('.header').css('opacity','0');
					$('.header').addClass('anmucdm');
					$('.hotline-home').css('opacity','0');
				}
			} else {		
				$('.header').css('opacity','1');
					$('.header').removeClass('anmucdm');
				$('.hotline-home').css('opacity','1');
			}	
		   lastScrollTop = st;
		}
	});
</script>
<?php if($slug_cat!='home'){?>
	<!-- <script type="text/javascript">
		$(document).ready(function(){
			var w = window.innerWidth;
			if(w>1200){
				$(document).ready(function(){
					var topPos = 200;
					var time    =  1000;
					$('html, body').animate({scrollTop:topPos},time);
				})
			}
		})
	</script> -->
	<script type="text/javascript">
		$(function(){$(window).scroll
		(function(){
			if($(this).scrollTop()!=0)
			{$("#go-top").fadeIn()}
			else{$("#go-top").fadeOut()}
			});
		  $("#go-top").click(function(){
			$("body,html").animate({scrollTop:0},1000);
		return false})});
	</script>
<?php } ?>
</body>
</html>