<?php
  define("_VALID_PHP", true);
  require_once("init.php");
  
  if(!$core->enable_reg)
      redirect_to("index.php");
	  
  if ($user->logged_in)
      redirect_to("account.php");
?>
<?php include("header.php");?>
<p class="pagetip"><i class="icon-lightbulb icon-3x pull-left"></i> <?php echo lang('REG_INFO');?><br>
  <?php echo lang('REQFIELD1');?> <i class="icon-append icon-asterisk"></i> <?php echo lang('REQFIELD2');?></p>
<div id="msgresult"></div>
<form class="xform" id="user_form" method="post">
  <header><?php echo ($core->logo) ? '<img src="'.SITEURL.'/uploads/'.$core->logo.'" alt="'.$core->company.'" class="logo"/>': $core->company;?> <?php echo lang('REG_TITLE');?></header>
  <div class="row">
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="username" placeholder="<?php echo lang('USERNAME');?>">
      </label>
      <div class="note"><?php echo lang('USERNAME');?></div>
    </section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-lock"></i> <i class="icon-append icon-asterisk"></i>
        <input type="password" name="pass" placeholder="<?php echo lang('PASSWORD');?>">
      </label>
      <div class="note"><?php echo lang('PASSWORD');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-envelope-alt"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="email" placeholder="<?php echo lang('EMAIL');?>">
      </label>
      <div class="note"><?php echo lang('EMAIL');?></div>
    </section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-lock"></i> <i class="icon-append icon-asterisk"></i>
        <input type="password" name="pass2" placeholder="<?php echo lang('PASSWORD2');?>">
      </label>
      <div class="note"><?php echo lang('PASSWORD2');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="fname" placeholder="<?php echo lang('FNAME');?>">
      </label>
      <div class="note"><?php echo lang('FNAME');?></div>
    </section>
    <section class="col col-6">
      <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
        <input type="text" name="lname" placeholder="<?php echo lang('LNAME');?>">
      </label>
      <div class="note"><?php echo lang('LNAME');?></div>
    </section>
  </div>
  <hr>
  <div class="row">
    <section class="col col-5">
      <select name="country">
        <option disabled="" selected="" value="0"><?php echo lang('COUNTRY');?></option>
        <?php foreach($content->getCountryList() as $country):?>
        <option value="<?php echo $country->id;?>"><?php echo $country->name;?></option>
        <?php endforeach;?>
        <?php unset($country);?>
      </select>
      <div class="note"><?php echo lang('COUNTRY');?></div>
    </section>
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-flag"></i>
        <input type="text" name="city" placeholder="<?php echo lang('CITY');?>">
      </label>
      <div class="note"><?php echo lang('CITY');?></div>
    </section>
    <section class="col col-3">
      <label class="input"> <i class="icon-prepend icon-pushpin"></i>
        <input type="text" name="zip" placeholder="<?php echo lang('ZIP');?>">
      </label>
      <div class="note"><?php echo lang('ZIP');?></div>
    </section>
  </div>
  <div class="row">
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-building"></i>
        <input type="text" name="company" placeholder="<?php echo lang('COMPANY');?>">
      </label>
      <div class="note"><?php echo lang('COMPANY');?></div>
    </section>
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-map-marker"></i>
        <input type="text" name="address" placeholder="<?php echo lang('ADDRESS');?>">
      </label>
      <div class="note"><?php echo lang('ADDRESS');?></div>
    </section>
    <section class="col col-4">
      <label class="input"> <i class="icon-prepend icon-umbrella"></i>
        <input type="text" name="state" placeholder="<?php echo lang('STATE');?>">
      </label>
      <div class="note"><?php echo lang('STATE');?></div>
    </section>
  </div>
  <footer>
    <button class="button" name="dosubmit" type="submit"><?php echo lang('REG_SUBMIT');?></button>
    <a href="index.php" class="button button-secondary"><?php echo lang('REG_BACK');?></a> </footer>
  <input name="doRegister" type="hidden" value="1" />
</form>
<script type="text/javascript">
// <![CDATA[
  $(document).ready(function () {
      $("#user_form").submit(function () {
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
					  $("#user_form").hide();
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
<?php include("footer.php");?>