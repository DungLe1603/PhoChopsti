<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();
?>
<footer class="foter">
	<div class="container-fluid ft_home"> 
		<div class="container nerdauft">
			<div class="itemone itemone1">
				<p class="tit_start"><?php echo getNameCategory(1);?></p>
				<ul>
					<?php
                        $db->table = "article_menu";
                        $db->condition = "is_active = 1 AND category_id = 1 AND hot = 1";
                        $db->order = "created_time ASC";
                        $db->limit = "4";
                        $rows = $db->select();
                        foreach($rows as $row){
                    ?>
						<li>
							<a href="<?php echo HOME_URL_LANG;?>/gioi-thieu"><?php echo $row['name'];?></a>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="itemone itemone2">
				<p class="tit_start"><?php echo getNameCategory(2);?></p>
				<ul>
					<?php
                        $db->table = "article_menu";
                        $db->condition = "is_active = 1 AND category_id = 2";
                        $db->order = "created_time ASC";
                        $db->limit = "4";
                        $rows1 = $db->select();
                        foreach($rows1 as $row1){
                    ?>
						<li>
							<a href="<?php echo HOME_URL_LANG;?>/<?php echo $row1['slug'];?>"><?php echo $row1['name'];?></a>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="itemone itemone3">
				<p class="tit_start"><?php echo getNameCategory(4);?></p>
				<ul>
					<?php
                        $db->table = "article_menu";
                        $db->condition = "is_active = 1 AND category_id = 4";
                        $db->order = "created_time ASC";
                        $db->limit = "4";
                        $rows = $db->select();
                        foreach($rows as $row){
                    ?>
						<li>
							<a href="<?php echo HOME_URL_LANG;?>/lien-he"><?php echo $row['name'];?></a>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="itemone itemone4">
				<p class="tit_start"><?php echo $lk;?></p>
				<ul>
					<li><a href="<?= getConstant('link_twitter')?>" target="_blank"><img src="<?php echo HOME_URL;?>/images/tw.svg">&nbsp;&nbsp;Twitter</a></li>
					<li><a href="<?= getConstant('link_facebook')?>" target="_blank"><img src="<?php echo HOME_URL;?>/images/fb.svg">&nbsp;&nbsp;Facebook</a></li>
					<li><a href="https://rss.com/" target="_blank"><img src="<?php echo HOME_URL;?>/images/rss.svg">&nbsp;&nbsp;Rss</a></li>
				</ul>
			</div>
			<div class="iteminfo">
				<p class="tit_start"><?php echo $ttttdgm;?></p>
				<ul>
					<li><img src="<?php echo HOME_URL;?>/images/vt.svg">&nbsp;&nbsp;<?php echo getConstant('address_contact');?></li>
					<li><img src="<?php echo HOME_URL;?>/images/phone.svg">&nbsp;&nbsp;<?php echo getConstant('tell_contact');?></li>
					<li><img src="<?php echo HOME_URL;?>/images/mail.svg">&nbsp;&nbsp;<?php echo getConstant('email_contact');?></li>
				</ul>
			</div>
			<div class="itemone itemone5" style="display: none;">
				<p class="tit_start"><?php echo $lk;?></p>
				<ul>
					<li><a href="<?= getConstant('link_twitter')?>" target="_blank"><img src="<?php echo HOME_URL;?>/images/tw.svg">&nbsp;&nbsp;Twitter</a></li>
					<li><a href="<?= getConstant('link_facebook')?>" target="_blank"><img src="<?php echo HOME_URL;?>/images/fb.svg">&nbsp;&nbsp;Facebook</a></li>
					<li><a href="https://rss.com/" target="_blank"><img src="<?php echo HOME_URL;?>/images/rss.svg">&nbsp;&nbsp;Rss</a></li>
				</ul>
			</div>
			<div class="cpyright_cuoi">
				<img src="<?php echo HOME_URL;?>/images/logoft.svg">
				<p class="anmbile"><?= getConstant('meta_copyright');?>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://danaweb.vn/" target="_blank"><img src="<?= HOME_URL?>/images/logocty.svg"></a>&nbsp;Designed and Maintained by</p>
				<p class="heinmbile" style="display: none;"><?= getConstant('meta_copyright');?><br /><a href="https://danaweb.vn/" target="_blank"><img src="<?= HOME_URL?>/images/logocty.svg"></a>&nbsp;Designed and Maintained by</p>
			</div>
		</div>
	</div>
</footer>