<?php
include '../../includes/dbc.php';

$y=date('Y');
$date=date('d-m-Y');

$ad=$con->query("SELECT * FROM history order by id DESC LIMIT 1 ") or die(mysqli_error($con));

 	if(mysqli_num_rows($ad)<1){
		echo $lm=1;
	}
	
	else {
		while($cx=$ad->fetch_assoc()){
 $lm=$cx['id']+1;
		 $mm=$lm;
	}

	
}
  $nl=$y."0".$lm;


@session_start();

 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $casheir=$userRow['user_name'];
 
 }
 $query =$con->query("SELECT * FROM basket WHERE id='".$_GET['roll']."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $table_num=$userRow['tab'];
 $command_name=$userRow['ids'];

 }  		
 
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
$area=$_GET['area'];
  $serial;
  
  ////service
    $df=$con->query("SELECT * from basket,users where basket.tab='".$table_num."' and ids='".$command_name."' and basket.agent=users.id and basket.printed='0' and basket.area='$area' and basket.qty>0 group by basket.tab  ");
	while($dff=$df->fetch_assoc()){
		$service=$dff['user_name'];
	}
 

   $result=mysql_query("SELECT product,category,SUM(qty),price,SUM(qty*price),ids from basket where tab='".$table_num."' and ids='".$command_name."' and printed='0' and area='$area' and qty>0 group by product  ");
$O=1; 
  
?>

		 <div class="page">
         
		  <div style="width:360px; height:340px;  ">
		  
		   <div style="float:left;width:330px; height:AUTO; overflow:hidden;border-bottom:double;margin-left:0px; 
		  font-family:times; margin-top:0px; ">
          
          
              <DIV style="width:90PX; height:80PX; border:1px solid#000; float:left"> <img src="../../img/logo.png"> </DIV>
             
          <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"><?php echo $clients; ?></h1>
          
           <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"> <?php echo $TEL; ?></h1>
           
            <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px">Address: <?php echo $AD; ?></h1>
          
           <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> CASHEIR: <?PHP echo $casheir;  ?>
           <br>
           Service : <?php echo $service; ?>
			 
		    <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px; border:1px solid#000"> Receipt  Num: <?PHP echo $nl;  ?> </span>
			 
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
$result=mysql_query("SELECT SUM(price*qty) as total,tab from basket where tab='".$table_num."' and ids='".$command_name."'  and printed='0' and qty>0 ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']-$discc) ."&nbsp;&nbsp;Frs";

}
?> 



 </div>  
 <div class="clear"></div>



</div>
<div style="clear:both"></div>
<?php
$result=mysql_query("SELECT * from daily where cust_id='".$_GET['roll']."' order by id DESC LIMIT 1");
while ($row=mysql_fetch_assoc($result)){ 
 $lid=$row['id'];


?>






<table style="width:90%; margin:auto">
<TR>
<TD>Change</TD><td> <?php echo $change=number_format($row['paidtou']) ?></td></TR>

<TR>
<TD>Amount Paid</TD><td><?php echo number_format($row['rec']+$row['paidtou']) ?></td></TR>


</table>

<?php }  ?>





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

<?php

 
 
 $first=mysql_query("UPDATE basket set froms='$nl',agent='$level' where tab='".$table_num."' and ids='".$command_name."' and area='$area' and printed!='2' ") or die(mysql_error());
 
 
 
 $first=mysql_query("UPDATE basket set printed='2', agent='$level' where tab='".$table_num."' and ids='".$command_name."' and area='$area' ") or die(mysql_error());
 
 $day=mysql_query("UPDATE daily set idds='$nl' where id='$lid' ") or die(mysql_error());

$insert=$con->query("INSERT INTO history SET agent='$level',date='$date',num='$nl',sector='$arm',amt='$paids',name='$yn',owed='$owed
' ") or die(mysqli_error($con));



echo '<meta http-equiv="Refresh" content="0; url=close.php">';
 ?>

 


