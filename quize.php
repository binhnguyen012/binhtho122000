<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>

<?php if(!$user->userlevel == 1): print Filter::msgInfo(lang('ADMINONLY'), false); return; endif;?>


<?php
if(isset($_SESSION['qn']) && isset($_SESSION['eid'])){

	$exam = Core::getRowById("exams", $_SESSION['eid']);
	if(strtotime($_SESSION['quizend']) - strtotime(date("H:i:s")) <= 0){
		redirect_to("account.php?do=result");
	}else{

		
		if(isset($_POST['doQuize'])){

			  $data = array(
				'uid' => intval($_POST['uid']), 
				'token' => $_SESSION['token'], 
				'qid' => intval($_POST['qid']), 
				'type' => intval($_POST['type']), 
				'exam' => intval($_SESSION['eid']),
				'description' => $_POST['description'],
				'marks' => $_POST['marks']
			  );

			  $lastid = $db->insert("tquestions", $data);
			  
			  $answer = $_POST['answer'];
			  $correct = $_POST['correct'];
			  
			  if($_POST['type'] == 1 || $_POST['type'] == 3){
				  if(!empty($_POST['marked'])):
					$marked = $_POST['marked'];	
					  foreach($marked as $a => $b){
						$data = array(
							'tquestion' => intval($lastid), 
							'uid' => intval($_POST['uid']),
							'answer' => $answer[$a],
							'correct' => $correct[$a],
							'marked' => $marked[$a]
						);
						$db->insert("tanswers", $data);
					  }
				  endif;
			  } else if ($_POST['type'] == 2){
					
					$marked = intval($_POST['marked']);
					
					if($correct[$marked] == 1){
						$cor = 1; $mar = 1;
					}else{
						$cor = 4; $mar = $marked;
					}
					
					
					$data = array(
							'tquestion' => intval($lastid), 
							'uid' => intval($_POST['uid']),
							'answer' => $answer[$marked],
							'correct' => $cor,
							'marked' => $mar
					);
					$db->insert("tanswers", $data);
			  
			  } else if ($_POST['type'] == 4){
					$data = array(
							'tquestion' => intval($lastid), 
							'uid' => intval($_POST['uid']),
							'answer' => $_POST['answer'],
							'correct' => $_POST['correct'],
							'marked' => $_POST['marked']
					);
					$db->insert("tanswers", $data);
			  }
		}
	
		if($_SESSION['total'] >= 1){
			$qrow = $user->loadQuestion($_SESSION['eid'],$_SESSION['qn']);
			
			$_SESSION['total'] = $_SESSION['total'] - 1;
			$_SESSION['qn'] = $_SESSION['qn'] + 1;
			
			$remaining = (strtotime ($_SESSION['quizend']) - strtotime (date("H:i:s")));
			$mremaining = $remaining * 1000;
		}else{
			redirect_to("account.php?do=result");
		}
		?>
		
		<div class="row xform greentip">
			<section class="col col-9" style="margin-bottom: 0;">
				<?php echo '<h1>Exam: ' . $exam->title . '</h1>'; ?>
				<?php echo '<h3>Duration: ' . $exam->duration . ' minutes</h3>'; ?>
				<?php echo '<h3>Marks: ' . $user->sumMarks($exam->id) . '</h3>'; ?>
				<?php echo '<h3>Total Question: ' . $user->totalQues($exam->id) . '</h3>'; ?>
			</section>
			<section class="col col-3" style="margin-bottom: 0;">
				<div id="timer" style="float:right;">
					<script type="application/javascript">
					var myCountdownTest = new Countdown({
						time: <?php echo $remaining; ?>, 
						width:200, 
						height:80, 
						rangeHi:"minute"
					});
					</script>
					<script>
					setTimeout(function() {
						document.location.href='account.php?do=result';
					}, <?php echo $mremaining; ?>);
					</script>
				</div>
			</section>
		</div>
		<div id="msgresult"></div>
		<form id="ques_form" class="xform" method="post">
			<div class="row" id="ques_area">
				<section class="col col-12">
					<?php $description = $qrow->description; ?>
					<h2>Question-<?php echo $_SESSION['qn'] . " (" . $qrow->marks . "Marks )" ;?></h2>
					<h3><?php echo "$description";?></h3>
				
					<?php $arow = $user->loadAnswer($qrow->id);?>
					<input type="hidden" name="uid" value="<?php echo $user->uid;?>" />
					<input type="hidden" name="qid" value="<?php echo $qrow->id;?>" />
					<input type="hidden" name="type" value="<?php echo $qrow->type;?>" />
					<input type="hidden" name="description" value="<?php echo $qrow->description;?>" />
					<input type="hidden" name="marks" value="<?php echo $qrow->marks;?>" />
					<input name="doQuize" type="hidden" value="1" />

					<?php $k = 1; $l = 0; ?>
					<?php foreach ($arow as $answers):?>
					
						<?php if($qrow->type == 1){?>
							<label class="radio">
							<input type='radio' name='marked[0]' value='1' /><i></i><?php echo $k; ?>) True</label>
							<label class="radio">
							<input type='radio' name='marked[0]' value='0' /><i></i><?php echo $k+1; ?>) False</label>
							<input type="hidden" name="correct[]" value="<?php echo $answers->correct;?>" />
							<input type="hidden" name="answer[]" value="<?php echo $answers->answer;?>" />
						<?php } else if($qrow->type == 2){?>
							<label class="radio">
							<input type='radio' name='marked' value='<?php echo $l; ?>' /><i></i><?php echo $k; ?>) <?php echo $answers->answer; ?></label>
							<input type="hidden" name="correct[<?php echo $l; ?>]" value="<?php echo $answers->correct;?>" />
							<input type="hidden" name="answer[<?php echo $l; ?>]" value="<?php echo $answers->answer;?>" />
						<?php } else if($qrow->type == 3){?>
							<label class="radio">
							<input type='checkbox' name='marked[<?php echo $l; ?>]' value='1' /><i></i><?php echo $k; ?>) <?php echo $answers->answer; ?></label>
							<input type="hidden" name="correct[]" value="<?php echo $answers->correct;?>" />
							<input type="hidden" name="answer[]" value="<?php echo $answers->answer;?>" />
						<?php } else if($qrow->type == 4){?>
							<label class="input">
								<input type="text" name="marked">
							</label>
							
							<input type="hidden" name="correct" value="<?php echo $answers->answer;?>" />
							<input type="hidden" name="answer" value="<?php echo $answers->answer;?>" />
						<?php } ?>
						
						<?php $k++; $l++; ?>
					<?php endforeach;?>
					<?php unset($answers);?>
				</section>
			</div>			
			<footer><?php if($_SESSION['total'] >= 1){ echo '<button class="button" name="dosubmit" type="submit">Next Question</button>';}else{ echo 'This is the last question. <button class="button" name="dosubmit" type="submit">Submit & See Result</button>';} ?></footer>
			
			
			
		</form>		
		<?php
	}
}else{
	redirect_to("courses.php");
}
?>