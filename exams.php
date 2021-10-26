<?php
	define("_VALID_PHP", true); 
	require_once("init.php"); 
?>
<?php include("header.php"); ?>
<?php switch(Filter::$do): case "details": ?>
<?php $examsinfo = Core::getRowById("exams", Filter::$id); ?>

<div class="row">
	<section class="xform">
		<h1>Exam Name: <?php echo $examsinfo->title; ?></h1>
		<h2>Total Question: <?php echo $user->totalQues(Filter::$id); ?></h2>
		<h2>Duration: <?php echo $examsinfo->duration; ?></h2><br/>
		<p>Syllabus: <?php echo $examsinfo->syllabus; ?></p>
		
		<?php if ($user->logged_in): ?>
		<?php $trow = $user->checkTaken($user->uid,Filter::$id);?>
		<?php if ($trow){?>
			<?php $rrow = $user->getResult($user->uid,Filter::$id);?>
			<p class="greentip"><i class="icon-lightbulb icon-2x pull-left"></i>You have already taken this exam and your result is <?php echo $rrow->score;?>% (<?php echo intval($rrow->marks);?>/<?php echo intval($rrow->fullmarks);?>)</p>
			<a href="account.php?do=start&amp;id=<?php echo Filter::$id;?>" class="button">Retake This Exam</a>
		<?php } else { ?>
			<a href="account.php?do=start&amp;id=<?php echo Filter::$id;?>" class="button">Take This Exam</a>
		<?php } ?>
		<?php endif; ?>
		
	</section>
</div>



<?php break; ?>
<?php default: ?>
<?php $projectrow = $content->getExams();?>
<?php $ptype = $content->getProjectTypes();?>
<?php 
if(isset($_GET['sort']) && !empty($_GET['sort'])){
$courseinfo = Core::getRowById("project_types", $_GET['sort']);
?>
<div class="pagetip">
	<h1>Course Name: <?php echo $courseinfo->title;?></h1>
	<p>Description: <?php echo $courseinfo->description;?></p><br>

	<?php if($courseinfo->fees <= 0){ ?>
		<h2>FREE</h2>
	<?php } else { ?>
		<h2>Fees: $<?php echo $courseinfo->fees;?> USD<?php if($courseinfo->recurring == 1){ echo '/' . $courseinfo->days . $courseinfo->period; } ?></h2>
	<?php } ?>

	<?php if ($user->logged_in){ ?>
		
		
		<?php $erow = $user->checkEnrol($user->uid,$courseinfo->id);?>
		<?php if ($erow){?>
			<p class="greentip"><i class="icon-lightbulb icon-2x pull-left"></i>You have already enrolled in this course. You can take any exams.</p>
		<?php } else { ?>	
			<a href="account.php?do=enrolment&id=<?php echo $courseinfo->id;?>" class="button exam-enrol">Enrol Now</a>
		<?php } ?>			
		
	<?php } ?>

</div>
<?php } else { ?>
<div class="row heading-row">
	<h1>Available Exams</h1>
</div>
<?php } ?>

<section class="widget">
  <div class="content2">
    <div class="row">
      <div class="ptop10">
        <form class="xform" id="dForm" method="post" style="padding:0;padding-top:15px">
          <section class="col col-8">
            <select name="select" id="coursefilter">
              <option value="">-- Select Course --</option>
              <?php if ($ptype):?>
			  <?php foreach ($ptype as $prow):?>
              <option value="<?php echo $prow->id;?>"<?php if($prow->id == get('sort')) echo 'selected="selected"';?>><?php echo $prow->title;?></option>
              <?php endforeach;?>
              <?php unset($prow);?>
              <?php endif;?>
            </select>
          </section>
		  
		  
          <section class="col col-2"> <?php echo $pager->items_per_page();?> </section>
          <section class="col col-2"> <?php echo $pager->jump_menu();?> </section>
        </form>
      </div>
    </div>
    <?php if(!$projectrow):?>
    <?php echo Filter::msgInfo(lang('PROJ_NOPROJECT'),false);?>
    <?php else:?>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header">Exam Title</th>
          <th class="header">Course Title</th>
          <th class="header">Duration</th>
          <th class="header"><?php echo lang('ACTIONS');?></th>
        </tr>
      </thead>
      <?php foreach ($projectrow as $row):?>
      <tr>
        <td><?php echo $row->title;?></td>
        <td><a href="exams.php?sort=<?php echo $row->course;?>"><?php echo $row->ctitle;?></a></td>
        <td><?php echo $row->duration;?> (minutes)</td>
        <td>
		  <a href="exams.php?do=details&amp;id=<?php echo $row->id;?>" class="button" data-title="<?php echo 'Add Question to: '.$row->title;?>">Details</a>
      </tr>
      <?php endforeach;?>
      <?php unset($row);?>
    </table>
    <?php if($pager->display_pages()):?>
    <?php echo $pager->display_pages();?>
    <?php endif;?>
    <?php endif;?>
  </div>
</section>

<script type="text/javascript"> 
// <![CDATA[  
$(document).ready(function () {
    $('#coursefilter').change(function () {
		var res = $("#coursefilter option:selected").val();
		(res == "NA" ) ? window.location.href = 'exams.php' : window.location.href = 'exams.php?sort=' + res;
    })
});
// ]]>
</script>
<?php break;?>
<?php endswitch;?>
<?php include("footer.php");?>