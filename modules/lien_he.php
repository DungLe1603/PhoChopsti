<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 649";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown = $db->select();
    foreach ($rown as $keyn){
?>
<div class="container nerlhe padmar" id="<?php echo $keyn['slug'];?>">
	<div class="trdiveditsau">
		<p class="tit_htdoitac"><?php echo getNameArticlemenu(649);?></p>
		<div class="row tonglhe">
			<?php
				$db->table = "article";
				$db->condition = "is_active = 1 AND article_menu_id = 649";
				$db->order = "created_time DESC";
				$db->limit = "3";
				$rows = $db->select();
				foreach ($rows as $value) {
			?>
				<div class="col-md-4 col-sm-4 col-xs-4 itemhethdtac" data_id="<?php echo $value['article_id'];?>">
					<div class="trithtdtac">
						<?php echo $value['content'];?>
					</div>
				</div>
			<?php } ?>
		</div>
		<?php
			$i = 0;
			$db->table = "article";
			$db->condition = "is_active = 1 AND article_menu_id = 649";
			$db->order = "created_time DESC";
			$db->limit = "3";
			$rows1 = $db->select();
			foreach ($rows1 as $value1) {
				$i++;
		?>
			<div class="mapdicchi mapdicchi<?php echo $value1['article_id'];?> <?php if($i==1) echo 'actibando';?>">
				<?php echo $value1['comment'];?>
			</div>
		<?php } ?>
	</div>
</div>
<?php } ?>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 650";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown1 = $db->select();
    foreach ($rown1 as $keyn1){
?>
<div class="container-fluid fluicohoi" id="<?php echo $keyn1['slug'];?>">
	<div class="container nercohoi">
		<div class="editsauchnn">
			<p class="titchnn"><?php echo getNameArticlemenu(650);?></p>
			<div class="quitnho">
				<?php
					$i = 0;
					$db->table = "article";
					$db->condition = "is_active = 1 AND article_menu_id = 650";
					$db->order = "created_time DESC";
					$db->limit = "";
					$rol = $db->select();
					foreach ($rol as $vali) {
						$i++;
				?>
					<div class="itemfas_list <?php if($i==1) echo 'content_fas_one';?>">
						<p class="namechnn"><?php echo $vali['name'];?><img src="<?php echo HOME_URL;?>/images/cong.svg" class="conghien"></p>
						<div class="cohoivieclam">
							<?php echo $vali['content'];?>
							<img src="<?php echo HOME_URL;?>/images/nhan.svg" class="nhantat">
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<?php } ?>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 651";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown2 = $db->select();
    foreach ($rown2 as $keyn2){
?>
<div class="container nerformlh padmar" id="<?php echo $keyn2['slug'];?>">
	<div class="trsauformedit">
		<p><?php echo getNameArticlemenu(651);?></p>
		<div class="formlienhe"> 
			<input type="hidden" name="lang_field" value="<?php echo $txtEnter_field;?>"/>
			<input type="hidden" name="lang_email" value="<?php echo $txtEnter_email;?>"/>
			<input type="hidden" name="lang_phone" value="<?php echo $txtEnter_tell;?>"/>
			<form id="_frm_contact" name="frm_contact" class="frm f-space20" method="post" onsubmit="return sendMail('send_contact', '_frm_contact');">
				<input type="hidden" name="lang" value="<?php echo TTH_LANGUAGE ?>">
				<input type="hidden" name="hoten2" id="hoten2" value="<?php echo $hoten ?>">
				<input type="hidden" name="sodienthoai2" id="sodienthoai2" value="<?php echo $sodienthoai ?>">
				<input type="hidden" name="diachi2" id="diachi2" value="<?php echo $diachi ?>">
				<input type="hidden" name="noidung2" id="noidung2" value="<?php echo $noidung ?>">
				<div class="row input_lienhe">
					<div class="trum_2input">
						<div class="col-md-6 col-sm-6 col-xs-6 in_name">
							<input type="text" id="full_name" autocomplete="off" name="full_name" placeholder="<?php echo $txtContact_name; ?>" maxlength="250">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 in_phone">
							<input type="text" id="add" autocomplete="off" name="add" placeholder="<?=$txtContact_address?>" maxlength="20">
						</div>
					</div>
					<div class="trum_2inputsau">
						<div class="col-md-6 col-sm-6 col-xs-6 in_phone">
							<input type="text" id="tel" autocomplete="off" name="tell" placeholder="<?=$txtContact_fone?>" maxlength="20">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 in_email">
							<input type="email" id="email" autocomplete="off" name="email" placeholder="<?=$txtContact_email?>" maxlength="250">
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12 text_noidung">
						<textarea name="content" id="content" placeholder="<?=$txtContact_content?>" cols="60" rows="4"></textarea>
					</div>
				</div>
				<div class="btn_submit send_lienhe">
					<input style="" class="" type="submit" id="_send_contact" value="<?= $gd;?>" name="send_contact" >
				</div>
			</form>
		</div>
	</div>
</div>
<?php } ?>
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