<?php

//fetch.php
$connect = mysqli_connect("localhost", "nishang", "google1234", "pos");


if(isset($_POST["name"], $_POST["qty"]))
{
 $name = mysqli_real_escape_string($connect, $_POST["name"]);
 $qty = mysqli_real_escape_string($connect, $_POST["qty"]);
 
  $cost = mysqli_real_escape_string($connect, $_POST["cost"]);
 $sp = mysqli_real_escape_string($connect, $_POST["sp"]);
 
  $barcode = mysqli_real_escape_string($connect, $_POST["barcode"]);

 
 $wh=$connect->query("INSERT INTO warehouse(name, qty,cost,sp,barcode) VALUES('$name', '$qty','$cost','$sp','$barcode')");
 
 $prods=$connect->query("INSERT INTO finals(name, qty,cost,sp,barcode) VALUES('$name', '0','$cost','$sp','$barcode')");
 if(mysqli_query($connect, $wh))
 {
  echo 'Data Inserted';
 }
 
 
}
?>