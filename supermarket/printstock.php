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

           
                   
              <table class="table table-bordered">
              
              <?php 
			$year=date('d-m-Y');
			  $d=$con->query("SELECT * from disburse where month='$year' ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                    
       <th>Date</th> 
        <th>Product</th>
                <th>Old Stock</th> 

        <th>Qty Supllied</th> 
             <th>Current stock</th> 
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['month']; ?></td>
                                        
                                            <td><?php  echo $bu['stock']; ?></td>
                                                     <td><?php  echo $bu['item']; ?></td>
                                                        <td><?php  echo $bu['current']; ?></td>
                                     <td><?php  echo $bu['discribe']; ?></td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
      
                   
                   
                   


</page>

   <?php }?>
</body>
</html>




