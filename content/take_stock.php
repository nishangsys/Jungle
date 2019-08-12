<?php
/**
Simple rooms Create, Read, Update and Delete (CRUD) using php mysql by asif18.com, for more tutorials visit: http://www.asif18.com
for this tutorial visit: http://asif18.com/20/php/rooms-insert-update-using-php-mysql-delete-rooms-records-using-checkboxes-in-php/
**/
include '../includes/dbc.php'; // include the database and server connection file
 $area=$_GET['area'];
	$sector=$_GET['name'];
session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['user_name'];
 $level=$userRow['banned'];
 
 }


$query 	= mysql_query("SELECT * FROM `finals` WHERE area='".$_GET['area']."' order by name"); // Select from the table
$count 	= mysql_num_rows($query); // Get the rows count

$CHECwK=mysql_query("SELECT * FROM sectors WHERE area='".$_GET['area']."' order by name") or die(mysql_error());
		    while($ro=mysql_fetch_assoc($CHECwK)){
			echo	$sector=$ro['name'];
		  
			}
// Multipe insert case
if(isset($_POST['Submit1'])) {
	$_POST = array_map("ucwords", $_POST);
	$amt = $_POST['total'];
	$date=date('d-m-Y');
	$month=date('m');
	$day=date('d');
	$year=date('Y');
	@session_start();
	$name=$_SESSION['user_name'];
	if($amt > 0) {
		$del=mysql_query("SELECT * FROM stockreports WHERE date='$date' and area='".$_GET['area']."' ") or die(mysql_error());
		if(mysql_num_rows($del)>0){
			echo "<script>alert('SORRY STOCK FORM HAS ALREADY BEEN SAVE FOR $sector TODAY ')</script>";
		}
		
		else {
		$qry = "INSERT INTO stockreports(product,price,qty,date,month,year,sentby,sentto,area,day) VALUES "; // Split the mysql_query
		for($i=1; $i<=$amt; $i++) {
		$qry .= "('".$_POST["product$i"]."', '".$_POST["price$i"]."', '".$_POST["quatity$i"]."','$date','$month','$year','$user','$sector','".$_GET['area']."','$day'), "; // loop the mysql_query values to avoid more server loding time
		}
		$qry 	= substr($qry, 0, strlen($qry)-2);
		$insert = mysql_query($qry) or die(mysql_error()); // Execute the mysql_query
		
		
		echo "<script>alert('SUCCESSFUL IN STOCK FORM CREATION')</script>";
	}
	// Redirect for each cases
	if($insert) {
		echo "<script>alert('SUCCESSFUL IN STOCK FORM CREATION')</script>";
	}
	else {
		$msg = '<script type="text/javascript">alert("Server Error, Kindly Try Again");</script>';
	}
}
}
// rooms delete case using checkboxes
if(isset($_POST['SubmitDelete'])) {
	$_POST = array_map("ucwords", $_POST);
	$amt = $_POST['total']; // Get the total rows
	for($i=1; $i<=$amt; $i++) {
		$delete = mysql_query("DELETE FROM rooms WHERE id = '".$_POST["delete$i"]."'"); // Run the delete query inside for loop
	}

	// Redirect for each cases
	if($delete) {
		$msg = '<script type="text/javascript">window.location.href = "?view";</script>';
	}
	else {
		$msg = '<script type="text/javascript">alert("Server Error, Kindly Try Again");</script>';
	}
}

// rooms update case
if(isset($_POST['SubmitUpdate'])) {
	$_POST = array_map("ucwords", $_POST);
	$amt = $_POST['total']; // Get the total rows
	for($i=1; $i<=$amt; $i++) {
		$update = mysql_query("UPDATE `finals` SET `qty` = '".$_POST["quatity$i"]."' WHERE `id` = '".$_POST["id$i"]."'") or die(mysql_error()); // Run the Mysql update query inside for loop
		 header("Location: take_stock.php?area=".$_GET['area']."");
	}
	
	// Redirect for each cases
	if($update) {
		$msg = '<script type="text/javascript">window.location.href = "?update&result=updated";</script>';
	}
	else {
		$msg = '<script type="text/javascript">alert("Server Error, Kindly Try Again");</script>';
	}
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>Simple rooms Insert, Read, Update, Delete (CRUD) using PHP, MySql by Asif18</title>
<meta name="keywords" content="rooms insert in php, rooms crud using PHP MySql, rooms insert update delete using php mysql"/>
<meta name="description" content="rooms insert update delete CRUD using PHP MySql. A simple way to insert, update and delete rooms values at a time using PHP MySql"/>
<style>
.as_wrapper{
	margin:0 auto;
	width:800px;
	font-family:Arial;
	color:#333;
	font-size:14px;
	height:2000px;

	overflow:scroll;
	padding-bottom:30px;
}

.as_country_container{
	padding:20px;
	border:2px dashed #17A3F7;
}

.a {
	text-decoration:none;
	color:#999;
}

.a:hover {
	text-decoration:underline;
}

.a:active {
	color:#F55925;
}
.h1 a {
	text-decoration:none;
	color:#000;
}
.h1 a:hover {
	text-decoration:underline;
}
.table {
	border:2px dashed #17A3F7;
	padding:20px;
	min-width:500px;
}
.table tr td{
	padding:5px;
}
.table_view {
	border:1px solid #17A3F7;
	min-width:400px;
	border-collapse:collapse;
}
.table_view tr.heading th {
	background:#17A3F7;
	padding:5px;
	color:#FFF;
}
.table_view tr.odd {
	background:#F7F7F7;
}
.table_view tr.even {
	background:#FFF;
}
.table_view tr.odd:hover, .table_view tr.even:hover {
	background:#FEFDE0;
}
.table_view tr td {
	padding:5px;
}
.input {
	border:#CCC solid 1px;
	padding:5px;
}

.input:focus {
	border:#999 solid 1px;
	background:#FEFDE0;
	padding:5px;
}
</style>
</head>

<body>
<div class="as_wrapper">
	
	<div class="as_country_container">
	<?php
    echo $msg; // Display the result message generated in the above PHP actions,
    //Create form to get number of rows to be generated to insert 
    ?>
        <form action="<?php $_SERVER['PHP_SELF']; ?>" method="get" name="amtForm">
        <table align="center">
        <tr>
           
            <td><input type="hidden" name="amt" class="input" <?php if(isset($_GET["amt"])) { ?> value="<?php echo $_GET["amt"]; ?>" <?php } ?> /></td>
           
            <td style="background:#1188aa; padding:10px 10px">| <a class="a" href="?update&area=<?php echo $_GET["area"]; ?>" style="color:#fff">Save Stock Form for Today <?php echo date('d F Y'); ?> for <?php echo $sector; ?></a></td>
        </tr>
        </table>
        <br />
        </form>
        <?php
        // Get the amount to be generated
        if(isset($_GET['amt'])) {
			if($_GET['amt'] > 0) {
        ?>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
            <table align="center" class="table" style="width:500px">
            <tr>
                <td align="center">Sno</td>
                <td align="center">Room Number</td>
                <td align="center">cateogry</td>
                <TD>Floor / Block /Building</TD>
                
            </tr>
            <?php
                // Loop the rows and inputs according to the amount
                for($i=1; $i<=$_GET['amt']; $i++) {
					$lsd=mysql_query("SELECT * FROM rooms order by id DESC LIMIT 1");
					while($r=mysql_fetch_assoc($lsd)){
						$l=$r['num']+1;
					}
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><input type="text" name="room<?php echo $i; ?>" />
                </td>
                
                 <?php		  
			   $amou="SELECT * from categories order by id  ";
	$run=mysql_query($amou) or die (mysql_error());
	
					 
		 ?>           
                <td><select name="cateogry<?php echo $i; ?>" />            
               
               <?php				
					while ($row=mysql_fetch_array($run)){						
							$cate=$row['cat'];
							$id=$row['id'];														
							echo "<option value='$cate'>$cate</option>";
							
					}		

			   ?>
               </select>
               
                </td>
                
                <td><select name="floor<?php echo $i; ?>" class="input" />
               	<option value="<?php echo $floor; ?>"  onBlur="doCalc(this.form)"></option>
					<?php 
					for($floor=1;$floor<=50;$floor++)
					{
					echo "<option value='$floor'>$floor</option>";
					}
					?>
				</select>
                
                
                </td>
               
            </tr>
            <?php
                }
            ?>
            <tr>
                <td colspan="4" align="center">
                <input type="hidden" name="total" value="<?php echo $i-1; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="submit" value="Add" /></td>
            </tr>
            </table>
            </form>
        <?php 
			}
			else {
			?>
            <table align="center">
            <tr>
                <td align="center">Enter greater than '0'</td>
			</tr>
            </table>
            <?php
			}
        }
        // Case for view and delete the data
        elseif(isset($_GET['view'])) {
			if($count <= 0) {
			?>
            <table align="center">
            <tr>
                <td>No records found!</td>
			</tr>
            </table>
            <?php
			} 
			else {
            $i = 0;
        ?>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
            <table align="center" class="table_view" style="width:500px">
            <tr class="heading">
                <th>&nbsp;</th>
                <th>Sno</th>
                <th>Room Number</th>
                <th>cateogry</th>
               <th>Floor / Block /Building</th>

            </tr>
            <?php
                while($row = mysql_fetch_array($query))
                {
                    $i = $i + 1;
            ?>
            <tr class="<?php if($i%2 == 0) { echo "odd"; } else{ echo "even"; } ?>" style="text-align:center">
                <td><input type="checkbox" name="delete<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                <td><?php echo $i; ?></td>
                <td>Room <?php echo $row['num']; ?></td>
                <td><?php echo $row['cateogry']; ?></td>
                
                <td><?php echo $row['floor']; ?></td>
            </tr>
            <?php
                }
            ?>
            <tr>
                <td colspan="5" align="center" style="width:500px">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="SubmitDelete" value="Delete" /></td>
            </tr>
            </table>
            </form>
		<?php
			}
        }
        // Case for view and update the rows
        elseif(isset($_GET['update'])) {
			if($count <= 0) {
			?>
            <table align="center">
            <tr>
                <td>No records found!</td>
			</tr>
            </table>
            <?php
			} 
			else {
            $i = 0;
        	?>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
            <table align="center">
            <tr>
                <td align="center">Sno</td>
                <td align="center">Product</td>
                <td align="center">Price</td>
                <td align="center">Current Stock</td>
                
            </tr>
            <?php
                // Display the rows in inputs that can be editable
                while($row = mysql_fetch_array($query))	{
                    $i = $i + 1;
            ?>
            <tr>
                <td><?php echo $i; ?><input type="hidden" name="id<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                <td><input type="text" name="product<?php echo $i; ?>" value="<?php echo $row['name']; ?>" class="input" readonly /></td>
                
                
                <td><input type="text" name="price<?php echo $i; ?>" value="<?php echo $row['sp']; ?>" class="input" /></td>
                
                
                
                 <td><input type="text" name="quatity<?php echo $i; ?>" value="<?php echo $row['qty']; ?>" class="input" /></td>
               
            </tr>
            <?php
                }
            ?>
            <tr>
                <td colspan="5" align="center">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="SubmitUpdate" value="Update" /> | <input type="submit" name="Submit1" value="SAVE AS TODAY'S FORM" onClick="return confirm('Are you sure?')" /></td>
            </tr>
            </table>
            </form>
        <?php
        	}
		}
        ?>
	</div>
</div>
</body>
</html>