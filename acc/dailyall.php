<?PHP


session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
    ?>
<!DOCTYPE html>
<html>
	
<head>
	<title>New Client</title>
		<meta charset="utf-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
        <link href="style.css" rel="stylesheet" type="text/css" />
		<!--//webfonts-->
</head>




<body>

<div class="right">
<div class="BOXC">

<i class="fa fa-print fa-2x "></i>

<a href="dailyprint.php" >Click here To print Today's Report</a> 

</div>

    <?php
	
	 $today=date('d-m-Y');
	
	
	$cust="SELECT * from daily,customers where daily.date='$today' and customers.client_id=daily.cust_id  order by daily.id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>Client's Name</td>
    <td>Amount Paid </td>
    <TD>For Room</TD>
  
    
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
    <td><?php echo $row['stu_name']; ?></td>
        <td><?php echo number_format($row['rec']); ?> Frs</td>
    <td>Room <?php echo $row['room']; ?> </td>
 
   
    
    </tr>
    <?php } ?>
    
   
    </table>
    <hr>
    <table>
    <tr style=" margin-left:-70px">
    <td >Total Income</td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	
	$cust="SELECT SUM(rec) from daily WHERE  daily.date='$today' order by daily.id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	while($row=mysql_fetch_assoc($run)){
		 echo $total=number_format($row['SUM(rec)'])."&nbsp; Frs";;
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
     <table style="margin-left:-60px"">
    <tr style="margin-left:-30px">
    <td style="margin-left:-30px">Total Expenditure</td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	$custi="SELECT SUM(exp)as expenses  from daily WHERE  daily.date='$today' order by daily.id DESC ";
	$runs=mysql_query($custi) or die (mysql_error());
	while($row=mysql_fetch_assoc($runs)){
		echo $total1=number_format($row['expenses'])."&nbsp; Frs";;
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
    <table>
    <tr><td style="font-style:italic; font-weight:bold">Closing Balance for <?php echo date('d-m-Y'); ?></td><td style="background:#333; color:#fff"><?php
	
	 $today=date('d-m-Y');
	
	$cust="SELECT SUM(rec) from daily WHERE  daily.date='$today' order by daily.id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	while($row=mysql_fetch_assoc($run)){
		 $total=$row['SUM(rec)']."&nbsp; Frs";;
	}
	
	$custi="SELECT SUM(exp)as expenses  from daily WHERE  daily.date='$today' order by daily.id DESC ";
	$runs=mysql_query($custi) or die (mysql_error());
	while($row=mysql_fetch_assoc($runs)){
		 $total1=$row['expenses']."&nbsp; Frs";;
	}
	echo number_format($total-$total1)."&nbsp; Frs";;;
	
	
	?></td></tr>
    
    </table>
   
 
  </div>
    </div>
    
			
		 		
</body>
</html>
<?php } ?>