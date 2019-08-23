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
<div class="container nernew_detail">
	<div class="row tongdetail_vh">
		<div class="col-md-9 col-sm-9 col-xs-9 leftdt_news">
			<div class="noidungkhoahoc">
				<?php echo $row['content'];?>
			</div>
			<div class="xahoi_mang">
				<div onclick="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u=<?php echo site_url()?>','_blank')" class="share_face"><img src="<?php echo HOME_URL;?>/images/face.svg"></div>
				<div onclick="javascript:window.open('https://twitter.com/intent/tweet?source=webclient&text=DANAWEB&url=<?php echo site_url()?>&hashtags=danaweb','_blank')" class="share_twitter"><img src="<?php echo HOME_URL;?>/images/twi.svg"></div>
				<div class="share_plus"><a href="mailto:<?php echo getConstant('email_contact');?>"><img src="<?php echo HOME_URL;?>/images/ml.svg"></a></div>
				<div onclick="javascript:window.open('https://www.linkedin.com/sharing/share-offsite/?url=<?php echo site_url()?>','_blank')" class="share_plus"><img src="<?php echo HOME_URL;?>/images/lk.svg"></div>
			</div>
			<div class="divbluanface">
				<p><?php echo $blfb;?></p>
				<div class="fb-comments" data-href="<?php echo site_url();?>" data-width="100%" data-numposts="10"></div>
			</div>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-3 rightdt_news">
			<div class="other_listtin">
				<p><?php echo $ttk;?></p>
				<?php foreach ($rows2 as $keyt) { ?>
					<div class="tongitemother">
						<div class="imgothernew">
							<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>">
								<?php if($keyt['img']=="" || $keyt['img']=="no"){ ?>
									<img src="<?php echo HOME_URL;?>/images/360x269.png">
								<?php }else{ ?>
									<img src="<?php echo HOME_URL;?>/uploads/article/360x269<?php echo $keyt['img'];?>">
								<?php } ?>
							</a>
						</div>
						<div class="ctothernew">
							<p class="namenew_other"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $keyt['name'];?></a></p>
							<p class="datnew_other"><?php echo date('d/m/Y',$keyt['created_time']);?></p>
						</div>
					</div>
				<?php } ?>
			</div>
			<p class="titimchtoi"><?php echo $tcttfb;?></p>
            <div class="fb-page" data-href="https://www.facebook.com/facebook" data-width="340" data-hide-cover="false" data-show-facepile="true"></div>
		</div>
	</div>
</div>
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