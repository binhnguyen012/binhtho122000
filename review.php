<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>

<?php if(!$user->userlevel == 1): print Filter::msgInfo(lang('ADMINONLY'), false); return; endif;?>


<?php
if(isset($_SESSION['rtoken']) && isset($_SESSION['reid'])){

	$exam = Core::getRowById("exams", $_SESSION['reid']);
	
		if($_SESSION['rtotal'] >= 1){
			$qrow = $user->loadTQuestion($_SESSION['reid'],$_SESSION['rtoken'],$_SESSION['rqn']);
			$_SESSION['rtotal'] = $_SESSION['rtotal'] - 1;
			$_SESSION['rqn'] = $_SESSION['rqn'] + 1;
		}else{
			redirect_to("courses.php");
		}
		?>
		
		<div class="row xform greentip">
			<section class="col col-12" style="margin-bottom: 0;">
				<?php echo '<h1>Exam Review: ' . $exam->title . '</h1>'; ?>
				<?php echo '<h3>Duration: ' . $exam->duration . ' minutes</h3>'; ?>
				<?php echo '<h3>Marks: ' . $user->sumMarks($exam->id) . '</h3>'; ?>
				<?php echo '<h3>Total Question: ' . $user->totalQues($exam->id) . '</h3>'; ?>
			</section>
		</div>
		<form id="ques_form" class="xform" method="post">
			<div class="row" id="ques_area">
				<section class="col col-12">
					<?php $description = $qrow->description; ?>
					<h2>Question-<?php echo $_SESSION['rqn'] . " (" . $qrow->marks . "Marks )" ;?></h2>
					<h3><?php echo "$description";?></h3>
				
					<?php $arow = $user->loadAnswer($qrow->qid);?>

					<?php $k = 1; $l = 0; ?>
					
					<?php foreach ($arow as $answers):?>
					
						<?php if($qrow->type == 1){?>
						
							
								
							<label class="radio <?php if($answers->correct == 1){ echo "correct-class";} ?>">
							<input type='radio' name='marked[0]' value='1' disabled="disabled" /><i></i><?php echo $k; ?>) True</label>
							<label class="radio <?php if($answers->correct == 0){ echo "correct-class";} ?>">
							<input type='radio' name='marked[0]' value='0' disabled="disabled" /><i></i><?php echo $k+1; ?>) False</label>
						<?php } else if($qrow->type == 2){?>
							<label class="radio <?php if($answers->correct == 1){ echo "correct-class";} ?>">
							<input type='radio' name='marked' disabled="disabled" value='<?php echo $answers->correct;?>' /><i></i><?php echo $k; ?>) <?php echo $answers->answer; ?></label>
						<?php } else if($qrow->type == 3){?>
							<label class="radio <?php if($answers->correct == 1){ echo "correct-class";} ?>">
							<input type='checkbox' disabled="disabled" name='marked[<?php echo $l; ?>]' value='1' /><i></i><?php echo $k; ?>) <?php echo $answers->answer; ?></label>
						<?php } else if($qrow->type == 4){?>
							<label class="input <?php echo "correct-class"; ?>">
								Answer: <?php echo $answers->answer;?>
							</label>
						<?php } ?>
						
						<?php $k++; $l++; ?>
					<?php endforeach;?>
					<?php unset($answers);?>
					<br><hr><br>
					<h2>Your Answer</h2>
					<?php $tansrow = $user->yourAnswer($qrow->id);
					
							$m = 1;
							foreach ($tansrow as $tansrow):
			
							if($qrow->type == 1 && $tansrow->marked == 1){
								echo '<label class="radio"><input type="radio" name="ans" value="1" disabled="disabled" /><i></i>1) True</label>';
							}else if($qrow->type == 1 && $tansrow->marked == 0){
								echo '<label class="radio"><input type="radio" name="ans" value="1" disabled="disabled" /><i></i>2) False</label>';
							}else if($qrow->type == 4){
								echo 'Answer: ' . $tansrow->correct;
							}else if($qrow->type == 2){

								echo '<label class="radio"><input type="radio" name="ans" value="1" disabled="disabled" /><i></i>' . $m . ') ' . $tansrow->answer . '</label>';
								
							}else if($qrow->type == 3){
								echo '<label class="radio"><input type="radio" name="ans" value="1" disabled="disabled" /><i></i>' . $m . ') ' . $tansrow->answer . '</label>';
							}
							$m = $m + 1;
							endforeach;
							unset($ansrow);
					?>
				</section>
			</div>
			<footer><?php if($_SESSION['rtotal'] >= 1){ echo '<button class="button" name="dosubmit" type="submit">Review Next Question</button>';}else{ echo 'This is the last question. <button class="button" name="dosubmit" type="submit">Back to courses</button>';} ?></footer>
		</form>		
		<?php
}else{
	redirect_to("courses.php");
}
?>