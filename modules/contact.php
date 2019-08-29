<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<div class="container-fluid">
	<div class="container">
		<h3 class="home-title text-uppercase my-50"><?php echo getNameCategory(5);?></h3>
	</div>
</div>
<div class="container nerformlh padmar">
	<?php		
		$db->table = "article";
		$db->condition = "is_active = 1 AND article_menu_id = 11";
		$db->order = "created_time DESC";
		$db->limit = "";
		$rowst = $db->select();
		foreach ($rowst as $rowt) {
	?>    
	<div class="row">
		<div class="col-xs-6 col-md-6"> 
			<input type="hidden" name="lang_field" value="<?php echo $txtEnter_field;?>"/>
			<input type="hidden" name="lang_email" value="<?php echo $txtEnter_email;?>"/>
			<input type="hidden" name="lang_phone" value="<?php echo $txtEnter_tell;?>"/>
			<form id="_frm_contact" name="frm_contact" class="frm f-space20" method="post" onsubmit="return sendMail('send_contact', '_frm_contact');">
				<input type="hidden" name="lang" value="<?php echo TTH_LANGUAGE ?>">
				<input type="hidden" name="hoten2" id="hoten2" value="<?php echo $hoten ?>">
				<input type="hidden" name="sodienthoai2" id="sodienthoai2" value="<?php echo $sodienthoai ?>">
				<input type="hidden" name="diachi2" id="diachi2" value="<?php echo $diachi ?>">
				<input type="hidden" name="noidung2" id="noidung2" value="<?php echo $noidung ?>">

				<h5 class="contact-heading"><?php echo $rowt['name'];?></h5>
				<div class="input_lienhe">
					<div class="form-group">
						<input class="inputnhap form-control" type="text" id="full_name" autocomplete="off" name="full_name" placeholder="<?php echo $txtContact_name; ?>" maxlength="250">
					</div>
					<div class="form-group">					
						<input class="inputnhap form-control" type="text" id="tel" autocomplete="off" name="tell" placeholder="<?=$txtContact_fone?>" maxlength="20">
					</div>
					<div class="form-group">
						<input class="inputnhap form-control" type="email" id="email" autocomplete="off" name="email" placeholder="<?=$txtContact_email?>" maxlength="250">
					</div>
					<div class="form-group">
						<textarea class="inputnhap form-control" rows="4" id="comment" autocomplete="off" name="comment" placeholder="<?=$txtContact_comment?>" maxlength="20"></textarea>
					</div>
				</div>
				<div class="btn_submit">
					<input style="" class="btn-sm-form text-uppercase" type="submit" id="_send_contact" value="<?= $submit;?>" name="send_contact" >
				</div>
			</form>
		</div>
		<div class="col-xs-6 col-md-6">
			<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="440x" width="540px" alt="Image gallery">
		</div>
	</div>
	<?php } ?>
</div>
<div class="container nerabout">
	<div class="my-50">
	<?php		
		$db->table = "article";
		$db->condition = "is_active = 1 AND article_menu_id = 12";
		$db->order = "created_time DESC";
		$db->limit = "";
		$rowst = $db->select();
		foreach ($rowst as $rowt) {
	?>                
		<div class="row">
			<div class="col-sm-6 col-md-6 col-lg-6">
				<div class="">
					<img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="360px" width="550px" alt="Image gallery">
				</div>
			</div>
			<div class="col-sm-6 col-md-6 col-lg-6">
				<div class="hotline px-20">
					<p class="hotline-heading"><?php echo $rowt['name'];?></p>
					<p class="hotline-cmt"><?php echo $rowt['comment'];?></p>
					<a class="hotline-tel" href="tel:<?php echo $rowt['content'];?>"><span><?php echo $rowt['content'];?></span></a>
				</div>
			</div>
		</div>
	<?php } ?>
	</div>
</div>
<script>
	window.onload = check_contact();
	$(".itemhethdtac").hover(
	  	function() {
	  		var idar = $(this).attr('data_id');
	  		$('.mapdicchi'+idar).addClass('hienbando')
	  		$('.mapdicchi'+idar).removeClass('actibando')
	  	}, function() {
	  		var idar = $(this).attr('data_id');
	  		$('.mapdicchi'+idar).removeClass('hienbando')
	  	}
	);
	$('.namechnn').click(function(){
		$(this).parent().removeClass('content_fas_one');
		if($(this).hasClass('acti_ve')){
			$(this).parent().find('.cohoivieclam').slideUp();
			$('.namechnn').removeClass('acti_ve');
			$('.itemfas_list').removeClass('content_fas_one');
		}else{
			$('.itemfas_list').removeClass('content_fas_one');
			$('.namechnn').removeClass('acti_ve');
			$('.cohoivieclam').removeClass('content_fas_one');
			$(this).addClass('acti_ve');
			$('.cohoivieclam').slideUp();
	  		$(this).parent().find('.cohoivieclam').slideDown();
		}
	});
	$('.nhantat').click(function(){
		$(this).parent().slideUp();
		$(this).parent().parent().removeClass('content_fas_one');
		$('.namechnn').removeClass('acti_ve');
	});
</script>