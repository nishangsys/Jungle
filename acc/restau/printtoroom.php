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
<link href="style.css" type="text/css" rel="stylesheet" />
<style>
.pageso{
	width:700px; 
	height:400px;
	border:1px solid#000;
	margin:auto;
}
.ug{
	
	width:97%;
	height:20px;
	margin:auto;	
	margin-top:10px;
	
}
.g{
	float:left;
	width:70px;
	padding:0PX 0PX;
	height:25px;
	
	border:1px solid#000;
	margin-left:0px;
	
}
.f{
	float:left;
	width:300px;
	padding:0PX 0PX;
	height:25px;
	
	border:1px solid#000;
	text-align:center;
	
}
.fi{
	float:left;
	width:120px;
	padding:0PX 0PX;
	height:25px;
	
	border:1px solid#000;
	text-align:center;
	
}
</style>
</head>

<!---
<input type="button" value="Print Ticket"
onClick="window.print()"/>
------>
<body onload="window.print();">

<div class="receipt"> 
<div class="mainbox">

<?php include '../reception/header.php'; ?>
    
    

   
    <?PHP
   $tale=$_GET['roll'];
      $first=mysql_query("UPDATE basket_rooms set printed='2' where tab='".$tale."' and status='1' AND area='15'   ") or die(mysql_error());
	  
	     $fi=mysql_query("UPDATE basket set printed='2' where tab='".$tale."' and status='1' AND area='15'   ") or die(mysql_error());

   $result=mysql_query("SELECT product,category,SUM(qty),SUM(price),SUM(total),ids,yourid from basket_rooms where tab='".$tale."' and status='1'and area='15' group by product   ");
$num=1;
?>
   
    <div style=" float:left; width:700px; margin-top:-10px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:28px; ">
<div style=" float:left; width:550px; margin-top:17px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:24px; ">
RESTAURANT/ SNACK BAR RECEIPT

</div>

<div style=" float:left; width:140px; margin-top:17px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:18px; ">
 <?php echo date('d/m/Y'); ?>


</div>




<div style=" float:left; width:720px; margin-top:0px;TEXT-ALIGN:CENTER; font-family:arial; height:300px; 
font-size:14px; ">

<div style=" float:left; width:170px; height:25px;font-size:17px;"> Client's  and Room :  </div>


<div style=" float:left; width:500px;border-bottom:1px solid #000;font-weight:normal; height:25px;font-size:17px;"> 


<div style=" float:left; width:300px;margin-top:3px;">
<?php
  $f=mysql_query("SELECT * from finances where yourid='".$tale."'  ") or die(mysql_error());
  while($an=mysql_fetch_assoc($f)){  

 echo $an['name'];
;?> of R <?php  echo $an['room']; ?>
<?php } ?>
</div>
</div>
  
   <div class="ug">
   <div class="g"><B>S/N</div>
   <div class="f">Product</div>
 
 <div class="g" style="">Qty</div>
 <div class="fi">U.Price</div>
 <div class="fi">TC</B></div>
 <?php   while ($getres=mysql_fetch_assoc($result)){ ?>
 
 <div class="g"><?PHP echo $num++; ?></div>
   <div class="f" ><?PHP
   $ids=$getres['ids'];
   
   if($ids=='2'){
	   echo $getres['product']; 
   }
   elseif($ids=='3') {  
    echo $getres['product'];
   }
   ?></div>
 
 <div class="g" style=" text-align:center"><?PHP echo $getres['SUM(qty)']; ?></div>
 <div class="fi" style=" text-align:center"><?PHP echo $getres['SUM(price)']; ?></div>
 <div class="fi" style=" text-align:center"><?PHP echo $getres['SUM(total)']; ?></div>
 <?PHP } ?>
 
  
</div>
<div class="clear">
</div>
<div style="width:545px; height:auto; padding:5PX 10PX; margin-left:10PX; float:left; text-align:center; border:1px solid#999">Grand Total</div>
 <div style="width:125px; height:auto;padding:5PX 0PX; background:#666; float:left; text-align:center; color:#fff; border:1px solid#999">
<?php
$result=mysql_query("SELECT SUM(total) as total,tab from basket_rooms where tab='".$tale."' and status='1' and area='15' GROUP BY tab  ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']) ."&nbsp;&nbsp;Frs";

}
?> 

 </div>  
   <div style="position:relative; font-size:14px; text-align:center; bottom:0px; height:30px">Done today <?php echo date('l d-F-Y'); ?> @ <?php echo date('h:i'); ?> </div>

</div></div>

</div>


 
    </div>









<div class="mainbox">


<?php include '../reception/header.php'; ?>
    
    

   
    <?PHP
   $tale=$_GET['roll'];
      $first=mysql_query("UPDATE basket_rooms set printed='2' where tab='".$tale."' and status='1' and area='15'  ") or die(mysql_error());

   $result=mysql_query("SELECT product,category,SUM(qty),SUM(price),SUM(total),ids,yourid from basket_rooms where tab='".$tale."' and status='1' and area='15' group by product   ");
$num=1;
?>
   
    <div style=" float:left; width:700px; margin-top:-10px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:28px; ">
<div style=" float:left; width:550px; margin-top:17px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:24px; ">
RESTAURANT/ SNACK BAR RECEIPT

</div>

<div style=" float:left; width:140px; margin-top:17px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:18px; ">
 <?php echo date('d/m/Y'); ?>


</div>




<div style=" float:left; width:720px; margin-top:0px;TEXT-ALIGN:CENTER; font-family:arial; height:300px; 
font-size:14px; ">

<div style=" float:left; width:170px; height:25px;font-size:17px;"> Client's  and Room :  </div>


<div style=" float:left; width:500px;border-bottom:1px solid #000;font-weight:normal; height:25px;font-size:17px;"> 


<div style=" float:left; width:300px;margin-top:3px;">
<?php
  $f=mysql_query("SELECT * from finances where yourid='".$tale."'  ") or die(mysql_error());
  while($an=mysql_fetch_assoc($f)){  

 echo $an['name'];
;?> of R<?php  echo $an['room']; ?>
<?php } ?>

</div>
</div>
  
   <div class="ug">
   <div class="g"><B>S/N</div>
   <div class="f">Product</div>
 
 <div class="g" style="">Qty</div>
 <div class="fi">U.Price</div>
 <div class="fi">TC</B></div>
 <?php   while ($getres=mysql_fetch_assoc($result)){ ?>
 
 <div class="g"><?PHP echo $num++; ?></div>
   <div class="f" ><?PHP
   $ids=$getres['ids'];
   
   if($ids=='2'){
	   echo $getres['product']; 
   }
   elseif($ids=='3') {  
    echo $getres['product'];
   }
   ?></div>
 
 <div class="g" style=" text-align:center"><?PHP echo $getres['SUM(qty)']; ?></div>
 <div class="fi" style=" text-align:center"><?PHP echo $getres['SUM(price)']; ?></div>
 <div class="fi" style=" text-align:center"><?PHP echo $getres['SUM(total)']; ?></div>
 <?PHP } ?>
 
  
</div>
<div class="clear">
</div>
<div style="width:545px; height:auto; padding:5PX 10PX; margin-left:10PX; float:left; text-align:center; border:1px solid#999">Grand Total</div>
 <div style="width:125px; height:auto;padding:5PX 0PX; background:#666; float:left; text-align:center; color:#fff; border:1px solid#999">
<?php
$result=mysql_query("SELECT SUM(total) as total,tab from basket_rooms where tab='".$tale."' and status='1' and area='15' GROUP BY tab  ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']) ."&nbsp;&nbsp;Frs";

}
?> 

 </div>  
   <div style="position:relative; font-size:14px; text-align:center; bottom:0px; height:30px">Done today <?php echo date('l d-F-Y'); ?> @ <?php echo date('h:i'); ?> </div>

</div></div>

</div>


 
    </div>








</div>
   <?php } ?>
</body>
</html>




