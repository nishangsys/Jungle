
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
<h1>Total Expenditure this month</h1>


<i class="fa fa-print fa-2x "></i>

<a href="../acc/printbMEXP.php" target="_blank" >Click here To print This Report</a> 



    <?php
	
	 $month=date('m');
	
	
	$cust="SELECT SUM(exp) from daily where exp>0 and month='$month'";
	$run=mysql_query($cust) or die (mysql_error());
	while($row=mysql_fetch_assoc($run)){
		$toda=$row['SUM(exp)'];
		 $total=number_format($row['SUM(exp)'])."&nbsp; Frs";;
	}
	
	
	$cust="SELECT  SUM(exp),time from daily where exp>0 and month='$month' GROUP BY area  ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>AREA OF EXPENDITURE </td>
    <td>AMOUNT SPENT</td>
    <TD>PERCENTAGE</TD>
    
    
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
    <td><?php echo $row['time']; ?></td>
    <td><?php echo $row['SUM(exp)']; ?></td>
    <td><?php echo number_format((float)(($row['SUM(exp)']/$toda)*100),2,'.',''); ?> %</td>
    <td><?php echo $row['agent']; ?></td>
   
    
    </tr>
    <?php } ?>
    <tr >
    <td style="width:150px">Total Expenditure</td><td></td><td><?php
	echo $total;
	
	
	?></td><td>100%</td>
    </tr>
   
    </table>
   
   
 
  </div>
    </div>
    
			
		 		
</body>
</html>
