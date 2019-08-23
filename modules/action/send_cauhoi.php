<?php
	$txtName = $_POST['name'];
	$time_now = time();
	if($txtName==""){
		echo $vlnch;
	}else{
		$db->table = "article";
		$data = array(
			'name'=>$db->clearText($txtName),
			'article_menu_id'=>638,
			'is_active'=>0,
			'created_time'=>$time_now
		); 
		$db->insert($data);
		echo $gchtc;
	}
?>