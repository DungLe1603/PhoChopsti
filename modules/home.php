<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
?>
<div class="container">
	<div class="tg_gthome">
		<h2 class="text-uppercase text-center">Our pho losophy</h2>
		<ul>
			<li><img src="<?php echo HOME_URL;?>/images/sao.svg"></li>
			<li><img src="<?php echo HOME_URL;?>/images/sao.svg"></li>
			<li><img src="<?php echo HOME_URL;?>/images/sao.svg"></li>
		</ul>
	</div>
</div>
<div class="container-fluid fluidkhoahoc">
	<div class="container nerkhoahoc">
		<div class="gallery">
			<h2 class="text-uppercase text-center"><?php echo getNameCategory(3);?></h2>
			<div class="navigation menu-images">
				<?php
					$i = 0;
					$loc = array();
					$db->table = "article_menu";
					$db->condition = "is_active = 1 AND category_id = 3";
					$db->order = "";
					$db->limit = "";
					$rows1 = $db->select();
					foreach ($rows1 as $row1) {
						$loc[$i] = $row1['article_menu_id'];
						$i++;
					}
					$loc = implode(',', $loc);
					$db->table = "article";
					$db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
					$db->order = "created_time DESC";
					$db->limit = "4";
					$rowst = $db->select();
					foreach ($rowst as $rowt) {
				?>
					<a href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>">
						<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="170px" width="255px" alt="Image gallery">
					</a>
				<?php } ?>
			</div>
		</div>
	</div>
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