<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
?>
<div class="container nerkhoahoc_list">
	<div class="tongkhoc_list">
	    <div class="row list_khoc">
	    	<?php foreach ($rows as $keyt) { ?>
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
</div>
