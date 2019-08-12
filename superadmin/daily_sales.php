<?php
include  '../includes/dbc.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	 $date=$_POST['date'];
$sector=$_POST['zone'];
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Receipt</title>
<link href="style.css" type="text/css" rel="stylesheet" />

<style type="text/css" media="print">
  @page { size: portrait; }
  table{
	  border-collapse:collapse;
  }
  tr,td{
	  border:1px solid#000;
  }
  }
</style>



</head>

<!---
<input type="button" value="Print Ticket"
onClick="window.print()"/>
------>
<body onload="window.print();">



<?php include 'header.php'; ?>

    
  <table class="table table-bordered sortableTable responsive-table" style="line-height:1.7">
                                    <thead>
                                 
                                        <tr>
 <td colspan="6"><?PHP echo $sector; ?>  REPORTS ON <?PHP echo $date; ?></td>
                                           
                                             
                                        </tr>
                                    </thead>
                                    <tbody>


                      <?php

   $dms=$con->query("SELECT * FROM daily GROUP BY purpose ASC") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
                            
                              <td colspan="6"><?php echo $bums['purpose']; ?></td>
                                     </tr>
                                     
                                     
                                     
                                     
                      <?php

   $dm=$con->query("SELECT * FROM daily where date='$date' AND area='$sector' and purpose='".$bums['purpose']."' and  rec>0") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                <td><?php echo $bum['room']; ?></td>
                <td><?php echo $bum['qty']; ?></td>
                <td><?php echo number_format($bum['price']); ?></td>
             <td><?php echo number_format($bum['rec']); ?></td>
                                     </tr>

  <?php } ?>


  <?php } ?>

                              
                                  <?php
 
   $dm=$con->query("SELECT SUM(rec),SUM(qty) FROM daily where date='$date' and area='$sector' GROUP BY date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                <td>Reports</td>
                <td><?php echo $bum['SUM(qty)']; ?></td>
                <td>Price</td>
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']); ?></td>               </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>


</page>

   <?php }?>
</body>
</html>




