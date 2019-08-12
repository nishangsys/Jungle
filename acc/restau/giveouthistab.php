
<?php
include '../dbc.php';
require_once '../functions/functions.php';
session_start();

if(!isset($_SESSION['user_name'])){

header ("location: stocks.php");
echo "Error";
}
else {
   	
		
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Delete</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">
function doCalc(form) {
  form.total.value = parseInt(form.newquantity.value) * parseInt(form.paid.value);
}
</script>
<body>

 
 <div class="right"> 

 <?php

 

  $hist=$_GET['roll'];	
  $ol=mysql_query("SELECT * from our_tables where num='$hist' and status='2'") or die(mysql_error());	
  if(mysql_num_rows($ol)>0){
	  
	  $ol=mysql_query("UPDATE our_tables SET status='1' where num='$hist' and status='2'") or die(mysql_error());
	   echo "<script>alert('SUCCESS. TABLE $hist has now being given out')</script>";
	   echo '<meta http-equiv="Refresh" content="0; url= restaupage.php">';
  }
  else {
	  $ol=mysql_query("UPDATE our_tables SET status='2' where num='$hist' and status='1'") or die(mysql_error());
	   echo "<script>alert('SUCCESS. TABLE $hist has now being checked out')</script>";
	   echo '<meta http-equiv="Refresh" content="0; url= restaupage.php">';
  }
		 
		

		 
				
				?>
    
</div>

</body>
</html>

       <?php } ?>