<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$category_id = 0;
$article_menu_id = isset($_GET['id']) ? $_GET['id']+0 : $article_menu_id+0;
$db->table = "article_menu";
$db->condition = "`article_menu_id` = $article_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Mục không tồn tại.","?".TTH_PATH."=article_manager");
$category_id = 0;
foreach($rows as $row) {
	$category_id = $row['category_id'];
}
?>
<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=article_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=article_manager"><i class="fa fa-newspaper-o"></i> Bài viết</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=article_list&id=<?php echo $article_menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenuArt($article_menu_id)?></a>
		</li>
		<li>
			<i class="fa fa-plus-square-o"></i> Thêm bài viết
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "article.php");
if(empty($typeFunc)) $typeFunc = "no";

$date = new DateClass();

$OK = false;
$error = '';
if($typeFunc=='add'){
	//-----
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tiêu đề bài viết.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'article';
		$file_size = $_FILES['img']['size'];

		if($file_size>0) {
			$imgUp = new Upload($_FILES['img']);
			$imgUp->file_max_size = $file_max_size;
			if ($imgUp->uploaded) {
				$handleUploadImg = true;
				$OK = true;
			}
			else {
				$error = '<span class="show-error">Lỗi tải hình: '.$imgUp->error.'</span>';
                $OK = false;
			}
		}
		else {
			$handleUploadImg = false;
			$OK = true;
		}

		if($OK) {
			$id_query = 0;
			$db->table = "article";
			$data = array(
				'article_menu_id'=>$article_menu_id+0,
				'name'=>$db->clearText($name),
				'slug'=>$db->clearText($slug),
				'title'=>$db->clearText($title),
				'description'=>$db->clearText($description),
				'keywords'=>$db->clearText($keywords),
				'img_note'=>$db->clearText($img_note),
				'upload_id'=>$upload_img_id+0,
				'comment'=>$db->clearText($comment),
				'content'=>$db->clearText($content),
				'linhvuc'=>$db->clearText($linhvuc),
				'tamnhin'=>$db->clearText($tamnhin),
				'thanhtich'=>$db->clearText($thanhtich),
				'doitac'=>$db->clearText($doitac),
				'link'=>$db->clearText($link),
				'is_active'=>$is_active+0,
				'hot'=>$hot+0,
				'created_time'=>strtotime($date->dmYtoYmd($created_time)),
				'modified_time'=>time(),
				'user_id'=>$_SESSION["user_id"],
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
			$slug = updateLinkSEO($slug, $category_id, $article_menu_id, $id_query);
			// Update Slug
			$db->table = "article";
			$data = array(
				'slug'=>$db->clearText($slug)
			);
			$db->condition = "`article_id` = $id_query";
			$db->update($data);

			if($handleUploadImg) {
				$stringObj = new String();
				$name_image = $stringObj->getSlug(substr($name, 0, 100) . '-' . time());

				$imgUp->file_new_name_body      = 'full_' . $name_image;
				$imgUp->Process($dir_dest);

				$imgUp->file_new_name_body    = $name_image;
				$imgUp->image_resize          = false;
				$imgUp->image_ratio_crop      = false;
				$imgUp->image_x               = 490;
				$imgUp->image_y               = 256;
				$imgUp->Process($dir_dest);

				if($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "article";
					$data = array(
						'img'=>$db->clearText($name_img)
					);
					$db->condition = "article_id = ".$id_query;
					$db->update($data);
				}
                else {
                    loadPageAdmin("Lỗi tải hình: ".$imgUp->error, "?".TTH_PATH."=article_list&id=".$article_menu_id);
                }
               
                	if($category_id==2){
               			$imgUp->file_new_name_body    = '215x215'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_crop      = true;
						$imgUp->image_y               = 215;
						$imgUp->image_x               = 215;
						$imgUp->Process($dir_dest);

						$imgUp->file_new_name_body    = '360x265'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_crop      = true;
						$imgUp->image_y               = 265;
						$imgUp->image_x               = 360;
						$imgUp->Process($dir_dest);
               		}
               		elseif($category_id==3){
               			$imgUp->file_new_name_body    = '360x269'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_crop      = true;
						$imgUp->image_y               = 269;
						$imgUp->image_x               = 360;
						$imgUp->Process($dir_dest);
               		}
               		elseif($category_id==6){
               			$imgUp->file_new_name_body    = '55x55'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_fill      = true;
						$imgUp->image_y               = 55;
						$imgUp->image_x               = 55;
						$imgUp->Process($dir_dest);
               		}
               		elseif($category_id==1){
               			$imgUp->file_new_name_body    = '66x63'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_fill      = true;
						$imgUp->image_y               = 63;
						$imgUp->image_x               = 66;
						$imgUp->Process($dir_dest);

						$imgUp->file_new_name_body    = '136x136'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_fill      = true;
						$imgUp->image_y               = 136;
						$imgUp->image_x               = 136;
						$imgUp->Process($dir_dest);

						$imgUp->file_new_name_body    = '116x116'. $name_image;
						$imgUp->image_resize          = true;
						$imgUp->image_ratio_fill      = true;
						$imgUp->image_y               = 116;
						$imgUp->image_x               = 116;
						$imgUp->Process($dir_dest);
               		}
				
					$imgUp-> Clean();
			}

			$db->table = "uploads_tmp";
			$data = array(
					'status'=>1
			);
			$db->condition = "`upload_id` = ".($upload_img_id+0);
			$db->update($data);

			loadPageSucces("Đã thêm bài viết thành công.","?".TTH_PATH."=article_list&id=".$article_menu_id);
			$OK = true;
		}
	}
}
else {
	$upload_img_id  = 0;
	if($upload_img_id==0) {
		$db->table = "uploads_tmp";
		$data = array(
				'created_time'=>time()
		);
		$db->insert($data);
		$upload_img_id = $db->LastInsertID;
	}
	$name			= "";
	$slug           = "";
	$title			= "";
	$description	= "";
	$keywords		= "";
	$img            = "";
	$img_note       = "";
	$comment        = "";
	$content        = "";
	$linhvuc        = "";
	$tamnhin        = "";
	$thanhtich      = "";
	$doitac         = "";
	$link    		= "";
	$is_active		= 1;
	$hot			= 0;
	$created_time   = $date->vnDateTime(time());
}
if(!$OK) article("?".TTH_PATH."=article_add", "add", 0, $article_menu_id, $name, $slug, $title, $description, $keywords, $img, $img_note, $comment, $content, $is_active, $hot, $created_time, $upload_img_id, $error, $link, $linhvuc, $tamnhin, $thanhtich, $doitac);