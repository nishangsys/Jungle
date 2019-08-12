<?php
include  '../includes/dbc.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	 $month=$_POST['month'];
$year=$_POST['year'];
	
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
                                 
                                   <th>S/N</th>    
                                   
                                   <th>Product </th>
                                    <th>Price </th>
                                     <th>Qty Sold </th>
                                      <th>Total Sales </th>           
                                             
                                        </tr>
                                    </thead>
                                    <tbody>


                      <?php

   $dms=$con->query("SELECT product,SUM(qty) as qty ,price  FROM basket WHERE month='$month' and year='$year'  and status='2' GROUP BY product ") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
      <td ><?php echo $i++; ?></td>               
      <td ><?php echo $bums['product']; ?></td>
      <td ><?php echo $bums['price']; ?></td>
      <td ><?php echo $bums['qty']; ?></td>
      <td ><?php echo number_format($bums['qty']*$bums['price']); ?></td>

                                     </tr>
                                     
                        


  <?php } ?>


       <?php

   $dms=$con->query("SELECT product,SUM(qty) as qty ,price,SUM(total) as total  FROM basket WHERE month='$month' and year='$year'  and status='2'  ") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
      <td ><?php echo $i++; ?></td>               
      <td >TOTAL </td>
      <td >. </td>
      <td ><?php echo number_format($bums['qty']); ?></td>
      <td ><?php echo number_format($bums['total']); ?></td>

                                     </tr>
                                     
                        


  <?php } ?>

                              
                                 

                                
                               </tbody>  
                                </table>


</page>

   <?php }?>
</body>
</html>




