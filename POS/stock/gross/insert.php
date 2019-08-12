<?php

//fetch.php
$connect = mysqli_connect("localhost", "nishang", "google1234", "super_db");


if(isset($_POST["name"], $_POST["qty"]))
{
 $name = mysqli_real_escape_string($connect, $_POST["name"]);
 $qty = mysqli_real_escape_string($connect, $_POST["qty"]);
 
  $cost = mysqli_real_escape_string($connect, $_POST["cost"]);
 $sp = mysqli_real_escape_string($connect, $_POST["sp"]);
 
  $disc = mysqli_real_escape_string($connect, $_POST["disc"]);

 $AD=$connect->query("SELECT * FROM wholesale WHERE name='$name' AND disc='$disc' ") or die(mysqli_error($connect));
 	if(mysqli_num_rows($AD)>0){
		echo "<script>alert('$qty of $name($disc) is already in stock')</script>";
	}
	else {
 
 $wh=$connect->query("INSERT INTO wholesale(name, qty,cost,sp,disc) VALUES('$name', '$qty','$cost','$sp','$disc')");
 if(mysqli_query($connect, $wh))
 {
  echo 'Data Inserted';
 }
 
	}
}
?>