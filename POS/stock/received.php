<?php
/**
Simple fees Create, Read, Update and Delete (CRUD) using php mysql by asif18.com, for more tutorials visit: http://www.asif18.com
for this tutorial visit: http://asif18.com/20/php/fees-insert-update-using-php-mysql-delete-fees-records-using-checkboxes-in-php/
**/
include '../includes/dbc.php'; // include the database and server connection file
 $who=$_GET['roll'];	
 
$a	= mysql_query("SELECT SUM(current*date),SUM(current) FROM `truck` where  taken!='2' and sentby like '%$who%' GROUP BY taken ORDER BY id ASC") or die(mysql_error()); // Sel
while($bb=mysql_fetch_assoc($a)){
	 $cost=$bb['SUM(current*date)'];
	 $qty=$bb['SUM(current)'];
}

$query 	= mysql_query("SELECT stock,SUM(current),discribe,sentby,id FROM `truck` where  taken!='2' and sentby like '%$who%'  GROUP BY stock  ORDER BY id ASC") or die(mysql_error()); // Select from the table
$count 	= mysql_num_rows($query); // Get the rows count

	
            $i = 0;	

if(isset($_POST['SubmitUpdate'])) {
	
	$_POST = array_map("ucwords", $_POST);
	 
	$amt = $_POST['total']; // Get the total rows
	for($i=1; $i<=$amt; $i++) {
		$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');
		$status=0;
		$state=1;
		$advance=0;
		
		 $_POST['costs$i']=$_POST["cost$i"]*$_POST["qty$i"];
	 $_POST['sentothem$i']=$_POST["qty$i"];
		  $_POST['withthem$i']=$_POST["qty$i"]+$_POST["oldstock$i"];

		 @session_start();
	  $paidto=$_SESSION['user_name'];
	  //////////check if product exits for that branch
	  
	   $check=mysql_query("SELECT * FROM `finals` WHERE  `name` = '".$_POST["product$i"]."' AND branch='".$_POST["branch$i"]."' 		  ") or die(mysql_error());
	   
	   
	   
	   //////////////if stock does not exist
	   if(mysql_num_rows($check)<1){
		   
		   
		   
	   $upbn=mysql_query("UPDATE `smkt_whouse` SET `qty`= '".$_POST["lefts$i"]."'   WHERE `name` = '".$_POST["product$i"]."' 		  ") or die(mysql_error());
	   
	   
	   $upbn=mysql_query("INSERT INTO `finals` SET `qty`= '".$_POST["qty$i"]."' , `name` = '".$_POST["product$i"]."', `disc` = '".$_POST["cate$i"]."',`cost` = '".$_POST["cost$i"]."',`sp` = '".$_POST["sp$i"]."', branch='".$_POST["branch$i"]."'	  ") or die(mysql_error());
			
			
		
		 $update_truck =mysql_query  ("UPDATE `truck` SET `taken`= '2',units='".$_POST["olldstock$i"]."' WHERE  `id` = '".$_POST["id$i"]."' ") or die(mysql_error());
	           		
	
	echo "<script>alert('Thank for your Patience . ')</script>";
//echo '<meta http-equiv="Refresh" stock="0; url= index.php?receiving&supp='.$_GET['supp'].'&branch='.$who.'">';
echo "<script>window.open('../stock/ssrec.php?br=".$who."','_self')</script>";
	   
	   }
	   else {
			

	

	   $upbn=mysql_query("UPDATE `smkt_whouse` SET `qty`= '".$_POST["lefts$i"]."'   WHERE `name` = '".$_POST["product$i"]."' 		  ") or die(mysql_error());
	   
	   
	   $upbn=mysql_query("UPDATE `finals` SET `qty`= '".$_POST["newstock$i"]."' , `barcode`= '".$_POST["barcode$i"]."'   WHERE `name` = '".$_POST["product$i"]."' and  branch='".$_POST["branch$i"]."'		  ") or die(mysql_error());
			
			
		
		 $update_truck =mysql_query  ("UPDATE `truck` SET `taken`= '2',units='".$_POST["olldstock$i"]."' WHERE  `id` = '".$_POST["id$i"]."' ") or die(mysql_error());
	           		
	
	echo "<script>alert('Thank for your Patience . ')</script>";
//echo '<meta http-equiv="Refresh" stock="0; url= index.php?receiving&supp='.$_GET['supp'].'&branch='.$who.'">';
echo "<script>window.open('../stock/ssrec.php?br=".$who."','_self')</script>";
	   }
		  //$result=mysql_query($sell);
	
	}

}	


?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="stock-type" stock="text/html; charset=UTF-8" />
<title>Dashboard</title>
<meta name="keywords" stock="classes insert in php, classes crud using PHP MySql, classes insert update delete using php mysql"/>
<meta name="description" stock="classes insert update delete CRUD using PHP MySql. A simple way to insert, update and delete classes values at a time using PHP MySql"/>
<style>
body{
	background:#eee url(../bg.jpg);
}
.as_wrapper{
	margin:0 auto;
	width:960px;
	font-family:Arial;
	color:#333;
	font-size:14px;
}

.as_country_container{
	padding:20px;
	background:#BCE5F7;
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
</style>

</head>

<body>
<?php
	
?>
<div class="as_wrapper">
<h1 style="background:#088389; text-align:center; font-size:24px; padding:20px 0px; color:#fff;"><a href="supplies.php?roll=1&name=customer" style="color:#FF0; text-decoration:none">&infin; UP BY ONE LEVEL</a> Stock Validation for <span style="color:#ff0">  <?php echo $who; ?>  <br><span style="color:#fff">Qty Supplied: <span style="color:#FF0"><?php echo ($qty); ?> </span>..Worth of Distributed Product is </span> <?php echo number_format($cost); ?> Frs</span></h1>
 
	<div class="as_country_container">
   
        
	<?php
    echo $msg; // Display the result message generated in the above PHP actions,
    //Create form to get number of rows to be generated to insert 
	
    ?>
      
       
            <?php
			
			
        	?>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
            <table align="center" style="width:100%">
            <tr style="background:#1188aa; color:#fff; height:30px; padding:10px 0px">
                <td align="center">Sno</td>
                <td align="center">Goods </td>
                
                <td align="center" class="tt" >Cost </td>
      <td align="center" class="tt" >Selling Price </td>
             <td align="center" class="tt" >Category </td>
                            
          
                            
          
                            
                <td align="center" class="tt">Qty sent</td>
                <td align="center" class="tt">Stock Left</td>
                
                
                <td align="center" class="tt">Destination Branch</td>
                                <td align="center" class="tt">Delete</td>

                
                
                
                
                
            </tr>
            <?php
                // Display the rows in inputs that can be editable
                while($row = mysql_fetch_array($query))	{
                    $i = $i + 1;
            ?>
            <tr>
                <td><?php echo $i; ?><input type="hidden" name="id<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                               

             
                 
                <td><input type="text" name="product<?php echo $i; ?>" value="<?php echo $row['stock']; ?>" class="input" required style="width:190px" readonly   /></td>
                  <td><input type="text" name="cost<?php echo $i; ?>" value="<?php $df=mysql_query("SELECT * FROM smkt_whouse where name='".$row['stock']."' ") or die(mysql_error());
				  while($g=mysql_fetch_assoc($df)){
					  echo $cp=$g['cost'];
				  }
				  ?>" class="input" style="width:90px" readonly  /></td>
                  
                   <td><input type="text" name="sp<?php echo $i; ?>" value="<?php $df=mysql_query("SELECT * FROM smkt_whouse where name='".$row['stock']."' ") or die(mysql_error());
				  while($g=mysql_fetch_assoc($df)){
					  echo $cp=$g['sp'];
				  }
				  ?>" class="input" style="width:90px" readonly  /></td>
                  
                   <td><input type="text" name="cate<?php echo $i; ?>" value="<?php $df=mysql_query("SELECT * FROM smkt_whouse where name='".$row['stock']."' ") or die(mysql_error());
				  while($g=mysql_fetch_assoc($df)){
					  echo $cp=$g['disc'];
				  }
				  ?>" class="input" style="width:130px" readonly  /></td>
                   
                   <td><input type="text" name="qty<?php echo $i; ?>" value="<?php echo $row['SUM(current)']; ?>" class="input" style="width:60px" readonly  /></td>
                    
                     <td><input type="text" name="lefts<?php echo $i; ?>" value="<?php echo $row['discribe']; ?>"  class="input"  style="width:60px" readonly  /></td>
                       
                          <td><input type="text" name="branch<?php echo $i; ?>" value="<?php echo $row['sentby']; ?>"  class="input"  style="width:180px" readonly  /></td>
 
 
                 
                 <td><a href="deleteit12.php?roll=<?php echo $row['id']; ?>&sector=<?php echo $who; ?>" style="color:#F00" onClick="return confirm('Are you sure you wish to delete <?php echo $row['stock']; ?>') ">Delete</a></td>
                  <td><input type="hidden" name="pro_id<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from smkt_whouse where name='".$row['stock']."' 
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $pri=$d['id'];
					
				}   
			   
			    ?>"  style="width:60px"    /></td>
                   
               
  <td><input type="hidden" name="tc<?php echo $i; ?>" value="<?php echo $cp*$row['SUM(current)'];
				  ?>" class="input" style="width:130px" readonly  /></td>
                
               
      
        <td><input type="hidden" name="newstock<?php echo $i; ?>" value="<?php 
		
		  $s=mysql_query("SELECT *  from finals where name='".$row['stock']."' and branch like '%$who%'  limit 1
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					$av=$d['qty'];
					if(empty($av)){
						 $avq=$row['SUM(current)'];
					}
					else{
						 $avq=$av;
					}
					echo $pri=$avq+$row['SUM(current)'];						
					
				}   
				  ?>" class="input" style="width:130px" readonly  /></td>   
                  
                  
                  
                   <td><input type="hidden" name="olldstock<?php echo $i; ?>" value="<?php 
		  $s=mysql_query("SELECT *  from finals where name='".$row['stock']."' 
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $pri=$d['qty'];
					
				}   
				  ?>" class="input" style="width:130px" readonly  /></td>  
                  
                          <td><input type="hidden" name="barcode<?php echo $i; ?>" value="<?php 
		  $s=mysql_query("SELECT *  from smkt_whouse where name='".$row['stock']."' 
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['barcode'];
					
				}   
				  ?>"  class="input"  style="width:180px" readonly  /></td>       
            </tr>
            <?php
                }
            ?>
            <tr>
                <td colspan="5" align="center">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="SubmitUpdate" value="Valid and Sent" onClick="return confirm('Are you sure')" style="background:#1188aa; color:#fff; background:#1188aa; padding:10px 10px" /></td>
            </tr>
            </table>
            </form>
      
	</div>
</div>



</body>
	