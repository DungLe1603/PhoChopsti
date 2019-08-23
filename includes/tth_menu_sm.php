<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$stringObj = new String();
?>
<nav id="menu">
	<ul>
		<li style="visibility: visible; animation-name: flipInX;margin: 0;" class="<?php if($slug_cat=='home') echo 'active'; ?>">
            <a style="overflow: initial;" href="<?php echo HOME_URL_LANG; ?>" title="">
                <span><?= $lgTxt_menu_home?></span>
            </a>
        </li> 
        <?php
        $db->table = "category";
        $db->condition = "`is_active` = 1";
        $db->order = "  sort_hide ASC";
        $db->limit = "4";
        $rows = $db->select();
        $count = 0;
        foreach($rows as $row){
            $count++;
            $speed = 0.2 * $count;
            ?>
            <li class="<?php if($slug_cat==$row['slug']) echo 'active'; ?>">
              <a href="<?php echo HOME_URL_LANG . '/' . $row['slug'];?>" title="">
                 <span><?php echo stripslashes($row['name']); ?><?php if($db->RowCount > 0){?>&nbsp;&nbsp;<img src="<?php echo HOME_URL;?>/images/xuong.svg" class="imgxuong"><?php } ?></span>
             </a>
            <?php
            if($row['category_id']==1){
                $db->table = "article_menu";
                $db->condition = "is_active = 1 and parent = 0 AND hot = 1 and category_id = ".($row['category_id']+0);
                $db->order = "sort ASC";
                $db->limit = "";
                $rows2 = $db->select();
                if($db->RowCount>1) {
                    echo '<ul>';
                    foreach($rows2 as $row2){
                        ?>
                        <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row2['article_menu_id']) echo 'class="active"'; ?> >
                            <a href="<?php echo HOME_URL;?>/gioi-thieu/#<?php echo $row2['slug']; ?>" class="<?php if($url2 == $row2['slug']) echo 'activeve';else{}?>"><?php echo stripslashes($row2['name']); ?></a></li>
                        <?php
                    }
                    echo '</ul>';
                }
            }elseif($row['category_id']==4){
                $db->table = "article_menu";
                $db->condition = "is_active = 1 and parent = 0 and category_id = ".($row['category_id']+0);
                $db->order = "sort ASC";
                $db->limit = "";
                $rows2 = $db->select();
                if($db->RowCount>1) {
                    echo '<ul>';
                    foreach($rows2 as $row2){
                        ?>
                        <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row2['article_menu_id']) echo 'class="active"'; ?> >
                            <a href="<?php echo HOME_URL;?>/lien-he/#<?php echo $row2['slug']; ?>" class="<?php if($url2 == $row2['slug']) echo 'activeve';else{}?>"><?php echo stripslashes($row2['name']); ?></a></li>
                        <?php
                    }
                    echo '</ul>';
                }
            }elseif($row['type_id']+0 == 1){
                $db->table = "article_menu";
                $db->condition = "is_active = 1 and parent = 0 and category_id = ".($row['category_id']+0);
                $db->order = "sort ASC";
                $db->limit = "";
                $rows2 = $db->select();
                if($db->RowCount>1) {
                    echo '<ul>';
                    foreach($rows2 as $row2){
                        ?>
                        <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row2['article_menu_id']) echo 'class="active"'; ?> >
                            <a href="<?php echo HOME_URL_LANG . '/' . $row2['slug']; ?>" title="" class="<?php if($url2 == $row2['slug']) echo 'activeve';else{}?>"><?php echo stripslashes($row2['name']); ?></a>
                            <?php
                            $db->table = "article_menu";
                            $db->condition = "is_active = 1 and parent = ".($row2['article_menu_id']+0)." and category_id = ".($row['category_id']+0);
                            $db->order = "sort ASC";
                            $db->limit = "";
                            $rows3 = $db->select();
                            if($db->RowCount>0) {
                                echo '<ul>';
                                foreach($rows3 as $row3){
                                    ?>
                                    <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row3['article_menu_id']) echo 'class="active"'; ?> >
                                        <a href="<?php echo HOME_URL_LANG . '/' .  $row3['slug']; ?>" title=""><?php echo stripslashes($row3['name']); ?></a>
                                    </li>
                                    <?php
                                }
                                echo '</ul>';
                            }
                            ?>
                        </li>
                        <?php
                    }
                    echo '</ul>';
                }
            } else if($row['type_id']+0 == 2) {
                $db->table = "gallery_menu";
                $db->condition = "is_active = 1 and parent = 0 and category_id = ".($row['category_id']+0);
                $db->order = "sort ASC";
                $db->limit = "";
                $rows2 = $db->select();
                if($db->RowCount>1) {
                    echo '<ul>';
                    foreach($rows2 as $row2){
                        ?>
                        <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row2['gallery_menu_id']) echo 'class="active"'; ?> >
                            <a href="<?php echo HOME_URL_LANG . '/' . $row2['slug']; ?>" title="" class="<?php if($url2 == $row2['slug']) echo 'activeve';else{}?>"><?php echo stripslashes($row2['name']); ?></a>
                            <?php
                            $db->table = "gallery_menu";
                            $db->condition = "is_active = 1 and parent = ".($row2['gallery_menu_id']+0)." and category_id = ".($row['category_id']+0);
                            $db->order = "sort ASC";
                            $db->limit = "";
                            $rows3 = $db->select();
                            if($db->RowCount>0) {
                                echo '<ul>';
                                foreach($rows3 as $row3){
                                    ?>
                                    <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row3['gallery_menu_id']) echo 'class="active"'; ?> >
                                        <a href="<?php echo HOME_URL_LANG . '/' .  $row3['slug']; ?>" title=""><?php echo stripslashes($row3['name']); ?></a>
                                    </li>
                                    <?php
                                }
                                echo '</ul>';
                            }
                            ?>
                        </li>
                        <?php
                    }
                    echo '</ul>';
                }
            }else if($row['type_id']+0 == 6) {
                $db->table = "product_menu";
                $db->condition = "is_active = 1 and parent = 0 and category_id = ".($row['category_id']+0);
                $db->order = "sort ASC";
                $db->limit = "";
                $rows2 = $db->select();
                if($db->RowCount>1) {
                    echo '<ul class="menucap3">';
                    foreach($rows2 as $row2){
                        ?>
                        <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row2['product_menu_id']) echo 'class="active"'; ?> >
                            <a href="<?php echo HOME_URL_LANG . '/' . $row2['slug']; ?>" title="" class="<?php if($url2 == $row2['slug']) echo 'activeve';else{}?>"><?php echo stripslashes($row2['name']); ?></a>
                            <?php
                            $db->table = "product_menu";
                            $db->condition = "is_active = 1 and parent = ".($row2['product_menu_id']+0)." and category_id = ".($row['category_id']+0);
                            $db->order = "sort ASC";
                            $db->limit = "";
                            $rows3 = $db->select();
                            if($db->RowCount>0) {
                                echo '<ul>';
                                foreach($rows3 as $row3){
                                    ?>
                                    <li  <?php if($slug_cat==$row['slug'] && $id_menu==$row3['product_menu_id']) echo 'class="active"'; ?> >
                                        <a href="<?php echo HOME_URL_LANG . '/' .  $row3['slug']; ?>" title="" class=""><?php echo stripslashes($row3['name']); ?></a>
                                    </li>
                                    <?php
                                }
                                echo '</ul>';
                            }
                            ?>
                        </li>
                        <?php
                    }
                    echo '</ul>';
                }
            }else {}
            ?>
        </li>
        <?php }
        $speed = 0.2 * ($count+1);
        ?>
		<li class="langmobile">
			<a href="<?php echo HOME_URL;?>/vi" class="<?php if($_SESSION['language']=='vi') echo 'menumbile';?>">
				<span>VI</span>
			</a>
			<a href="<?php echo HOME_URL;?>/en" class="<?php if($_SESSION['language']=='en') echo 'menumbile';?>">
				<span>EN</span>
			</a>
		</li>
		<!-- <li <?php if($slug_cat=='lien-he') echo 'class="active"'; ?>>
			<a class="hvr-from-center" href="<?php echo HOME_URL_LANG . '/' . $lgTxt_slug_contact; ?>" title="<?php echo $lgTxt_menu_contact; ?>" >
				<span><?php echo $lgTxt_menu_contact; ?></span>
			</a>
		</li> -->
	</ul>
	
</nav>
<script type="text/javascript">
	$(function() {
		$('nav#menu').mmenu({
			extensions	: [ 'effect-slide-menu', 'pageshadow' ],
			searchfield	: true,
			counters	: false,
			dividers	: {
				fixed 	: true
			},
			navbar 		: {
				title	: "GOOD MATH"
			},
			offCanvas   : {
				position: "right"
			},
			navbars 	: [
				{
					position	: 'top',
					content		: [ 'searchfield' ]
				}, {
					position	: 'top',
					content		: [
						'prev',
						'title',
						'close'
					]
				}, {
					"position": "bottom",
					"content": [
						<?php
						if(getConstant('link_facebook')!="") echo '\'<a class="facebook fab fa-facebook-f" target="_blank" href="' . getConstant('link_facebook') .'" title="Facebook"></a>\',';
						if(getConstant('link_youtube')!="") echo '\'<a class="youtube fab fa-youtube" target="_blank" href="' . getConstant('link_youtube') .'" title="Youtube"></a>\',';
						if(getConstant('link_twitter')!="") echo '\'<a class="twitter fab fa-twitter" target="_blank" href="' . getConstant('link_twitter') .'" title="Twitter"></a>\',';
						if(getConstant('link_instagram')!="") echo '\'<a class="instagram fab fa-instagram" target="_blank" href="' . getConstant('link_instagram') .'" title="Instagram"></a>\',';
						?>
					]
				}
			]
		});
	});
</script>