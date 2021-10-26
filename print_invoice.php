<?php
  define("_VALID_PHP", true);
  
  require_once("init.php");
  if (!$user->logged_in)
    redirect_to("index.php");

  $row = $user->getProjectInvoiceById();
  $invdata = $user->getProjectInvoiceData();
  $paydata = $user->getProjectInvoicePayments();
?>
<?php if($row):?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Invoice For &rsaquo;<?php echo $row->ptitle;?></title>
<link rel="stylesheet" href="assets/style/print_style.css">
</head>
<body>
<header>
  <h1>Invoice</h1>
  <address>
  <p><?php echo Registry::get("Core")->company;?></p>
  <p><?php echo $core->address;?><br>
  <p><?php echo $core->city.', '.$core->state.' '.$core->zip;?></p>
  <p><?php echo ($core->phone) ? 'Phone: '.$core->phone : '';?></p>
  <p>Business Number: <?php echo $core->tax_number;?></p>
  <?php if($row->vat):?>
  <p>VAT: <?php echo $row->vat;?></p>
  <?php endif;?>
  </address>
  <span>
  <?php if(file_exists(UPLOADS.'print_logo.png')):?>
  <img src="<?php echo UPLOADURL;?>print_logo.png" alt="<?php echo Registry::get("Core")->company;?>" />
  <?php elseif (Registry::get("Core")->logo):?>
  <img src="<?php echo UPLOADURL.Registry::get("Core")->logo;?>" alt="<?php echo Registry::get("Core")->company;?>" />
  <?php else:?>
  <?php echo Registry::get("Core")->company;?>
  <?php endif;?>
  </span>
</header>
<article>
  <address>
  <p><?php echo $row->name;?><br />
    <?php echo $row->company;?><br />
    <?php echo $row->address;?><br />
    <?php echo $row->city.', '.$row->state.' '.$row->zip;?> <br />
    <?php echo ($row->phone) ? 'Phone: '.$row->phone : '';?></p>
  </address>
  <table class="meta">
    <tr>
      <th><span>Invoice #</span></th>
      <td><span><?php echo $core->invoice_number . $row->id;?></span></td>
    </tr>
    <tr>
      <th><span>Created</span></th>
      <td><span><?php echo Filter::dodate($core->short_date, $row->created);?></span></td>
    </tr>
    <tr>
      <th><span>Due Date</span></th>
      <td><span><?php echo Filter::dodate($core->short_date, $row->duedate);?></span></td>
    </tr>
    <tr>
      <th><span>Amount Due</span></th>
      <td><span><?php echo $core->formatMoney($row->amount_total - $row->amount_paid);?></span></td>
    </tr>
  </table>
  <table class="inventory">
    <thead>
      <tr>
        <th><span>Invoice Items</span></th>
        <th><span>Total</span></th>
      </tr>
    </thead>
    <tbody>
      <?php if($invdata):?>
      <?php foreach ($invdata as $irow):?>
      <tr>
        <td><span><?php echo $irow->title;?> <small>(<?php echo $irow->description;?>)</small></span></td>
        <td><span><?php echo $irow->amount;?></span></td>
      </tr>
      <?php endforeach;?>
      <?php endif;?>
      <?php if($row->tax):?>
      <tr>
        <td><span><?php echo $core->tax_name;?></span></td>
        <td><span><?php echo $row->tax;?></span></td>
      </tr>
      <?php endif;?>
    </tbody>
  </table>
  <table class="balance">
    <tr>
      <th><span>Subtotal</span></th>
      <td><span><?php echo number_format($row->amount_total - $row->tax,2);?></span></td>
    </tr>
    <tr>
      <th><span>Taxes</span></th>
      <td><span><?php echo $row->tax;?></span></td>
    </tr>
    <tr>
      <th><span>Grand Total</span></th>
      <td><span><?php echo $row->amount_total;?></span></td>
    </tr>
    <tr>
      <th style="display:none"></th>
      <td style="display:none"></td>
    </tr>
    <tr>
      <th style="display:none"></th>
      <td style="display:none"></td>
    </tr>
    <tr>
      <th style="display:none"></th>
      <td style="display:none"></td>
    </tr>
    <tr>
      <th>Status</th>
      <td class="<?php echo ($row->amount_paid != $row->amount_total) ? 'red' : 'green';?>"><?php echo ($row->amount_paid != $row->amount_total) ? 'Pending' : 'Paid';?></td>
    </tr>
  </table>
  <?php if($paydata):?>
  <table class="payments">
    <thead>
      <tr>
        <th><span>#</span></th>
        <th><span>Payment Date</span></th>
        <th><span>Payment Info</span></th>
        <th><span>Total Amount</span></th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($paydata as $prow):?>
      <tr>
        <td><span><?php echo $prow->id;?></span></td>
        <td><span><?php echo Filter::dodate($core->short_date, $prow->created);?></span></td>
        <td><span><?php echo $prow->description?></span></td>
        <td><span><?php echo $prow->amount;?></span></td>
      </tr>
      <?php endforeach;?>
    </tbody>
  </table>
  <?php endif;?>
</article>
<aside>
  <h1><span>Additional Notes</span></h1>
  <div>
    <p><small class="extra"><?php echo cleanOut($row->notes);?></small></p>
  </div>
</aside>
<footer> To make a payment, please, login to the client area at: <?php echo $core->site_url;?></footer>
</body>
</html>
<?php else:?>
<?php die('You have selected invalid invoice');?>
<?php endif;?>