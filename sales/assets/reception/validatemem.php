<?php
include '../dbc.php';
if(isset($_GET['roll'])){
	$id=$_GET['roll'];
		 $ok=mysql_query("UPDATE member set done='2' where id='".$id."'") or die(mysql_error());
		 echo "<script>alert('".$name." is now our member. Thank You')</script>";
		 echo '<meta http-equiv="Refresh" content="0; url=frontpage.php?next_pages">';
		 
	 }
?>