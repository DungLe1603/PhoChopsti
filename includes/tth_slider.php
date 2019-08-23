<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
$stringObj = new String();
?>
<div id="wowslider-container1">
    <div class="ws_images">
        <ul>
            <?php
                $db->table = "gallery";
                $db->condition = "is_active = 1 AND gallery_menu_id = 112";
                $db->order = "created_time desc";
                $db->limit = "";
                $rowsl = $db->select();
                foreach ($rowsl as $rowl){
            ?>
                <li>
                    <img src="<?php echo HOME_URL?>/uploads/gallery/full_<?= $rowl['img'] ?>" alt="" title="" id="wows1_0"/>
                    <div class="in_slider">
                        <p class="name_imgslider"><?php echo $rowl['name'];?></p>
                        <p class="pre_imgslider"><?php echo $rowl['comment'];?></p>
                        <p class="xem_links"><a href="<?php echo $rowl['link'];?>">Xem thêm</a></p>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </div>
    <div class="ws_bullets">
        <div>
            <?php
                $i = 0;
                $db->table = "gallery";
                $db->condition = "is_active = 1 AND gallery_menu_id = 112";
                $db->order = "created_time desc";
                $db->limit = "";
                $rowsl1 = $db->select();
                foreach ($rowsl1 as $rowl1){
                    $i++;
            ?>
                <a href="#" title=""><span><img src="<?php echo HOME_URL?>/uploads/gallery/117x48<?= $rowl1['img'] ?>" alt=""/><?php echo $i;?></span></a>
            <?php } ?>
        </div>
    </div>
</div>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/wow/wowslider.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/wow/script.js"></script>
