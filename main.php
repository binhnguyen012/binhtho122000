<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>
<?php $subrow = $user->getEnrolment($user->uid);?>
<?php $invactive = $user->getClientInvoices("<> 'Paid'");?>
<?php $results = $user->getResults($user->uid);?>
<h3 class="greentip">Hello <b><?php echo $user->name; ?></b>, welcome to your dashboard.<br/>Here you can explore you Course Enrolment, Exam Records and Pending Invoices</h3>
<section class="widget">
  <?php if($user->userlevel == 9 or $user->userlevel == 5):?>
  <p class="orangetip"><?php echo lang('ADMINONLY_1');?></p>
  <?php else:?>
  <header>
    <h1><i class="icon-reorder"></i> Enrolled Courses</h1>
  </header>
  <div class="content2">
    <?php if($subrow):?>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header">Course Name</th>
          <th class="header">Fee</th>
          <th class="header">Date</th>
          <th class="header">Action</th>
        </tr>
      </thead>
      <?php foreach ($subrow as $row):?>
      <tr>
        <td><?php echo $row->ctitle;?></td>
        <td><?php if($row->cfees <= 0){ echo 'Free';} else { echo $row->cfees; } ?></td>
        <td><?php echo $row->rdate;?></td>
        
        <td><a href="exams.php?sort=<?php echo $row->course;?>" class="button" >Explore Exams</a></td>
      </tr>
      <?php endforeach;?>
      <?php unset($row);?>
    </table>
    <?php endif;?>
	</div>
	
	<br>
	<br>
	
	<header>
		<h1><i class="icon-reorder"></i> Taken Exams</h1>
		<aside> <a class="hint--left hint--add hint--always" data-hint="Download Certificate" href="controller.php?docerpdf=1&amp;title=Certificate of <?php echo $user->name; ?>"><span class="icon-file-alt"></span></a> </aside>
	</header>
	<div class="content2">
    <?php if($results):?>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header">Exam Title</th>
          <th class="header">Score</th>
          <th class="header">Duration</th>
          <th class="header">Remarks</th>
          <th class="header">Date</th>
          <th class="header">Action</th>
        </tr>
      </thead>
      <?php foreach ($results as $row):?>
      <tr>
        <td><?php echo $row->etitle;?></td>
        <td><?php echo $row->score;?>% (<?php echo intval($row->marks);?>/<?php echo intval($row->fullmarks);?>)</td>
        <td><?php echo $row->duration;?></td>
        <td><?php if($row->remarks == 1){ echo 'PASS'; } else { echo 'FAIL'; } ?></td>
        <td><?php echo $row->rdate;?></td>
        
        <td><a href="exams.php?do=details&amp;id=<?php echo $row->exam;?>" class="button" data-title="<?php echo lang('VIEW').': '.$row->title;?>">Retake Exams</a></td>
      </tr>
      <?php endforeach;?>
      <?php unset($row);?>
    </table>
    <?php endif;?>
	</div>
	
	<br>
	<br>
	
    <?php if($invactive):?>
    <header>
      <h1><i class="icon-reorder"></i> <?php echo lang('FDASH_SUB1');?></h1>
    </header>
	<div class="content2">
    <table class="myTable">
      <thead>
        <tr>
          <th class="header">#</th>
          <th class="header"><?php echo lang('FDASH_SUB1');?></th>
          <th class="header"><?php echo lang('INVC_DUEDATE');?></th>
          <th class="header"><?php echo lang('TOTAL');?> / <?php echo lang('PAID');?></th>
          <th class="header"><?php echo lang('FDASH_METHOD');?></th>
          <th class="header"><?php echo lang('ACTION');?></th>
        </tr>
      </thead>
      <?php foreach ($invactive as $row):?>
      <tr>
        <td><small><?php echo $core->invoice_number . $row->id;?></small></td>
        <td><a href="account.php?do=billing&amp;action=viewinvoice&amp;id=<?php echo $row->id;?>"><?php echo $row->title;?></a></td>
        <td><?php echo Filter::doDate($core->short_date, $row->duedate);?></td>
        <td><?php echo $row->amount_total;?> / <?php echo $row->amount_paid;?></td>
        <td><?php echo $row->method;?></td>
        <td><a href="account.php?do=billing&amp;action=invoice&amp;id=<?php echo $row->id;?>"><span class="label2 label-important"><?php echo lang('FDASH_PAY');?></span></a></td>
      </tr>
      <?php endforeach;?>
      <?php unset($row);?>
    </table>
    <?php endif;?>
  </div>
  <?php endif;?>
</section>