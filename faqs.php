<?php
define("_VALID_PHP", true);
require_once("init.php");
?>
<?php include("header.php");?>
<?php $faqrow = $content->getFAQs();?>
<script>
jQuery(document).ready(function($) {
  var allPanels = jQuery('.faqs > dd').hide();
  jQuery('.faqs > dt > a').click(function() {
    allPanels.slideUp();
    jQuery(this).parent().next().slideDown();
    return false;
  });

});
</script>
<div class="row heading-row">
	<h1>Frequently Asked Questions</h1>
</div>
<div class="row xform">
	<section class="col col-12">
	<div class="sample"><dl class="faqs">
		<?php if(!$faqrow):?>
		<?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
		<?php else:?>
		<?php $k = 1;?>
		<?php foreach ($faqrow as $row):?>
		
		<dt><a href="#nofollow">
			<h3><?php echo $k . '. ' . $row->title;?></h3>
		</a></dt><dd>
			<?php $contents = $row->content;?>
		<?php echo htmlspecialchars_decode($contents);?>
		</dd>

		<?php $k++;?>
		<?php endforeach; ?>
		<?php unset($row);?>
		<?php endif;?>
	</dl></div>
	</section>
</div>
<?php include("footer.php");?>