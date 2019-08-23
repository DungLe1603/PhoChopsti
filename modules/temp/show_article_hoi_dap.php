<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?> 
<div class="container list_fas">
	<div class="rowa">
		<div class="col-xs-12 col-sm-12 col-md-12 tr_lisfas">
			<div class="namehdap">
	    		<p class="hoidapname">Faq gs smarthome</p>
	    	</div>
			<div class="trumfastong">
				<?php
					$i=0;
					$db->table = "article";
					$db->condition = "is_active = 1 AND article_menu_id = 424";
					$db->order = "created_time DESC";
					$db->limit = "20";
					$rowd = $db->select();
					foreach ($rowd as $key) {
						$i++;
				?>
			    <div class="col-xs-12 col-sm-12 col-md-12 faslist_item">
			        <div class="itemfas_list">
			        	<p class="clicknamefas"><?= $i.'.';?>&nbsp;<?= $key['name'];?></p>
			        	<div class="content_fas"><?= $key['content'];?></div>
			        </div>
			    </div>
			    <?php } ?>
			</div>
		</div>
	</div>
</div>
<script>
$('.clicknamefas').click(function(){
	if($(this).hasClass('acti_ve')){

	}else{
		$('.clicknamefas').removeClass('acti_ve');
		$('.faslist_item').removeClass('boder_acti');
		$(this).addClass('acti_ve');
		$('.content_fas').slideUp();
  		$(this).parent().find('.content_fas').slideDown();
  		$(this).parent().parent('.faslist_item').addClass('boder_acti');
	}
});
</script>