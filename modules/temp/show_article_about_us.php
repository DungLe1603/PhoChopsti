<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 642";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown = $db->select();
    foreach ($rown as $keyn){
?>
<div class="container nerabout padmar" id="<?php echo $keyn['slug'];?>">
    <?php 
        $db->table = "article";
        $db->condition = "is_active = 1 AND article_menu_id = 642";
        $db->order = "created_time DESC";
        $db->limit = "1";
        $rop = $db->select();
        foreach ($rop as $row) {
    ?>
        <div class="trgthieu">
            <div class="row">
                <?php 
                    $db->table = "article";
                    $db->condition = "is_active = 1 AND article_menu_id = 642";
                    $db->order = "created_time DESC";
                    $db->limit = "1";
                    $rowpkf = $db->select();
                    foreach ($rowpkf as $rowpk) {
                        echo $rowpk['content'];
                    } 
                ?>
            </div>
        </div>
    <?php } ?>
</div>
<?php } ?>
<div class="container-fluid fluidgtlt">
    <div class="container nertkedm">
        <div class="row">
            <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_menu_id = 654";
                $db->order = "created_time DESC";
                $db->limit = "4";
                $rosp = $db->select();
                foreach ($rosp as $rowp) {
            ?>
                <div class="col-md-3 col-sm-3 col-xs-3 itemthongke">
                    <div class="trthkeitem">
                        <img src="<?php echo HOME_URL;?>/uploads/article/66x63<?php echo $rowp['img'];?>">
                        <p class="cmenttke"><?php echo $rowp['comment'];?></p>
                        <p class="nametke"><?php echo $rowp['name'];?></p>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 643";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown1 = $db->select();
    foreach ($rown1 as $keyn1){
?>
<div class="container nergday padmar" id="<?php echo $keyn1['slug'];?>">
    <div class="trnergday">
        <h4><?php echo getNameArticlemenu(643);?></h4>
        <div class="row">
            <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_menu_id = 643";
                $db->order = "created_time DESC";
                $db->limit = "";
                $rosp1 = $db->select();
                foreach ($rosp1 as $rowp1) {
            ?>
                <div class="col-md-3 col-sm-3 col-xs-3 itemgday">
                    <div class="trgiangday">
                        <img src="<?php echo HOME_URL;?>/uploads/article/136x136<?php echo $rowp1['img'];?>">
                        <p class="namegday"><?php echo $rowp1['name'];?></p>
                        <p class="cmentgday"><?php echo $rowp1['comment'];?></p>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php } ?>
<?php 
    $db->table = "article_menu";
    $db->condition = "is_active = 1 and article_menu_id = 644";
    $db->order = "sort ASC";
    $db->limit = "";
    $rown2 = $db->select();
    foreach ($rown2 as $keyn2){
?>
<div class="container nerctdoitac padmar" id="<?php echo $keyn2['slug'];?>">
    <div class="trchuongtrinhdt">
        <h5><?php echo getNameArticlemenu(644);?></h5>
        <div class="ctent_ctdoitac">
            <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_menu_id = 644";
                $db->order = "created_time DESC";
                $db->limit = "1";
                $rowpkf1 = $db->select();
                foreach ($rowpkf1 as $rowpk1) {
                    echo $rowpk1['content'];
                } 
            ?>
        </div>
        <div class="row">
            <?php 
                $db->table = "article";
                $db->condition = "is_active = 1 AND article_menu_id = 645";
                $db->order = "created_time DESC";
                $db->limit = "";
                $rowlg = $db->select();
                foreach ($rowlg as $rowl) {
            ?>
                <div class="col-md-2 col-sm-2 col-xs-2 itemdtacgt">
                    <div class="trgtdtac">
                        <img src="<?php echo HOME_URL;?>/uploads/article/full_<?php echo $rowl['img'];?>">
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php } ?>
