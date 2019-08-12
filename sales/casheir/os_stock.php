<?php
include '../../includes/dbc.php';

$y=date('Y');
$date=$_GET['date'];


  $nl=$y."0".$lm;


@session_start();


 $query =$con->query("SELECT * FROM basket WHERE id='".$_GET['roll']."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $table_num=$userRow['tab'];
 $command_name=$userRow['ids'];

 }  		
 
?>


<HTML>
<HEAD>
<TITLE> OPENING STOCK FORM</TITLE>


<style type="text/css" media="print">
 @page { size: portrait; }
  @page { size: A4 portrait; }
  
  body {
 
  font-family:Arial, Helvetica, sans-serif;
  font-size:14px;
 
}
page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
}
page[size="A4"] {  
  width: 21cm;
  height: 29.7cm; 
}
page[size="A4"][layout="landscape"] {
  width: 29.7cm;
  height: 21cm;  
}
page[size="A3"] {
  width: 29.7cm;
  height: 42cm;
}
page[size="A3"][layout="landscape"] {
  width: 42cm;
  height: 29.7cm;  
}
page[size="A5"] {
  width: 14.8cm;
  height: 21cm;
}
page[size="A5"][layout="landscape"] {
  width: 21cm;
  height: 14.8cm;  
}
@media print {
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
table{
	border-collapse:collapse;
	border:1px solid#000;
	width:100%;
}
tr,td{
	border-collapse:collapse;
	border:1px solid#000;
	padding:2px 5px;
	line-height:1.9;
	
}
</style>
<link href="../../fonts/style.css" type="text/css" rel="stylesheet" />

<body onLoad="window.print();">
<?php


$client="select * from client where clien_id='2'";
  $run2=mysql_query ($client) or die ('could not updated:'.mysql_error());
  while ($all=mysql_fetch_assoc($run2)){	
   
    $clients=$all['name'];
	 $AD=$all['address'];
	 $TEL=$all['as1'];
	 $vil=$rows['as2']; 
  }
  
$area=$_GET['sect'];
 
    $dms=$con->query("SELECT * FROM sectors WHERE area='".$area."' ") or die(mysqli_error($con));
 
while($bums=$dms->fetch_assoc()){
$sector=$bums['name'];
}
  
  
 
 ////Get latest time for shift change
  //date_default_timezone_set("Douala/Cameroon");
        $time1=date('Gi');	////current time	   
		 $see=date('d-m-Y');		   
$C=$con->query("SELECT * FROM overtime where id='1' order by id DESC LIMIT 1") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
				$TY=$r['time'];
				
			}	
		  
		////if current time is less than max shift time      
		   if($time1>=0001 and $time1<=$TY){
           $cur_date=date("d-m-Y", strtotime( '-1 days' ) ); 
		   }
		   else {
		   $cur_date=date('d-m-Y');	  
		   }
   $result=$con->query("SELECT product,qty, price from stockreports where area='".$area."' and product!='' and date='$date' order by product   ") or die(mysqli_error($con));
$O=1; 
  
?>
<page size="A4">


<?php 



$cus1="SELECT * from client ";
$run1=mysql_query($cus1) or die (mysql_error());
 while ($rows=mysql_fetch_assoc($run1)){
	 $clients=$rows['name'];
	 $AD=$rows['address'];
	 $TEL=$rows['as1'];
	 $vil=$rows['as2'];
 }
 
?>

	
<div style="clear:both"></div>


	<div class="rechead" style="height:120px; " >
    <img src="../../img/logo.png" style="width:90px; height:100px" />
    <div class="oth" style=" height:110px; width:79%  ">
    <h1 style="font-size:16px; background:#333; color:#fff"><?php echo $clients; ?></h1>
    <h2><?php echo $AD ?></h2>
    <h2>Address: <?php echo $TEL ?></h2>
    <h2> <?php echo $vil; ?></h2>
 <h1>
          <?php echo $sector;  ?> STOCK CONTROL FORM ON  : <?php echo $date; ?></h1>
			 
		  

</div>
	
<div style="clear:both; height:30px"></div>
	  
	  
	  
	  
	  
	  
	  
       <table style="width:100%">
   <tr><td>S/N</td><td>Product</td><td>Price</td><td>Opening<br>Stock</td><td>Requisition</td><td>Total</td><td>Sales</td><td>Balance <br>Stock</td></tr>
   
 <?php   while ($getres=$result->fetch_assoc()){ ?>
 <tr>
 	<td><?PHP echo $O++; ?></td>
    <td><?PHP  echo $getres['product'];    ?></td>
    <td><?PHP  echo $getres['price'];    ?></td>
    <td><?PHP  echo $os=$getres['qty'];    ?></td>
    
     <td><?PHP   $C=$con->query("SELECT SUM(current) as qty FROM truck where month='$date' and item='".$getres['product']."' and taken='2' and receiver='$area' ") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
			echo	$requisition=$r['qty'];
				
			}   ?></td>
            
      <td><?PHP $all_stock=$requisition+$os;
	  echo $all_stock;    ?></td>
      <td><?php  $C=$con->query("SELECT SUM(qty) as qty FROM basket where date='$date' and product='".$getres['product']."' and status='2' and area='$area' ") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
			echo	$sold=$r['qty'];
				
			}	?></td>
     <td><?php echo $all_stock-$sold;  ?></td>
      
 </tr>
 
 <?php } ?>
   
   </table>
 <div class="clear"></div>




</div>
<div style="clear:both"></div>
<?php
$result=mysql_query("SELECT * from daily where cust_id='".$_GET['roll']."' order by id DESC LIMIT 1");
while ($row=mysql_fetch_assoc($result)){ 
 $lid=$row['id'];


?>


<div style="clear:both"></div>




 </div>  
<?php }  ?>









			</div>
			</div>	</div>

</div>





</div>



</div>


</div>



			</div>
			</div>	</div>


			</div>
			</div>	</div>

			</div>
			</div>	</div>
        </form>

</div></div></div>
</page>