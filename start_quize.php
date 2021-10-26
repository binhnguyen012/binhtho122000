<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>

<?php if(!$user->userlevel == 1): print Filter::msgInfo(lang('ADMINONLY'), false); return; endif;?>
<?php $exam = Core::getRowById("exams", Filter::$id);?>

<p class="greentip"><i class="icon-lightbulb icon-3x pull-left"></i> <?php echo lang('INVC_INFO2');?><br>
  <?php echo lang('REQFIELD1');?> <i class="icon-append icon-asterisk"></i> <?php echo lang('REQFIELD2');?></p>
<?php $erow = $user->checkEnrol($user->uid,$exam->course);?>
<?php if ($erow):
$user->startExam($exam->id,$exam->duration);
//$user->deleteTemp($user->uid);
redirect_to("account.php?do=quize");
?>
<?php else: ?>
<section class="widget">
	<div class="content2" style="padding: 20px;text-align:center;">
		<h2><span class="color">You have not Enrolled on this course. Please make enrol on this course.</span><br /><a href="account.php?do=enrolment&amp;id=<?php echo $exam->course;?>">Click Here</a> to enrol</h2>
	</div>
</section>
<?php endif; ?>
