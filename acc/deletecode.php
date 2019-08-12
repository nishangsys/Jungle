
<?php
include '../dbc.php';
require_once '../functions/functions.php';
session_start();

if(!isset($_SESSION['user_name'])){

header ("location: stocks.php");
echo "Error";
}
else {
   	
		
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Delete</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">
function doCalc(form) {
  form.total.value = parseInt(form.newquantity.value) * parseInt(form.paid.value);
}
</script>
<body>

 
 <div class="right"> 

 <?php

 

  $hist=$_GET['hist_id'];			
		 
		   $selec="select * from basket where id='$hist' ";
				$run=mysql_query ($selec) or die ('could not select:'.mysql_error());
				while ($row=mysql_fetch_array($run)){
					 $qty=$row['qty'];
					$product=$row['product'];					
					$salesman=$row['agent'];
					$price=$row['price'];
					$category=$row['category'];					
					$hist_tot=$row['total'];
				 $cust=$row['ids'];	
				 $date=date('d-m-Y');
				 $time=date('h:i:s');	
				 $y=date('Y');
				 $user=$_SESSION['user_name'];	
					
					
					 $select="SELECT * from products where product='$product' AND category='$category' ";
					
					 
		 $runs=mysql_query ($select ) or die ('could not select:'.mysql_error());
		
		 
		   while ($row=mysql_fetch_array($runs)){
					echo $pro_qty=$row['quatity'];
					$pro_total=$row['total'];
					 $all=$pro_qty+$hist_qty;
					 $updated_total=$pro_total+$hist_tot;
					 
					
		 }
		  $all=$pro_qty+$qty;
		$alltot=$pro_total+($price*$qty);	
//check credentials if this user have the right to delete that if the agent===username name	
			//echo $salesman;
			


		 //update stocks
				   $select=mysql_query("update products set quatity='$all',total='$alltot' WHERE  product='$product' and category='$category' ")
				   or die ('could not updated:'.mysql_error()); 
	
	//send a report to admin
	
			$back="INSERT into records set income='$user', expense='$product',yr='$y', date='$date',month='$time',year='$qty',reason='deleted goods' ";			 
			 $runn=mysql_query ($back) or die (mysql_error());
			 //then remove from basket
			 
			$delete="delete from basket where id='$hist'"; 
$run=mysql_query ($delete) or die ('could not updated:'.mysql_error());
 echo "<script>alert('sTOCKS has been successfully Updated. Thank You ')</script>";
 
 
 echo "<script>window.open('barcodesale.php?roll='$cust'','_self')</script>";
 echo '<meta http-equiv="Refresh" content="0; url= restaupage.php">';

		 }
			
		 
				
				?>
    
</div>

</body>
</html>

       <?php } ?>