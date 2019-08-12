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
	  line-height:1.5;
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

     <table class="table table-bordered sortableTable responsive-table">
                                    <thead>
                                 
                                        <tr>
                                            <th>#<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            <th>Date<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            <th>Amount Paid<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                              <th>Amount Owed<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                              
                                                <th>Total Profit<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
     
     <th>Expenditure<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
       
     <th>Net Balance<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                          </tr>
                                    </thead>
                                    <tbody>


                      <?php
 $date=date('m');
 $year=date('Y');
   $dm=$con->query("SELECT SUM(rec),SUM(owed),SUM(exp),date FROM daily  where month='$date' and year='$year' GROUP BY date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                        <td><?php echo number_format($bum['SUM(rec)']); ?></td>
                         <td><?php echo number_format($bum['SUM(owed)']); ?></td> 
                         
                            <td><?php
						  
						  $a=$con->query("SELECT SUM(qty*profit) as totprofit FROM basket  where date='".$bum['date']."' and status='2'  GROUP BY date") or die(mysqli_error($con));
while($b=$a->fetch_assoc()){
	echo number_format($b['totprofit']);
}; ?></td> 
                         <td><?php echo number_format($bum['SUM(exp)']); ?></td>  
                         <td><?php echo number_format($bum['SUM(rec)']-$bum['SUM(exp)']); ?></td>
                                                        </tr>

  <?php } ?>

                              
                                  <?php
 $date=date('m');
 $year=date('Y');
   $dm=$con->query("SELECT SUM(rec),SUM(owed),SUM(exp) FROM daily where month='$date'  and year='$year' and status='2' dGROUP BY month") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']); ?> XAF</td>
                         <td style="background:#f00; color:#fff"><?php echo number_format($bum['SUM(owed)']); ?> XAF </td>
                         <td style="border:2px solid#000"><?php
						  
						  $a=$con->query("SELECT SUM(qty*profit) as totprofit FROM basket   where month='$date' and year='$year' GROUP BY month") or die(mysqli_error($con));
while($b=$a->fetch_assoc()){
	echo number_format($b['totprofit']);
}; ?> XAF</td> 
                         <td style="background:#F06; color:#fff"><?php echo number_format($bum['SUM(exp)']); ?> XAF</td>  
                         <td style="background:#033; color:#fff"><?php echo number_format($bum['SUM(rec)']-$bum['SUM(exp)']); ?> XAF</td>             </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>


</page>

   <?php }?>
</body>
</html>




