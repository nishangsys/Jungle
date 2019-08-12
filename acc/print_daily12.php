<?php
include  '../dbc.php';
require_once '../functions/functions.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	
	
	$month=$_POST['month'];
	$day=$_POST['day'];
	if($day<10){
		$da="0".$day;
	}
	else {
		$da=$day;
	}
		
	$name=$_POST['name'];
	echo $area=$_POST['area'];
	$month1="0".$_POST['month'];
	$year=$_POST['year'];
	 $date=$da."-".$month."-".$year;
	$sector=$_POST['sector'];
	 $a=mysql_query("SELECT * from sectors where area='$sector' ") or die(mysql_error());
	 while($rows=mysql_fetch_assoc($a)){
		 $s=$rows['name'];
	 }
	 
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $s; ?> Daily Product Analysis</title>
<link href="../style.css" type="text/css" rel="stylesheet" />
<style>
table,tr,td,th{
	border-collapse:collapse;
	border:1px solid#000;
	text-align:left;
	padding:0px 10px;
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

<div class="receipt">

<div class="eachrec" style="border-bottom:none;"  >
	<div class="rechead">
    <img src="../img/logo.jpg" />
    <div class="oth">
    <h1><?php echo $s; ?> Daily Product Analysis for <?php echo $date; ?></h1>
    <h2><?php echo $AD ?></h2>
    <h2>Tel: <?php echo $TEL ?></h2>
    <h2>Month/Mois: <?php echo date('F'); ?></h2>
    </div></div>
    
    
    
    
     <?php
   $d=$con->query("SELECT * FROM  products where  area='".$sector."' ") or die(mysqli_error($con));
$a=1;
   
   ?>
   
   <table>
   <tr>
   <td>S/N</td><td>
   Product</td><td>Category</td><td>Cost/Unit</td><td>Amount Spent</td><td>Total Revenue</td></tr>
   <tr>
   <?php while($df=$d->fetch_assoc()){ ?>
    <td><?php echo $a++; ?></td><td>
   <?php echo $df['product']; ?></td><td><?php echo $df['category']; ?></td><td><?php echo $df['month']; ?></td>
   
   <td><?php   $n=$con->query("SELECT SUM(exp) as exp FROM  daily where  purpose='".$df['product']."' and area='".$sector."' and date='$date' ") or die(mysqli_error($con));
  while($mf=$n->fetch_assoc()){
	$totex=$mf['exp'];
	echo  number_format($totex=$mf['exp']);
  }?></td>
  
    <td><?php   $n=$con->query("SELECT SUM(rec) as exp FROM  daily where  reason='".$df['product']."' and area='".$sector."' and date='$date' ") or die(mysqli_error($con));
  while($mf=$n->fetch_assoc()){
	$totin=$mf['exp'];
	echo  number_format($totin);
  }?></td>
   
   
   
   <td><?php  
	$bal=$totin-$totex;
	if($bal<0){
		echo "<span class='error'>".  number_format($bal=$totin-$totex).";</span>";
	}
	else {
		echo "$bal";
	}
  ?></td>
  </tr>
    <?php } ?>
  
   
   
   </table>
   
    
    
    
</div>

</div>
   <br />
   
</body>
</html>
<?php } ?>


