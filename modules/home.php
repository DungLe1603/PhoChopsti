<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
?>
<div class="container-fluid">
	<div class="container">
		<div class="home-news">
			<h2 class="home-title text-uppercase text-center"><?php echo getNameArticlemenu(8);?></h2>
			<div class="row">
				<?php
					$i = 0;
					$loc = array();
					$db->table = "article";
					$db->condition = "is_active = 1 AND article_menu_id = 8";
					$db->order = "";
					$db->limit = "3";
					$rows1 = $db->select();
					foreach ($rows1 as $rowt) {
				?>					
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="pho-losphy-item">
							<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="70px" width="70px" alt="Image">
							<p><?php echo $rowt['name'];?></p>
							<p><?php echo $rowt['content'];?></p>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<hr class="home-line">
<div class="container-fluid">
	<div class="container">
		<div class="home-news">
			<h2 class="home-title text-uppercase text-center"><?php echo getNameArticlemenu(7);?></h2>
			<div class="row">
				<?php
					$db->table = "article";
					$db->condition = "is_active = 1 AND article_menu_id = 7";
					$db->order = "created_time DESC";
					$db->limit = "3";
					$rows1 = $db->select();
					foreach ($rows1 as $rowt) {
				?>					
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="feature-item">						
							<a class="home-gallery-item" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>">
								<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="250px" width="355px" alt="Image gallery">
							</a>
							<p class="feature-description"><?php echo $rowt['name'];?></p>
							<p><?php echo $rowt['img_note'];?></p>
						</div>
					</div>
				<?php } ?>
			</div>
			<div class="view-all">
				<a class="view-all-bt bt-link" href="<?php echo HOME_URL_LANG;?>/<?php echo getNameMenuArt(7);?>">View all menu</a>
			</div>
		</div>
	</div>
</div>
<hr class="home-line">
<div class="container-fluid">
	<div class="container">
		<div class="home-news">
			<h2 class="home-title text-uppercase text-center"><?php echo getNameCategory(4);?></h2>
			<div class="row">
				<?php
					$i = 0;
					$loc = array();
					$db->table = "article_menu";
					$db->condition = "is_active = 1 AND category_id = 4";
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
					$db->limit = "2";
					$rowst = $db->select();
					foreach ($rowst as $rowt) {
				?>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="news-item row">
							<div class="col-md-3 col-sm-3 col-xs-3">
								<div class="trngthnam">
									<p>
										<span class="ngaytin"><?php echo date('d', $rowt['created_time']);?></span><br />
										<span class="thangtin"><?php echo date('F', $rowt['created_time']);?></span>
									</p>
								</div>
							</div>
							<div class="col-md-9 col-sm-9 col-xs-9">
								<div class="content">
									<a class="news-name" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>"><?php echo $rowt['name'];?></a>
									<div class="news-content">
										<p><?php echo mysubstr( $rowt['content'], 200)?></p>
									</div>
									<div class="view-more">
										<a class="full-right" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>"><span class="more-text"><?php echo $view; ?></span><i class="more-icon fas fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<hr class="home-line">
<div class="container-fluid">
	<div class="container">
		<div class="home-gallery">
			<h2 class="home-title text-uppercase text-center"><?php echo getNameCategory(3);?></h2>
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
					<a class="div-equal" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>">
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