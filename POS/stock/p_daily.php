<?php
include  '../includes/dbc.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" stock="text/html; charset=utf-8" />
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
                                    <tdead>
                                 
                                        <tr>
                                            <td>#</td>
                                            <td>Date</td>
                                            <td>Customer's Name</td>
                                            <td>Amount Paid</td>
                                              <td>Amount Owed</td>
                                        </tr>
                                    </tdead>
                                    <tbody>


                      <?php
 $date=date('d-m-Y');
   $dm=$con->query("SELECT * FROM daily where date='$date' AND rec>0") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                <td><?php echo $bum['staffname']; ?></td>
                           <td><?php echo $bum['rec']; ?></td>
                         <td><?php echo $bum['owed']; ?></td>               </tr>

  <?php } ?>

                              
                                  <?php
 $date=date('d-m-Y');
   $dm=$con->query("SELECT SUM(rec),SUM(owed) FROM daily where date='$date' GROUP BY date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                <td>Reports</td>
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']); ?></td>
                         <td style="background:#f00; color:#fff"><?php echo number_format($bum['SUM(owed)']); ?></td>               </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>


</page>

   <?php }?>
</body>
</html>




