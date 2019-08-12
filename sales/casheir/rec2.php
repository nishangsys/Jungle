<?php
include '../../includes/dbc.php';
ini_set('max_execution_time', 300000); //300 seconds = 5 minutes
@session_start();

 $level=$_SESSION['user_name'];

?>
<?php
define('IN_CB', true);

@session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $paidto=$userRow['user_name'];

 
 }
 $area=$_GET['area'];
  $yarea=$_GET['area'];	
 $dfm=$con->query("SELECT * from sectors WHERE  area='$yarea'") or die(mysqli_error($con));

while($ac=$dfm->fetch_assoc())
		{
			$sectt=$ac['name'];
		}
		
 $query =$con->query("SELECT * FROM basket WHERE id='".$_GET['roll']."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $table_num=$userRow['tab'];
 $command_name=$userRow['ids'];

 }  		
 
 echo '<meta http-equiv="Refresh" content="3; url=close.php">';
?>

<HTML>
<HEAD>
<TITLE> RECEIPTS</TITLE>
<style>   body {
        margin: 0;
        padding: 0;
        background-color: #FAFAFA;
        font: 12px;
		font-family:Arial, Helvetica, sans-serif;
		color:#000;
		font-weight:bold;
    }
  * {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }
  
    .subpage {
        padding: 1cm;
        border: 5px black solid;
        height: 237mm;
        outline: 2cm #000 solid;
    }
    
    @page {
        size: A4;
        margin: 0;
    }
    @media print {
        .page {
            margin: 0;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
        }
    }

.pageso{
	width:310px; 
	height:400px;
	border:1px solid#000;
	margin:auto;
}
.ug{
	
	width:97%;
	height:20px;
	margin:auto;	
	margin-top:-10px;
}
.g{
	float:left;
	width:30px;
	height:30px;
	padding:5px 0px;
	border:1px solid#000;
	margin-left:0px;
	
}
.f{
	float:left;
	width:140px;
	height:30px;
	padding:5px 0px;
	border:1px solid#000;
	text-align:center;
	
}
.fi{
	float:left;
	width:60px;
	height:30px;
	padding:5px 0px;
	border:1px solid#000;
	text-align:center;
	
}
.dfh{
	float:left;
	width:99%;
	margin:auto;
	height:auto;
	overflow:hidden;
	padding-bottom:5px;
	
	
}
.clear{
	width:100%;
	height:auto;
	clear:both;
	margin:0px;
	padding:0px;
}
table{
	border-collapse:collapse;
	border:1px solid#000;
}
tr,td{
	border-collapse:collapse;
	border:1px solid#000;
}
</style>
<style type="text/css" media="print">
  @page { size: B4 portrait; }
</style>
<body onLoad="window.print();">
<?php

 $section=$_GET['area'];
 


$client="select * from client where clien_id='2'";
  $run2=mysql_query ($client) or die ('could not updated:'.mysql_error());
  while ($all=mysql_fetch_assoc($run2)){	
   
    $clients=$all['name'];
	 $AD=$all['address'];
	 $TEL=$all['as1'];
	 $vil=$rows['as2']; 
  }
  
 $tale=$_GET['roll'];
  $serial;
 

   $result=$con->query("SELECT SUM(qty),SUM(total),price,product,category,id,price,qty,total,agent,comment,SUM(qty*price),main_category,comment,area FROM basket where tab='".$table_num."' and ids='".$command_name."' and status='5' and qty>0 AND area='$area' GROUP BY id order by product  ") or die(mysqli_error($con));
$O=1; 
  
?>

 <div class="page">
         
		  <div style="width:360px; height:340px;  ">
		  
		   <div style="float:left;width:330px; height:AUTO; overflow:hidden;border-bottom:double;margin-left:0px; 
		  font-family:times; margin-top:0px; ">
          
             
             
             
      <h1 style="font-size:12px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"><?php echo $clients; ?></h1>
		   <h1 style="font-size:12px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"><?PHP echo $TEL;  ?></h1>
		     <h1 style="font-size:12px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> CASHEIR: <?PHP echo $paidto;  ?>
               <h1 style="font-size:12px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> SECTOR: <?PHP echo  $sectt;  ?>
			 
			 </h1>
			 
			 </h1>
             
             <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px; border:1px solid#000"> BILL Num: <?PHP echo $_GET['roll'];  ?> </span>
			 
			 </h1>


</div>
	
<div class="clear"></div>
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
   
   <div class="ug">
   <div class="clear"></div>

 <div class="g" >S.N</div>
    <div class="f">Product</div>
 
 <div class="g" style="">Qty</div>
 <div class="fi">Price</div>
 <div class="fi">TC</div>
 <?php   while ($getres=$result->fetch_assoc()){ ?>
 <div style="height:auto; padding:5px 0px; overflow:hidden; width:100%; border:1px solid#000;">
 
      <div style="width:30px; border-right:1px solid#000; float:left; padding:2px 0px;"><?PHP echo $O++; ?></div>

   
   <div style="width:140px; font-size:12px; border-right:1px solid#000; float:left; padding:2px 0px float:left; ">&nbsp;<?PHP  echo $getres['comment'];    ?> - <?PHP  echo $getres['product'];    ?></div>

   
         <div style="width:30px; border-right:1px solid#000; text-align:center; float:left; padding:px 0px;"><?PHP echo $getres['SUM(qty)']; ?></div>

          <div style="width:60px; border-right:1px solid#000; text-align:center; float:left; padding:px 0px;"><?PHP echo round($getres['price']); ?></div>
          <div style="width:62px; border-right:1px solid#000; text-align:center; float:left; padding:0px 0px;"><?PHP echo $getres['SUM(qty*price)']; ?></div>

 
 </div>
 <?PHP } ?>
 
<div class="clear">
</div>
<div style="width:150px; position:relative; height:auto; float:left; text-align:center; border:1px solid#999">Grand Total</div>
 <div style="width:150px; height:auto;  float:left; text-align:center;  border:1px solid#999">
<?php
$result=mysql_query("SELECT SUM(price*qty) as rec from basket where  tab='".$table_num."' and ids='".$command_name."' and status='5' and qty>0 AND area='$area'");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['rec']);

}
?> 



 </div>  
 <div class="clear"></div>



</div>
<div style="clear:both"></div>


<?php
$result=mysql_query("SELECT * from daily where cust_id='".$_GET['roll']."' order by id DESC LIMIT 1");
while ($row=mysql_fetch_assoc($result)){ 


?>





<?php }  ?>





<div class="clear"></div>
   <div style="position:relative; font-size:12px; text-align:center; bottom:0px; height:30px">Powered by Nishang Systems<br>
   Printed today <?php echo date('d-m-Y'); ?> at <?php echo date('h:i'); ?> </div>






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

<?php

 //echo '<meta http-equiv="Refresh" content="2; url=../../content/close.php">';

 ?>

 


