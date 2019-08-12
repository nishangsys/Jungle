
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
        <td>Category</td><td><input type="text" name="product" value="<?php echo $all['category']; ?>" readonly="readonly"/></td>
        </tr>
        <tr>       
        <tr>
        <td>Old Barcode</td><td><input type="text"  value="<?php echo $all['barcode']; ?>" name="oldqty" readonly="readonly" /></td>
        </tr>
        
        <tr>
        <td>New Barcode</td><td><input type="text" name="nbarcode" required="required"  /></td>
        </tr>
        
     
        <tr>
        <td></td><td><button type="submit" name="update">Update Barcode</button>
        </td>
        </tr>
       
    </table>
</form>

  
 
</div>


</body>
</html>
   <?php


	 
	
   if(isset($_POST['update'])){
	   $id=$_POST['pro_id'];;
	 
	 $barcode=mysql_real_escape_string($_POST['nbarcode']);  
	 $update=mysql_query("UPDATE products set barcode='$barcode' where pro_id='$id'") or die(mysql_error());
				

echo "<script>alert('Barcode Successfully Changed to ".$barcode." ')</script>";
		;	
   }
   }
		
	
	
			?>
	<?php  } ?>