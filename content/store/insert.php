<?php

//fetch.php
$connect = mysqli_connect("localhost", "nishang", "google1234", "super_db");


if(isset($_POST["name"], $_POST["qty"]))
{
 $name = mysqli_real_escape_string($connect, $_POST["name"]);
 $qty = mysqli_real_escape_string($connect, $_POST["qty"]);
 
  $cost = mysqli_real_escape_string($connect, $_POST["cost"]);
 $sp = mysqli_real_escape_string($connect, $_POST["sp"]);
 
  $barcode = mysqli_real_escape_string($connect, $_POST["barcode"]);
    $disc = mysqli_real_escape_string($connect, $_POST["disc"]);


 
 $wh=$connect->query("INSERT INTO warehouse(name, qty,cost,sp,barcode,disc) VALUES('$name', '$qty','$cost','$sp','$barcode','$disc')");

 if(mysqli_query($connect, $wh))
 {
  echo 'Data Inserted';
 }
 
 
}
?>