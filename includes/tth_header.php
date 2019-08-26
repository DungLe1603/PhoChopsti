<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//------------------------------------------
$url = $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; 
$url1 = explode('/', $url);
$url3 = count($url1);
$bien = $url3 - 1;
    $url2 = $url1[$bien];
?> 
<section id="tongquattc">
    <header class="header">
            <div class="container tonghedaer">
                <div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="">
                            <p><a href="<?= HOME_URL_LANG;?>"><img src="<?php echo HOME_URL;?>/images/logo.svg"></a></p>
                        </div>
					</div>
                    <div class="col-xs-5 col-sm-5 col-md-5 tongheadhed">
                        <nav class="navigation" role="navigation">
                            <ul class="menucll">
                                <li style="visibility: visible; animation-name: flipInX;margin: 0;" class="<?php if($slug_cat=='home') echo 'active'; ?>">
                                    <a style="overflow: initial;" href="<?php echo HOME_URL_LANG; ?>" title="">
                                        <span><?= $lgTxt_menu_home?></span>
                                    </a>
                                </li>
                                <?php
                                    $db->table = "category";
                                    $db->condition = "`is_active` = 1";
                                    $db->order = "  sort_hide ASC";
                                    $db->limit = "5";
                                    $rows = $db->select();
                                    $count = 0;
                                    foreach($rows as $row){
                                    $count++;
                                    $speed = 0.2 * $count;
                                ?>
                                    <li class="<?php if($slug_cat==$row['slug']) echo 'active'; ?>">
                                      <a href="<?php echo HOME_URL_LANG . '/' . $row['slug'];?>" title="">
                                         <span><?php echo stripslashes($row['name']); ?></span>
                                     </a>
                                    </li>
                                <?php }
                                $speed = 0.2 * ($count+1);
                                ?>
                                <!-- <li style="visibility: visible; animation-name: flipInX;margin: 0;" class="<?php if($slug_cat=='lien-he') echo 'active'; ?>">
                                    <a style="overflow: initial;" href="<?php echo HOME_URL_LANG; ?>/lien-he" title="">
                                        <span><?php echo $lgTxt_menu_contact;?></span>
                                    </a>
                                </li> -->
                            </ul>
                        </nav>
                    </div>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class="tkiemhead">
                            <form method="get" action="<?php echo HOME_URL_LANG?>/search">
                                <input type="text" name="k" autocomplete="off" placeholder="<?php echo $lgTxt_title_search;?>" class="inputnhap"/>
                                <input type="submit" name="" value="" class="nuttk">
                            </form>
                        </div>
					</div>
                </div>
            </div>
        <script type="text/javascript">
            $(window).scroll(function () {
                if ($(window).scrollTop() > 150 ) {
                    if($('.fluidtonghead').hasClass('active_mns fadeInDown')){
                    
                    }else{
                        $('.fluidtonghead').addClass('active_mns fadeInDown')
                    }
                }else{
                    if($('.fluidtonghead').hasClass('active_mns fadeInDown')){
                        $('.fluidtonghead').removeClass('active_mns fadeInDown') 
                    }
                }
            })
        </script>
    </header>
</section>