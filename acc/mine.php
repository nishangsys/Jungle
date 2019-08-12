


<body>

<div class="right">
<div class="BOXC">

<i class="fa fa-print fa-2x "></i>

<a href="print_mine.php" target="_blank" >Click here To print Today's Report| <a href="../print_to_pdf/print_pdf.php?me=<?php echo $_SESSION['user_name']; ?>" target="_blank">PDF</a></a> 

</div>

    
    
    <!---------------------------------------------------------------------------------------->
    <h1> <?php echo $_SESSION['user_name'] ?> LODGING AND RELATED ACTIVITIES REPORTS</h1>
    
    <?php
	$user=$_SESSION['user_name'];
	 $today=date('d-m-Y');
	 
	$cust="SELECT room,time,SUM(rec),reason,paidto,id from daily where paidto='$user' and date='$today' and rec>0  GROUP BY id  order by id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>Facility</td>
    <td>Amount Received</td>
    <td>Amount Spent</td>
     <TD>Reason</TD>
     <TD>Paidto</TD>
  
     <td>Edit</td>
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
    <td><?php echo $row['room']; ?></td>
        <td><?php echo number_format($row['SUM(rec)']); ?> Frs</td>
        
    <td> <?php echo $row['reason']; ?> </td>
	
     
      <td> <?php echo $row['paidto']; ?> </td>
 
   
    <td><a href="?editt=<?php echo $row['id'] ?>">Edit</a></td>
    
    
    </tr>
    <?php } ?>
    
   
    </table>
    <hr>
    <table>
    <tr style=" margin-left:-70px">
    <td >Total Income BY <?php echo $_SESSION['user_name'] ?> </h1> </td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	
	$cust1=mysql_query("SELECT SUM(rec) from daily where  paidto='$user' and date='$today'     ") or die(mysql_error());	
	while($row2=mysql_fetch_assoc($cust1)){
		echo number_format($ans=$row2['SUM(rec)']);
		
	}
	?></td>

    <td></td>

    </tr>
    
    </table>  
    
    
    
    
    
    
    
    
    
    
    
       
    <!---------------------------------------------------------------------------------------->
    <h1<?php echo $_SESSION['user_name'] ?>  >RENTALS AND RELATED ACTIVITIES REPORT</h1>
    
    <?php
	 $today=date('d-m-Y');
	 
	$cust="SELECT room,time,SUM(rec),reason,paidto,id from daily where  paidto='$user' and rec!=0  and date='$today' and area='17'  GROUP BY room,paidto,reason   order by id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>Facility</td>
    <td>Amount Received</td>
    
     <TD>Reason</TD>
     <TD>Paidto</TD>
  <td>Edit</td>
    
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
    <td><?php echo $row['room']; ?></td>
        <td><?php echo number_format($row['SUM(rec)']); ?> Frs</td>
    <td> <?php echo $row['reason']; ?> </td>
	
     
      <td> <?php echo $row['paidto']; ?> </td>
 
   
    <td><a href="?editt=<?php echo $row['id'] ?>">Edit</a></td>
    
    
    </tr>
    <?php } ?>
    
   
    </table>
    <hr>
    <table>
    <tr style=" margin-left:-70px">
    <td >Total Income BY <?php echo $_SESSION['user_name'] ?>  </td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	
	$cust1=mysql_query("SELECT SUM(rec) from daily where  paidto='$user' and date='$today' and  area='17'   ") or die(mysql_error());	
	while($row2=mysql_fetch_assoc($cust1)){
		echo number_format($ans1=$row2['SUM(rec)']);
		
	}
	?></td>

    <td></td>

    </tr>
    
    </table>  
    
    <table>
    <tr><td style="font-style:italic; font-weight:bold">Closing Balance for <?php echo $_SESSION['user_name'] ?> ON <?php echo date('d-m-Y'); ?></td><td style="background:#333; color:#fff"><?php
echo $ans+$ans1."&nbsp; Frs";
	?></td></tr>
    
    </table>
   
 
  </div>
    </div>
    
			
		 		
</body>
</html>
