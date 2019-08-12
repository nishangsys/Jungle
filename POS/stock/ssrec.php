<?php
include '../includes/dbc.php';
ini_set('max_execution_time', 300000); //300 seconds = 5 minutes
?>
<?php
define('IN_CB', true);


if (version_compare(phpversion(), '5.0.0', '>=') !== true) {
    exit('Sorry, but you have to run this script with PHP5... You currently have the version <b>' . phpversion() . '</b>.');
}

if (!function_exists('imagecreate')) {
    exit('Sorry, make sure you have the GD extension installed before running this script.');
}
echo $br=$_GET['br'];

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
 

     
	  
$ad=mysql_query("SELECT * FROM customers where client_id='$tale' limit 1 ") or die(mysql_error());
while($cx=mysql_fetch_assoc($ad)){
	$name=$cx['stu_name'];
}
$year=date('d-m-Y');
$y=date('Y');

   $result=mysql_query("SELECT * from truck where month='$year' and status='$y' and sentby like '%$who%' ");
$O=1; 
  
?>

		 <div class="page">
         
		  <div style="width:360px; height:340px;  ">
		  
		   <div style="float:left;width:330px; height:AUTO; overflow:hidden;border-bottom:double;margin-left:0px; 
		  font-family:times; margin-top:0px; ">
          <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"><?php echo $clients; ?></h1>
		   <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px">Tel:<?php echo  $TEL;  ?></h1>
		     <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> : <?PHP echo date('d-m-Y');  ?> Purchases
			 
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
  
	   echo $getres['stock']; 
   
   ?></div>

   
         <div style="width:30px; border-right:1px solid#000; text-align:center; float:left; padding:px 0px;"><?PHP echo $getres['current']; ?></div>

          <div style="width:60px; border-right:1px solid#000; text-align:center; float:left; padding:px 0px;"><?PHP echo round($getres['date']); ?></div>
          <div style="width:62px; border-right:1px solid#000; text-align:center; float:left; padding:0px 0px;"><?PHP echo $getres['current']*$getres['date']; ?></div>

 
 </div>
 <?PHP } ?>
 
<div class="clear">
</div>
<div style="width:150px; position:relative; height:auto; float:left; text-align:center; border:1px solid#999">Grand Total</div>
 <div style="width:150px; height:auto;  float:left; text-align:center;  border:1px solid#999">
<?php
$result=mysql_query("SELECT SUM(date*current) as total from truck where month='$year' and status='$y' and sentby like '%$who%' GROUP BY month  ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']-$discc) ."&nbsp;&nbsp;Frs";

}
?> 



 </div>  
 <div class="clear"></div>



</div>
<div style="clear:both"></div>
<div class="clear"></div>
   <div style="position:relative; font-size:12px; text-align:center; bottom:0px; height:30px">Printed today <?php echo date('d-m-Y'); ?> at <?php echo date('h:i'); ?> </div>






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



 


