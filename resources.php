<?php
  define("_VALID_PHP", true);
  require_once("init.php");
?>
<?php include("header.php");?>
<?php switch(Filter::$action): case "category": ?>
<?php $projectrow = $content->getResources();?>
<?php $ptype = $content->getCategories();?>
    <div class="row xform">
        <section class="col col-9">
			<?php if(!$projectrow):?>
			<?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
			<?php else:?>
			<?php foreach ($projectrow as $row):?>
			
			<a href="resources.php?action=details&amp;id=<?php echo $row->id;?>"><h1><?php echo $row->title;?></h1></a>
			<h4><?php echo 'Category: ' . $row->ctitle;?></h4>
			<?php $contents = $row->content;?>
			<?php $limits = htmlspecialchars_decode($contents);?>
			<?php echo (strlen($limits) > 800) ? substr($limits,0,800) : $limits; ?>
			
			<?php endforeach; ?>
			<?php unset($row);?>
			<?php endif;?>
		</section>
		<section class="col col-3" style="border-left: 1px solid #e3e3e3;">
			<?php if(!$ptype):?>
			<?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
			<?php else:?>
			<?php foreach ($ptype as $row):?>
			
			<a href="resources.php?action=category&amp;sort=<?php echo $row->id;?>"><h3><?php echo $row->title;?></h3></a>
			
			<?php endforeach; ?>
			<?php unset($row);?>
			<?php endif;?>
		</section>
	</div>
<?php break; ?>
<?php case "details": ?>
<?php $resources = Core::getRowById("resources", Filter::$id);?>
<?php $ptype = $content->getCategories();?>
    <div class="row xform">
        <section class="col col-9">			
			<h1><?php echo $resources->title;?></h1>
			<?php $contents = $resources->content;?>
			<?php echo htmlspecialchars_decode($contents);?>
		</section>
		<section class="col col-3" style="border-left: 1px solid #e3e3e3;">
			<?php if(!$ptype):?>
			<?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
			<?php else:?>
			<?php foreach ($ptype as $row):?>
			
			<a href="resources.php?action=category&amp;sort=<?php echo $row->id;?>"><h3><?php echo $row->title;?></h3></a>
			
			<?php endforeach; ?>
			<?php unset($row);?>
			<?php endif;?>
		</section>
	</div>
<?php break; ?>
<?php default: ?>
<?php $projectrow = $content->getResources();?>
<?php $ptype = $content->getCategories();?>
    <div class="row xform">
        <section class="col col-9">
			<?php if(!$projectrow):?>
			<?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
			<?php else:?>
			<?php foreach ($projectrow as $row):?>
			
			<a href="resources.php?action=details&amp;id=<?php echo $row->id;?>"><h1><?php echo $row->title;?></h1></a>
			<h4><?php echo 'Category: ' . $row->ctitle;?></h4>
			<?php $contents = $row->content;?>
			<?php $limits = htmlspecialchars_decode($contents);?>
			<?php echo (strlen($limits) > 800) ? substr($limits,0,800) : $limits; ?>
			
			<?php endforeach; ?>
			<?php unset($row);?>
			<?php endif;?>
		</section>
		<section class="col col-3" style="border-left: 1px solid #e3e3e3;">
			<?php if(!$ptype):?>
			<?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
			<?php else:?>
			<?php foreach ($ptype as $row):?>
			
			<a href="resources.php?action=category&amp;sort=<?php echo $row->id;?>"><h3><?php echo $row->title;?></h3></a>
			
			<?php endforeach; ?>
			<?php unset($row);?>
			<?php endif;?>
		</section>
	</div>
<?php break;?>
<?php endswitch;?>
<?php include("footer.php");?>