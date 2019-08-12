<?php 
include('config.php');
@session_start(); 
 $query =mysql_query("SELECT * FROM users WHERE id='".$_SESSION['userSession']."' ") or die(mysql_error());

 while($userRow=mysql_fetch_assoc($query)){
 
  $paidto=$userRow['user_name'];
 $userid=$userRow['id'];
 
 }
 $t=$_GET['roll'];
$query_parent = mysql_query("SELECT * from basket where froms='".$_GET['roll']."' GROUP BY froms ") or die("Query failed: ".mysql_error());
	
	 while($row = mysql_fetch_array($query_parent)){
		 $tab=$row['tab'];
	 }
$query_parent = mysql_query("SELECT * FROM finals where area='".$_GET['area']."' GROUP BY name") or die("Query failed: ".mysql_error());
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Dependent DropDown List</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    
	$("#parent_cat").change(function() {
		$(this).after('<div id="loader"><img src="img/loading.gif" alt="loading subcategory" /></div>');
		$.get('loadsubcat.php?parent_cat=' + $(this).val(), function(data) {
			$("#sub_cat").html(data);
			$('#loader').slideUp(200, function() {
				$(this).remove();
			});
		});	
    });

});
</script>
<style>

form input[type="text"],
form input[type="email"],
form input[type="number"],
form input[type="search"],
form input[type="password"],
form textarea,
form select {
		background-color: #eee;
		border: 1px solid rgb( 186, 186, 186 );
		border-radius: 1px;
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.08);
		display: block;
		font-size: 1em;
		margin: 6px 0 12px 0;
		padding: .4em .55em;	
		text-shadow: 0 1px 1px rgba(255, 255, 255, 1);
		transition: all 400ms ease;
		width: 65%;
	}
	
form input[type="text"]:focus,
form input[type="email"]:focus,
form input[type="number"]:focus,
form input[type="search"]:focus,
form input[type="password"]:focus,
form textarea:focus,
form select:focus{ 
		border-color: #4195fc;/* the focus color for a input box */
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px #4195fc;
		width:65%;
}
table{
	width:95%;
	text-align:center;
	line-height:2.7;
	
}
</style>
</head>

<body>
<h3 style="border:2px solid#f00; margin-top:-10px; text-align:center">Swapping Some Drinks by <?php echo $paidto; ?></h3>
<form method="post" action="">
<input value="<?php echo $_GET['id'];?>" name="pid" type="hidden"><input value="<?php echo $_GET['price'];?>" name="fprice" type="hidden"><table>

<tr><td>Current Product</td><td>
   <input type="text" name="p" value="<?php echo $_GET['product']; ?>" readonly style="border:2px solid#f00">
   </td></tr>
   
   <tr><td>Current Qty</td><td>
   <input type="text" name="q" value="<?php echo $_GET['qty']; ?>" readonly style="border:2px solid#f00">
   </td></tr> 
   
   <tr><td>New Qty of <?php echo $_GET['product']; ?></td><td>
    <select name="rqty"  require>
    <option ></option>
      	<option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
					<?php 
					for($day=1;$day<=20;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
    </select>
   </td></tr>
   
   
<tr><td>New Drink Commanded</td><td>
    <select name="prod" id="parent_cat">
        <?php while($row = mysql_fetch_array($query_parent)): ?>
        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
        <?php endwhile; ?>
    </select>
   </td></tr>
   <tr><td>Price</td><td>
    <select name="price" id="sub_cat"></select>
    </td></tr>
    
       
<tr><td>New Qty</td><td>
    <select name="nqty"  require>
    <option ></option>
      	<option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
					<?php 
					for($day=1;$day<=20;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
    </select>
   </td></tr>
   
   
    <tr><td></td><td><button type="submit" class="btn btn-info" name="save" style="padding:10PX 10PX; color:#FFF; background:#000" > SAVE<button></td></tr>
    </table>
</form>
</body>
</html>

<?php
if(isset($_POST['save'])){
	$prod=$_POST['prod'];
	$price=$_POST['price'];
	$fprice=$_POST['fprice'];
	$nqty=$_POST['nqty'];
	$old_product=$_POST['p'];
	$changed_qty=$_POST['rqty'];
	
	$idd=$_GET['id'];
	
	$total=$price*$nqty;
	$current_qty=$_POST['q'];
	$curent_total=$changed_qty*$fprice;
	
	$day=date('d');
	$month=date('m');
	$year=date('Y');
	$date=date('d-m-Y');
	$pid=$_POST['pid'];
	
	
	$query_parent = mysql_query("SELECT * FROM finals where id='".$prod."' ") or die("Query failed: ".mysql_error());
	
	 while($row = mysql_fetch_array($query_parent)){
		 $product=$row['name'];
	 }
	
	$query_parent12 = mysql_query("INSERT INTO basket set product='$product',price='$price',qty='$nqty',total='$total',printed='2',status='2',froms='$t',tab='$tab',agent='$userid',day='$day',date='$date',month='$month',year='$year'   ")  or die(mysql_error()); 
	
	$query_parent = mysql_query("UPDATE basket set product='$old_product',price='$fprice',qty='$changed_qty',total='$total' where id='".$_GET['id']."' ") or die(mysql_error());
	
	
	echo "<script>alert('Product successfully changed')</script>";
	
	echo '<meta http-equiv="Refresh" content="0; url=?tabs='.$_GET['tabs'].'&area='.$_GET['area'].'">';
}
?>
