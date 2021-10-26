<?php  
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title><?php echo $core->company;?></title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="theme/<?php echo $core->theme;?>/front/style/style.css"  type="text/css" />
<link rel="stylesheet" href="assets/style/jquery-ui.css" type="text/css" />
<script type="text/javascript">
var SITEURL = "<?php echo $core->site_url; ?>";
var THEME = "<?php echo THEME;?>";
</script>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery-ui.js"></script>
<script src="assets/js/jquery.ui.touch-punch.js"></script>
<script src="assets/js/jquery.wysiwyg.js"></script>
<script src="assets/js/global.js"></script>
<script src="assets/js/nicescroll.js" type="text/javascript" ></script>
<script src="assets/js/modernizr.mq.js" type="text/javascript" ></script>
<script src="assets/js/checkbox.js"></script>
<script src="assets/js/jquery.flexslider-min.js"></script>
<script src="assets/fancybox/jquery.fancybox.pack.js"></script>
<script src="assets/fancybox/helpers/jquery.fancybox-media.js"></script>
<script src="assets/js/countdown.js"></script>
<script src="assets/js/custom.js"></script>
<link rel="stylesheet" type="text/css" href="assets/fancybox/jquery.fancybox.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/style/flexslider.css" media="screen" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="theme/<?php echo $core->theme;?>/front/style/new.css"  type="text/css" />
<script type="text/javascript"> 
// Slider with thumbnail
$(document).ready(function() {
	$('#slider').flexslider({
		animation: "slide",
		controlNav: true,
		autoplay: false,
		directionNav: true,
		animationLoop: true,
		slideshow: true
    });
});
</script>
</head>
<body data-smooth-scrolling="1">
<div id="loader" style="display:none"></div>
<div class="bg">
<div class="container" style="background: #009fda;">
<div class="in-grid">
<!-- Breadcrumbs -->
    <section id="crumbs" class="row crumbs2">
      <div class="col grid_6">
        <a href="index.php"><?php echo ($core->logo) ? '<img src="'.SITEURL.'/uploads/'.$core->logo.'" alt="'.$core->company.'" class="front-logo"/>': $core->company;?></a>
      </div>
	  <div class="col grid_14">
		<ul class="social">
		<?php if($core->social_facebook != ''){ ?>
			<li><a href="<?php echo $core->social_facebook;?>" target="_blank"><i class="fa fa-facebook feature-icon"></i></a></li>
		<?php } if($core->social_twitter != ''){ ?>
			<li><a href="<?php echo $core->social_twitter;?>" target="_blank"><i class="fa fa-twitter feature-icon"></i></a></li>
		<?php } if($core->social_gplus != ''){ ?>
			<li><a href="<?php echo $core->social_gplus;?>" target="_blank"><i class="fa fa-google-plus feature-icon"></i></a></li>
		<?php } if($core->social_pinterest != ''){ ?>
			<li><a href="<?php echo $core->social_pinterest;?>" target="_blank"><i class="fa fa-pinterest feature-icon"></i></a></li>
		<?php } if($core->social_linkedin != ''){ ?>
			<li><a href="<?php echo $core->social_linkedin;?>" target="_blank"><i class="fa fa-linkedin feature-icon"></i></a></li>
		<?php } if($core->social_rss != ''){ ?>
			<li><a href="<?php echo $core->social_rss;?>" target="_blank"><i class="fa fa-rss feature-icon"></i></a></li>
		<?php } ?>
		</ul>
      </div>
	  <div class="col grid_4 header-login">
		<?php if (!$user->logged_in){ ?>
			<a href="index.php#loginbox" class="button-login"><?php echo lang('BTN_LOGIN')?></a><a href="register.php" class="button-register"><?php echo lang('BTN_REGISTER')?></a>
		<?php } else { ?>
			<a href="logout.php" class="button-logout"><?php echo lang('BTN_LOGOUT')?></a>
		<?php }  ?>
      </div>
    </section>
    <!-- Breadcrumbs /-->
	<!-- Header -->
	<header id="header" class="clearfix">
	  <div class="row grid_24 clearfix"> 
		<!-- Main Menu -->
		<nav id="menu" class="nav">
		  <ul>
			<li<?php if($user->pfile() == 'index.php' || $user->pfile() == 'account.php') echo ' class="active"';?>> <a href="index.php"><span><?php echo lang('FMENU_HOME')?></span> </a> </li>
			<li<?php if($user->pfile() == 'courses.php') echo ' class="active"';?>> <a href="courses.php"><span><?php echo lang('FMENU_COURSE')?></span> </a> </li>
			<li<?php if($user->pfile() == 'exams.php') echo ' class="active"';?>> <a href="exams.php"><span><?php echo lang('FMENU_EXAM')?></span> </a> </li>
			<li<?php if($user->pfile() == 'resources.php') echo ' class="active"';?>> <a href="resources.php"><span><?php echo lang('FMENU_RESOURCE')?></span> </a> </li>
			<li<?php if($user->pfile() == 'faqs.php') echo ' class="active"';?>> <a href="faqs.php"><span><?php echo lang('FMENU_FAQ')?></span> </a> </li>
			<li<?php if($user->pfile() == 'contact.php') echo ' class="active"';?>> <a href="contact.php"><span><?php echo lang('FMENU_CONTACT')?></span> </a> </li>
		  </ul>
		</nav>
		<!-- Main Menu  /--> 
	  </div>
	</header>
</div>
</div>
<div class="container in-grid">

<!-- Header /-->
  <!-- Main Content -->
  <div  class="row grid_24">
  <div id="msgholder"></div>