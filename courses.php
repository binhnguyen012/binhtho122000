<?php
  define("_VALID_PHP", true);
  require_once("init.php");
?>
<?php include("header.php");?>
<?php $courses = $content->getProjectTypes();?>

<div class="row">
	
</div>
<?php if($courses):?>
<div class="row xform course-box">
	<h1><?php echo lang('AVAILABLE_COURSES');?></h1>
	<?php foreach ($courses as $course):?>
	<section class="col col-4">
	  <div class="box">
	  
		  <div class="course-upper" style="background-image: url('<?php echo UPLOADURL;?>coursesimg/<?php echo ($course->image) ? $course->image : "blank.png";?>');background-repeat: no-repeat;background-size: 100% 100%;" >
		  
			<a href="exams.php?sort=<?php echo $course->id;?>"><h1><?php echo $course->title;?></h1></a>
			<h4><?php echo $numExam = $content->getExamOfCourses($course->id);?> Exams</h4>
			<?php if($course->fees <= 0){ ?>
			<h2 style="color:black;">FREE</h2>
			<?php } else { ?>
			<h2>$<?php echo $course->fees;?> USD<?php if($course->recurring == 1){ echo '/' . $course->days . $course->period; } ?></h2>
			<?php } ?>
		  </div>
		  <!--<img src="<?php echo UPLOADURL;?>coursesimg/<?php echo ($course->image) ? $course->image : "blank.png";?>" alt="" title="" class="courseImg" />-->
		  <div class="course-lower">
			<a href="exams.php?sort=<?php echo $course->id;?>" class="button course-details"><?php echo lang('COMMON_DETAIL');?></a>
			<?php if ($user->logged_in){ ?>
			
				<?php $erow = $user->checkEnrol($user->uid,$course->id);?>
				<?php if ($erow){?>
					<a href="exams.php?sort=<?php echo $course->id;?>" class="button button-secondary"><?php echo lang('COMMON_ENROLL');?></a>
				<?php } else { ?>	
					<a href="account.php?do=enrolment&id=<?php echo $course->id;?>" class="button "><?php echo lang('COMMON_ENROLLNOW');?></a>
				<?php } ?>	
				
			<?php } ?>
		  </div>
	  </div>
	</section>
	<?php endforeach;?>
    <?php unset($course);?>
</div>
<?php endif;?>
<?php echo Core::doDelete(lang('PROJ_DELETE'),"processEnrol");?>
<?php include("footer.php");?>