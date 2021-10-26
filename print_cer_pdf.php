<?php  
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
	  
  if (!$user->logged_in)
  redirect_to("index.php");

  $results = $user->getResults($user->uid);
?>
<?php if($results):?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<style>
    *{ font-family: verdana, sans-serif !important;}
</style>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title><?php echo $core->company; ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="theme/master/front/style/style.css"  type="text/css" />
</head>
<body style="background: none!important;">
<div class="" style="width: 816px;margin: 0px auto;">
  <div  class="row grid_24">
	<div class="row xform" style="background: #009fda;color: #fff;">
		<h1 style="text-transform: uppercase;font-size: 50px;text-align: center;"><?php echo $core->company; ?></h1>
	</div>
	
	<div class="row xform">
		<h3 style="font-size: 20px;text-align: center;margin-bottom: 20px;"><?php echo lang('CERT_TITLE');?></h3>
		
		<h3 style="font-size: 18px;text-align: left;font-style: italic;"><?php echo lang('CERT_INFO');?><b><?php echo $user->name; ?></b>, <?php echo lang('CERT_USER_ID');?><b><?php echo $user->username; ?></b>, <?php echo lang('CERT_USER_EMAIL');?><b><?php echo $user->email; ?></b> <?php echo lang('CERT_INFO_END');?></h3>
	</div>
		
	<div class="row xform">
		<p style="text-transform: uppercase;font-size: 20px;text-align: center;font-weight: 700;color: #047FAD;margin-bottom: 10px;"><?php echo lang('CERT_STATEMENT');?></p>
		<table class="myTable">
			<thead>
				<tr>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;"><?php echo lang('CERT_TESTNAME');?></th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;"><?php echo lang('CERT_SCORE');?></th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;"><?php echo lang('CERT_TOTALMARK');?></th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;"><?php echo lang('CERT_DATE');?></th>
					<th style="text-transform: uppercase;line-height: 37px;padding: 5px 10px!important;font-size: 14px;text-align: center;"><?php echo lang('CERT_REMARK');?></th>
				</tr>
			</thead>
			<?php foreach ($results as $row):?>
			<tr>
				<td><?php echo $row->etitle;?></td>
				<td style="text-align: center;"><?php echo intval($row->marks);?></td>
				<td style="text-align: center;"><?php echo intval($row->fullmarks);?></td>
				<td style="text-align: center;"><?php echo $row->rdate;?></td>
				<td style="text-align: center;"><?php if($row->remarks == 1){ echo 'PASS'; } else { echo 'FAIL'; } ?></td>
			</tr>
			<?php endforeach;?>
			<?php unset($row);?>
		</table>
	</div>
	<div class="row xform">
		<p><b>Note:</b> The statement is based on some online exams or tests and valid for only a single applicant. It is valid within the terms and conditions of <b><?php echo $core->company; ?></b>. The passing score for all test or exam is <b><?php echo $core->passing_score; ?>%</b> of full marks. The applicant should hold the certificate and not to distribute it. For further information about the certificate please contact to <b><i><?php echo $core->site_email; ?></i></b></p>
	</div>
  </div>
  <!-- Main Content /-->
</div><!-- container /-->
</body></html>
<?php else:?>
<?php die('Something gone wrong. Please try again later.');?>
<?php endif;?>