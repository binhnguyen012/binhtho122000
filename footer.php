<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>
  </div>
  <!-- Main Content /-->

</div><!-- container /-->
</div><!-- Bg /-->
<?php $resources = $content->getFWResources();?>
<!-- Footer -->
<div class="footer-panel">
	<section class="row in-grid">
		<div class="col grid_8">
			<h2><?php echo lang('FW_ABOUT'); ?></h2>
			<p><?php echo lang('FW_ABOUTTEXT'); ?></p>
		</div>
		<div class="col grid_8">
			<h2><?php echo lang('FW_RESOURCE'); ?></h2>
			<?php if(!$resources):?>
			<?php echo Filter::msgInfo(lang('FW_NORESOURCE'),false);?>
			<?php else:?>
			<ul>
				<?php foreach ($resources as $row):?>
			
				<li><a href="resources.php?action=details&amp;id=<?php echo $row->id;?>"><h4><?php echo $row->title;?></h4></a></li>
			
				<?php endforeach; ?>
				<?php unset($row);?>
			</ul>
			<?php endif;?>
		</div>
		<div class="col grid_8 fw_git">
			<h2><?php echo lang('FW_GIT'); ?></h2>
			<p>Say Hello! Don’t be shy.</p>
			<ul>
				<li><i class="icon-truck"></i><span><?php echo $core->address . ', ' . $core->city . ', ' . $core->state;?></span><li>
				<li><i class="icon-phone-sign"></i><span><?php echo $core->phone;?></span><li>
				<li><i class="icon-envelope"></i><span><?php echo $core->site_email;?></span><li>				
			</ul>
		</div>
	</section>  
</div>
	
	
<footer id="footer" class="clearfix">
  <div class="row">
    <div class="fotter-wrap">
      <div class="col grid_24">
        <div class="copyright top10">Copyright &copy;<?php echo date('Y').' '.$core->company;?>  All Rights Reserved. | Powered by: Elearning v <?php echo $core->crmv;?></div>
      </div>
    </div>
  </div>
</footer>


<script type="text/javascript">
  $('<button type="button" id="menutoggle" class="navtoogle"><i class="icon-reorder"> </i> <?php echo lang('FMENU_MENUNAV');?></button>').insertBefore("#menu ul");
  $('#menutoggle').click(function () {
	  $(this).toggleClass('active');
  });
</script>
<?php $content->tracker();?>
</body></html>