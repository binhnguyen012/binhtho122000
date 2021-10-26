<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
	  
  if(isset($_GET['msg']) and $_GET['msg'] == 6) Filter::msgOk(lang('FBILL_PAYOK'),false);
?>
<?php switch(Filter::$action): case "invoice": ?>
<p class="pagetip"><i class="icon-lightbulb icon-2x pull-left"></i> <?php echo lang('FBILL_INFO1');?></p>
<?php $row = $user->getInvoiceById();?>
<?php if(!$row):?>
<?php echo Filter::msgError(lang('FBILL_ERR'),false);?>
<?php else:?>
<?php $gaterow = $content->getGateways(true);?>
<?php $amount = $row->amount_total - $row->amount_paid;?>
<form class="xform" id="admin_form" method="post">
  <header><?php echo lang('FBILL_TITLE3');?><span><?php echo lang('FBILL_SUB') . $row->title;?></span></header>
  <div class="row odd">
    <section class="col col-3"><?php echo lang('INVC_NAME');?>:</section>
    <section class="col col-9"><?php echo $row->title;?></section>
  </div>
  <div class="row">
    <section class="col col-3"><?php echo lang('INVC_INVNUMBER');?>:</section>
    <section class="col col-9"><?php echo $core->invoice_number . $row->id;?></section>
  </div>
  <div class="row odd">
    <section class="col col-3"><?php echo lang('INVC_DUEDATE');?>:</section>
    <section class="col col-9"><?php echo Filter::doDate($core->short_date, $row->duedate);?></section>
  </div>
  <div class="row">
    <section class="col col-3"><?php echo lang('INVC_TOTAL');?>:</section>
    <section class="col col-9"><?php echo $row->amount_total;?></section>
  </div>
  <?php if($row->recurring):?>
  <div class="row odd">
    <section class="col col-3"><?php echo lang('INVC_RECURRING_PER');?>:</section>
    <section class="col col-9"><?php echo $row->days . ' ' .$core->getPeriod($row->period);?></section>
  </div>
  <?php endif;?>
  <div class="row">
    <section class="col col-3"><?php echo lang('FBILL_PENDING');?>:</section>
    <section class="col col-9"><span class="invpending label2 label-<?php echo ($row->amount_total - $row->amount_paid <> 0) ? 'important' : 'success' ;?>"><?php echo $core->formatClientCurrency($row->amount_total - $row->amount_paid, $user->currency);?></span></section>
  </div>
  <?php $credit = getValueById("credit", "users", $user->uid);?>
  <?php if($credit <> 0):?>
        <input type="hidden" name="amount" id="total_credit" disabled="disabled" readonly="readonly" value="<?php echo $credit;?>">
        <input name="usecredit" type="hidden" value="1" id="docredit" />
  <?php endif;?>
  <div class="row">
    <section class="col col-3"><?php echo lang('FBILL_PAYNOW');?>:</section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-dollar"></i>
        <input type="text" name="amount" id="total_amount" <?php if($row->recurring):?>readonly="readonly"<?php endif;?> value="<?php echo $amount;?>" disabled="disabled">
      </label>
      
    </section>
  </div>
  <footer>
    <div class="row">
      <section class="col col-3"><a href="account.php?do=billing" class="button button-secondary" style="float:left"><?php echo lang('CANCEL');?></a></section>
      <section class="col col-9 gatedata">
        <?php if ($gaterow):?>
        <?php foreach ($gaterow as $grow):?>
        <a class="load-gateway" id="item_<?php echo $grow->id;?>"> <img src="gateways/<?php echo $grow->dir.'/'.$grow->dir.'.png';?>" alt="" class="tooltip" title="<?php echo $grow->displayname;?>"/></a>
        <?php endforeach;?>
        <?php endif;?>
        <?php if ($core->enable_offline):?>
        <a class="load-gateway" id="item_100"> <img src="assets/images/check.png" alt="" class="tooltip" title="<?php echo lang('OFFLINE');?>"/></a>
        <?php endif;?>
      </section>
    </div>
  </footer>
</form>
<div id="show-result"></div>
<script type="text/javascript">
// <![CDATA[
$(document).ready(function () {
    $("#docredit").on("change", function () {
		if($(this).is(":checked")) {
			$("#show-confirm").html("<a class=\"button\" id=\"processCredit\" style=\"margin-left:5px;margin-right:5px;color:#fff;text-shadow:none\">Confirm</a>");
		} else {
			$("#show-confirm a").remove();
		}
        return false;
    });
	
    $("body").on("click", "#processCredit", function () {
        $.ajax({
            type: "POST",
            url: "ajax/controller.php",
			dataType: 'json',
			data: {
				'docredit': 1,
				'invid' : <?php echo $row->id;?>
			},
            success: function (json) {
			  if (json.type == "success") {
                  if(json.info == "full") {
					  $(".invpaid").html(json.paid);
					  $(".invpending").html("0.00");
					  $("#docredit").val(json.credit);
					  $("#total_amount").val("0.00");
					  $(".gatedata").remove();
					  $("#show-result").html(json.message);
				  } else {
					  $(".invpaid").html(json.paid);
					  $(".invpending").html(json.invpending);
					  $("#show-credit").remove();
					  $("#total_amount").val(json.invpending);
					  $("#show-result").html(json.message);
				  }
				  
			  } else if (json.type == "error") {
				  $("#show-result").html(json.message);
			  }

            }
        });
        return false;
    });
	
    $("a.load-gateway").on("click", function () {
        var parent = $(this);
        gdata = 'loadgateway=' + $(this).attr('id').replace('item_', '');
        gdata += '&invoice_id=<?php echo $row->id;?>';
		gdata += '&amount=' + $("#total_amount").val();
		gdata += '&pamount=<?php echo $amount;?>';
        $.ajax({
            type: "POST",
            url: "ajax/controller.php",
            data: gdata,
            success: function (msg) {
                $("#show-result").html(msg);
            }
        });
        return false;
    });
});
// ]]>
</script>
<?php endif;?>
<?php break;?>
<?php case "viewinvoice": ?>
<?php
  $row = $user->getProjectInvoiceById();
  $invdata = $user->getProjectInvoiceData();
  $paydata = $user->getProjectInvoicePayments();
?>
<?php if(!$row):?>
<?php echo Filter::msgError(lang('FBILL_ERR'),false);?>
<?php else:?>
<section class="widget">
  <header>
    <h1><i class="icon-reorder"></i> <?php echo lang('FBILL_SUB2') . $row->ptitle;?></h1>
  </header>
  <div class="content2">
    <table class="myTable dataview">
      <tr>
        <td><?php echo lang('INVC_NAME');?>:</td>
        <td><?php echo $row->title;?></td>
      </tr>
      <tr>
        <td><?php echo lang('INVC_INVNUMBER');?>:</td>
        <td><?php echo $core->invoice_number . $row->id;?></td>
      </tr>
      <tr>
        <td><?php echo lang('INVC_DUEDATE');?>:</td>
        <td><?php echo Filter::doDate($core->short_date, $row->duedate);?></td>
      </tr>
      <tr>
        <td><?php echo lang('INVC_TOTAL');?>:</td>
        <td><?php echo $row->amount_total;?></td>
      </tr>
      <tr>
        <td><?php echo lang('INVC_PAID');?>:</td>
        <td><?php echo $row->amount_paid;?></td>
      </tr>
      <tr>
        <td><?php echo $core->tax_name;?>:</td>
        <td><?php echo $row->tax;?></td>
      </tr>
      <tr>
        <td><?php echo lang('FBILL_PENDING');?>:</td>
        <td><span class="label2 label-<?php echo ($row->amount_total - $row->amount_paid <> 0) ? 'important' : 'success' ;?>"><?php echo $core->formatClientCurrency($row->amount_total - $row->amount_paid, $user->currency);?></span></td>
      </tr>
      <tr>
    </table>
    <div class="row">
      <div class="box"> <span class="tbicon large"> <a href="print_invoice.php?id=<?php echo $row->id;?>" class="tooltip" target="_blank" data-title="<?php echo lang('INVC_PRINT_T');?>"><i class="icon-print icon-2x"></i></a> </span> <span class="tbicon large"> <a href="ajax/controller.php?dopdf=<?php echo $row->id;?>&amp;title=<?php echo urlencode($row->title);?>" class="tooltip" data-title="<?php echo lang('INVC_PDF_T');?>"><i class="icon-file-alt icon-2x"></i></a> </span> </div>
    </div>
    <hr />
    <?php if(!$invdata):?>
    <?php echo Filter::msgInfo(lang('INVC_NOENTRY'),false);?>
    <?php else:?>
    <header>
      <h1><i class="icon-reorder"></i> <?php echo lang('FBILL_SUB3') . $row->ptitle;?></h1>
    </header>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header"><?php echo lang('BILL_ENTRY');?></th>
          <th class="header"><?php echo lang('DESC');?></th>
          <th class="header"><?php echo lang('AMOUNT');?></th>
          <th class="header"><?php echo lang('TAX');?></th>
        </tr>
      </thead>
      <?php foreach ($invdata as $irow):?>
      <tr>
        <td><?php echo $irow->title;?></td>
        <td><?php echo $irow->description;?></td>
        <td><?php echo $irow->amount;?></td>
        <td><?php echo $irow->tax;?></td>
      </tr>
      <?php endforeach;?>
      <?php unset($irow);?>
    </table>
    <?php endif;?>
    <?php if(!$paydata):?>
    <?php echo Filter::msgInfo(lang('INVC_NORECORD'),false);?>
    <?php else:?>
    <hr />
    <header>
      <h1><i class="icon-reorder"></i> <?php echo lang('FBILL_SUB4') . $row->ptitle;?></h1>
    </header>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header"><?php echo lang('INVC_RECPAID');?></th>
          <th class="header"><?php echo lang('DESC');?></th>
          <th class="header"><?php echo lang('AMOUNT');?></th>
          <th class="header"><?php echo lang('FDASH_METHOD');?></th>
        </tr>
      </thead>
      <?php foreach ($paydata as $prow):?>
      <tr>
        <td><?php echo $prow->cdate;?></td>
        <td><?php echo $prow->description;?></td>
        <td><?php echo $prow->amount;?></td>
        <td><?php echo $prow->method;?></td>
      </tr>
      <?php endforeach;?>
      <?php unset($prow);?>
    </table>
    <?php endif;?>
  </div>
</section>
<?php endif;?>
<?php break;?>
<?php default: ?>
<?php  $invactive = $user->getClientInvoices("<> 'Paid'");?>
<?php  $invarchive = $user->getClientInvoices("='Paid'");?>
<p class="pagetip"><i class="icon-lightbulb icon-2x pull-left"></i><?php echo lang('FBILL_INFO');?></p>
<section class="widget">
  <header>
    <h1><i class="icon-reorder"></i> <?php echo lang('FDASH_SUB1');?></h1>
  </header>
  <div class="content2">
    <?php if(!$invactive):?>
    <?php echo Filter::msgInfo(lang('FBILL_NOPENDING'),false);?>
    <?php else:?>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header">#</th>
          <th class="header"><?php echo lang('INVC_NAME');?></th>
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
    <header>
      <h1><i class="icon-reorder"></i> <?php echo lang('FBILL_SUB5');?></h1>
    </header>
    <?php if(!$invarchive):?>
    <?php echo Filter::msgInfo(lang('FBILL_NOPAIDINV'),false);?>
    <?php else:?>
    <table class="myTable">
      <thead>
        <tr>
          <th class="header">#</th>
          <th class="header"><?php echo lang('INVC_NAME');?></th>
          <th class="header"><?php echo lang('INVC_RECPAID');?></th>
          <th class="header"><?php echo lang('TOTAL');?> / <?php echo lang('PAID');?></th>
          <th class="header"><?php echo lang('FDASH_METHOD');?></th>
          <th class="header"><?php echo lang('ACTION');?></th>
        </tr>
      </thead>
      <?php foreach ($invarchive as $row):?>
      <tr>
        <td><small><?php echo $core->invoice_number . $row->id;?></small></td>
        <td><a href="account.php?do=billing&amp;action=viewinvoice&amp;id=<?php echo $row->id;?>"><?php echo $row->title;?></a></td>
        <td><?php echo Filter::doDate($core->short_date, $row->duedate);?></td>
        <td><?php echo $row->amount_total;?> / <?php echo $row->amount_paid;?></td>
        <td><?php echo $row->method;?></td>
        <td><a href="print_invoice.php?id=<?php echo $row->id;?>" target="_blank"><span class="label2 label-success"><?php echo lang('INVC_PRINT_T');?></span></a></td>
      </tr>
      <?php endforeach;?>
      <?php unset($row);?>
    </table>
    <?php endif;?>
  </div>
</section>
<?php break;?>
<?php endswitch;?>