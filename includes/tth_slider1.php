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
                $db->condition = "is_active = 1 AND gallery_menu_id = 114";
                $db->order = "created_time desc";
                $db->limit = "";
                $rowsl = $db->select();
                foreach ($rowsl as $rowl){
            ?>
                <li>
                    <img src="<?php echo HOME_URL?>/uploads/gallery/full_<?= $rowl['img'] ?>" alt="" title="" id="wows1_0"/>
                    <div class="abslider">
                        <?php
                            $db->table = "category";
                            $db->condition = "is_active = 1 AND slug = '".$slug_cat."'";
                            $db->order = "";
                            $db->limit = "";
                            $rowsl1 = $db->select();
                            foreach ($rowsl1 as $rowl1){
                        ?>
                            <p class="slugcatname"><?php echo $rowl1['name'];?></p>
                            <p class="dreamctent">
                                <a href="<?php echo HOME_URL_LANG;?>"><i class="fa fa-home" aria-hidden="true"></i></a>
                                <a href="<?php echo HOME_URL_LANG;?>/<?php echo $slug_cat;?>">&nbsp;&nbsp;|&nbsp;&nbsp;<?php echo $rowl1['name'];?></a>
                            </p>
                        <?php } ?>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </div>
</div>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/wow/wowslider.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/wow/script.js"></script>
