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
		foreach($rows as $row1) {
			$db->table = "article";
			$db->condition = "is_active = 1 and article_menu_id = ".($row['article_menu_id']+0).' and article_id <> '.$id;
			$db->order = "created_time DESC";
			$db->limit = 4;
			$rows2 = $db->select();
			$total = $db->RowCount;
?>	
<div class="container nerkhoahocdt">
	<div class="row tg_khoahocdtail">
	 	<div class="col-md-3 col-sm-3 col-xs-3 leftkhoahoclit">
        	<div class="trlistkhoc">
                <ul>
                	<?php
						$db->table = "article";
						$db->condition = "is_active = 1 AND article_id = ".$id;
						$db->order = "";
						$db->limit = "";
						$rows = $db->select();
						foreach ($rows as $row) { 
					?>
                		<li class="activedm"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $row['slug'];?>"><?php echo $row['name'];?></a></li>
    				<?php } ?>
                	<?php
						$db->table = "article";
						$db->condition = "is_active = 1 AND article_id != ".$id." AND article_menu_id = ".$id_menu;
						$db->order = "created_time ASC";
						$db->limit = "20";
						$rows = $db->select();
						foreach ($rows as $row) { 
					?>
                		<li><a href="<?php echo HOME_URL_LANG;?>/<?php echo $row['slug'];?>"><?php echo $row['name'];?></a></li>
    				<?php } ?>
                </ul>
                <p class="titimchtoi"><?php echo $tcttfb;?></p>
                <div class="fb-page" data-href="https://www.facebook.com/facebook" data-width="340" data-hide-cover="false" data-show-facepile="true"></div>
        	</div>
    	</div>
        <div class="col-md-9 col-sm-9 col-xs-9 rightkhocdtail">
        	<div class="tr_contentkhdt">
        		<div class="noidungkhoahoc">
        			<?php echo $row1['content'];?>
        		</div>
                <div class="xahoi_mang">
					<div onclick="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u=<?php echo site_url()?>','_blank')" class="share_face"><img src="<?php echo HOME_URL;?>/images/face.svg"></div>
					<div onclick="javascript:window.open('https://twitter.com/intent/tweet?source=webclient&text=DANAWEB&url=<?php echo site_url()?>&hashtags=danaweb','_blank')" class="share_twitter"><img src="<?php echo HOME_URL;?>/images/twi.svg"></div>
					<div class="share_plus"><a href="mailto:<?php echo getConstant('email_contact');?>"><img src="<?php echo HOME_URL;?>/images/ml.svg"></a></div>
					<div onclick="javascript:window.open('https://www.linkedin.com/sharing/share-offsite/?url=<?php echo site_url()?>','_blank')" class="share_plus"><img src="<?php echo HOME_URL;?>/images/lk.svg"></div>
				</div>
        		<div class="formdangky">
        			<p class="dangkykhoahoc"><?php echo $dkkh;?></p>
					<form id="_frm_order" name="frm_order" class="frm shopping" method="post" onsubmit="return sendMail('send_order', '_frm_order');">
						<input type="hidden" name="lang_field" id="txtEnterField" value="<?=$txtEnter_field?>"/>
						<input type="hidden" name="lang_email" id="txtEnterMail" value="<?=$txtEnter_email?>"/>
						<input type="hidden" name="lang_phone" id="txtEnterTell" value="<?=$txtEnter_tell?>"/>
						<input type="hidden" name="lang" value="<?php echo TTH_LANGUAGE ?>">

						<input type="hidden" name="hvteb" id="hvteb" value="<?php echo $hvteb;?>">
						<input type="hidden" name="ntns" id="ntns" value="<?php echo $ntns;?>">
						<input type="hidden" name="kvss" id="kvss" value="<?php echo $kvss;?>">
						<input type="hidden" name="diachi" id="diachi" value="<?php echo $diachi;?>">
						<input type="hidden" name="sdtph" id="sdtph" value="<?php echo $sdtph;?>">
						<div class="f-space05 clearfix formtuvandangky">
							<div class="row">
								<div class="col-md-7 col-sm-7 col-xs-7 form_input">
									<input type="text" id="hoten" name="hoten" autocomplete="off" placeholder="<?php echo $hvteb;?> *">
								</div>
								<div class="col-md-5 col-sm-5 col-xs-5 form_input">
									<input type="text" id="sinhnhat" name="sinhnhat" autocomplete="off" placeholder="<?php echo $ntns;?> *">
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-sm-5 col-xs-5 form_input">
									<input type="text" id="khuvuc" name="khuvuc" autocomplete="off" placeholder="<?php echo $kvss;?> *">
								</div>
								<div class="col-md-7 col-sm-7 col-xs-7 form_input">
									<input type="text" id="add" name="add" autocomplete="off" placeholder="<?php echo $txtContact_address;?> *">
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-sm-5 col-xs-5 form_input">
									<input type="text" id="sodienthoai" name="sodienthoai" autocomplete="off" placeholder="<?php echo $sdtph;?> *">
								</div>
								<div class="col-md-7 col-sm-7 col-xs-7 form_input">
									<input type="text" id="email" name="email" autocomplete="off" placeholder="Email *">
								</div>
							</div>
						</div>
						<div class="nuttuvan">
							<input type="submit" id="_send_order" name="btnSendOrder" value="<?php echo $dk;?>">
						</div>
					</form>
					<script type="text/javascript">
						window.onload = check_order();
						$('#sinhnhat').datetimepicker({
					        format:'<?php echo TTH_DATE_FORMAT;?>',
					        lang:'vi',
					        closeOnDateSelect:true,
					        timepicker: false,
					        onShow:function( ct ){
					            this.setOptions({
									formatDate:'<?php echo TTH_DATE_FORMAT;?>'
								})
					        }
					    });
					</script>
        		</div>
        		<?php if($total>0){ ?>
	        		<div class="ortherkhoahoc">
	        			<p><?php echo $khk;?></p>
	        			<div class="owl-carousel owl-theme sliderkhother">
	        				<?php foreach($rows2 as $keyt){ ?>
		        				<div class="itemkhoahockhac">
		        					<div class="imgkhhockhac">
		        						<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>">
		        							<img src="<?php echo HOME_URL;?>/uploads/article/360x265<?php echo $keyt['img'];?>">
		        						</a>
		        					</div>
		        					<p>
		        						<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $keyt['name'];?></a>
		        					</p>
		        				</div>
		        			<?php } ?>
	        			</div>
	        		</div>
	        	<?php } ?>
        	</div>
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