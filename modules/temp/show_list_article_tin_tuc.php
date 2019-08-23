<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
?>
<div class="container nernew_list">
	<div class="tongnew_list">
	    <div class="row list_newp">
	    	<?php foreach ($rows as $keyt) { ?>
		      	<div class="col-md-12 col-sm-12 col-xs-12 item_newlist">
					<div class="row">
						<div class="col-md-2 col-sm-2 col-xs-2 leftntn">
							<div class="trngthnam">
								<p>
									<span class="ngaytin"><?php echo date('d', $keyt['created_time']);?></span><br />
									<span class="thangtin">th<?php echo date('m', $keyt['created_time']);?></span>
								</p>
							</div>
						</div>
						<div class="col-md-10 col-sm-10 col-xs-10 righjnh">
							<div class="trrightgach">
								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-6 centeranhnew">
										<div class="img_vanhoapdv">
											<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>">
												<?php if($keyt['img']=="" || $keyt['img']=="no"){ ?>
													<img src="<?php echo HOME_URL;?>/images/360x269.png">
												<?php }else{ ?>
													<img src="<?php echo HOME_URL;?>/uploads/article/360x269<?php echo $keyt['img'];?>">
												<?php } ?>
											</a>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-6 rightctnew">
										<div class="content_new">
											<p class="namenew_list"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $stringObj->crop(stripcslashes($keyt['name']), 15);?></a></p>
											<p class="prenew_list"><?php echo $stringObj->crop(stripcslashes($keyt['comment']), 50);?></p>
											<p class="dtailnerw"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $xt;?></a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		    <?php } ?>
	    </div>
	</div>
</div>
