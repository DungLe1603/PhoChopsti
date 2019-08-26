<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//--
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="language" content="<?php echo TTH_LANGUAGE;?>">
<meta http-equiv="Refresh" content="1800">
<title><?php echo getTitle(); ?></title>
<meta name="description" content="<?php echo getDescription(); ?>">
<meta name="keywords" content="<?php echo getKeywords(); ?>">
<meta property="og:title" content="<?php echo getTitle(); ?>">
<meta property="og:type" content="webpage">
<meta property="og:description" content="<?php echo getDescription(); ?>">
<meta property="og:site_name" content="<?php echo getConstant('meta_site_name'); ?>">
<meta property="og:image" itemprop="thumbnailUrl" content="<?php echo getOgImage($slug_cat, $id_menu, $id_article);?>">
<meta property="og:url" content="<?php echo site_url(); ?>">
<?php if(getConstant('fb_app_id')!='') echo '<meta property="fb:app_id" content="' . getConstant('fb_app_id') . '">
'; ?>
<?php if(getConstant('article_author')!='') echo '<meta property="article:author" content="' . getConstant('article_author') . '">
'; ?>
<?php if(getConstant('author_google')!='') echo '<link rel="author" href="https://plus.google.com/u/0/' . getConstant('author_google') . '">
'; ?>
<meta name="copyright" content="<?php echo getConstant('meta_copyright'); ?>">
<meta name="author" itemprop="author" content="<?php echo getConstant('meta_author'); ?>">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="robots" content="index, archive, follow, noodp">
<meta name="googlebot" content="index, archive, follow, noodp">
<meta name="msnbot" content="all, index, follow">
<meta name="revisit-after" content="1 days">
<meta name="rating" content="general">
<link rel="shortcut icon" href="<?php echo HOME_URL; ?>/favicon.ico" type="image/x-icon">
<link rel="icon" href="<?php echo HOME_URL; ?>/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="<?php echo HOME_URL; ?>/css/stylesheet.php" type="text/css" media="all">

<?php if($slug_cat=="home"){?>
	<link rel="stylesheet" href="<?php echo HOME_URL; ?>/css/wow/style.css" type="text/css" media="all">
<?php }else{ ?>
	<link rel="stylesheet" href="<?php echo HOME_URL; ?>/css/wow/style1.css" type="text/css" media="all">
<?php } ?>
<link rel="stylesheet" href="<?php echo HOME_URL; ?>/js/full_bao/fullcalendar.css" type="text/css" media="all">
<link rel="stylesheet" href="<?php echo HOME_URL; ?>/js/fancybox/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen">
<link rel="stylesheet" href="<?php echo HOME_URL; ?>/js/fancybox/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen">
<link rel="stylesheet" href="<?php echo HOME_URL; ?>/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen">

<link rel="stylesheet" href="<?php echo HOME_URL;?>/js/owlcarousel2/assets/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo HOME_URL;?>/js/owlcarousel2/assets/owlcarousel/assets/owl.theme.default.min.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL;?>/js/jquery.calendar/jquery.datetimepicker.css"/>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,700,700i&display=swap" rel="stylesheet">
