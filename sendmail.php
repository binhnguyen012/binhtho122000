<?php
  if (isset($_POST['doContact'])){
      if (intval($_POST['doContact']) == 0 || empty($_POST['doContact'])):
          die();
      endif;

      if (empty($_POST['fullname']))
          $msgs['fullname'] = 'Please enter your full name.';
		   
      if (empty($_POST['semail']))
          $msgs['semail'] = 'Please enter your email address.';
		  
      if (empty($_POST['notes']))
          $msgs['notes'] = 'Please write something.';

	  if (empty($msgs)) {
	  
		$siteEmail = $_POST['recemail'];
		$emailTitle = $_POST['rectitle'];
		$message = $_POST['notes'];
		$name = $_POST['fullname'];
		$semail = $_POST['semail'];
		  
		if(mail($siteEmail, $emailTitle, $message, 'From: ' . $name . ' <' . $semail . '>')){
			$mggg = 'success';
			$smsg = '<div class="green"><p><span class="icon-ok-sign"></span><i class="close icon-double-angle-down"></i>Your contact to the support is successfully made.</p></div>';
		}
		else {
			$mggg = 'error';
			$smsg = '<div class="green"><p><span class="icon-ok-sign"></span><i class="close icon-double-angle-down"></i>Nothing happened. Please try again.</p></div>';
		}
		
		$json['type'] = $mggg;
		$json['info'] = $smsg;
		print json_encode($json);
	  
	  }

  } 