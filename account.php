<?php
  define("_VALID_PHP", true);
  require_once("init.php");
  
  if (!$user->logged_in)
      redirect_to("index.php");
?>
<?php include("header.php");?>
<?php if(isset($_GET['msg']) and $_GET['msg'] == 1) Filter::msgAlert('<span>Alert!</span>Selected File does not exist!',0,1);?>
<?php switch(Filter::$do): case "projects": ?>
  <?php (file_exists("projects.php")) ? include("projects.php") : include("main.php");?>
  <?php break;?>
  <?php case"billing":?>
  <?php (file_exists("billing.php")) ? include("billing.php") : include("main.php");?>
  <?php break;?>
  <?php case"profile":?>
  <?php (file_exists("profile.php")) ? include("profile.php") : include("main.php");?>
  <?php break;?>
  <?php case"contact":?>
  <?php (file_exists("contact.php")) ? include("contact.php") : include("main.php");?>
  <?php break;?>
  <?php case"support":?>
  <?php (file_exists("support.php")) ? include("support.php") : include("main.php");?>
  <?php break;?>
  <?php case"courses":?>
  <?php (file_exists("courses.php")) ? include("courses.php") : include("main.php");?>
  <?php break;?>
  <?php case"enrolment":?>
  <?php (file_exists("enrolment.php")) ? include("enrolment.php") : include("main.php");?>
  <?php break;?>
  <?php case"start":?>
  <?php (file_exists("start_quize.php")) ? include("start_quize.php") : include("main.php");?>
  <?php break;?>
  <?php case"quize":?>
  <?php (file_exists("quize.php")) ? include("quize.php") : include("main.php");?>
  <?php break;?>
  <?php case"result":?>
  <?php (file_exists("result.php")) ? include("result.php") : include("main.php");?>
  <?php break;?>
  <?php case"review":?>
  <?php (file_exists("review.php")) ? include("review.php") : include("main.php");?>
  <?php break;?>
  <?php default:?>
  <?php include("main.php");?>
  <?php break;?>
<?php endswitch;?>
<?php include("footer.php");?>