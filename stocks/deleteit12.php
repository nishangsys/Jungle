<?php 

include('../includes/dbc.php');

 $get_sector=$_GET['sector'];
 $get_id=$_GET['roll'];

mysql_query("delete from truck where id= '$get_id'  ")or die(mysql_error());
	echo "<script>alert('Product Successfully Delete. Thank You')</script>";
	
	echo '<meta http-equiv="Refresh" content="0; url=supplies.php?roll&supp='.$get_sector.' ">';
	?>