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
  $dms=$con->query("SELECT * FROM sectors WHERE area='".$_GET['sect']."' ") or die(mysqli_error($con));
 
while($bums=$dms->fetch_assoc()){
$sector=$bums['name'];
}
$area=$_GET['sect'];
					  $date=$_GET['date'];
     

?>

		 <div class="page">
         
		  <div style="width:360px; height:340px;  ">
          
       
		  
		   <div style="float:left;width:330px; height:AUTO; overflow:hidden;border-bottom:double;margin-left:0px; 
		  font-family:times; margin-top:0px; ">
          
             <DIV style="width:90PX; height:80PX; border:1px solid#000; float:left"> <img src="../img/logo.png"> </DIV>
             
             
          <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:5px"><?php echo $clients; ?></h1>
		   <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px">Tel:<?php echo  $TEL;  ?></h1>
		     <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px; text-transform:uppercase"> SUPPLY BODIRO FOR: <?PHP echo $sector;  ?>
			 		     <h1 style="font-size:14px; text-align:center; font-family:Arial, Helvetica, sans-serif; margin-top:-5px; text-transform:uppercase"> SUPPLIED ON: <?PHP echo $_GET['date'];  ?>

			 </h1>


</div>
	
<div class="clear"></div>
	  
	  
	  
	  
	  
	  
	  
	  <?php  $dms=$con->query("SELECT * FROM truck where month='$date' AND receiver='$area' ") or die(mysqli_error($con));
   $i=1;
?>
	  
	  
	  
	  
	   <table style="width:100%">
	   <tr>
   <td>S/N</td><td>Product</td><td>Time Supplied</td><td>Time Supplied</td></tr>
 

<?php
while($bum=$dms->fetch_assoc()){ 
?>
<tr>

                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['item']; ?></td>
                <td><?php echo $bum['current']; ?></td>
                <td><?php echo $bum['time']; ?></td>
                            </tr>

  <?PHP } ?>
 </table>

 

<div class="clear"></div>
   <div style="position:relative; font-size:12px; text-align:center; bottom:0px; height:30px">Printed today <?php echo date('d-m-Y'); ?> at <?php echo date('h:i'); ?> </div>






			</div>
			</div>	</div>

</div>





</div>



</div>


</div>




</div></div></div>




