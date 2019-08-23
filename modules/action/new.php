<?php
    if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
    $date = new DateClass();
    $stringObj = new String();
    $page   = (isset($_GET['p'])) ? $_GET['p'] : 0;
    $id = $_POST['id'];
    if($id==-100){
?>
<div class="row list_newp">
    <?php 
        $loc = array();
        $i = 0;
        $db->table = "article_menu";
        $db->condition = "is_active = 1 and category_id = 135";
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
            $per_page = 6;
            if($total%$per_page==0) $total_pages = $total/$per_page;
            else $total_pages = floor($total/$per_page)+1;
            if($page<=0) $page=1;
            $start=($page-1)*$per_page;

            $db->table = "article";
            $db->condition = "is_active = 1 AND article_menu_id IN (".$loc.")";
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
                    <p class="timevh"><i class="far fa-clock"></i>&nbsp;&nbsp;<?php echo date('d/m/Y', $keyt['created_time']);?></p>
                    <!-- <p class="prevhoa_list"><?php echo $stringObj->crop(stripcslashes($keyt['comment']), 50);?></p> -->
                </div>
            </div>
        </div>
    <?php } }showPageNavigation($page, $total_pages,'/'.$slug_cat.'/'.$slug_submenu.'?p='); ?>
</div>
<?php }else{ ?>
<div class="row list_newp">
    <?php
            $db->table = "article";
            $db->condition = "is_active = 1 AND article_menu_id = ".$id;
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
            $db->condition = "is_active = 1 AND article_menu_id = ".$id;
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
                    <p class="timevh"><i class="far fa-clock"></i>&nbsp;&nbsp;<?php echo date('d/m/Y', $keyt['created_time']);?></p>
                    <!-- <p class="prevhoa_list"><?php echo $stringObj->crop(stripcslashes($keyt['comment']), 50);?></p> -->
                </div>
            </div>
        </div>
    <?php } showPageNavigation($page, $total_pages,'/'.'tin-tuc'.'/'.$slug_submenu.'?p='); }?>
</div>
<?php } ?>