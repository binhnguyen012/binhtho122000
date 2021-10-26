<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>

<?php if(!$user->userlevel == 1): print Filter::msgInfo(lang('ADMINONLY'), false); return; endif;?>
<?php $exam = Core::getRowById("exams", $_SESSION['eid']); ?>
<?php 
$totalscore = 0;
$pass = $core->passing_score;
$tQuestions = $user->tQuestions($_SESSION['token'], $_SESSION['eid']);
foreach ($tQuestions as $ques):
	$totalans = $user->totalAnswers($ques->qid);
	$newscore = $user->tAnswers($ques->id, $totalans, $ques->marks);
	$totalscore = $totalscore + $newscore;
endforeach;
unset($ques);
?>

<section class="widget">
  <div class="result">
	<h1>Exam Result</h1>
	<h1>Test Name: <?php echo $exam->title; ?></h1>
	<h3>Full Marks: <?php echo $_SESSION['fullmarks']; ?></h3>
	<h3>You Scored: <?php echo $totalscore; ?></h3>
	<?php $pscore = round($totalscore / $_SESSION['fullmarks'] * 100 , 2); ?>
	<h3>Percentage : <?php echo $pscore . '%'; ?></h3>
	<h3>Passing Score : <?php echo $pass . '%'; ?></h3><br><br>
	<?php if($pscore >= $pass){?>
		<h2>Congratulation, You Passed!!!</h2><br>
		<?php echo $content->progressBarStatus($pscore);?>
		<!-- <p class="styled"><progress value="<?php //echo $pscore; ?>" max="100"></progress></p> -->
	<?php } else {?>
		<h2>Sorry, You Failed.</h2><br>
		<?php echo $content->progressBarStatus($pscore);?>
	<?php } ?>
	<br><br><br><br>
	<p><a href="account.php?do=review" class="button button-secondary">Review Exam</a> <a href="courses.php" class="button button-secondary">Go back to courses</a></p><br><br>
  </div>
</section>

<?php
if($pscore >= 60)
{$remarks = 1;}
else{$remarks = 0;}

$totalans = $user->processResult($user->uid,$_SESSION['eid'],$_SESSION['token'],$_SESSION['fullmarks'],$_SESSION['duration'],$totalscore,$pscore,$remarks);
?>
