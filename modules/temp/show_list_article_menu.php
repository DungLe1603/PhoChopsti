<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<div class="container nerabout">
	<div class="menu-images">
		<nav class="">
			<ul class="">
				<li style="visibility: visible; animation-name: flipInX;margin: 0;" class="<?php if($slug_cat=='menu-all') echo 'active'; ?>">
					<a class="bt-link" style="overflow: initial;" href="<?php echo HOME_URL_LANG; ?>/<?php echo $rowt['slug'];?>" title="">
						<span class="text-uppercase">All</span>
					</a>
				</li>
			<?php
				$i = 0;
				$loc = array();
				$db->table = "article_menu";
				$db->condition = "is_active = 1 AND category_id = 2";
				$db->order = "";
				$db->limit = "";
				$rows1 = $db->select();
				foreach ($rows1 as $row) {
			?>
				<li>
					<a class="bt-link" href="<?php echo HOME_URL_LANG;?>/<?php echo $row['slug'];?>"><?php echo $row['name'];?></a>
				</li>
			<?php } ?>
			</ul>
		</nav>
	</div>
    <div class="menu-menu row">
		<?php
			$i = 0;
			$loc = array();
			$db->table = "article_menu";
			$db->condition = "is_active = 1 AND category_id = 2";
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
			$db->limit = "";
			$rowst = $db->select();
			foreach ($rowst as $rowt) {
		?>					
			<div class="col-sx-4 col-sm-4 col-md-4">        
				<div class="menu-item">						
					<a class="home-gallery-item" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>">
						<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="250px" width="355px" alt="Image gallery">
					</a>
					<p class="feature-description"><?php echo $rowt['name'];?></p>
					<p><?php echo $rowt['img_note'];?></p>
				</div>
			</div>
		<?php } ?>
    </div>
</div>
