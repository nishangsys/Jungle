<?php
include  '../dbc.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('../login.php','_self')</script>";
}
else {
	
	$month=$_POST['month'];
	$day=$_POST['day'];
	if($day<10){
		$da="0".$day;
	}
	else {
		$da=$day;
	}
		
	$name=$_POST['name'];
	echo $area=$_POST['area'];
	$month1="0".$_POST['month'];
	$year=$_POST['year'];
	 $date=$da."-".$month."-".$year;
	$sector=$_POST['sector'];
	 $a=mysql_query("SELECT * from sectors where area='$sector' ") or die(mysql_error());
	 while($rows=mysql_fetch_assoc($a)){
		 $s=$rows['name'];
	 }
	 
	
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $s; ?> Daily Product Analysis</title>
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


 <link href="../style.css" rel="stylesheet" type="text/css" />
</head>

<!---
<input type="button" value="Print Ticket"
onClick="window.print()"/>
------>
<body onload="window.print();">



<?php include '../header.php'; ?>

    
  <table class="table table-bordered sortableTable responsive-table" style="line-height:1.7">
                                    <thead>
                                 
                                        <tr>
<?php echo $s; ?> Daily Product Analysis for <?php echo $date; ?>                                        
                                             
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                       <td>S/N</td><td>
   Product</td><td>Cost/Unit</td><td>Amount Spent</td><td>Total Revenue</td><td>Net balance</td></tr>


                      <?php
					  

   $dms=$con->query("SELECT * FROM  products where  area='".$sector."' GROUP BY category ASC") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
                            
                              <td colspan="6"><?php echo $bums['category']; ?></td>
                                     </tr>
                                     
                                     
                                     
                                     
                      <?php

   $dm=$con->query("SELECT * FROM products where area='$sector' and category='".$bums['category']."' order by product ") or die(mysqli_error($con));
   $i=1;
while($df=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                      <td>      <?php echo $df['product']; ?></td>
                            <td><?php echo $df['month']; ?></td>
   
   <td><?php   $n=$con->query("SELECT SUM(exp) as exp FROM  daily where  purpose='".$df['product']."' and area='".$sector."' and date='$date' ") or die(mysqli_error($con));
  while($mf=$n->fetch_assoc()){
	$totex=$mf['exp'];
	echo  number_format($totex=$mf['exp']);
  }?></td>
  
    <td><?php   $n=$con->query("SELECT SUM(rec) as exp FROM  daily where  reason='".$df['product']."' and area='".$sector."' and date='$date' ") or die(mysqli_error($con));
  while($mf=$n->fetch_assoc()){
	$totin=$mf['exp'];
	echo  number_format($totin);
  }?></td>
                                     </tr>
                                     
                                     
                                     
                                     
                                     
                                     
                                     

  <?php } ?>


  <?php } ?>

                              
                                  <?php
 
   $dm=$con->query("SELECT SUM(rec),SUM(exp) FROM daily where date='$date' and area='$sector' GROUP BY date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                <td>Net Total</td>
                <td><?php echo $ex=$bum['SUM(exp)']; ?></td>
                <td><?php echo $in=$bum['SUM(rec)']; ?></td>
                           <td style="background:#060; color:#fff"><?php echo number_format($in-$ex); ?></td>               </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>


</page>

   <?php }?>
</body>
</html>




