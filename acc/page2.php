<?PHP


@session_start();

require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}
$level=$_SESSION['banned'];
 if($level=='20' or $level=='100'){	
		
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Receipts</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>

<body>

<div class="right">
<div class="clear"></div>
   <iframe src="../libchart/stats/VerticalBarChartTest.php" style="width:1000px; height:1100px; border:none"></iframe>

</div>

  
</body>
</html>
<?php } ?>


