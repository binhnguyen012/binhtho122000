<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>

<?php if(!$user->userlevel == 1): print Filter::msgInfo(lang('ADMINONLY'), false); return; endif;?>
<?php $course = Core::getRowById("project_types", Filter::$id);?>


<p class="greentip"><i class="icon-lightbulb icon-3x pull-left"></i> <?php echo lang('INVC_INFO2');?><br>
  <?php echo lang('REQFIELD1');?> <i class="icon-append icon-asterisk"></i> <?php echo lang('REQFIELD2');?></p>
<div id="msgresult"></div>

<?php if($course->fees > 0): ?>
<form class="xform" id="invoice_form" method="post">
  <header>Course Enrolment<span>Course Name: <?php echo $course->title; ?></span></header>

	<input type="hidden" name="title" value="Course Enrolment to <?php echo $course->title; ?>">
	<input type="hidden" name="project_id" value="<?php echo $course->id; ?>">
	<input type="hidden" name="client_id" value="<?php echo $user->uid; ?>">
	<input type="hidden" name="recurring" value="<?php echo $user->recurring; ?>">
	<input type="hidden" name="period" value="<?php echo $user->period; ?>">
	<input type="hidden" name="days" value="<?php echo $user->days; ?>">
	<input type="hidden" name="tax" value="0">
	<input type="hidden" name="onhold" value="0">
	<input type="hidden" name="created" value="<?php echo date('Y-m-d');?>">
	<input type="hidden" name="duedate" value="<?php echo date('Y-m-d');?>">
	<input type="hidden" name="dtitle[]" value="Course Fee">
	<input type="hidden" name="amount[]" value="<?php echo $course->fees; ?>">
	<input type="hidden" name="description[]" value="Course Fee: <?php echo $course->title; ?>">
	<input type="hidden" name="comment" value="This transaction was for course fee of <?php echo $course->title; ?>">
	<input name="doInvoice" type="hidden" value="1" />

  <div class="row">
    <section class="col col-6">
      <h2>Course Name: <?php echo $course->title; ?></h2>
      <h3>Course Fee: <?php echo $course->fees; ?></h3>
    </section>
	<section class="col col-6">
      <select name="method">
        <option value="Offline"><?php echo lang('OFFLINE');?></option>
        <?php foreach ($content->getGateways() as $grow):?>
        <option value="<?php echo $grow->displayname;?>"><?php echo $grow->displayname;?></option>
        <?php endforeach;?>
        <?php unset($grow);?>
      </select>
      <div class="note"><?php echo lang('PAYMETHOD');?></div>
    </section>
  </div>

  <header><?php echo lang('INVC_NOTES');?></header>
  <div class="row">
    <section>
      <label class="label"><?php echo lang('INVC_NOTE');?></label>
      <div class="field-wrap wysiwyg-wrap">
        <textarea class="post" name="notes" rows="5"><?php echo $core->invoice_note;?></textarea>
      </div>
      <div class="note">Note is displayed at the bottom of your invoice. You can enter your comments, or any other info.</div>
    </section>
  </div>
  <footer>
    <button class="button" name="dosubmit" type="submit"><?php echo lang('INVC_ADD');?></button>
    <a href="index.php?do=courses" class="button button-secondary"><?php echo lang('CANCEL'); ?></a>
  </footer>
</form>
<script type="text/javascript">
// <![CDATA[
  $(document).ready(function () {
      $("#invoice_form").submit(function () {
          var str = $(this).serialize();
          showLoader();
          $.ajax({
              type: "POST",
              dataType: 'json',
              url: "ajax/user.php",
              data: str,
              success: function (json) {
                  hideLoader();
                  if (json.type == "success") {
                      $("#msgresult").html(json.info);
					  $("#invoice_form").hide();
					  window.location = "account.php?do=billing&action=invoice&id=" +json.info;
                  } else {
                      $("#msgresult").html(json.message);
                  }
                  $("html, body").animate({
                      scrollTop: 0
                  }, 600);
              }
          });
          return false;
      });
  });
// ]]>
</script>
<?php else: ?>
<form class="xform" id="enrol_form" method="post">
	<header>Course Enrolment<span>Course Name: <?php echo $course->title; ?></span></header>
	<input type="hidden" name="course" value="<?php echo $course->id; ?>">
	<input type="hidden" name="user" value="<?php echo $user->uid; ?>">
	<input type="hidden" name="date" value="<?php echo date('Y-m-d');?>">
	<input name="doEnrol" type="hidden" value="1" />

  <div class="row">
    <section class="col col-12">
      <h2>Course Name: <?php echo $course->title; ?></h2>
      <h3>Course Fee: Free</h3>
    </section>
  </div>

  <footer>
    <button class="button" name="dosubmit" type="submit">Enrol Now</button>
    <a href="index.php?do=courses" class="button button-secondary"><?php echo lang('CANCEL'); ?></a>
  </footer>
</form>
<script type="text/javascript">
// <![CDATA[
  $(document).ready(function () {
      $("#enrol_form").submit(function () {
          var str = $(this).serialize();
          showLoader();
          $.ajax({
              type: "POST",
              dataType: 'json',
              url: "ajax/user.php",
              data: str,
              success: function (json) {
                  hideLoader();
                  if (json.type == "success") {
                      $("#msgresult").html(json.info);
					  $("#enrol_form").hide();
                  } else {
                      $("#msgresult").html(json.message);
                  }
                  $("html, body").animate({
                      scrollTop: 0
                  }, 600);
              }
          });
          return false;
      });
  });
// ]]>
</script>
<?php endif; ?>