<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
$stringObj = new String();
?>
<div class="row slide-page bg-color">
    <div class="col-xs-8 col-sm-8 col-md-8">
        <?php
            $db->table = "gallery";
            $db->condition = "is_active = 1 AND gallery_menu_id = 2";
            $db->order = "created_time desc";
            $db->limit = "1";
            $rowsl = $db->select();
            foreach ($rowsl as $data) {
        ?>                     
            <img src="<?php echo HOME_URL?>/uploads/gallery/<?= $data['img'] ?>" height="500px" width="100%" alt="Slide image"/>
        <?php } ?>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4">
        <div class="welcome">
            <p class="app-name">Pho chopsti</p>
            <p class="category-name"><?php echo getNameCategory(1);?><p>
        </div>
    </div>
</div>
