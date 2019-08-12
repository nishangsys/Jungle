

<?PHP


session_start();

require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}

else {
	@session_start();
	
	if(($_SESSION['banned'])!='10'){
		echo "<script>alert('Sorry.Cannot View Page')</script>";
		
		
			
	}
	else {
?>
<!DOCTYPE html>
<html>
	
<head>
	<title>NISHANG SOFTWARES PRODUCTS</title>
		<meta charset="utf-8">
	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
        <link href="../style.css" rel="stylesheet" type="text/css" />
       
<script type="text/javascript">
function doCalc(form) {
form.left.value = ((parseInt(form.qty.value)-parseInt(form.bought.value)));

  form.total.value = ((parseInt(form.priz.value)*parseInt(form.bought.value)));

}
</script>
        
		<!--//webfonts-->
</head>
<script type="text/javascript" src="../calendar.js"></script>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>


<body>


<?php include 'restauhead.php'; ?>

	<div class="contain" style="width:960px;">
   <div class="subcontain">
     <div class="restau_box">
       
<div class="right">
<div class="BOXC">

<i class="fa fa-print fa-2x "></i>

<a href="dailyprint.php" >Click here To print Today's Report</a> 

</div>

    <?php
	
	 $today=date('d-m-Y');
	
	
	$cust="SELECT room,time,SUM(rec) from daily where date='$today' and area='2' GROUP BY time   order by time DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#1188AA; padding:10PX 0PX; height:30px; color:#fff; text-align:center; font-weight:bold">
    <td>S/N</td>
    
    <td>Table Number</td>
    <td>Amount Paid </td>
    <TD>For Table</TD>
     <TD>Time</TD>
  
    
    <?php while($row=mysql_fetch_assoc($run)){
		$agen=$row['agent'];
		
		 ?>
    <tr>
    <?PHP
	if($num%2==0){
		echo "<tr style='background:#eee;height:30px'>";		
	}
	else {
		echo "<tr style='background:#ccc; height:30px'>";
	}
	?>
    <td><?php echo $num++; ?></td>
    <td>Table <?php echo $row['room']; ?></td>
        <td><?php echo number_format($row['SUM(rec)']); ?> Frs</td>
    <td>Table <?php echo $row['room']; ?> </td>
    <td> <?php echo $row['time']; ?> </td>
 
   
    
    </tr>
    <?php } ?>
    
   
    </table>
    <hr>
    <table>
    <tr style=" margin-left:-70px">
    <td >Total Income</td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	
	$cust="SELECT SUM(rec) from daily WHERE  daily.date='$today' and area='2'  ";
	$run=mysql_query($cust) or die (mysql_error());
	while($row=mysql_fetch_assoc($run)){
		 echo $total=number_format($row['SUM(rec)'])."&nbsp; Frs";;
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
     <table style="margin-left:-60px"">
    <tr style="margin-left:-30px">
    <td style="margin-left:-30px">Total Expenditure</td>
        <td style="color:#fff"></td>

    <td style="color:#000; text-align:center"><?php
    
	 $today=date('d-m-Y');
	$custi="SELECT SUM(exp)as expenses  from daily WHERE  daily.date='$today' order by daily.id DESC ";
	$runs=mysql_query($custi) or die (mysql_error());
	while($row=mysql_fetch_assoc($runs)){
		echo $total1=number_format($row['expenses'])."&nbsp; Frs";;
	}
	?></td>

    <td></td>

    </tr>
    
    </table>
    
    
    
    <table>
    <tr><td style="font-style:italic; font-weight:bold">Closing Balance for <?php echo date('d-m-Y'); ?></td><td style="background:#333; color:#fff"><?php
echo ($total);
	?></td></tr>
    
    </table>
   
 
  </div>
  </tr>
  </tr>
     </div>
   </div></div>
  
   
	<div class="clear"></div>
		
	<div class="foot"><br>© Copy Rights <?php echo date('Y'); ?>. All rights reserved by the Programmer<br>
Licensed by PEFSCOM<br>
For any help contact us at 679 135 426 or 671 984 477 </div>		
		 		
</body>
</html>

<?php } } ?>