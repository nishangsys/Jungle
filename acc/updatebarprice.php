
<?php
include  'dbc.php';
session_start();
require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){

header ("location: login.php");
echo "Error";
}
else {
    ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Clints name</title>
<link href="../style.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">
function doCalc(form) {
  form.total.value = parseInt(form.quantity.value) * parseInt(form.price.value);
}
</script>
<body>

<?php include 'restauhead.php'; ?>

	<div class="contain" >
   <div class="subcontain">
   <?php include 'restaubar.php'; ?>

        
        
        
        
        <div class="right">
        <h1>Manage Your Stocks Here</h1>

   <?php 
   $product=$_GET['good'];
  
	 $banned="select * from  products where pro_id='$product' "; 
	$run = mysql_query($banned) or die(mysql_error());
		while ($all=mysql_fetch_array($run)){
			$quantity=$all['quatity'];
			?>
   
   
   <form method="post" action="<?php echo $_SERVER["PHP_SELF"] ?>?good=<?php echo $all['pro_id']; ?>">
 
		
	<table>
    <tr>
        <td></td><td><input type="hidden" name="pro_id" value="<?php echo $all['pro_id']; ?>" /></td>
        </tr>
        <tr>
        <td></td><td><input type="hidden" name="tot" value="<?php echo $all['total']; ?>" /></td>
        </tr>
    	<tr>
        <td>Products</td><td><input type="text" name="product" value="<?php echo $all['product']; ?>" readonly="readonly"/></td>
        </tr>
        
        <tr>
        <td>Ctegory</td><td><input type="text" name="product" value="<?php echo $all['category']; ?>" readonly="readonly"/></td>
        </tr>
        <tr>       
        <tr>
        <td>Available Stock/ Quantity</td><td><input type="text"  value="<?php echo $all['quatity']; ?>" name="oldqty" readonly="readonly" /></td>
        </tr>
        
        <tr>
        <td>New Stocks Number</td><td><input type="text" name="quantity"  onBlur="doCalc(this.form)"  /></td>
        </tr>
        
        
        <tr>
        <td>Price</td><td><input type="text" name="price" onBlur="doCalc(this.form)" value="<?php echo $all['price']; ?>" readonly="readonly" /></td>
        </tr>
        
         <tr>        
        <td>Total Cost</td>
        <td><input type="text" name="total" required="required" style="background:red;color:white;" readonly="readonly" ></td></tr>
        <tr>
       
        <tr>
        <td></td><td><button type="submit" name="updateprice">Update Stock</button>
        </td>
        </tr>
       
    </table>
</form>

  
 
</div>


</body>
</html>
   <?php
$qty=mysql_real_escape_string($_POST['quantity']);
$oldqty=mysql_real_escape_string($_POST['oldqty']);
$allqty= $qty+$oldqty;

   $product=$_POST['product']; 
     $category=$_POST['category'];   
   $id=$_POST['pro_id'];
   $total=$_POST['total'];
   $dbtotal=$_POST['tot'];
   $date=date('d-m-Y');
		$month=date('m');
		$year=date('Y');
   $newtot=$dbtotal+$total;
  
	 
	
   if(isset($_POST['updateprice'])){
	   if($qty<=0){
		   echo "<script>alert('ERROR. Negative Stocks Discovered. Try Again ')</script>";
		   
	   }
	   else {
	 $update=mysql_query("UPDATE products set quatity='$allqty',total='$newtot' where pro_id='$id'") or die(mysql_error());
				
$expense=mysql_query("INSERT INTO expense set product='$product',category='$category',date='$date',month='$month',year='$year',total='$total',area='3'") or die(mysql_error()); 

echo "<script>alert('Database succesfully Updated ')</script>";
		;	
   }
   }
		}
	
	
			?>
	<?php  } ?>