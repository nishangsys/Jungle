<script type="text/javascript">
function doCalc(form) {

  form.owed.value = ((parseInt(form.totalbill.value) - parseInt(form.paid.value))-parseInt(form.disc.value));
 
  
}
</script>

<?php

include '../includes/dbc.php'; // include the database and server connection file
 $who=$_GET['roll'];	
$ad=mysql_query("SELECT * FROM customers where client_id='$who' limit 1 ") or die(mysql_error());
while($cx=mysql_fetch_assoc($ad)){
$name=$cx['stu_name'];
	$debtss=$cx['debts'];
}

   

$query 	= mysql_query("SELECT * FROM basket  where tab='$who' and status= '0' ORDER BY id ASC") or die(mysql_error()); // Select from the table
$count 	= mysql_num_rows($query); // Get the rows count
$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');

	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$_GET['roll']."' and status='0' GROUP BY tab") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			echo $tot=$rows['totbill'];
		}
		
		
	
	$totdebts=$debtss+$tot;

	
	$totalbill=$_POST['totalbill'];
	$amount_paid=$_POST['paid'];
	$amt_owed=$_POST['owed'];
			
			
			
			
	
		

            $i = 0;	

if(isset($_POST['SubmitUpdate'])) {
	
	$_POST = array_map("ucwords", $_POST);
	 
	 
	 $discoun=$_POST['disc'];
	 	
	
		$acv=$con->query("INSERT INTO daily set cust_id='$who',room='',amt='$amt_owed',reason=' Bill',qty='1',price='$totalbill',total='$totalbill',
			owed='',date='$date',month='$month',year='$year',area='0',time='$time',paidto='$paidto',purpose='Bills' ,idds='',discount='$discoun',staffname='$name',rec='$amount_paid',paidtou='".$_GET['name']."' ") or die(mysqli_error($con));
		



	$amt = $_POST['total']; // Get the total rows
	for($i=1; $i<=$amt; $i++) {
		$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');
		$status=0;
		$state=1;
		$advance=0;
		
		 $_POST['allprice$i']=$_POST["quaties$i"];
		$_POST['allptotal$i']=$_POST["dbtota$i"];
		//expected income=dbprice * qty bought
		 $_POST['expectin$i']=($_POST["dbprice$i"])*($_POST["qty$i"]);
		//actual income
		 $_POST['actualin$i']=$_POST["price$i"]*$_POST["qty$i"];
		//profit
		
		 $profit=$_POST['actualin$i']-$_POST['expectin$i'];
		 @session_start();
	  $paidto=$_SESSION['user_name'];
		 
	//daily records
	
 
 $up_fin =$con->query("UPDATE finals set  name='".$_POST["product$i"]."',qty='".$_POST["newdbqty$i"]."'  WHERE id='".$_POST["dbid$i"]."'") or die(mysqli_error($con));
		 
	
		
		 $update_basket =$con->query("UPDATE  basket SET `status`= '2' ,discount='$discoun',opening_stocks='".$_POST["dbqty$i"]."',closing_stocks='".$_POST["newdbqty$i"]."'  WHERE id='".$_POST["ids$i"]."' and status= '0' ") or die(mysqli_error($con));
		 
	


echo "<script>window.open('../content/rec.php?roll=".$who."&br=".$_GET['name']."','_self')</script>";
		 

echo '<meta http-equiv="Refresh" content="0; url=index.php?validate&roll=1&name=Anonymous ">';
	
	}

}	
 

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>Dashboard</title>
<meta name="keywords" content="classes insert in php, classes crud using PHP MySql, classes insert update delete using php mysql"/>
<meta name="description" content="classes insert update delete CRUD using PHP MySql. A simple way to insert, update and delete classes values at a time using PHP MySql"/>
<style>
.as_wrapper{
	margin:0 auto;
	width:960px;
	font-family:Arial;
	color:#333;
	font-size:14px;
}

.as_country_container{
	padding:20px;
	background:#eee;
	border:1px solid #333;
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
	min-wcourse_idth:500px;
}
.table tr td{
	padding:5px;
}
.table_view {
	border:1px solcourse_id #17A3F7;
	min-wcourse_idth:400px;
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
	border:#CCC solcourse_id 1px;
	padding:5px;
}

.input:focus {
	border:#999 solcourse_id 1px;
	background:#FEFDE0;
	padding:5px;
}
h1{background-color:#fcfcfc;
 filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#fcfcfc, endColorstr=#cad8de);
 background-image:-moz-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-webkit-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-ms-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-o-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-webkit-gradient(linear, right top, right bottom, color-stop(57%,#fcfcfc), color-stop(100%,#cad8de));
	text-align:center;
	color:#1188AA;
	font-weight:bold;
	font-size:16px;
	padding:10px 0px;
	margin-top:-20px;
	border-bottom:1px solid#000;
}
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

form input[type="text"]:invalid:focus,
form input[type="email"]:invalid:focus,
form input[type="number"]:invalid:focus,
form input[type="search"]:invalid:focus,
form input[type="password"]:invalid:focus,
form textarea:invalid:focus,
form select:invalid:focus { 
			border-color: rgb(248,66,66);
			box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px rgb(248,66,66);
		}
</style>

</head>

<body>
<?php
	
?>
<div class="as_wrapper">
<h1 style="background:#088389; text-align:center; font-size:24px; padding:20px 0px; color:#fff;"> <span style="color:#ff0"> <span style="color:#Fff"><a href="#" style="color:#Fff; text-decoration:none">Go Back to Sales |</a></span> Customer's Total Bill: 
        <?php $query12= mysql_query("SELECT SUM(price*qty) as total FROM basket  where tab='$who' and status= '0' ") or die(mysql_error()); // Select from the table
while($rt=mysql_fetch_assoc($query12)){
	echo $rt['total'];
	$totdebts=$debtss+$rt['total'];
	
} // Get the rows count

	?> Frs</span></h1>
   
	<div class="as_country_container">
   
        
	<?php
    $msg; // Display the result message generated in the above PHP actions,
    //Create form to get number of rows to be generated to insert 
	
    ?>
      
       
            <?php
			
			
        	?>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
            <table align="center" style="width:100%">
            
            <?php
                // Display the rows in inputs that can be editable
                while($row = mysql_fetch_array($query))	{
                    $i = $i + 1;
            ?>
            <tr>
                             

             
                 
                <td><input type="hidden" name="product<?php echo $i; ?>" value="<?php echo $row['product']; ?>" class="input" required style="width:190px" readonly   /></td>
                 <td><input type="hidden" name="category<?php echo $i; ?>" value="<?php echo $row['category']; ?>" class="input" style="width:160px" readonly  /></td>
                  <td><input type="hidden" name="price<?php echo $i; ?>" value="<?php echo $row['price']; ?>" class="input" style="width:60px" readonly  /></td>
                   <td><input type="hidden" name="qty<?php echo $i; ?>" value="<?php echo $row['qty']; ?>" class="input" style="width:60px" readonly  /></td>
                    
                     <td><input type="hidden" name="total<?php echo $i; ?>" value="<?php echo $row['qty']*$row['price']; ?>" class="input"  style="width:60px" readonly  /></td>
                     
                      <td><input type="hidden" name="discount<?php echo $i; ?>" value="<?php echo $row['sub']; ?>" class="input"  style="width:60px" readonly  /></td>
                      
                      
               <td><input type="hidden" name="name<?php echo $i; ?>" value="<?php echo $youno; ?>"    /></td>
                 <td><input type="hidden" name="table<?php echo $i; ?>" value="<?php echo $row['tab'];   ?>"    /></td>
 
               <td><input type="hidden" name="dbqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['qty'];
				}   
			   
			    ?>"    /></td>
                
                 <td><input type="hidden" name="dbid<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['id'];
				}   
			   
			    ?>"    /></td>
                
                
                 <td><input type="hidden" name="newdbqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['qty']-$row['qty'];
				}   
			   
			    ?>"    /></td>
               
                 <td><input type="hidden" name="dbprice<?php echo $i; ?>" value="<?php echo $row['cp']; ?>"    /></td>
                 <td><input type="hidden" name="profit<?php echo $i; ?>" 
                value="<?php echo $row['profit']*$row['qty']; ?>" /></td>
                                <td><input type="hidden" name="ids<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                                 <td><input type="hidden" name="date<?php echo $i; ?>" value="<?php echo $row['date']; ?>" /></td>

 </tr>
            <?php
                }
            ?>
            <br>
           <tr> 
            <td>Total bill</td><td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="totalbill" readonly class="input" onBlur="doCalc(this.form)"  value="<?php echo $totdebts; ?>"
                    >
                  </td></tr>
                  
                        <tr> 
            <td>Discount</td><td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<input type="text" name="disc"  class="input" onBlur="doCalc(this.form)" 
                  value="0"  >
                  </td></tr>
                  
                  
                  <tr> 
            <td>Amount Paid</td><td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<input type="text" name="paid"  class="input" onBlur="doCalc(this.form)" 
                  required="required" value="<?php echo $totdebts; ?>"  >
                  </td></tr>
                  
                  <tr> 
            <td>Change</td><td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<input type="text" name="owed" readonly class="input" 
                  required="required" style="background:#F00; color:#fff"  >
                  </td></tr>
          
            <tr>
                <td colspan="5" align="center">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="SubmitUpdate" value="Valid Sales" style="background:#033; color:#fff; padding:10px 10px"/></td>
            </tr>
            </table>
            </form>
      
	</div>
</div>

</body>
	