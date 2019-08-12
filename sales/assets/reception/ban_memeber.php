<?php
include '../dbc.php';
if(isset($_GET['roll'])){
 $id=$_GET['roll'];
		 $ok=mysql_query("UPDATE members_times set level='2' where matricule='".$id."'") or die(mysql_error());
		 echo "<script>alert('".$id." Has been BANNED. Thank You')</script>";
		echo '<meta http-equiv="Refresh" content="0; url=frontpage.php?unmem_block">';
		 
	 }
?>