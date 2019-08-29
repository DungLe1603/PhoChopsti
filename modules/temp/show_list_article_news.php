<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<div class="container nerabout">
	<div class="menu-images">
        <h3 class="home-title text-uppercase"><?php echo getNameCategory(4);?></h3>
        <nav class="">
            <ul class="my-50">
                <li class="block-inline">
                    <a class="view-all-bt bt-link" href="<?php echo HOME_URL_LANG; ?>/<?php echo $rowt['slug'];?>" title="">
                        <span class="text-uppercase">All</span>
                    </a>
                </li>
            <?php
                $i = 0;
                $loc = array();
                $db->table = "article_menu";
                $db->condition = "is_active = 1 AND category_id = 4";
                $db->order = "";
                $db->limit = "";
                $rows1 = $db->select();
                foreach ($rows1 as $row) {
            ?>
                <li class="block-inline">
                    <a class="view-all-bt bt-link" href="<?php echo HOME_URL_LANG;?>/<?php echo $row['slug'];?>"><?php echo $row['name'];?></a>
                </li>
            <?php } ?>
            </ul>
        </nav>
	</div>
    <div class="menu-menu row">
		<?php
			$i = 0;
			$loc = array();
			$db->table = "article_menu";
			$db->condition = "is_active = 1 AND category_id = 4";
			$db->order = "";
			$db->limit = "";
			$rows1 = $db->select();
			foreach ($rows1 as $row1) {
				$loc[$i] = $row1['article_menu_id'];
				$i++;
			}
			$loc = implode(',', $loc);
			$db->table = "article";
			$db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
			$db->order = "created_time DESC";
			$db->limit = "";
			$rowst = $db->select();
			foreach ($rowst as $key => $rowt) {
            ?>                
                <div class="news-list row">
                    <div class="col-sm-6 col-md-6 col-lg-6 <?php if($key % 2 == 1) { echo 'pull-right'; } ?>">
                        <div class="news-img">
                            <img src="<?php echo HOME_URL;?>/uploads/article/<?php echo $rowt['img'];?>" height="360px" width="550px" alt="Image gallery">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-6">
                        <div class="px-20">
                            <a class="news-list-heading" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>"><?php echo $rowt['name'];?></a>
                            <p class="news-time">
                                <i class="calendar-icon"></i>
                                <span class=""><?php echo date('d', $rowt['created_time']);?></span>
                                <span class="">.<?php echo date('m', $rowt['created_time']);?></span>
                                <span class="">.<?php echo date('Y', $rowt['created_time']);?></span>
                            </p>
                            <hr>
                            <div class="news-content">
                                <p><?php echo mysubstr( $rowt['content'], 500)?></p>
                            </div>
                            <div class="view-more">
                                <a class="view-all-bt bt-link full-right" href="<?php echo HOME_URL_LANG;?>/<?php echo $rowt['slug'];?>"><?php echo $view; ?></a>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
    </div>
</div>
