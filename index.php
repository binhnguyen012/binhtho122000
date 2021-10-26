<?php
  define("_VALID_PHP", true);
  require_once("init.php");
  
  if ($user->logged_in)
      redirect_to("account.php");
	  
  if (isset($_POST['doLogin']))
      : $result = $user->login($_POST['username'], $_POST['password']);
  
  /* Login Successful */
  if ($result)
      : redirect_to("account.php");
  endif;
  endif;
?>
<?php include("header.php");?>

<div class="slider-sec" style="background: url(assets/images/slider-background.jpg) no-repeat scroll center top;">
	<div id="slider" class="flexslider">
		<ul class="slides">
		  <li style="background: url(uploads/slider/sl-1.jpg) no-repeat scroll center top;">
				<h2>Lot's of Courses and Thousand of Exams</h2>
				<p>Biuld your career on <?php echo $core->company;?> with hudred of courses and thousand of exams. Make score and pass get a certificate of demonstration of your knowledge.</p>
				<a href="courses.php" class="button button-red ">Learn More</a>
		  </li>
		  <li style="background: url(uploads/slider/sl-2.jpg) no-repeat scroll center top;">
				<h2>Online Certification and Skill Testing for Individuals</h2>
				<p><?php echo $core->company;?> is a leader in Online Certification and Skill Testing and offers an affordable and efficient way for people to prove their expertise in over 300 widely accepted online certifications.</p>
				<a href="exams.php" class="button button-red ">Learn More</a>
		  </li>
		  <li style="background: url(uploads/slider/sl-3.jpg) no-repeat scroll center top;">
				<h2>Get Certified and Give your job prospects a Boost</h2>
				<p><?php echo $core->company;?> certifications have been taken by over 2 million individuals in more than 60 countries. <?php echo $core->company;?> certifications are an excellent way of demonstrating your knowledge and skills to prospective employers and greatly boost your chances of moving ahead in your career.</p>
				<a href="resources.php" class="button button-red ">Learn More</a>
		  </li>
		</ul>
	</div>
</div>

<div class="headline">
	<h1>Boost Your Career With Exam Board</h1>
</div>

<div class="features clearfix">
    <div class="col grid_8">
		<p><i class="fa fa-camera-retro feature-icon"></i></p>
		<h3>More Courses & Exam</h3>
		<p>Biuld your career on Exam Board with hudred of courses and thousand of exams. Make score and get a certificate of demonstation of your knowledge.</p>
    </div>
    <div class="col grid_8">
		<p><i class="fa fa-camera-retro feature-icon"></i></p>
		<h3>Online Certification</h3>
		<p>Biuld your career on Exam Board with hudred of courses and thousand of exams. Make score and get a certificate of demonstation of your knowledge.</p>
    </div>
    <div class="col grid_8">
		<p><i class="fa fa-camera-retro feature-icon"></i></p>
		<h3>Boost Your Career</h3>
		<p>Biuld your career on Exam Board with hudred of courses and thousand of exams. Make score and get a certificate of demonstation of your knowledge.</p>
    </div>
</div>

<div class="call-to-action clearfix">
	<h1>Get started today with a free course program!</h1>
	<ul class="list-separator">
	  <li>Get Certified <span class="separator">|</span></li>
	  <li> Explore Marks <span class="separator">|</span> </li>
	  <li> Explore Success</li>
	</ul>
	<a href="register.php" class="button button-green">Register Now!</a>
</div> 

  
  
<div  class="box" id="loginbox">
  <div id="msgholder2"><?php print Filter::$showMsg;?></div>
  <form method="post" id="login_form" name="login_form" class="xform">
    
	<header>Login to your user account</header>
	
    <section>
      <div class="row">
        <div class="col col-3">
          <label><?php echo lang('USERNAME');?></label>
        </div>
        <div class="col col-9">
          <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
            <input  type="text" name="username" placeholder="<?php echo lang('USERNAME');?>">
          </label>
        </div>
      </div>
    </section>
    <section>
      <div class="row">
        <div class="col col-3">
          <label><?php echo lang('PASSWORD');?></label>
        </div>
        <div class="col col-9">
          <label class="input"> <i class="icon-prepend icon-lock"></i> <i class="icon-append icon-asterisk"></i>
            <input type="password"  name="password" placeholder="**********">
          </label>
        </div>
      </div>
    </section>
    <footer>
      <div class="row">
        <div class="col col-4">
          <button id="do-passreset" type="button" class="button button-red doleft"><?php echo lang('LOGIN_PASS_RESET');?></button>
        </div>
        <div class="col col-8">
          <button type="submit" name="dosubmit" class="button"><?php echo lang('LOGIN_BUT_NOW');?></button>
          <?php if($core->enable_reg):?>
          <a href="register.php" class="button button-secondary"><?php echo lang('LOGIN_REG_NOW');?></a>
          <?php endif;?>
        </div>
      </div>
    </footer>
    <input name="doLogin" type="hidden" value="1" />
  </form>
</div>
<div id="show-passreset" style="display:none">
  <p class="pagetip"><i class="icon-lightbulb icon-3x pull-left"></i> <?php echo lang('LOGIN_INFO1');?></p>
  <div  class="box">
    <form class="xform" id="admin_form" method="post">
      <header> <?php echo lang('LOGIN_SUB1');?></header>
      <section>
        <div class="row">
          <div class="col col-3">
            <label><?php echo lang('USERNAME');?></label>
          </div>
          <div class="col col-9">
            <label class="input"> <i class="icon-prepend icon-user"></i> <i class="icon-append icon-asterisk"></i>
              <input  type="text" name="uname" placeholder="<?php echo lang('USERNAME');?>">
            </label>
          </div>
        </div>
      </section>
      <section>
        <div class="row">
          <div class="col col-3">
            <label><?php echo lang('EMAIL');?></label>
          </div>
          <div class="col col-9">
            <label class="input"> <i class="icon-prepend icon-envelope-alt"></i> <i class="icon-append icon-asterisk"></i>
              <input  type="text" name="email" placeholder="<?php echo lang('EMAIL');?>">
            </label>
          </div>
        </div>
      </section>
      <section>
        <div class="row">
          <div class="col col-3">
            <label><?php echo lang('CAPTCHA');?></label>
          </div>
          <div class="col col-9">
            <label class="input"> <img src="lib/captcha.php" alt="" class="captcha-append" /> <i class="icon-prepend icon-eye-open"></i>
              <input type="text" name="captcha" placeholder="<?php echo lang('CAPTCHA');?>">
            </label>
          </div>
        </div>
      </section>
      <footer>
        <button class="button" name="dosubmit" type="submit"><?php echo lang('LOGIN_SUBMIT');?></button>
      </footer>
    </form>
  </div>
</div>
<?php echo Core::doForm("passReset","ajax/user.php");?>
<?php include("footer.php");?>