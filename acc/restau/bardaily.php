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
    <h1><?php echo $clients; ?> </h1>
    <h2><?php echo $AD ?></h2>
    <h2>Tel: <?php echo $TEL ?></h2>
    <h2>Month/Mois: <?php echo date('F'); ?></h2>
    </div></div>
    
    <div class="rechbod" style="border-bottom:none;">
    <h1>Bar Daily Records</h1>
 
    <?php
	
	 $today=date('d-m-Y');
	
	
	$cust="SELECT room,time,SUM(rec) from daily where date='$today' and area='15' and cust_id!='bar' and rec>0 GROUP BY time   order by time DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>Table Number</td>
    <td>Amount Paid </td>
    <TD>For Table</TD>
     <TD>Time</TD>
  
    
    <?php while($row=mysql_fetch_assoc($run)){
		$agen=$row['agent'];
		
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
    <td>Table <?php echo $row['room']; ?></td>
        <td><?php echo number_format($row['SUM(rec)']); ?> Frs</td>
    <td>Table <?php echo $row['room']; ?> </td>
    <td> <?php echo $row['time']; ?> </td>
 
   
    
    </tr>
    <?php } ?>
    
   
    </table>
    <hr>
    <table>
    <tr style=" margin-left:-70px">
    <td >Total Income In Cash</td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	
	$cust="SELECT SUM(rec) from daily WHERE  daily.date='$today' and area='15'  ";
	$run=mysql_query($cust) or die (mysql_error());
	while($row=mysql_fetch_assoc($run)){
		 echo $totalrec=$row['SUM(rec)']."&nbsp; Frs";;
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
    
    <!---------------------------------------------------------------------------------------->
    
    
    <?php
	
	 $today=date('d-m-Y');
	
	
	$cust="SELECT room,time,SUM(owed) from daily where date='$today' and area='15' and paidtou='room services'  GROUP BY room   order by id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>Room supplied</td>
    <td>Cost of Drinks</td>
    
     <TD>Time</TD>
  
    
    <?php while($row=mysql_fetch_assoc($run)){
		$agen=$row['agent'];
		
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
    <td>Room <?php echo $row['room']; ?></td>
        <td><?php echo number_format($row['SUM(owed)']); ?> Frs</td>
    <td> <?php echo $row['time']; ?> </td>
 
   
    
    </tr>
    <?php } ?>
    
   
    </table>
    <hr>
    <table>
    <tr style=" margin-left:-70px">
    <td >Total Supplies to Room services </td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	
	$cust1=mysql_query("SELECT SUM(owed) from daily where date='$today' and area='15'  GROUP BY date   ") or die(mysql_error());	
	while($row2=mysql_fetch_assoc($cust1)){
		echo $ans=$row2['SUM(owed)'];
		
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     <table style="margin-left:-60px"">
    <tr style="margin-left:-30px">
    <td style="margin-left:-30px">Total Expenditure on Bar</td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	
	$cu="SELECT SUM(exp)as exp  from daily WHERE  cust_id='bar'  and area='15' and date='$today'  ";
	$rus=mysql_query($cu) or die (mysql_error());
	while($row=mysql_fetch_assoc($rus)){
		echo $total1=$row['exp']."&nbsp; Frs";;
		
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
    <table>
    <tr><td style="font-style:italic; font-weight:bold">Closing Balance for <?php echo date('d-m-Y'); ?></td><td style="background:#333; color:#fff"><?php
echo number_format(  (($totalrec+$ans)-$total1))."&nbsp; Frs";
	?></td></tr>
    
    </table>
   
   
 
  </div>
  </tr>
  </tr>
     </div>
    
</div>

</div>
   <br />
   
</body>
</html>
<?php } ?>


