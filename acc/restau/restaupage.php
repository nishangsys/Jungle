

<?PHP


session_start();

require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}

else {
	@session_start();
	
	if(($_SESSION['banned'])!='15'){
		echo "<script>alert('Sorry.Cannot View Page')</script>";
		
		
			
	}
	else {
		
		
		
?>
<!DOCTYPE html>
<html>
<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>	
<head>
	<title>NISHANG SOFTWARES PRODUCTS</title>
		<meta charset="utf-8">
        <META HTTP-EQUIV="REFRESH" CONTENT="15">
	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
        <link href="../style.css" rel="stylesheet" type="text/css" />
          <link href="styless.css" rel="stylesheet" type="text/css" />
        <style>
		th{
			background:#1188aa;
			color:#fff;
			text-align:center;
		}
		</style>
       
<script type="text/javascript">
function doCalc(form) {
form.left.value = ((parseInt(form.qty.value)-parseInt(form.bought.value)));

  form.total.value = ((parseInt(form.priz.value)*parseInt(form.bought.value)));

}
</script>
        
		<!--//webfonts-->
</head>
    <script src="tabcontent.js" type="text/javascript"></script>

<script type="text/javascript" src="../calendar.js"></script>
<script type="text/javascript">
$('#contactForm').on('submit', function (event) {
    event.preventDefault();
    $.post("your url", $(this).serialize());

    mainVid.hide(400);
    secVid.show(400);
});


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


<body >


<?php include 'restauhead.php'; ?>

	<div class="contain" style="width:95%;">
   <div class="subcontain">
  
    <div class="restau_box" >
    
    
    <h1 style="background:#000; color:#fff; padding:10px 10px;">
    <?php
	$r=mysql_query("SELECT COUNT(price) from products where serial='Bar' and price=''") or die(mysql_error());
	if(mysql_num_rows($r)>0){
		echo "SORRY SOME PRODUCTS IN STOCK HAVE NO PRICES UPDATE TO CONTINUE";
	}
	else {
	?>
 </h1>
   
   
 <div class="tables" style="width:630px; height:330px;background:#eee">
        <ul class="tabs" data-persist="true">
            <li><a href="#view1" style="background:#f00; color:#fff; font-family:Arial, Helvetica, sans-serif; font-weight:bold"> Bar </a></li>
            
            <li><a href="#view2" style="background:#1188aa; color:#fff; font-family:Arial, Helvetica, sans-serif; font-weight:bold"> Restau </a></li>
            
                        <li><a href="#view3" style="background:#ff0; color:#009; font-family:Arial, Helvetica, sans-serif; font-weight:bold"> Individual </a></li>
                        
                         <li><a href="#view4" style="background:#093; color:#fff; font-family:Arial, Helvetica, sans-serif; font-weight:bold">Bar Free </a></li>
                         
                           <li><a href="#view5" style="background:#0FF; color:#000; font-family:Arial, Helvetica, sans-serif; font-weight:bold">Restau Free </a></li>
                           
                             <li><a href="#view6" style="background:#039; color:#fff; font-family:Arial, Helvetica, sans-serif; font-weight:bold">Company Bar</a></li>
                                <li><a href="#view7" style="background:#900; color:#fff; font-family:Arial, Helvetica, sans-serif; font-weight:bold">Company Restau</a></li>

        </ul>
        <div class="tabcontents">
            <div id="view1">
                   <form method="post" action="" name="my_form">
        <table>
       <div class="name"><a href=javascript:popcontact('pricelist.php') style="color:#1188aa; text-align:center">Click here to see all product prices</a></div>
       
 
<table >
<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="search" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['search'])){

$txtbarcode=$_POST['barcode'];



$result=mysql_query("SELECT * from products where  pro_id='".$txtbarcode."'  and serial='Bar' and quatity>0");
//check if produc exits
if(mysql_num_rows($result)<1){
		 	echo "<script>alert('Error . ".$txtbarcode." is not Found. Make sure your spelling is correct ')</script>";	
}
else{
while($row=mysql_fetch_array($result))
{

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<table border="1" style="width:100%; margin:auto">

<tr><th></th><th></th><th></th><th></th><th></th><th>ITEM:</th><th>Avail. Qrt</th><th>CP</th><th>Qty bought</th><th>Stocks</th><th>Table<th>Sell</th></th>

    <tr>

<td ><input type="hidden" name="id"  value="2" ></td>
<td ><input type="hidden" name="cate"  value="<?php echo  $row['category']; ?>" ></td>


<td align=center><input type="hidden" name="cp"  value="<?php 
$d=mysql_query("SELECT * FROM stocks where product='".$row['product']."' ") or die(mysql_error());
while($ans=mysql_fetch_assoc($d)){
	echo  $cp=$ans['month'];
}

 ?>" readonly></td>



<td align=center><input type="hidden" name="serial"  value="<?php echo  $row['serial']; ?>" readonly></td>
<td ><input type="hidden" name="total" onBlur="doCalc(this.form)" style="background:#f00;text-align:center; color:#ff0"></td>



<td align=center><input type="text" name="product"  value="<?php echo  $row['product']; ?>" style="width:110px" readonly></td>

<td align=center><input type="text" name="qty" onBlur="doCalc(this.form)"  value="<?php echo  $row['quatity'] ?>" readonly></td>
<td align=center><input type="text" name="priz" onBlur="doCalc(this.form)"  value="<?php echo  $sp=$row['price'] ?>" style="width:60px" readonly></td>



<td><select name="bought" style="width:70px" class="input" required='required' onBlur="doCalc(this.form)"/>
                <option value="<?php echo $room; ?>"  onBlur="doCalc(this.form)" required></option>
					<?php 
					for($room=1;$room<=350;$room++)
					{
					echo "<option value='$room' >$room</option>";
					}
					?>
				</select>
                
                </select></td>


<td ><input type="text" name="left" onBlur="doCalc(this.form)" style="background:#f00;text-align:center; color:#ff0"></td>
 <?php
			   $amou="SELECT * from our_tables order by num ";
	$run=mysql_query($amou) or die (mysql_error());					 
		 ?>        
<td><select name="table" style="width:100px" />
               
               <?php				
					while ($row=mysql_fetch_array($run)){
						
						$tab_id=$row['id'];	
							$table=$row['num'];														
							echo "<option value='$table'>Tab $table</option>";
							
					}
                   
				

			   ?>
               </select></td>

<td><button type="submit" name="sell">Sell</button></td>

</form>



</tr>
<?php }
}








 }?>

</table>








<?php
if(isset($_POST['sell'])){
	
$youid=$_POST['id'];
 $priz=$_POST['priz'];
$cate=$_POST['cate'];
$cp=$_POST['cp'];
 $avail=$_POST['qty'];
 
 $product=$_POST['product'];
 
 
 $qty=$_POST['bought'];
 $table=$_POST['table'];
 $salesman=$_SESSION['user_name'];
 $profit=($priz-$cp)*$qty;
 $remstocks=$avail-$qty;
 $date=date('d-m-Y');
  $day=date('d');
   $month=date('m');
    $year=date('Y');
 
 //db total
  $db_tot=$_POST['dbtot'];
   $total=$priz*$qty;
   //new total===>dbtotal-totalnow
  $new_total=$db_tot-$total;
 //check if the total is positive that is if stocks are left
 if($qty>$avail){
	 	echo "<script>alert('Error .You have run out of stocks so you cannot sell more ".$avail." now ')</script>";
			

 }
 
 else {
	
  $ol=mysql_query("SELECT * from our_tables where num='$table' and status='1'") or die(mysql_error());	
  if(mysql_num_rows($ol)<1){
	  
	   echo "<script>alert('ERROR. TABLE $table has NOT being given out')</script>";
	   echo '<meta http-equiv="Refresh" content="0; url= restaupage.php">';
  }
  else {
	 //echo $remstocks;
	   $update=mysql_query("update products set quatity='$remstocks', agent='$salesman', total='$new_total' 
	  where product='$product' and category='$cate' and serial='Bar' LIMIT 1")or die(mysql_error());
	  
	   
	  //add to basket
	  
   $query = mysql_query("insert into basket set product='$product',category='$cate',price='$priz',
	total='$total',qty='$qty',cp='$cp',status='1',tab='$table',ids='$youid',section='Bar',opening_stocks='$avail',closing_stocks='$remstocks',area='15',profit='$profit',
date='$date',day='$day',month='$month',year='$year'") or die(mysql_error());

  
   $query12 = mysql_query("insert into all_basket set product='$product',category='$cate',price='$priz',
	total='$total',qty='$qty',cp='$cp',status='1',tab='$table',ids='$youid',section='Bar',opening_stocks='$avail',closing_stocks='$remstocks',area='15',profit='$profit',
date='$date',day='$day',month='$month',year='$year'") or die(mysql_error());



	echo "<script>alert('Success. You have sold ".$qty." units of ".$product." to table ".$table."')</script>";
	
   // echo "Form Submitted succesfully";
}
}
}
?>
</form>
        
        </table>
        </form>
            </div>
            
         <!--------------------  --------------------------------------------------------------------------COMPANY BAR-------->
         
         
          <div id="view6">
                   <form method="post" action="" name="my_form">
        <table>
       <div class="name"><a href=javascript:popcontact('pricelist.php') style="color:#1188aa; text-align:center">Click here to see all product prices</a>| 
       <a href=javascript:popcontact('allcomsales.php') style="color:#f00; background:#FF0; padding:5px 5px; text-align:center">View Sales company Historique</a></div>
       
 
<table >
<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="combar" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['combar'])){

$txtbarcode=$_POST['barcode'];



$result=mysql_query("SELECT * from products where  pro_id='".$txtbarcode."'  and serial='Bar' and quatity>0");
//check if produc exits
if(mysql_num_rows($result)<1){
		 	echo "<script>alert('Error . ".$txtbarcode." is not Found. Make sure your spelling is correct ')</script>";	
}
else{
while($row=mysql_fetch_array($result))
{

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<table border="1" style="width:100%; margin:auto">

<tr><th></th><th></th><th></th><th></th><th></th><th>ITEM:</th><th>Avail. Qrt</th><th>CP</th><th>Qty bought</th><th>Stocks</th><th>Table<th>Sell</th></th>

    <tr>

<td ><input type="hidden" name="id"  value="2" ></td>
<td ><input type="hidden" name="cate"  value="<?php echo  $row['category']; ?>" ></td>


<td align=center><input type="hidden" name="cp"  value="<?php 
$d=mysql_query("SELECT * FROM stocks where product='".$row['product']."' AND  serial='Bar' ") or die(mysql_error());
while($ans=mysql_fetch_assoc($d)){
	echo  $cp=$ans['month'];
}

 ?>" readonly></td>



<td align=center><input type="hidden" name="serial"  value="<?php echo  $row['serial']; ?>" readonly></td>
<td ><input type="hidden" name="total" onBlur="doCalc(this.form)" style="background:#f00;text-align:center; color:#ff0"></td>



<td align=center><input type="text" name="product"  value="<?php echo  $row['product']; ?>" style="width:110px" readonly></td>

<td align=center><input type="text" name="qty" onBlur="doCalc(this.form)"  value="<?php echo  $row['quatity'] ?>" readonly></td>
<td align=center><input type="text" name="priz" onBlur="doCalc(this.form)"  value="<?php echo  $sp=$row['price'] ?>" style="width:60px" readonly></td>



<td><select name="bought" style="width:70px" class="input" required='required' onBlur="doCalc(this.form)"/>
                <option value="<?php echo $room; ?>"  onBlur="doCalc(this.form)" required></option>
					<?php 
					for($room=1;$room<=350;$room++)
					{
					echo "<option value='$room' >$room</option>";
					}
					?>
				</select>
                
                </select></td>


<td ><input type="text" name="left" onBlur="doCalc(this.form)" style="background:#f00;text-align:center; color:#ff0"></td>
 <?php
			   $amou="SELECT * from companies group by name order by name";
	$run=mysql_query($amou) or die (mysql_error());					 
		 ?>        
<td><select name="table" style="width:100px" />
               
               <?php				
					while ($row=mysql_fetch_array($run)){
						
						$tab_id=$row['id'];	
							$table=$row['name'];														
							echo "<option value='$table'>$table</option>";
							
					}
                   
				

			   ?>
               </select></td>

<td><button type="submit" name="comsell">Sell</button></td>

</form>



</tr>
<?php }
}








 }?>

</table>








<?php
if(isset($_POST['comsell'])){
	
$youid=$_POST['id'];
 $priz=$_POST['priz'];
$cate=$_POST['cate'];
$cp=$_POST['cp'];
 $avail=$_POST['qty'];
 
 $product=$_POST['product'];
 
 
 $qty=$_POST['bought'];
 $table=$_POST['table'];
 $salesman=$_SESSION['user_name'];
 $profit=($priz-$cp)*$qty;
 $remstocks=$avail-$qty;
 $date=date('d-m-Y');
  $day=date('d');
   $month=date('m');
    $year=date('Y');
 $time=date('G:i');
 //db total
  $db_tot=$_POST['dbtot'];
   $total=$priz*$qty;
   //new total===>dbtotal-totalnow
  $new_total=$db_tot-$total;
 //check if the total is positive that is if stocks are left
 if($qty>$avail){
	 	echo "<script>alert('Error .You have run out of stocks so you cannot sell more ".$avail." now ')</script>";
			

 }
 
 else {
	
 
	 //echo $remstocks;
	   $update=mysql_query("update products set quatity='$remstocks', agent='$salesman', total='$new_total' 
	  where product='$product' and category='$cate' and serial='Bar' LIMIT 1")or die(mysql_error());
	  
	   
	  //add to basket
	  
   $query123 = mysql_query("insert into basket set product='$product',category='bar',price='$priz',
	total='$total',qty='$qty',cp='$cp',status='1',tab='$table',ids='company',section='Bar',opening_stocks='$avail',closing_stocks='$remstocks',area='15',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year'") or die(mysql_error());

  echo "<script>alert('SUCCESS  in selling ".$product."  ')</script>";
	
   // echo "Form Submitted succesfully";

}
}
?>
</form>
        
        </table>
        </form>
            </div>
            
         
         <!-----------------------------------------------------------------------------------------------------------------------ENG COMPANY BAR----------> 
            
            
            
            <!------------------------------------------------------------------------------------------------------------------------------------INDIVIDAUL SLAES---------------------->
            
            
            
            <div id="view3">
                   <form method="post" action="" name="my_form">
        <table>
       <div class="name"><a href=javascript:popcontact('pricelist.php') style="color:#1188aa; text-align:center">Click here to see all product prices</a>| 
       <a href=javascript:popcontact('allsales.php') style="color:#f00; background:#FF0; padding:5px 5px; text-align:center">View Sales</a></div>
       
 
<table >
<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="look" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['look'])){

 $txtbarcode=$_POST['barcode'];



$o=mysql_query("SELECT * from products where pro_id='".$txtbarcode."'  and products.serial='bar' and quatity>0 ");
//chproductseck if produc exits
if(mysql_num_rows($o)<1){
		 	echo "<script>alert('Product Out of Stock')</script>";	
			
}

else{
	
while($row=mysql_fetch_array($o))


{ 
 $priz=$row['price'];
 $avails=$_POST['quatity']; 
$products=$row['product'];

$rem=mysql_query("SELECT * from stocks where product = '".$products."' ");
while($pr=mysql_fetch_assoc($rem)){
	$cp=$pr['month'];
}

 
 $qty=1;
 $total=$priz*$qty;
 $salesman=$_SESSION['user_name'];
 $profit=($priz-$cp)*$qty;
 $remstocks=$avail-$qty;
 $date=date('d-m-Y');
  $day=date('d');
   $month=date('m');
    $year=date('Y');

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

<table border="1" style="width:100%; margin:auto">
<td><?php  $product=$row['product']; ?></td>
    <td><?php $avail=$row['quatity']; ?></td>
    <td><?php  $cp; ?></td>
    <td><?php $bought='1'; ?></td>
    <td><?php $stocks=$avail-$bought; ?></td>


    
   
    </tr>
    <?PHP
echo "<span style='color:#fff; background:#000; font-size:19px; padding:10px 10px; font-weight:bold'>You have successfully Sold 1 Units of <span style='color:#ff0;'>$product</span></span>";
?>
    
    <?php
       $query = mysql_query("insert into basket set product='$product',price='$priz',
	total='$total',qty='$qty',cp='$cp',status='1',tab='all',ids='all',section='Bar',closing_stocks='$stocks',area='15',profit='$profit',
date='$date',day='$day',month='$month',year='$year',opening_stocks='$avail'") ;
$update=mysql_query("UPDATE products set quatity='$stocks' where product='$product' and serial='bar'") or die(mysql_error());
	?>
    

<?php 
}



}




 }?>

</table>








</form>
        
        </table>
        </form>
            </div>
            
                      <!----------------------------------------------------------------------------------------END INDIVIDUAL SA;\LES HERE ---->
  
            
            
            
            
            
            
            
            <!-------------------------------------------------------------------------BAR FREE  STARTS HERE ----------------------------------------------------------------------------->
            
            
            
            <div id="view4">
                   <form method="post" action="" name="my_form">
        <table>
       <div class="name"><a href=javascript:popcontact('pricelist.php') style="color:#1188aa; text-align:center"> All prices</a>| 
       <a href=javascript:popcontact('free.php') style="color:#f00; background:#FF0; padding:5px 5px; text-align:center">View Free Distribution</a>|
       <a href=javascript:popcontact('freedrink_reason.php') style="color:#fff; background:#093; padding:5px 5px; text-align:center">Name Distributors</a>    
       </div>
       
 
<table >
<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="free" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['free'])){

 $txtbarcode=$_POST['barcode'];



$o=mysql_query("SELECT * from products where pro_id='".$txtbarcode."'  and products.serial='bar' and quatity>0 ");
//chproductseck if produc exits
if(mysql_num_rows($o)<1){
		 	echo "<script>alert('Product Out of Stock')</script>";	
			
}

else{
	
while($row=mysql_fetch_array($o))


{ 
 $priz=$row['price'];
 $avails=$_POST['quatity']; 
$products=$row['product'];



$rem=mysql_query("SELECT * from stocks where product = '".$products."' and serial='Bar' ");
while($pr=mysql_fetch_assoc($rem)){
	$cp=$pr['month'];
}

 
 $qty=1;
 $total=$priz*$qty;
 $salesman=$_SESSION['user_name'];
 $profit=($priz-$cp)*$qty;
 $remstocks=$avail-$qty;
 $date=date('d-m-Y');
  $day=date('d');
   $month=date('m');
    $year=date('Y');

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

<table border="1" style="width:100%; margin:auto">
<td><?php  $product=$row['product']; ?></td>
    <td><?php $avail=$row['quatity']; ?></td>
    <td><?php  $cp; ?></td>
    <td><?php $bought='1'; ?></td>
    <td><?php $stocks=$avail-$bought; ?></td>


    
   
    </tr>
    <?PHP
echo "<span style='color:#f00; font-size:19px; font-weight:bold'>Given  1 Units of <span style='color:#1188aa;'>$product</span> out for free</span>";
?>
    
    <?php
       $query = mysql_query("insert into basket set product='$product',price='$priz',
	total='$total',qty='$qty',cp='$cp',status='1',tab='free',ids='free',section='Bar',closing_stocks='$stocks',area='15',profit='$profit',
date='$date',day='$day',month='$month',year='$year',opening_stocks='$avail'") ;
$update=mysql_query("UPDATE products set quatity='$stocks' where product='$product' and serial='bar'") or die(mysql_error());
	?>
    

<?php 
}



}




 }?>

</table>








</form>
        
        </table>
        </form>
            </div>
            
                    
            <!-------------------------------------------------------------------------BAR FREE  ENDS HERE ----------------------------------------------------------------------------->
    
            
       
       
       
       
       
       
       
       
       
       
       
       
       
       
            
            
             
            <!------------------------------------------------------------------------- RESTAU FREE HERE ----------------------------------------------------------------------------->
            
            
            
            <div id="view5">
                   <form method="post" action="" name="my_form">
        <table>
       <div class="name"><a href=javascript:popcontact('fpricelist.php') style="color:#1188aa; text-align:center; background:#1188aa; padding:5px 5px; color:#fff"> FOOD prices</a>| 
       <a href=javascript:popcontact('freefood.php') style="color:#fff; background:#F00; padding:5px 5px; text-align:center">View Free Distribution</a>
     | 
       <a href=javascript:popcontact('freefood_reason.php') style="color:#fff; background:#093; padding:5px 5px; text-align:center">Name Distributors</a>  
       </div>
       
 
<table >
<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="freefood" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['freefood'])){

 $txtbarcode=$_POST['barcode'];



$o=mysql_query("SELECT * from foods where pro_id='".$txtbarcode."'  ");
//chproductseck if produc exits
if(mysql_num_rows($o)<1){
		 	echo "<script>alert('Product Out of Stock')</script>";	
			
}

else{
	
while($row=mysql_fetch_array($o))


{ 
 $priz=$row['price'];
 $avails=$_POST['quatity']; 
$products=$row['product'];

$rem=mysql_query("SELECT * from foods where product = '".$products."' ");
while($pr=mysql_fetch_assoc($rem)){
	$cp=$pr['price'];
}

 
 $qty=1;
 $total=$priz*$qty;
 $salesman=$_SESSION['user_name'];
 $profit=($priz-$cp)*$qty;
 $remstocks=$avail-$qty;
 $date=date('d-m-Y');
  $day=date('d');
   $month=date('m');
    $year=date('Y');
	$time=date('G:i');

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

<table border="1" style="width:100%; margin:auto">
<td><?php  $product=$row['product']; ?></td>
    <td><?php $avail=$row['quatity']; ?></td>
    <td><?php  $cp; ?></td>
    <td><?php $bought='1'; ?></td>
    <td><?php $stocks=$avail-$bought; ?></td>


    
   
    </tr>
    <?PHP
echo "<span style='color:#f00; font-size:19px; font-weight:bold'>Given  1 Units of <span style='color:#1188aa;'>$product</span> out for free</span>";
?>
    
    <?php
       $query = mysql_query("insert into basket set product='$product',price='$priz',
	total='$total',qty='$qty',cp='$cp',status='1',tab='free food',ids='free food',section='Bar',closing_stocks='0',area='15',profit='0',
date='$date',day='$day',month='$month',year='$year',opening_stocks='0',time='$time'") ;

	?>
    

<?php 
}



}




 }?>

</table>








</form>
        
        </table>
        </form>
            </div>
            
                     
            <!-------------------------------------------------------------------------BAR RESTAU ENDS HERE ----------------------------------------------------------------------------->
                 
            
            
            
            
            
            <!-------------------------------------------------------------------------RESTAU STARTS HERE ----------------------------------------------------------------------------->
            <div id="view2">
            
                  <form method="post" action="" name="my_form">

       
 
<table >

             <div class="name"><a href=javascript:popcontact('fpricelist.php') style="color:#1188aa; text-align:center">Click here to see all food prices</a></div>

<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="go" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['go'])){
$txtbarcode=$_POST['barcode'];



$result=mysql_query("SELECT * from foods where pro_id='".$txtbarcode."' or serial='".$txtbarcode."'");
//check if produc exits

while($row=mysql_fetch_array($result))
{

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<table border="1" style="width:100%; margin:auto">

<tr><th></th><th></th><th></th><th></th><th>ITEM:</th><th>Category</th><th>Price</th><th>Qty bought</th><th>Table<th>Sell</th></th>

    <tr>

<td ><input type="hidden" name="id"  value="3" ></td>
<td align=center><input type="hidden" name="dbtot"  value="0" ></td>
<td align=center><input type="hidden" name="serial"  value="<?php echo  $row['serial']; ?>" readonly></td>
<td ><input type="hidden" name="total" onBlur="doCalc(this.form)" style="background:#f00;text-align:center; color:#ff0"></td>



<td align=center><input type="text" name="product"  value="<?php echo  $row['product']; ?>" style="width:90px" readonly></td>

<td align=center><input type="text" name="cate"   value="<?php echo  $row['category'] ?>" style="width:90px" readonly></td>
<td align=center><input type="text" name="priz" onBlur="doCalc(this.form)"  value="<?php echo  $row['price'] ?>" style="width:60px" ></td>

<td><select name="bought" style="width:70px" class="input" required='required' onBlur="doCalc(this.form)"/>
                <option value="<?php echo $room; ?>"  onBlur="doCalc(this.form)" required></option>
					<?php 
					for($room=1;$room<=350;$room++)
					{
					echo "<option value='$room' >$room</option>";
					}
					?>
				</select>
                
                </select></td>



 <?php
			   $amou="SELECT * from our_tables order by num ";
	$run=mysql_query($amou) or die (mysql_error());					 
		 ?>        
<td><select name="table" style="width:100px" />
               
               <?php				
					while ($row=mysql_fetch_array($run)){
						
						$tab_id=$row['id'];	
							$table=$row['num'];														
							echo "<option value='$table'>Tab $table</option>";
							
					}
                   
				

			   ?>
               </select></td>

<td><button type="submit" name="sellplate">Sell</button></td>

</form>



</tr>
<?php }









 }?>

</table>

<?php
if(isset($_POST['sellplate'])){
	
$youid=$_POST['id'];
 $priz=$_POST['priz'];
$cate=$_POST['cate'];
 $avail=$_POST['qty'];
 $product=$_POST['product'];
 $qty=$_POST['bought'];
 $table=$_POST['table'];
 $salesman=$_SESSION['user_name'];

   $total=$priz*$qty;

	
  $ol=mysql_query("SELECT * from our_tables where num='$table' and status='1'") or die(mysql_error());	
  if(mysql_num_rows($ol)<1){
	  
	   echo "<script>alert('ERROR. TABLE $table has NOT being given out')</script>";
	   echo '<meta http-equiv="Refresh" content="0; url= restaupage.php">';
  }
  else {	   
	  //add to basket
	  
   $query = mysql_query("insert into basket set product='$product',category='$cate',price='$priz',
	total='$total',qty='$qty',status='1',tab='$table',ids='$youid',area='15'") or die(mysql_error());
	echo "<script>alert('Success. You have sold ".$qty." units of ".$product." to table ".$table."')</script>";
	
   // echo "Form Submitted succesfully";
}

}
?>
</form>
        
        </table>
        </form>            
            </div>
            
      
      
      
      
                
            <!-------------------------------------------------------------------------RESTAU COMPANY STARTS HERE ----------------------------------------------------------------------------->
            <div id="view7">
            
                  <form method="post" action="" name="my_form">

       
 
<table >

             <div class="name"><a href=javascript:popcontact('fpricelist.php') style="color:#1188aa; text-align:center">All food prices</a> | 
       <a href=javascript:popcontact('allcomfood.php') style="color:#f00; background:#FF0; padding:5px 5px; text-align:center">View Sales company Historique</a></div></div>

<tr><td>ENTER BARCODE</td><td><input type="text" name="barcode" autofocus /></td><TD><button name="go" type="submit">Search</button></TD>
</tr>
<?php
if(isset($_POST['go'])){
$txtbarcode=$_POST['barcode'];



$result=mysql_query("SELECT * from foods where pro_id='".$txtbarcode."' or serial='".$txtbarcode."'");
//check if produc exits

while($row=mysql_fetch_array($result))
{

?>
</table>
</form>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<table border="1" style="width:100%; margin:auto">

<tr><th></th><th></th><th></th><th></th><th>ITEM:</th><th>Category</th><th>Price</th><th>Plate No</th><th>Table<th>Sell</th></th>

    <tr>

<td ><input type="hidden" name="id"  value="3" ></td>
<td align=center><input type="hidden" name="dbtot"  value="0" ></td>
<td align=center><input type="hidden" name="serial"  value="<?php echo  $row['serial']; ?>" readonly></td>
<td ><input type="hidden" name="total" onBlur="doCalc(this.form)" style="background:#f00;text-align:center; color:#ff0"></td>



<td align=center><input type="text" name="product"  value="<?php echo  $row['product']; ?>" style="width:90px" readonly></td>

<td align=center><input type="text" name="cate"   value="<?php echo  $row['category'] ?>" style="width:90px" readonly></td>
<td align=center><input type="text" name="priz" onBlur="doCalc(this.form)"  value="<?php echo  $row['price'] ?>" style="width:60px" ></td>

<td><select name="bought" style="width:70px" class="input" required='required' onBlur="doCalc(this.form)"/>
                <option value="<?php echo $room; ?>"  onBlur="doCalc(this.form)" required></option>
					<?php 
					for($room=1;$room<=350;$room++)
					{
					echo "<option value='$room' >$room</option>";
					}
					?>
				</select>
                
                </select></td>
 <?php
			   $amou="SELECT * from companies group by name order by name";
	$run=mysql_query($amou) or die (mysql_error());					 
		 ?>        
<td><select name="table" style="width:100px" />
               
               <?php				
					while ($row=mysql_fetch_array($run)){
						
						$tab_id=$row['id'];	
							$table=$row['name'];														
							echo "<option value='$table'>$table</option>";
							
					}
                   
				

			   ?>
               </select></td>

<td><button type="submit" name="compres">Sell</button></td>

</form>



</tr>
<?php }









 }?>

</table>

<?php
if(isset($_POST['compres'])){
	
$youid=$_POST['id'];
 $priz=$_POST['priz'];
$cate=$_POST['cate'];
 $avail=$_POST['qty'];
 $product=$_POST['product'];
 $qty=$_POST['bought'];
 $table=$_POST['table'];
 $salesman=$_SESSION['user_name'];

   $total=$priz*$qty;
    $date=date('d-m-Y');
  $day=date('d');
   $month=date('m');
    $year=date('Y');
	$time=date('G:i');


	
 
	  //add to basket
	  
   $query = mysql_query("insert into basket set product='$product',category='$cate',price='$priz',
	total='$total',section='restau',qty='$qty',status='1',tab='$table',ids='company',area='15',date='$date',month='$month',year='$year',time='$time',day='$day'") or die(mysql_error());
	echo "<script>alert('Success. You have sold ".$qty." units of ".$product." to table ".$table."')</script>";
	
   // echo "Form Submitted succesfully";


}
?>
</form>
        
        </table>
        </form>            
            </div>  
      
      
      
      
      
      
      
      
      
      
      
      
      
      
            
           
        </div>
        
   </div>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
 
       
       
       
       
       
       
       
       
       
        <?php
		$c=mysql_query("SELECT * from our_tables order by id") or die(mysql_error());
		 while($rooms=mysql_fetch_assoc($c)){
			 $status=$rooms['status'];
			 $num=$rooms['num'];
        ?>
       	<div class="tables">
        
        <span class="im"><?php if($status=='1'){
			 echo "<h1 class='occ'>Table $num is Occupied</h1>";
			 
		 }else {
			  echo "<h1 class='unocc'>Table $num is UnOccupied</h1>";
		 }?></span>
       
           <!----------hyper link------------->
         
         
         <a href="giveouthistab.php?roll=<?php echo $num; ?>">
         <table border="1">
         
         
         
       <form method="post" action="out.php">
       <?php
	   
$result=mysql_query("SELECT product,category,SUM(qty),price,SUM(total),id,section from basket where tab='".$rooms['num']."' and status='1' group by id  ");
$num=1;

	   ?>
       
				<tr><td>S/N</td><td>Item</td><td>Price</td><td>Qty</td><td>TC</td><td>Delete</td></tr>
				
        <?php   while ($getres=mysql_fetch_assoc($result)){ ?>
        <tr>
        	<td style="width:20px"><input type="text" style="width:20px" value="<?php echo $num++; ?>" /></td>
            <td><input type="text" name="product" style="width:90px" value="<?php echo $getres['product']; ?>" /></td>
                  
            <td><input type="text" name="product" style="width:60px" value="<?php echo $getres['price']; ?> " /></td>
             <td><input type="text" name="product" style="width:20px" value="<?php echo $getres['SUM(qty)']; ?> "  /></td>              
            <td><input type="text" name="product" style="width:60px" value="<?php echo $getres['SUM(total)']; ?> " /></td>
            
            
          <td><a href="delfood.php?hist_id=<?php echo $getres['id']; ?>&section=<?php echo $getres['section']; ?> " onClick="return confirm('Are you Sure you want to Delete  <?php echo $getres['product']; ?>?');" >
        <i class="fa fa-trash-o"></i></a></td>|
        
             
        </tr>
          <?php  }
			  
		
		?>
        <tr>
        	
     
        
         
      </table>
      <table>
        <td>Grand Total</td>
            <td></td>
            <td></td>
            <td></td>
            <td style="background:#f00; color:#fff; text-decoration:blink">
            <?php
			
			
$result=mysql_query("SELECT SUM(total) as total,tab from basket where tab='".$rooms['num']."' and status='1'  ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']) ."&nbsp;&nbsp;Frs";
$is= $row['ids'];

?>
            
            </td>
            
        </tr>
         <TR>
          <td> &nbsp; &nbsp; 
 <a href=javascript:popcontact('validate.php?roll=<?php echo $row['tab'] ?>') style="color:#f00; text-decoration:blink">Check me Out </a> | 
 <a href="print.php?roll=<?php echo $row['tab']; ?>" target="_blank">A4 </a></td>|<td><a href="rec.php?roll=<?php echo $row['tab']; ?>" target="_blank">B5 </a></td> 
  
      
        </td>
         </TR>
          
          
          
        
         </table>
         </a>
         </form>
         <?php } ?>
        
        </div>
        
        
        
        
        <?php } ?>
        
        </div>
     </div>
   </div>
   
	<div class="clear"></div>
		
	<div class="foot"><br>© Copy Rights <?php echo date('Y'); ?>. All rights reserved by the Programmer<br>
Licensed by PEFSCOM<br>
For any help contact us at 679 135 426 or 671 984 477 </div>		
		 		
</body>
</html>

<?php } } } ?>