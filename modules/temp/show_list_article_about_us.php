<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 9";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown = $db->select();
    foreach ($rown as $keyn){
?>
<div class="container nerabout padmar" id="<?php echo $keyn['slug'];?>">
    <div class="row">
        <div class="col-sx-6 col-sm-6 col-md-6">            
            <div class=intro-item>
                <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_id = 1329";
                $db->order = "created_time DESC";
                $db->limit = "1";
                $rop = $db->select();
                foreach ($rop as $row) {
            ?>
                <h5 class="intro-item-title"><?php echo $row['name'];?></h5>
                <p class="intro-item-centent"><?php echo $row['content'];?></p>
            <?php } ?>
            </div>
            <div class=intro-item>
                <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_id = 1330";
                $db->order = "created_time DESC";
                $db->limit = "1";
                $rop = $db->select();
                foreach ($rop as $row) {
            ?>
                <h5 class="intro-item-title"><?php echo $row['name'];?></h5>
                <p class="intro-item-centent"><?php echo $row['content'];?></p>
            <?php } ?>
            </div>
        </div>
        <div class="col-sx-6 col-sm-6 col-md-6">
            <div>
                <?php 
                    $db->table = "article_menu";
                    $db->condition = "is_active = 1 AND article_menu_id = 9";
                    $db->order = "";
                    $db->limit = "1";
                    $rop = $db->select();
                    foreach ($rop as $row) {
                ?>
                    <img class="intro-img" src="<?php echo HOME_URL?>/uploads/article_menu/360x240<?= $row['img'] ?>" alt="Slide image"/>
                <?php } ?>
            </div>
            <div class=intro-item>
                <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_id = 1331";
                $db->order = "created_time DESC";
                $db->limit = "1";
                $rop = $db->select();
                foreach ($rop as $row) {
            ?>
                <h5 class="intro-item-title"><?php echo $row['name'];?></h5>
                <p class="intro-item-centent"><?php echo $row['content'];?></p>
            <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php } ?>
