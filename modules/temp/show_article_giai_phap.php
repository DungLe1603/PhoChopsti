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
		<div class="row tong_dmgiaiphap">
			<?php
				$i = 0;
				$db->table = "article_menu";
				$db->condition = "is_active = 1 AND category_id = 126";
				$db->order = "created_time ASC";
				$db->limit = "4";
				$rows = $db->select();
				foreach ($rows as $row) { 
					$i++;
					if($id_menu==0){
			?>
			 	<div class="col-md-3 col-sm-3 col-xs-3 category_giaiphapbg">
                	<div class="images_dmgp <?php if($i==1) echo 'acti_gp';?>" data_id="<?php echo $row['article_menu_id'];?>">
	                    <img src="<?= HOME_URL;?>/uploads/article_menu/76x76<?php echo $row['img'];?>" class="img_blob">
	                    <img src="<?= HOME_URL;?>/uploads/article_menu/76x76<?php echo $row['img1'];?>" class="img_none">
	                    <p class="name_gplist"><?php echo $row['name'];?></p>
                	</div>
	        	</div>
	        <?php }else{ ?>
			 	<div class="col-md-3 col-sm-3 col-xs-3 category_giaiphapbg">
                	<div class="images_dmgp <?php if($id_menu==$row['article_menu_id']) echo 'acti_gp';?>" data_id="<?php echo $row['article_menu_id'];?>">
	                    <img src="<?= HOME_URL;?>/uploads/article_menu/76x76<?php echo $row['img'];?>" class="img_blob">
	                    <img src="<?= HOME_URL;?>/uploads/article_menu/76x76<?php echo $row['img1'];?>" class="img_none">
	                    <p class="name_gplist"><?php echo $row['name'];?></p>
                	</div>
	        	</div>
	        <?php } } ?>
        </div>
		<div class="row tongdetail_vh">
			<div class="col-md-8 col-sm-8 col-xs-8 leftdt_vhoa">
				<div class="tongleft_dtvh">
					<?php
						if($id_menu==0){
							$db->table = "article_menu";
							$db->condition = "is_active = 1 AND category_id = 126";
							$db->order = "created_time ASC";
							$db->limit = "1";
							$rows = $db->select();
							foreach ($rows as $row) { 

							$db->table = "article";
							$db->condition = "is_active = 1 and article_menu_id = ".$row['article_menu_id'];
							$db->order = "";
							$db->limit = "";
							$rows = $db->select();
							foreach($rows as $row) {
					?>
						<div class="cten_dtvh">
							<?php echo $row['content'];?>
						</div>
					<?php 
						} } }else{
							$db->table = "article";
							$db->condition = "is_active = 1 and article_menu_id = ".$id_menu;
							$db->order = "";
							$db->limit = "";
							$rows = $db->select();
							foreach($rows as $row) {
					?>
						<div class="cten_dtvh">
							<?php echo $row['content'];?>
						</div>
					<?php } } ?>
				</div>
				<div class="xahoi_mang"> 
					<div class="fb-like" data-href="<?php echo site_url()?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
					<div onclick="javascript:window.open('https://twitter.com/intent/tweet?source=webclient&text=DANAWEB&url=<?php echo site_url()?>&hashtags=danaweb','_blank')" class="share_twitter"><img src="<?php echo HOME_URL;?>/images/twi.png">&nbsp;Tweet</div>
					<div onclick="javascript:window.open('https://plus.google.com/share?url=<?php echo site_url()?>','_blank')" class="share_plus"><img src="<?php echo HOME_URL;?>/images/pl.png"></div>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 rightdt_vh">
				<div class="other_listtin">
					<div class="form_tuvan">
						<p class="tvanbgia"><?php echo $tvbg;?></p>
						<div class="pre_tvbg"><?php echo getPage('tuvan');?></div>
						<form id="frm_order" name="frm_order" class="frm shopping" method="post" onsubmit="return sendMail('send_order', 'frm_order');">
							<input type="hidden" name="lang_field" id="txtEnterField" value="<?=$txtEnter_field?>"/>
							<input type="hidden" name="lang_email" id="txtEnterMail" value="<?=$txtEnter_email?>"/>
							<input type="hidden" name="lang_phone" id="txtEnterTell" value="<?=$txtEnter_tell?>"/>
							<input type="hidden" name="lang" value="<?php echo TTH_LANGUAGE ?>">
							<input type="hidden" name="hoten1" id="hoten1" value="<?php echo $hoten ?>">
							<input type="hidden" name="sodienthoai1" id="sodienthoai1" value="<?php echo $sodienthoai ?>">
							<input type="hidden" name="diachi1" id="diachi1" value="<?php echo $diachi ?>">
							<input type="hidden" name="noidung1" id="noidung1" value="<?php echo $noidung ?>">
							<div class="f-space05 clearfix">
								<div class="form_input">
									<input id="hoten" autocomplete="off" type="text" placeholder="<?php echo $txtContact_name;?>" name="hoten">
								</div>
								<div class="form_input">
									<input id="sodienthoai" autocomplete="off" type="text" placeholder="<?php echo $txtContact_fone;?>" name="sdt">
								</div>
								<div class="form_input">
									<input id="diachi" autocomplete="off" type="text" placeholder="<?php echo $txtContact_address;?>" name="diachi">
								</div>
								<div class="form_input">
									<input id="email" autocomplete="off" type="email" placeholder="Email" name="email">
								</div>
								<div class="form_input">
									<textarea placeholder="<?php echo $noidung;?>" rows="4" id="content" name="content"></textarea>
								</div>
							</div>
							<div class="nuttuvan">
								<input type="submit" id="_send_order" name="btnSendOrder" value="<?php echo $gtt;?>">
							</div>
						</form>
						<script type="text/javascript">
							window.onload = check_order();
						</script>
					</div>
					<div class="hline_tvan">
						<p><?php echo $hltv;?></p>
						<?php
                            $txt_phone = '';
                            $phone = array();
                            $phone = explode('-', getConstant('tell_contact'));
                        ?>
						<p><?php echo $phone[0];?></p>
					</div>
				</div>
			</div>
		</div>
		<div class="baogiasanpham">
			<p class="bgspham"><?php echo $bgsp;?></p>
			<div class="tong_baogiasp">
				<div class="owl-carousel baogia_sp owl-theme">
					<?php
						$loc = array();
			    		$i = 0;
			    		$db->table = "article_menu";
			            $db->condition = "is_active = 1 and category_id = 137";
			            $db->order = "created_time ASC";
			            $db->limit = "";
			            $rowg = $db->select();
			            foreach ($rowg as $rowp) {
			            	$loc[$i] = $rowp['article_menu_id'];
			            	$i++;
			            }
			            $loc = implode(',', $loc); 
			    		$db->table = "article";
				    	$db->condition = "is_active = 1 AND article_menu_id =".$loc;
			    		$db->order = "created_time DESC";
			    		$db->limit = 20;
			    		$rows = $db->select();
			    		foreach ($rows as $keyt) {
					?>
						<div class="item trumvh_baogia">
							<div class="img_baogia">
								<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>">
									<?php if($keyt['img']=="" || $keyt['img']=="no"){ ?>
										<img src="<?php echo HOME_URL;?>/images/360x260.png">
									<?php }else{ ?>
										<img src="<?php echo HOME_URL;?>/uploads/article/360x260<?php echo $keyt['img'];?>">
									<?php } ?>
								</a>
							</div>
							<div class="content_baogia">
								<p class="namevh_baogia"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $stringObj->crop(stripcslashes($keyt['name']), 15).':';?></a><span><?php echo $keyt['img_note'];?></span></p>
								<div class="prevhoa_listbgia"><?php echo $stringObj->crop(stripcslashes($keyt['comment']), 70);?></div>
								<p class="dtail_bgia"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $xt;?></a></p>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $('.images_dmgp').click(function(){
        var idhoa = $(this).attr('data_id');
        $('.images_dmgp').removeClass('acti_gp');
        $(this).addClass('acti_gp');
        $.ajax({
            url:'/action.php',
            type: 'POST',
            data: 'url=giaiphap&id='+idhoa+'&lang=<?php echo $_SESSION["language"];?>',
            dataType: "html",
            success: function(data){
                $('.tongleft_dtvh').html(data);
            }
        }); 
        return false;
    })
</script>
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