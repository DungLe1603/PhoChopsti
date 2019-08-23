<?php
	if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
	$date = new DateClass();
	$stringObj = new String();

	// $url = $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; 
	// $url1 = explode('/', $url);
	// $dem = count($url1);
	// $dem1 = $dem-1;
	// $bien = $url1[$dem1];
	// if($dem>=3){ if($rowgf['slug']==$bien){ echo 'class="acti_sanpham"'; } }else{}

	$datetime = $date->vnFull($row['created_time']); 
    $datetime0 = explode(',', $datetime);
    $datetime1 = $datetime0[1];
    $datetime2 = explode('/', $datetime1);
    $ngay = $datetime2[0];
    $thang = $datetime2[1];
    $nam = $datetime2[2];
?>
<div class="container-fluid fluid_list_new">
	<div class="xeoduoiimg xeoduoiimg_lienhe">
	    <img src="<?php echo HOME_URL;?>/images/xeo1.png">
	</div>
	<div class="container nernew_list">
		<div class="dmuc_new">
			<ul>
				<li <?php if($id_menu==0) echo 'class="acti_new"';?>><a a_href="-100"><?php echo $tcda;?></a></li>
				<?php
					$i=0;
		            $db->table = "article_menu";
		            $db->condition = "is_active = 1 and category_id = 10";
		            $db->order = "created_time ASC";
		            $db->limit = "";
		            $rowg = $db->select();
		            foreach ($rowg as $rowgf) {
		            	$i++;
		        ?>
				<li <?php if($id_menu==$rowgf['article_menu_id']) echo 'class="acti_new"';?>><a a_href="<?= $rowgf['article_menu_id'];?>"><?= $rowgf['name'];?></a></li>
				<?php } ?>
			</ul>
		</div>
		<div class="tongnew_list">
		    <div class="row list_newp">
		    	<?php 
		    		$loc = array();
		    		$i = 0;
		    		$db->table = "article_menu";
		            $db->condition = "is_active = 1 and category_id = 10";
		            $db->order = "created_time ASC";
		            $db->limit = "";
		            $rowg = $db->select();
		            foreach ($rowg as $rowp) {
		            	$loc[$i] = $rowp['article_menu_id'];
		            	$i++;
		            }
		            $loc = implode(',', $loc); 
	    			$db->table = "article";
	    			if($id_menu==0){
			    		$db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
			    	}else{
			    		$db->condition = "is_active = 1 AND article_menu_id =".$id_menu;
			    	}
		    		$db->order = "created_time DESC";
		    		$db->limit = "";
		    		$rows = $db->select();
					$total = $db->RowCount;
					if($total > 0){
						$slug_submenu = "";
					    $parent = false; 
					    $total_pages = 0;
					    $per_page = 6;
					    if($total%$per_page==0) $total_pages = $total/$per_page;
					    else $total_pages = floor($total/$per_page)+1;
					    if($page<=0) $page=1;
					    $start=($page-1)*$per_page;

			    		$db->table = "article";
			    		if($id_menu==0){
				    		$db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
				    	}else{
				    		$db->condition = "is_active = 1 AND article_menu_id =".$id_menu;
				    	}
			    		$db->order = "created_time DESC";
			    		$db->limit = $start.','.$per_page;
			    		$rows = $db->select();
	                    $sp = $db->RowCount;
			    		foreach ($rows as $keyt) {
		    	?>
			      	<div class="col-md-4 col-sm-4 col-xs-4 item_newlist">
						<div class="trumvh_pdv">
							<div class="img_vanhoapdv">
								<a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>">
									<?php if($keyt['img']=="" || $keyt['img']=="no"){ ?>
										<img src="<?php echo HOME_URL;?>/images/360x260.png">
									<?php }else{ ?>
										<img src="<?php echo HOME_URL;?>/uploads/article/360x260<?php echo $keyt['img'];?>">
									<?php } ?>
								</a>
							</div>
							<div class="content_vanhoa">
								<p class="namevh_list"><a href="<?php echo HOME_URL_LANG;?>/<?php echo $keyt['slug'];?>"><?php echo $stringObj->crop(stripcslashes($keyt['name']), 15);?></a></p>
							</div>
						</div>
					</div>
			    <?php } }showPageNavigation($page, $total_pages,'/'.$slug_cat.'/'.$slug_submenu.'?p='); ?>
		    </div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $('.dmuc_new ul li a').click(function(){
        var idhoa = $(this).attr('a_href');
        $('.dmuc_new ul li').removeClass('acti_new');
        $(this).parent().addClass('acti_new');
        $.ajax({
            url:'/action.php',
            type: 'POST',
            data: 'url=pro&id='+idhoa+'&lang=<?php echo $_SESSION["language"];?>',
            dataType: "html",
            success: function(data){
                $('.tongnew_list').html(data);
            }
        }); 
        return false;
    })
</script>