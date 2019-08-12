<?php
$connect = mysqli_connect("localhost", "nishang", "google1234", "super_db");
if(isset($_POST["id"]))

	
	
 $query = "DELETE FROM basket WHERE id = '".$_POST["id"]."'";
 if(mysqli_query($connect, $query))
 {
  echo 'Data Deleted';
 }

?>