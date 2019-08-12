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
        <link href="../reception/style.css" rel="stylesheet" type="text/css" />
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

<div class="receipt">
<div class="eachrec" style="border-bottom:none;"  >
	<div class="rechead">
    <img src="images/bg (1).jpg" />
    <div class="oth">
    <h1><?php echo $clients; ?></h1>
    <h2><?php echo $AD ?></h2>
    <h2>Tel: <?php echo $TEL ?></h2>
    <h2>Month/Mois: <?php echo date('F'); ?></h2>
    </div></div>
    
    <div class="rechbod" style="border-bottom:none;">
    
    
   <?php

	
 $sele="SELECT * from products";
	$runs=mysql_query($sele) or die (mysql_error());
	
$num=1;

?>
<table>

<tr style="background:#fff; padding:10PX 0PX; height:30px; color:#000; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>PRODUCT</td>
    <td>CATEGORY</td>
    <TD>BARCODE</TD>
    
    
    <?php while($rows=mysql_fetch_assoc($runs)){
		
		
		 ?>
        
    <tr>
    <?PHP
	if($num%2==0){
		echo "<tr style='background:#eee;height:30px'>";		
	}
	else {
		echo "<tr style='background:#ccc; height:30px'>";
	}
	?>
    <td><?php echo $num++; ?></td>
    <td><?php echo $rows['product']; ?></td>
    <td><?php echo $rows['category']; ?> </td>
    
    <td><?php echo $rows['barcode']; ?> </td>
   
   
    
    </tr>
    
    
	<?php } ?>
    
    
    </table>
   
   
    </div>
    
</div>

</div>
   <br />
   
</body>
</html>
<?php }?>


