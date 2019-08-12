<?php
include  '../dbc.php';
require_once '../functions/functions.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Receipt</title>
<link href="../style.css" type="text/css" rel="stylesheet" />
<style>
.pageso{
	width:310px; 
	height:400px;
	border:1px solid#000;
	margin:auto;
}
.ug{
	
	width:97%;
	height:20px;
	margin:auto;	
	margin-top:-10px;
}
.g{
	float:left;
	width:30px;
	height:20px;
	border:1px solid#000;
	margin-left:0px;
	
}
.f{
	float:left;
	width:100px;
	height:20px;
	border:1px solid#000;
	text-align:center;
	
}
.fi{
	float:left;
	width:60px;
	height:20px;
	border:1px solid#000;
	text-align:center;
	
}
</style>

</head>

<body onload="window.print();">

  
<?php 


$cus1="SELECT * from client ";
$run1=mysql_query($cus1) or die (mysql_error());
 while ($rows=mysql_fetch_assoc($run1)){
	 $clients=$rows['name'];
	 $AD=$rows['address'];
	 $TEL=$rows['as1'];
	$vil=$rows['as2'];
 }


?>


  
    
   <div class="pageso">
   <?PHP
   $tale=$_GET['roll'];
      $first=mysql_query("UPDATE basket set printed='2' where tab='".$tale."' and status='1'   ") or die(mysql_error());

   $result=mysql_query("SELECT product,category,SUM(qty),SUM(price),SUM(total),ids from basket where tab='".$tale."' and status='1' group by category   ");
$num=1;
?>
   
   <h1><?php echo $clients; ?> Receipt</h1>
   <div class="ug">
   <div class="g">S/N</div>
   <div class="f">Product</div>
 
 <div class="g" style="">Qty</div>
 <div class="fi">U.Price</div>
 <div class="fi">TC</div>
 <?php   while ($getres=mysql_fetch_assoc($result)){ ?>
 
 <div class="g"><?PHP echo $num++; ?></div>
   <div class="f" style="font-size:12px"><?PHP
   $ids=$getres['ids'];
   
   if($ids=='2'){
	   echo $getres['product']; 
   }
   elseif($ids=='3') {  
    echo $getres['category'];
   }
   ?></div>
 
 <div class="g" style=" text-align:center"><?PHP echo $getres['SUM(qty)']; ?></div>
 <div class="fi" style=" text-align:center"><?PHP echo $getres['SUM(price)']; ?></div>
 <div class="fi" style=" text-align:center"><?PHP echo $getres['SUM(total)']; ?></div>
 <?PHP } ?>
 
  
</div>
<div class="clear">
</div>
<div style="width:180px; height:auto; float:left; text-align:center; border:1px solid#999">Grand Total</div>
 <div style="width:110px; height:auto; background:#666; float:left; text-align:center; color:#fff; border:1px solid#999">
<?php
$result=mysql_query("SELECT SUM(total) as total,tab from basket where tab='".$tale."' and status='1' GROUP BY tab  ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']) ."&nbsp;&nbsp;Frs";

}
?> 

 </div>  
   <div style="position:relative; font-size:12px; text-align:center; bottom:0px; height:30px">Done today <?php echo date('d-m-Y'); ?> @ <?php echo date('h:i'); ?> </div>

</body>
</html>
<?php }?>


