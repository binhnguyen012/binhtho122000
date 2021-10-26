<?php
  define("_VALID_PHP", true);
  
  require_once("init.php");
  if (!$user->logged_in)
  redirect_to("index.php");
	
  $row = $content->getQuoteById();
  $quotedata = $content->getQuoteEntries();
?>
<?php if($row):?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8">
	<title>BitSet Limited</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="theme/master/front/style/style.css"  type="text/css" />
</head>
<body style="background: none!important;">
<div class="" style="width: 816px;margin: 0px auto;">
  <div  class="row grid_24">
	<div class="row xform" style="background: #009fda;color: #fff;">
		<h1 style="text-transform: uppercase;font-size: 50px;text-align: center;">Exam Board</h1>
	</div>
	
	<div class="row xform">
		<h3 style="font-size: 20px;text-align: center;margin-bottom: 20px;">Certificate of Course Completion</h3>
		
		<h3 style="font-size: 18px;text-align: left;font-style: italic;">This is to certify that <b>Md. Rokonuzzaman</b>, User Id: <b>rzaman</b>, Email: <b>rzaman@bitset.org</b> has successfully completed the below course programs from our virtual academy.</h3>
	</div>
		
	<div class="row xform">
		<p style="text-transform: uppercase;font-size: 20px;text-align: center;font-weight: 700;color: #047FAD;margin-bottom: 10px;">Marks StateMent</p>
		<table class="myTable">
			<thead>
				<tr>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;">Exam/Test Name</th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;">Marks Scored</th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;">Total Marks</th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;">Date</th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;">Remarks</th>
				</tr>
			</thead>
			
			<tr>
				<td>Basic Web Development</td>
				<td style="text-align: center;">25</td>
				<td style="text-align: center;">30</td>
				<td style="text-align: center;">12-10-2014</td>
				<td style="text-align: center;">Passes</td>
			</tr>
			<tr>
				<td>Basic Web Development</td>
				<td style="text-align: center;">25</td>
				<td style="text-align: center;">30</td>
				<td style="text-align: center;">12-10-2014</td>
				<td style="text-align: center;">Passes</td>
			</tr>
			<tr>
				<td>Basic Web Development</td>
				<td style="text-align: center;">25</td>
				<td style="text-align: center;">30</td>
				<td style="text-align: center;">12-10-2014</td>
				<td style="text-align: center;">Passes</td>
			</tr>
			<tr>
				<td>Basic Web Development</td>
				<td style="text-align: center;">25</td>
				<td style="text-align: center;">30</td>
				<td style="text-align: center;">12-10-2014</td>
				<td style="text-align: center;">Passes</td>
			</tr>
			<tr>
				<td>Basic Web Development</td>
				<td style="text-align: center;">25</td>
				<td style="text-align: center;">30</td>
				<td style="text-align: center;">12-10-2014</td>
				<td style="text-align: center;">Passes</td>
			</tr>
			
		</table>
	</div>
	<div class="row xform">
		<p><b>Note:</b> The statement is based on some online exams or tests and valid for only a single applicant. It is valid within the terms and conditions of <b>EXAM BOARD</b>. The passing score for all test or exam is <b>60%</b> of full marks. The applicant should hold the certificate and not to distribute it. For further information about the certificate please contact to <b><i>rzaman@bitset.org</i></b></p>
	</div>
  </div>
  <!-- Main Content /-->
</div><!-- container /-->
</body></html>
<?php else:?>
<?php die('You have selected invalid quote');?>
<?php endif;?>