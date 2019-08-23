<?php
    if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
    $date = new DateClass();
    $stringObj = new String();
    $id = $_POST['id'];
?>
<?php 
    $db->table = "article";
    $db->condition = "is_active = 1 and article_menu_id = ".$id;
    $db->order = "created_time DESC";
    $db->limit = "1";
    $rows = $db->select();
    foreach($rows as $row) {
?>
    <div class="cten_dtvh">
        <?php echo $row['content'];?>
    </div>
<?php } ?>