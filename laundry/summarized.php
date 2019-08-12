<?PHP
include  '../includes/dbc.php';
require_once '../includes/functions.php';
session_start();
 

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MY SUMMARIZED BILL</title>
<link href="../fonts/style.css" type="text/css" rel="stylesheet" />

<style type="text/css">
  @page { size: portrait; }
  .sub{
	  width:600px;
	  height:900px;
	
	  margin:auto;
	  border:1px solid#000;
  }
  .head1{
	  width:100%;
	  height:auto;
	  border-bottom:1px solid#000;
  }
  
   .head2{
	  width:100%;
	  height:auto;
	  border-bottom:1px dashed#000;
	  padding-bottom:20px;
  }
  
 
  .ff{
	width:6%;
	 height:30px;
	 padding:0px 5px;
	  border:1px solid#000;
	  text-align:center;
	  margin-left:5px;
	  float:left;
	 
}
.s{
	width:14%;
	 height:30px;
	 padding:0px 5px;
	  border:1px solid#000;
	  text-align:center;
	   float:left;
}
.t{
	width:25%px;
	 height:30px;
	 padding:0px 5px;
	  border:1px solid#000;
	  text-align:center;
	   float:left;
}
.f{
	
	width:32%;
	 height:30px;
	 padding:0px 5px;
	  border:1px solid#000;
	  text-align:left;
	   float:left;
	   
	   
}
table,tr,td{
	border-collapse:collapse;
	border:1px dashed#000;
	line-height:1.9;
}

</style>
</head>

<body>
<div class="sub" style="border:none">
	<?php include 'header12.php'; ?>
    
      <?PHP
if(isset($_GET['id'])){
	$who=$_GET['id'];
	
	
	 $select=$con->query("SELECT * from daily where id='$who'  ");
	
	while ($row=$select->fetch_assoc()){
		$code=$row['cust_id'];
		$casheir=$row['paidto'];
		
	}
	  $select=$con->query("SELECT * from daily where cust_id='$code' group by cust_id ") or die(mysqli_error($con));
	  $a=1;
	 while ($row=$select->fetch_assoc()){
		
		
	
	
	?>

<div style=" float:left; width:50%; margin-top:17px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:24px; ">
GUEST BILL

</div>

<div style=" float:left; width:30%; margin-top:17px;TEXT-ALIGN:CENTER;  height:34px; 
font-size:18px; ">
N<SUP>0</SUP> 00<?PHP echo $who; ;?>


</div>




<div style=" float:left; width:100%; margin-top:0px;TEXT-ALIGN:CENTER; font-family:arial; height:300px; 
font-size:13px; ">
 <div style="width:25%;  height:20px; float:left; border:1px dashed#000; padding:5px 5px; background:#fff; color:#000; clear:both">Customer's Names</div>
    
        <div style="width:70%; height:20px; float:left;background:#fff; color:#000; border:1px dashed#000; font-weight:bold; font-size:16px; padding:5px 5px; "><i>  <?PHP 
		////////////////insert item
$a=$con->query("SELECT * FROM customers where id='".$code."'") or die(mysqli_error($con));
	 while($b=$a->fetch_assoc()){
	echo  $names=$b['name'];
	 }
		
		?>  </i> </div>
        





	
    
    
   <div style="height:10px; width:100%; clear:both"></div>
<div style="background:#eee; height:auto; overflow:hidden; font-weight:bold; color:#333; width:100%">
   <div style="height:10px; border:1PX dashed#000; text-align:center; padding:5PX 0PX; width:97%; font-weight:bold; clear:both; margin:auto">LAUNDRY SERVICES BILLS</div>


<div class="ff">S/N</div>
<div class="f">Item</div>
<div class="ff" style="margin-left:0px; ">Qty</div>
 <div class="s">Trans. Date</div>
 
  <div class="s" >Unit Cost</div>
 <div class="s">Total Cost</div>
 
 </div>
 
  
 <?php
 

/////////////////////////////////////////
  $sel=$con->query("SELECT * FROM service_offered where code='$code'");
  $a=1;
while($rows=$sel->fetch_assoc()){	
 
 ?>
<div class="ff"><?php echo $a++; ?></div>
<div class="f"> <?PHP echo $rows['serve'] ?> ( <?PHP echo $rows['comment'] ?> )    </div>
<div class="ff" style="margin-left:0px; ">
<?php 

echo $days=($rows['qty']);

?> </div>
 <div class="s"><?php echo $rows['date']; ?> </div>
 
  <div class="s" ><?php echo number_format($rows['cost']); ?> Frs</div>
 <div class="s"><?php
 
 $t=($rows['tc']);
  echo number_format($t); ?> Frs</div>
 
 <?php } ?>
 
 



<?php
$up=mysql_query("SELECT SUM(qty*price),room,SUM(qty),date,price from daily where cust_id='".$who."' and  reason='Old room Used' ") or die(mysql_error()); 
						    while($rof=mysql_fetch_assoc($up)){
			
			 $froom=$rof['SUM(qty*price)'];
			if(empty($froom)){
				 0;
			}
			else {
				 $froom;
			
?>



<div class="ff">2</div>
<div class="f">Room <?PHP echo $rof['room'] ?>  (Room Changed)</div>
<div class="ff" style="margin-left:0px; ">
<?php 

echo $days=($rof['SUM(qty)']);

?> </div>
 <div class="s"><?php echo $rof['date']; ?> </div>
 
  <div class="s" ><?php echo number_format($rof['price']); ?> Frs</div>
 <div class="s"><?php
 
 
 $loging=($rof['price']*$days);
  echo number_format($loging); ?> Frs</div>
 <?php } ?>
 
 
<div class="ff">.</div>
<div class="f"> Total BILL</div>


<div class="ff" style="margin-left:0px; ">.</div>
 <div class="s">.</div>
 
  <div class="s" >.</div>
 <div class="s" style="background:#000; color:#fff"><?php $up=mysql_query("SELECT SUM(tc) as tl  from service_offered where code='".$code."'  ") or die(mysql_error()); 
						    while($rof=mysql_fetch_assoc($up)){
			
			 $tol=$rof['tl'];
			 echo number_format($tol);
			}

}?> Frs</div>


<div style="background:#fff; height:10px; overflow:hidden; border-bottom:1px dashed#000; color:#333; width:100%">

</div>












<div style="height:10px; border:1PX dashed#000; text-align:center; padding:5PX 0PX; width:97%; font-weight:bold; clear:both; margin:auto">BILL PAYMENTS HISTORIQUE</div>
<table>
<tr>
<td>S/N</td><td>Date</td><td>Amount Paid</td><td>Amount Owed</td></tr>
<?php
$am=$con->query("SELECT * from daily where cust_id='$code' ") or die(mysqli_error($con));
	  $a=1;
	 while ($b=$am->fetch_assoc()){
		 ?>


<td><?php echo $a++; ?></td><td><?php echo $b['date'];?></td><td><?php echo number_format($b['rec']);?></td><td><?php echo number_format($b['owed']);?></td></tr>
<?php } ?>

</table>













<!--------House keeping starts here--->
<?php
 $sel="SELECT * FROM daily where cust_id='$who' and area='16'";
 $ones=mysql_query($sel) or die(mysql_error());
  if(mysql_num_rows($ones)<1){
	 echo "<div style='width:90%; height:0px; clear:both'></div>";
 	}
	else {
 $i=1;
?>

<div style="height:10px; border:1PX dashed#000; text-align:center; padding:5PX 0PX; width:97%; font-weight:bold; clear:both; margin:auto">House Keeping Services Bills</div>
<?php
 
while($row=mysql_fetch_assoc($ones)){	
 
 ?>
<div class="ff"><?php echo $i++; ?></div>
<div class="f"> <?php echo $row['reason']; ?></div>


<div class="ff" style="margin-left:0px; "><?php echo $row['qty']; ?></div>
 <div class="s"><?php echo $row['date']; ?></div>
 
  <div class="s" ><?php echo number_format($row['price']); ?> Frs</div>
 <div class="s"><?php 
 $other_cost=($row['price']*1);
 echo number_format($other_cost); ?> Frs</div>

<?php } ?>

<div class="ff">.</div>
<div class="f"> Total  Bills</div>


<div class="ff" style="margin-left:0px; ">.</div>
 <div class="s">.</div>
 
  <div class="s" >.</div>
 <div class="s"  ><?php 
 
     $sel="SELECT SUM(price) from daily where cust_id='$who' and area='16'";
 $ones=mysql_query($sel) or die(mysql_error());
 $i=1;
while($row=mysql_fetch_assoc($ones)){	
 $laundry_cost=($row['SUM(price)']);
 
 echo number_format($laundry_cost); 

} ?> Frs</div>

<?php } ?>

<!------------House keeping starts here  end here---->








 <div style="height:10px; border:1PX dashed#000; text-align:center; padding:5PX 0PX; width:97%; font-weight:bold; clear:both; margin:auto">  TAXES , VAT AND DISCOUNT</div>
   
   <!-------VAT STARTS---------->
   
<div class="ff">.</div>
<div class="f"> VAT (<?php echo $vv; ?> % ) </div>


<div class="ff" style="margin-left:0px; ">.</div>
 <div class="s">.</div>
 
  <div class="s" >.</div>
 <div class="s" style="background:#000; color:#fff"><?php echo number_format($vat); ?> Frs</div>

   
   <!-----VAT ENDS---------->
   
   
   
   
   
   
    

<div class="ff">.</div>
<div class="f"> Discounts  </div>


<div class="ff" style="margin-left:0px; ">.</div>
 <div class="s">.</div>
 
  <div class="s" >.</div>
 <div class="s" style="background:#000; color:#fff"><?php 
 
     $sel="SELECT SUM(discount) as disc FROM daily where  cust_id='".$code."' AND area='8' ";
 $ones=mysql_query($sel) or die(mysql_error());
 $i=2;
while($row=mysql_fetch_assoc($ones)){	
$discount= $row['disc'];
 echo number_format($discount); 

} ?> Frs</div>















<!-----box 3 for grand total------------>

<div style="background:#eee; height:auto; overflow:hidden; border-bottom:1px dashed#000; color:#333; width:100%">


<div class="ff" style="margin-left:10px; width:90px">Grand Total</div>
 <div class="s" style="float:right; margin-right:0px; background:#eee; color:#000">
 <?php
 
 $rtax=$tax*$days;
 $totbills=$tol+$toto+$vat+$rtax-$discount+$laundry_cost+$rental_cost;
 echo  number_format($totbills);


 
 ?>
 
 
 </div>
 
 </div>






<!-----box 4 for Amount Paid------------>

<div style="background:#fff; height:auto; overflow:hidden; border-bottom:1px dashed#000; color:#333; width:98%">


<div class="ff" style="margin-left:10px; width:90px">Amount Paid</div>
 <div class="s" style="float:right; margin-right:85px; font-weight:bold ">
 <?php
 $g=mysql_query("SELECT SUM(rec) as totpaid from daily where cust_id='$code' ") or die(mysql_error());
 while($ro=mysql_fetch_assoc($g)){
	 $paids=$ro['totpaid'];
 
 }
 echo number_format($paids) ."Frs";
 ?>
 
 
 </div>
 
 </div>
 
 
 
 
 
<!-----box 4 for Amount owed------------>

<div style="background:#eee; height:auto; overflow:hidden; border-bottom:1px dashed#000; color:#333; width:100%">


<div class="ff" style="margin-left:10px; width:90px">Balance </div>
 <div class="s" style="float:right; margin-right:0px; color:#f00; font-weight:bold ">
 <?php
echo number_format($totbills-$paids) ."Frs";  
 ?>
 
 
 </div>
 
 </div>





<div style=" height:auto; font-size:16px; text-align:left;overflow:hidden;  color:#333; width:90%; margin:auto;  margin-top:30px; ">
Amounts in Words: <div style="margin-top:10px; text-align:center; border-bottom:1px dashed#000">
<i><b><?php echo convert_number_to_words($paids) .'&nbsp; FCFA'; ?></i></b></div>
</div>







<div style=" font-size:16px; line-height:1.5; height:auto; margin-top:25px; overflow:hidden;  color:#333; width:98%">

   <div class="clear"></div>
 <div class="lefo">
     <p>Cashier's Signature<br />
     <b><?php echo $casheir; ?></b>
     
     </p>
     
     </div>
     <div class="righto">
     <p>Guest Signature<br />
     <b>......................</b>
     </div>
  
    
</div>
<div style=" font-size:16px; line-height:1.5; height:auto; position:absolute; bottom:0px; margin-top:25px; overflow:hidden;  color:#333; width:98%">


</div>


</div>
</div>
</div></div>



</body>
</html>
<?php } }  ?>
