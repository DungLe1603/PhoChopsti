<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//------------------------------------------
$url = $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; 
$url1 = explode('/', $url);
$url3 = count($url1);
$bien = $url3 - 1;
    $url2 = $url1[$bien];
?> 
<section id="tongquattc">
    <header class="header">
            <div class="container tonghedaer">
                <div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="">
                            <p><a href="<?= HOME_URL_LANG;?>"><img src="<?php echo HOME_URL;?>/images/logo.svg"></a></p>
                        </div>
					</div>
                    <div class="col-xs-5 col-sm-5 col-md-5 tongheadhed">
                        <nav class="navigation" role="navigation">
                            <ul class="menucll">
                                <li style="visibility: visible; animation-name: flipInX;margin: 0;" class="<?php if($slug_cat=='home') echo 'active'; ?>">
                                    <a style="overflow: initial;" href="<?php echo HOME_URL_LANG; ?>" title="">
                                        <span><?= $lgTxt_menu_home?></span>
                                    </a>
                                </li>
                                <?php
                                    $db->table = "category";
                                    $db->condition = "`is_active` = 1";
                                    $db->order = "  sort_hide ASC";
                                    $db->limit = "5";
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
                                <!-- <li style="visibility: visible; animation-name: flipInX;margin: 0;" class="<?php if($slug_cat=='lien-he') echo 'active'; ?>">
                                    <a style="overflow: initial;" href="<?php echo HOME_URL_LANG; ?>/lien-he" title="">
                                        <span><?php echo $lgTxt_menu_contact;?></span>
                                    </a>
                                </li> -->
                            </ul>
                        </nav>
                    </div>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class="tkiemhead">
                            <form method="get" action="<?php echo HOME_URL_LANG?>/search">
                                <input type="text" name="k" autocomplete="off" placeholder="<?php echo $lgTxt_title_search;?>" class="inputnhap"/>
                                <input type="submit" name="" value="" class="nuttk">
                            </form>
                        </div>
					</div>
                </div>
            </div>
        <script type="text/javascript">
            $(window).scroll(function () {
                if ($(window).scrollTop() > 150 ) {
                    if($('.fluidtonghead').hasClass('active_mns fadeInDown')){
                    
                    }else{
                        $('.fluidtonghead').addClass('active_mns fadeInDown')
                    }
                }else{
                    if($('.fluidtonghead').hasClass('active_mns fadeInDown')){
                        $('.fluidtonghead').removeClass('active_mns fadeInDown') 
                    }
                }
            })
        </script>
    </header>
</section>