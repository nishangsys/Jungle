<?php
include  '../includes/dbc.php';
session_start();


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



<?php include 'header.php'; 

 $area=$_GET['sect'];
					  $date=$_GET['date'];
?>

    
  <table class="table table-bordered sortableTable responsive-table" style="line-height:1.7">
                                    <thead>
                                 
                                        <tr>
 <td colspan="6"><?PHP echo $sector; ?>  BODIRO ON <?PHP echo $date; ?></td>
                                           
                                             
                                        </tr>
                                    </thead>
                                    <tbody>


                      <?php
					 

   $dms=$con->query("SELECT * FROM sectors WHERE area='$area' ") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
                            
                              <td colspan="6"><?php echo $bums['name']; ?></td>
                                     </tr>
                                     <tr>
                                        <th>S/N</th>
                               <th>Product</th>
                               <th>Qty Received</th>
                               <th>Time</th>
                                        </tr>
                                     
                                     
                                     
                                     
                      <?php

   $dm=$con->query("SELECT * FROM truck where month='$date' AND receiver='$area' ") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['item']; ?></td>
                <td><?php echo $bum['current']; ?></td>
                <td><?php echo $bum['time']; ?></td>
                            </tr>

  <?php } ?>


  <?php } ?>

                              
                               </tbody>  
                                </table>


</page>

   <?php ?>
</body>
</html>




