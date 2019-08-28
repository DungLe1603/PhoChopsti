<?php

if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$date = new DateClass();
$stringObj = new String();

?>
<div class="container-fluid">
	<div class="container">
		<div class="home-gallery">
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
					$db->limit = "9";
					$rowst = $db->select();
					foreach ($rowst as $rowt) {
				?>
					<a class="home-gallery-item" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>">
						<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="170px" width="255px" alt="Image gallery">
					</a>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<script>
    $('.menutab a').click(function(){
        $('.menutab a').removeClass('active');
        $(this).addClass('active');
    });
</script>
<!-- <?php 
	if($_GET['tabopen'] != ""){
		$idopen=$_GET['tabopen'];
?>
	<script type="text/javascript">
		// alert("<?php echo $idopen; ?>");
		$("#button<?php echo $idopen; ?>").triggerHandler('click');
		$(".tab-content div").removeClass('in');
		$(".tab-content div").removeClass('active');
		$("#<?php echo $idopen; ?>").addClass('in');
		$("#<?php echo $idopen; ?>").addClass('active');
	</script>
<?php } ?> -->