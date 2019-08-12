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

 $query =$con->query("SELECT * FROM users WHERE id=".$_GET['roll']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $casheir=$userRow['full_name'];
 $paidto=$userRow['user_name'];
 
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
	padding:5px 5px;
	line-height:2;
	
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
   $result=$con->query("SELECT product,SUM(qty) as qty,price from basket where casheir='".$_GET['roll']."' and date='$cur_date' and qty>0 group by product order by product   ") or die(mysqli_error($con));
$O=1; 
  
?>

		 <div class="page">
         
		  <div style="width:360px; height:340px;  ">
		  
		   <div style="float:left;width:330px; height:AUTO; overflow:hidden;border-bottom:double;margin-left:0px; 
		  font-family:times; margin-top:0px; ">
          <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"><?php echo $clients; ?></h1>
          
           <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"> <?php echo $TEL; ?></h1>
           
            <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px">Address: <?php echo $AD; ?></h1>
          
           <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px"> CASHEIR: <?PHP echo $casheir;  ?>
           <br>
          Sales for  : <?php echo $cur_date; ?></h1>
			 
		   <h1 style="font-size:14px; text-align:center; font-family:'Arial Black', Gadget, sans-serif; font-size:18px; margin-top:-5px"> CASHEIR: <?PHP echo $casheir;  ?>
           <br>
          TOTAL SALES : <?php $dfm=$con->query("SELECT SUM(rec) as sales from daily WHERE date='$cur_date' and paidto='$paidto'") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			echo number_format($ac['sales']);
		} ?></h1>


</div>
	
<div class="clear"></div>
	  
	  
	  
	  
	  
	  
	  
       <table style="width:100%">
   <tr><td>S/N</td><td>Product</td><td>Qty</td><td>Price</td></tr>
   
 <?php   while ($getres=$result->fetch_assoc()){ ?>
 <tr>
 	<td><?PHP echo $O++; ?></td>
    <td><?PHP  echo $getres['product'];    ?></td>
    <td><?PHP  echo $getres['qty'];    ?></td>
     <td><?PHP  echo $getres['price'];    ?></td>
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

<?php



//echo '<meta http-equiv="Refresh" content="0; url=close.php">';
 ?>

 


