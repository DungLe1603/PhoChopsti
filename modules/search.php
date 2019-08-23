<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
    $hoa =  isset($_GET['k']) ? $_GET['k'] : "";
?>
<div class="container nervhoa nertkiem">
	<div class="tongtkiem">
		<p class="resurt_search"><?php echo $kqtk;?></p>
		<div class="row">
			<?php
				$r = 0;
				$locb = array();
				$db->table = "article_menu";
				$db->condition = "is_active = 1 AND category_id = 2";
				$db->order = "";
				$db->limit = "";
				$rowg = $db->select();
				foreach ($rowg as $valu) {
					$locb[$r] = $valu['article_menu_id'];
					$r++;
				}
				$locb = implode(',', $locb);
				$db->table = "article";
				$db->condition = "is_active = 1 AND article_menu_id IN (".$locb.") AND name like '%".$hoa."%'";
				$db->order = "created_time DESC";
				$db->limit = "";
				$row = $db->select();
				$total = $db->RowCount;
				if($total > 0){
				$slug_submenu = "";
			    $parent = false;
			    $total_pages = 0;
			    $per_page = 9;
			    if($total%$per_page==0) $total_pages = $total/$per_page;
			    else $total_pages = floor($total/$per_page)+1;
			    if($page<=0) $page=1;
			    $start=($page-1)*$per_page;

			    $db->table = "article";
				$db->condition = "is_active = 1 AND article_menu_id IN (".$locb.") AND name like '%".$hoa."%'";
				$db->order = "";
				$db->limit = $start.','.$per_page;
				$rowqqqw = $db->select();
				foreach ($rowqqqw as $keyt) {
			?>
				<div class="col-md-4 col-sm-4 col-xs-4 item_khoahoclit">
					<div class="trumvh_khoahoc">
						<div class="img_khoahoc">
							<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>">
								<?php if($keyt['img']=="" || $keyt['img']=="no"){ ?>
									<img src="<?php echo HOME_URL;?>/images/360x265.png">
								<?php }else{ ?>
									<img src="<?php echo HOME_URL;?>/uploads/article/360x265<?php echo $keyt['img'];?>">
								<?php } ?>
							</a>
						</div>
						<div class="content_khoahoc">
							<p class="namevh_khoahoc"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $stringObj->crop(stripcslashes($keyt['name']), 15);?></a></p>
							<div class="prevhoa_listkhoahoc"><?php echo $stringObj->crop(stripcslashes($keyt['comment']), 70);?></div>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
	<?php showPageNavigation($page, $total_pages,'/'.$slug_cat.'/'.$slug_submenu.'?p='); }else{?>
	<div class="container timkiemc" style="margin-top: 20px;">
		<?php
			echo $rtsmf." "."'".$hoa."'";
		?>
		<h3 style="font-weight: 600; font-stretch: normal; font-size: 16px; line-height: 18px; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; outline: none; zoom: 1;margin-top: 10px;"><?php echo $dtdkq;?></h3>
		<ul style="margin: 10px 0px;list-style: none; line-height: 20px; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;">
			<li style="list-style-position: inside; list-style-type: disc;"><?php echo $ktlct;?></li>
			<li style="list-style-position: inside; list-style-type: disc;"><?php echo $tlbtkk;?></li>
			<li style="list-style-position: inside; list-style-type: disc;"><?php echo $tktq;?></li>
			<li style="list-style-position: inside; list-style-type: disc;"><?php echo $tkng;?></li>
		</ul>
	</div>
</div>
<?php
	}
?>