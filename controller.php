<?php
  define("_VALID_PHP", true);
  
  require_once("init.php");
  if (!$user->logged_in)
  redirect_to("index.php");
?>
<?php  
  /* == Make Quote Pdf == */
  if (isset($_GET['docerpdf'])):
      if (intval($_GET['docerpdf']) == 0 || empty($_GET['docerpdf'])):
          die();
      endif;
	  
	  Filter::$id = intval($_GET['docerpdf']);
	  $title = cleanOut(preg_replace("/[^a-zA-Z0-9\s]/", "", $_GET['title']));
	  ob_start();
	  require_once(BASEPATH . 'print_cer_pdf.php');
	  $pdf_html = ob_get_contents();
	  ob_end_clean();

	  require_once(BASEPATH . 'lib/dompdf/dompdf_config.inc.php');
	  $dompdf = new DOMPDF();
	  $dompdf->load_html($pdf_html);
	  $dompdf->render();
	  $dompdf->stream($title . ".pdf");
  endif;
?>