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
  $yarea=$_GET['area'];	
 $dfm=$con->query("SELECT * from sectors WHERE  area='$yarea'") or die(mysqli_error($con));

while($ac=$dfm->fetch_assoc())
		{
			$sectt=$ac['name'];
		}
 
 echo '<meta http-equiv="Refresh" content="3; url=../content/close.php">';
?>

<HTML>
<HEAD>
<TITLE> RECEIPTS</TITLE>
<style>   body {
        margin: 0;
        padding: 0;
        background-color: #FAFAFA;
        font: 14px;
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
 

     

   $result=mysql_query("SELECT product,category,SUM(qty),price,SUM(qty*price),ids from basket where froms='".$tale."' and printed='2' and qty>0 group by product  ");
$O=1; 
  
?>

 <div class="page">
         
		  <div style="width:360px; height:340px;  ">
		  
		   <div style="float:left;width:330px; height:AUTO; overflow:hidden;border-bottom:double;margin-left:0px; 
		  font-family:times; margin-top:0px; ">
          
          
              <DIV style="width:90PX; height:80PX; border:1px solid#000; float:left"> <img src="../../img/logo.png"> </DIV>
             
             
             
      <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"><?php echo $clients; ?></h1>
		   <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"><?PHP echo $TEL;  ?></h1>
		     <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> CASHEIR: <?PHP echo $paidto;  ?>
               <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> SECTOR: <?PHP echo  $sectt;  ?>
			 
			 </h1>
			 
			 </h1>
             
             <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px; border:1px solid#000"> Receipt Num: <?PHP echo $_GET['roll'];  ?> </span>
			 
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
 <?php   while ($getres=mysql_fetch_assoc($result)){ ?>
 <div style="height:auto; padding:5px 0px; overflow:hidden; width:100%; border:1px solid#000;">
 
      <div style="width:30px; border-right:1px solid#000; float:left; padding:2px 0px;"><?PHP echo $O++; ?></div>

   
   <div style="width:140px; font-size:14px; border-right:1px solid#000; float:left; padding:2px 0px float:left; ">&nbsp;<?PHP
  
	   echo $getres['product']; 
   
   ?></div>

   
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
$result=mysql_query("SELECT * from daily where idds='".$_GET['roll']."' order by id DESC LIMIT 1");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']);

}
?> 



 </div> 
 <div class="clear"></div>



</div>
<div style="clear:both"></div>
<?php

$result=mysql_query("SELECT * from daily where idds='".$_GET['roll']."' order by id DESC LIMIT 1");
while ($row=mysql_fetch_assoc($result)){ 


?>






<table style="width:80%; float:left">
<TR>
<TD>Discount</TD><td> <?php echo number_format($row['discount']) ?></td></TR>

<TR>
<TD>Amount Paid</TD><td><?php echo number_format($row['rec']) ?></td></TR>

<TR>
<TD>Amount Owed</TD><td><?php  $owed=($row['owed']);
 if($owed<1){
	echo 0;
}
else {
	echo number_format($owed);
}

?></td></TR>
</table>

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

 echo '<meta http-equiv="Refresh" content="2; url=../content/close.php">';

 ?>

 

