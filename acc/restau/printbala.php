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
<title>Restau Balancesheet</title>
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

<div class="receipt" style="border:none">
<div class="eachrec" style="border-bottom:none;"  >
	<div class="rechead">
    <img src="images/bg (1).jpg" />
    <div class="oth">
    <h1><?php echo $clients; ?> Restaurant Balancesheet</h1>
    <h2><?php echo $AD ?></h2>
    <h2>Tel: <?php echo $TEL ?></h2>
    <h2>Month/Mois: <?php echo date('F'); ?></h2>
    </div></div>
    
    <div class="rechbod" style="border-bottom:none;">
    
    
  
<?php
if(isset($_POST['print'])){
	$month=$_POST['month'];
	$month1="0".$_POST['month'];
	$year=$_POST['finy'];
$sele="SELECT SUM(rec),SUM(exp),SUM(amt),date,id FROM daily where month='$month' or month='$month1'  and year='$year' and area='3'  GROUP BY date";
	$runs=mysql_query($sele) or die (mysql_error());
	
$num=1;

?>
<table>

 <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>DATE</td>
    <td>INCOME</td>
    <TD>EXPENDITURE</TD>
    <td>BALANCE</td>
    
   
        
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
    <td><?php echo $rows['date']; ?></td>
    <td><?php 
	$totin=$rows['SUM(rec)'];
	echo number_format($totin);
	
	 ?> Frs</td>
    
    <td><?php echo number_format($rows['SUM(exp)']); ?> Frs</td>
    <td><?php echo number_format(($totin-$rows['SUM(exp)'])); ?> Frs</td>
   
    
    </tr>
    
    
	<?php } ?>
    
    <tr style=" border-bottom:1px solid#000; background:#fff" bgcolor="#FF0000">
    <td>.</td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
   <tr>
   <td>Total</td>
   <td></td>
   <td><?php  $sele="SELECT SUM(rec),SUM(amt) FROM daily where month='$month' or month='$month1' and year='$year'  and area='3' GROUP BY month";
	$runs=mysql_query($sele) or die (mysql_error());
	 while($rows=mysql_fetch_assoc($runs)){
		echo  number_format($ROW=$rows['SUM(rec)']);
	 }?> Frs</td>
     
     
   <td><?php  $sele="SELECT SUM(exp) FROM daily where month='$month' or month='$month1' and year='$year'  and area='3' GROUP BY month";
	$runs=mysql_query($sele) or die (mysql_error());
	 while($rows=mysql_fetch_assoc($runs)){
		echo  number_format($seen=$rows['SUM(exp)']);
	 }?> Frs</td>
   <td style="border-bottom:1px double#000"><?php echo number_format($ROW-$seen); ?> Frs</td>
   
   </tr>
    </table>
    

			
   
   <?php } ?>
    </table>
   
    </div>
    
</div>

</div>
   <br />
   
</body>
</html>
<?php }  ?>


