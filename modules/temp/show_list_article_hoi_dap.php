<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?> 
<style type="text/css">
	.fa-minus{
	    display: none;
	}
	.acti_ve .fa-minus{
		display: inline-block;
		color: #92C200;
	}
	.fa-minus{
		color: #92C200 !important;
	}
	.acti_ve .fa-plus{
		display: none;
	}
	.content_fas_one .fa-minus{
		display: inline-block;
	}
	.content_fas_one .fa-plus{
		display: none;
	}
</style>
<div class="container-fluid fluid_hoidap fluid_list_new">
	<div class="xeoduoiimg xeoduoiimg_lienhe">
	    <img src="<?php echo HOME_URL;?>/images/xeo1.png">
	</div>
	<div class="container list_fas">
		<div class="formgui_choi">
			<p class="choi_cuban"><?php echo $chcb;?></p>
			<form id="_frm_cauhoi" name="frm_cauhoi" class="frm f-space20" method="post" onsubmit="return sendMail('send_cauhoi', '_frm_cauhoi');">
				<input type="hidden" name="lang" value="<?php echo TTH_LANGUAGE ?>">
				<div class="tong_formhoi">
					<div class="text_cauhoi">
						<input type="text" name="name" id="name" placeholder="<?php echo $vlnch;?>">
					</div>
					<div class="subcauhoi">
						<input type="submit" name="cauhoi" id="cauhoi" value="<?php echo $gch;?>">
					</div>
				</div>
			</form>
		</div>
		<p class="cauhoi_thgap"><?php echo $nchtg;?></p>
		<div class="row">
			<div class="trumfastong">
				<?php
					$loc = array();
		    		$i = 0;
		    		$db->table = "article_menu";
		            $db->condition = "is_active = 1 and category_id = 75";
		            $db->order = "created_time ASC";
		            $db->limit = "";
		            $rowg = $db->select();
		            foreach ($rowg as $rowp) {
		            	$loc[$i] = $rowp['article_menu_id'];
		            	$i++;
		            }
		            $loc = implode(',', $loc); 
	    			$db->table = "article";
		    		$db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
		    		$db->order = "created_time DESC";
		    		$db->limit = "";
		    		$rows = $db->select();
					$total = $db->RowCount;
					if($total > 0){
						$slug_submenu = "";
					    $parent = false; 
					    $total_pages = 0;
					    $per_page = 8;
					    if($total%$per_page==0) $total_pages = $total/$per_page;
					    else $total_pages = floor($total/$per_page)+1;
					    if($page<=0) $page=1;
					    $start=($page-1)*$per_page;
					    $j = 0;
			    		$db->table = "article";
			    		$db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
			    		$db->order = "created_time DESC";
			    		$db->limit = $start.','.$per_page;
			    		$rows = $db->select();
	                    $sp = $db->RowCount;
			    		foreach ($rows as $key) {
			    			$j++;
				?>
			    <div class="col-xs-12 col-sm-12 col-md-12 faslist_item">
			        <div class="itemfas_list <?php if($j==1) echo 'content_fas_one';?>">
			        	<p class="clicknamefas"><span><?= $key['name'];?></span><i class="fa fa-plus" aria-hidden="true"></i><i class="fa fa-minus" aria-hidden="true"></i></p>
			        	<div class="content_fas"><?= $key['content'];?></div>
			        </div>
			    </div> 
			    <?php } }showPageNavigation($page, $total_pages,'/'.$slug_cat.'/'.$slug_submenu.'?p='); ?>
			</div>
		</div>
	</div>
</div>
<script>
	$('.clicknamefas').click(function(){
		$(this).parent().removeClass('content_fas_one');
		if($(this).hasClass('acti_ve')){
			$(this).parent().find('.content_fas').slideUp();
			$('.clicknamefas').removeClass('acti_ve');
			$('.itemfas_list').removeClass('content_fas_one');
		}else{
			$('.itemfas_list').removeClass('content_fas_one');
			$('.clicknamefas').removeClass('acti_ve');
			$('.content_fas').removeClass('content_fas_one');
			$('.faslist_item').removeClass('boder_acti');
			$(this).addClass('acti_ve');
			$('.content_fas').slideUp();
	  		$(this).parent().find('.content_fas').slideDown();
	  		$(this).parent().parent('.faslist_item').addClass('boder_acti');
		}
	});
</script>