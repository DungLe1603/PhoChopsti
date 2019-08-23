<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<?php 
	$sumView = 0;
	$db->table = "article";
	$db->condition = "is_active = 1 and article_id = ".$id;
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount>0){ 
		foreach($rows as $row) {
			$db->table = "article";
			$db->condition = "is_active = 1 and article_menu_id = ".($row['article_menu_id']+0).' and article_id <> '.$id;
			$db->order = "created_time DESC";
			$db->limit = 4;
			$rows2 = $db->select();
			$total = $db->RowCount;
?>	
<div class="container-fluid fluid_list_new">
	<div class="xeoduoiimg xeoduoiimg_lienhe">
	    <img src="<?php echo HOME_URL;?>/images/xeo1.png">
	</div>
	<div class="container nernew_list">
		<div class="row tongdetail_vh">
			<div class="col-md-8 col-sm-8 col-xs-8 leftdt_vhoa">
				<div class="tongleft_dtvh">
					<p class="namedt_vh"><?php echo $row['name'];?></p>
					<div class="cten_dtvh">
						<?php echo $row['content'];?>
					</div>
					<div class="xahoi_mang">
						<div class="fb-like" data-href="<?php echo site_url()?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
						<div onclick="javascript:window.open('https://twitter.com/intent/tweet?source=webclient&text=DANAWEB&url=<?php echo site_url()?>&hashtags=danaweb','_blank')" class="share_twitter"><img src="<?php echo HOME_URL;?>/images/twi.png">&nbsp;Tweet</div>
						<div onclick="javascript:window.open('https://plus.google.com/share?url=<?php echo site_url()?>','_blank')" class="share_plus"><img src="<?php echo HOME_URL;?>/images/pl.png"></div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 rightdt_vh">
				<div class="other_listtin">
					<p class="us_other"><?php echo $gpcct;?></p>
					<?php
						$db->table = "article_menu";
						$db->condition = "is_active = 1 AND category_id = 126";
						$db->order = "created_time ASC";
						$db->limit = "4";
						$rowt = $db->select();
						foreach($rowt as $rowp) {
					?>
						<div class="trtd_gpct">
							<div class="img_gpct">
								<a href="<?php echo HOME_URL_LANG;?>/<?php echo $rowp['slug'];?>">
									<?php if($rowp['img']=="" || $rowp['img']=="no"){ ?>
										<img src="<?php echo HOME_URL;?>/images/76x76.png">
									<?php }else{ ?>
										<img src="<?php echo HOME_URL;?>/uploads/article_menu/76x76<?php echo $rowp['img'];?>">
									<?php } ?>
								</a>
							</div>
							<div class="ctent_rightgpct">
								<p><a href="<?php echo HOME_URL_LANG;?>/<?php echo $rowp['slug'];?>"><?php echo $rowp['name'];?></a></p>
							</div>
						</div>
					<?php } ?>
					<div class="hline_tvan">
						<p><?php echo $hltv;?></p>
						<?php
                            $txt_phone = '';
                            $phone = array();
                            $phone = explode('-', getConstant('tell_contact'));
                        ?>
						<p><?php echo $phone[0];?></p>
					</div>
					<div class="other_newdtai">
						<p><?php echo $ndak;?></p>
						<ul>
							<?php 
								$db->table = "article";
								$db->condition = "is_active = 1 and article_id != ".$id." AND article_menu_id = ".$id_menu;
								$db->order = "created_time DESC";
								$db->limit = 5;
								$rowk = $db->select();
								foreach ($rowk as $rowm) {
							?>
								<li><a href="<?php echo HOME_URL_LANG;?>/<?php echo $rowm['slug'];?>"><?php echo $rowm['name'];?></a></li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div
<?php
		$sumView = $row['views']+1;
	}
	$db->table = "article";
	$data = array(
		'views'=>$sumView
	);
	$db->condition = "article_id = ".$id;
	$db->update($data);

}
else include(_F_MODULES . DS . "error_404.php");