
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
        <h1>Manage Your Stocks</h1>

   <?php 
   $product=$_GET['product'];
   $product;
	 $banned="select * from  products where product='$product' "; 
	$run = mysql_query($banned) or die(mysql_error());
		while ($all=mysql_fetch_array($run)){
			$quantity=$all['quatity'];
			?>
   
   
   <form method="post" action="<?php echo $_SERVER["PHP_SELF"] ?>?product=<?php echo $all['product']; ?>">
 
		
	<table>
    	<tr>
        <td>Products</td><td><input type="text" name="product" value="<?php echo $all['product']; ?>" readonly="readonly"/></td>
        </tr>
        
        <tr>
        <td>Ctegory</td><td><input type="text" name="product" value="<?php echo $all['category']; ?>" readonly="readonly"/></td>
        </tr>
        <tr>       
        <tr>
        <td>Old Price</td><td><input type="text"  value="<?php echo $all['price']; ?>" readonly="readonly" /></td>
        </tr>
        
        <tr>
        <td>New Price</td><td><input type="text" name="price"  onBlur="doCalc(this.form)"  /></td>
        </tr>
        
        
        <tr>
        <td>Available Stock/ Quantity</td><td><input type="text" name="quantity" onBlur="doCalc(this.form)" value="<?php echo $all['quatity']; ?>" readonly="readonly" /></td>
        </tr>
        
         <tr>        
        <td>Total Cost</td>
        <td><input type="text" name="total" required="required" style="background:red;color:white;" ></td></tr>
        <tr>
       
        <tr>
        <td></td><td><button type="submit" name="updateprice">Update Price</button>
        </td>
        </tr>
       
    </table>
</form>

  
 
</div>


</body>
</html>
   <?php
$price=mysql_real_escape_string($_POST['price']);
   $product=$_GET['product'];   
     $quantity;
	 $total=$quantity*$price;
	
   if(isset($_POST['updateprice'])){
	$update="UPDATE products set price='$price',total='$total' where product='$product'";	
				$run3=mysql_query ($update) or die ('could not updated:'.mysql_error()); 
						
	if($run3){
		echo "<script>alert('Database succesfully Updated ')</script>";
		;
	}
   else {
	   echo "<script>alert('Error Updating database')</script>";
		
   }
	}
	
			?>
	<?php  } } ?>