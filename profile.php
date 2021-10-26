<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
 
  $row = $user->getUserData();
?>
<p class="bluetip"><i class="icon-lightbulb icon-3x pull-left"></i> <?php echo lang('PRO_INFO');?><br>
  <?php echo lang('REQFIELD1');?> <i class="icon-append icon-asterisk"></i> <?php echo lang('REQFIELD2');?></p>
<form class="xform" id="admin_form" method="post">
  <header><?php echo lang('PRO_TITLE');?><span><?php echo lang('PRO_SUB') .  ' <i class="icon-double-angle-right"></i> ' . $user->username;?></span></header>
  <div class="row">
    <section class="col col-6">
      <label class="input state-disabled"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" disabled="disabled" name="username" readonly="readonly" value="<?php echo $row->username;?>" placeholder="<?php echo lang('USERNAME');?>">
      </label>
      <div class="note"><?php echo lang('USERNAME');?></div>
    </section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-lock"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="password" placeholder="<?php echo lang('PASSWORD');?>">
      </label>
      <div class="note note-error"><?php echo lang('PASSWORD_T');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-envelope-alt"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="email" value="<?php echo $row->email;?>" placeholder="<?php echo lang('EMAIL');?>">
      </label>
      <div class="note"><?php echo lang('EMAIL');?></div>
    </section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-phone"></i>
        <input type="text" name="phone" value="<?php echo $row->phone;?>" placeholder="<?php echo lang('PHONE');?>">
      </label>
      <div class="note"><?php echo lang('PHONE');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="fname" value="<?php echo $row->fname;?>" placeholder="<?php echo lang('FNAME');?>">
      </label>
      <div class="note"><?php echo lang('FNAME');?></div>
    </section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="lname" value="<?php echo $row->lname;?>" placeholder="<?php echo lang('LNAME');?>">
      </label>
      <div class="note"><?php echo lang('LNAME');?></div>
    </section>
  </div>
  <hr>
  <div class="row">
    <section class="col col-5">
      <select name="country">
        <option value="0"><?php echo lang('COUNTRY');?></option>
        <?php foreach($content->getCountryList() as $country):?>
        <?php $sel = ($country->id == $row->country) ? " selected=\"selected\"" : "" ;?>
        <option value="<?php echo $country->id;?>"<?php echo $sel;?>><?php echo $country->name;?></option>
        <?php endforeach;?>
        <?php unset($country);?>
      </select>
      <div class="note"><?php echo lang('COUNTRY');?></div>
    </section>
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-flag"></i>
        <input type="text" name="city" value="<?php echo $row->city;?>" placeholder="<?php echo lang('CITY');?>">
      </label>
      <div class="note"><?php echo lang('CITY');?></div>
    </section>
    <section class="col col-3">
      <label class="input"> <i class="icon-prepend icon-pushpin"></i>
        <input type="text" name="zip" value="<?php echo $row->zip;?>" placeholder="<?php echo lang('ZIP');?>">
      </label>
      <div class="note"><?php echo lang('ZIP');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-building"></i>
        <input type="text" name="company" value="<?php echo $row->company;?>" placeholder="<?php echo lang('COMPANY');?>">
      </label>
      <div class="note"><?php echo lang('COMPANY');?></div>
    </section>
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-map-marker"></i>
        <input type="text" name="address" value="<?php echo $row->address;?>" placeholder="<?php echo lang('ADDRESS');?>">
      </label>
      <div class="note note"><?php echo lang('ADDRESS');?></div>
    </section>
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-umbrella"></i>
        <input type="text" name="state" value="<?php echo $row->state;?>" placeholder="<?php echo lang('STATE');?>">
      </label>
      <div class="note"><?php echo lang('STATE');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-4">
      <label class="input">
        <input name="avatar" type="file" class="fileinput"/>
      </label>
      <div class="note"><?php echo lang('AVATAR');?></div>
    </section>
    <section class="col col-2"> <img src="thumbmaker.php?src=uploads/avatars/<?php echo ($row->avatar) ? $row->avatar : "blank.png";?>&amp;w=40&amp;h=40&amp;s=1&amp;a=t1" alt="" title="" class="avatar" /> </section>
    <section class="col col-3">
      <label class="input"> <i class="icon-prepend icon-credit-card"></i>
        <input type="text" name="vat" value="<?php echo $row->vat;?>" placeholder="<?php echo lang('UVAT');?>">
      </label>
      <div class="note"><?php echo lang('UVAT');?></div>
    </section>
    <section class="col col-3">
      <label class="input state-disabled"> <i class="icon-prepend icon-money"></i> <i class="icon-append icon-exclamation-sign  tooltip" data-title="<?php echo lang('CLIENT_CURRENCY_T');?>"></i>
        <input type="text" name="currency" disabled="disabled" readonly="readonly" value="<?php echo $row->currency;?>" placeholder="<?php echo lang('CONF_CURRENCY');?>">
      </label>
      <div class="note"><?php echo lang('CONF_CURRENCY');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-4">
      <label class="input state-disabled"> <i class="icon-prepend icon-calendar"></i>
        <input type="text" disabled="disabled" readonly="readonly" name="created" value="<?php echo Filter::doDate($core->long_date, $row->created);?>" placeholder="<?php echo lang('CREATED');?>">
      </label>
      <div class="note"><?php echo lang('CREATED');?></div>
    </section>
    <section class="col col-4">
      <label class="input state-disabled"> <i class="icon-prepend icon-calendar"></i>
        <input type="text" disabled="disabled" readonly="readonly" name="lastlogin" value="<?php echo Filter::doDate($core->long_date, $row->lastlogin);?>" placeholder="<?php echo lang('STAFF_LASTLOGIN');?>">
      </label>
      <div class="note"><?php echo lang('STAFF_LASTLOGIN');?></div>
    </section>
    <section class="col col-4">
      <label class="input state-disabled"> <i class="icon-prepend icon-laptop"></i>
        <input type="text" disabled="disabled" readonly="readonly" name="lastip" value="<?php echo $row->lastip;?>" placeholder="<?php echo lang('STAFF_LASTIP');?>">
      </label>
      <div class="note"><?php echo lang('STAFF_LASTIP');?></div>
    </section>
  </div>
  <footer>
    <button class="button" name="dosubmit" type="submit"><?php echo lang('PRO_SUBMIT');?></button>
  </footer>
</form>
<?php echo Core::doForm("processUser","ajax/controller.php");?>