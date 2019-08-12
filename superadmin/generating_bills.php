<?php

include '../includes/dbc.php';
/**
Simple multiple Create, Read, Update and Delete (CRUD) using php mysql by asif18.com, for more tutorials visit: http://www.asif18.com
for this tutorial visit: http://asif18.com/20/php/multiple-insert-update-using-php-mysql-delete-multiple-records-using-checkboxes-in-php/
**/

$zone=$_GET['zone'];
$month=date('m');
$year=date('Y');
echo $day=date('l');
//////////////////////////////////////TAXABLE SALARIES SET ////////////////////////////////////////////////////

 $query= $con->query("SELECT * FROM finals  where sector like '%$zone%' order  by name") or die(mysqli_error($con)); // Select from the table
$count 	= mysqli_num_rows($query); // Get the rows count


// Multipe insert case
if(isset($_POST['SubmitUpdate'])) {
	$date=date('d-m-Y');

	$cate=$_GET['cate'];
	$qu	=$con->query("SELECT COUNT(name) as totcou FROM finals  where sector like '%$zone%'  ") or die(mysqli_error($con)); // Select from the table
	while($a=$qu->fetch_assoc()){
	$amtou=$a['totcou'];
		
	}

/////check if you have genearted befor
$check	=$con->query("SELECT *  FROM history  where date='$date' and sect='$zone'   ") or die(mysqli_error($con)); // Select 

if(mysqli_num_rows($check)>0){
	echo "<script>alert('Sorry have already generate for this day')</script>";
}

/////else run qury
else {
	$amt=$amtou;
	if($amt > 0) {
		
	for($i=1; $i<=$amt; $i++) {
		
		
		$_POST["left$i"]=$_POST["qty$i"]-$_POST["sold$i"];
	$_POST["total$i"]=$_POST["left$i"]*$_POST["sp$i"];
	
	////////insert records into the daily table
	$qry12 =$con->query( "INSERT INTO daily set room='".$_POST["name$i"]."',reason='sales',month='$month',year='$year',price='".$_POST["sp$i"]."',rec='".$_POST["total$i"]."',total='".$_POST["total$i"]."',qty='".$_POST["left$i"]."',area='$zone',date='$date',purpose='".$_POST["cate$i"]."'") or die(mysqli_error($con));
	
	///////insert records into the history table

			$qry =$con->query( "INSERT INTO history set product='".$_POST["name$i"]."',disc='".$_POST["disc$i"]."',cp='".$_POST["cp$i"]."',month='$month',year='$year',sp='".$_POST["sp$i"]."',total='".$_POST["total$i"]."',qty='".$_POST["left$i"]."',day='$day',sect='$zone',date='$date',lefts='".$_POST["sold$i"]."' ") or die(mysqli_error($con));
			
			///////update stock
			$stock =$con->query( "UPDATE finals set qty='".$_POST["sold$i"]."' where id='".$_POST["pid$i"]."'") or die(mysqli_error($con));

		
			
		echo "<script>alert('BILLS SUCCESSFULLY CREATE FOR $month/$year. Thank You')</script>";
		echo '<meta http-equiv="Refresh" content="1; url=thank.php">';
		}
		
	}
	
}
		
	


}////////////else 
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>NSMS</title>
<meta name="keywords" content="multiple insert in php, multiple crud using PHP MySql, multiple insert update delete using php mysql"/>
<meta name="description" content="multiple insert update delete CRUD using PHP MySql. A simple way to insert, update and delete multiple values at a time using PHP MySql"/>
<style>
body{
	font-size:16px;
	background:url(bg.jpg);
}
.as_wrapper{
	margin:0 auto;
	width:100%;
	font-family:Arial;
	color:#333;
	background:#eee;
	font-size:18px;
}

.as_country_container{
	padding:20px;
	width:100%;
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
	width:95%;
	
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
	<h3 style="text-align:center">Generating <?php echo $zone; ?>  Zone  <?php echo $cate; ?>  Bills for <span style="color:#f00"><?php echo $month; ?> / <?php echo $year; ?> </span> </a></h3>
        <h3 style="color:#f00; font-size:16px">Please make sure no comma(,) ,full stops(.) and CFA are used</h3>

	<div class="as_country_container">
	
        
        
      
            <form action="" method="post" >
            <table align="center" style="width:95%">
            <tr  style="font-size:14px; font-weight:bold; background:#1188aa; color:#fff; height:30px; width:90% ">
          
             
                <td></td>
                <td style="width:20%">Name</td>
                 
                <td align="center">Category</td>
                
                    <td align="center">Price</td>
                   <td align="center">Stock</td>

                    <td align="center">Qty Instock</td>
                   
                   
                
               
            </tr>
            <?php
                // Display the rows in inputs that can be editable90
                while($row = $query->fetch_assoc())	{
                    $i = $i + 1;
            ?>
            <tr>
                <td><?php echo $i; ?><input type="hidden" name="id<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                  
                 
                <td><input type="text" name="name<?php echo $i; ?>" value="<?php echo $row['name']; ?>" style="width:250px" class="input" readonly  /></td>

                             
                <td><input type="text" name="cate<?php echo $i; ?>" value="<?php echo $row['disc']; ?>" style=""  class="input" readonly  /></td>
                
                
  <td><input type="text" name="sp<?php echo $i; ?>"   value="<?php echo $row['sp']; ?>"   class="input" style="background:#ee4a40; color:#fff"   /></td>
  
  
  <td><input type="text" name="qty<?php echo $i; ?>" value="<?php echo $row['qty']; ?>" class="input"  /></td>
            
                   <td><input type="text" name="sold<?php echo $i; ?>" value="<?php echo $row['amount']; ?>"  class="input"  /></td>  
                   
                  
                 
            
                                      <td><input type="hidden" name="cp<?php echo $i; ?>" value="<?php echo $row['cp']; ?>" class="input"  /></td>

                                     
<td><input type="hidden" name="pid<?php echo $i; ?>" value="<?php echo $row['id']; ?>" class="input"  /></td>
                                      <td><input type="hidden" name="zone<?php echo $i; ?>" value="<?php echo $zone; ?>" class="input"  /></td>
                                      

               
            </tr>
            <?php
                }
            ?>
            
            <tr>
                <td colspan="5" align="center">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="SubmitUpdate" value="GENERATE " style="background:#1188aa; color:#fff; padding:10px 10px" /></td>
            </tr>
            </table>
            </form>
        <?php
        	
		
        ?>
	</div>
</div>
</body>
</html>

