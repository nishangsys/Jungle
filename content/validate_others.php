<?php
/**
Simple fees Create, Read, Update and Delete (CRUD) using php mysql by asif18.com, for more tutorials visit: http://www.asif18.com
for this tutorial visit: http://asif18.com/20/php/fees-insert-update-using-php-mysql-delete-fees-records-using-checkboxes-in-php/
**/
include '../includes/dbc.php'; // include the database and server connection file
 $who=$_GET['roll'];
 
 $d=$con->query("SELECT * FROM sectors where area='".$_GET['roll']."'  ") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
	$branch=$bu['name'];
}	
 
$a	= mysql_query("SELECT SUM(current*date),SUM(current) FROM `truck` where  taken!='2' GROUP BY taken ORDER BY id ASC") or die(mysql_error()); // Sel
while($bb=mysql_fetch_assoc($a)){
	 $cost=$bb['SUM(current*date)'];
	 $qty=$bb['SUM(current)'];
}

////Get latest time for shift change
  //date_default_timezone_set("Douala/Cameroon");
        $time1=date('Gi');	////current time	   
		 $see=date('d-m-Y');		   
$C=$con->query("SELECT * FROM overtime where id='1' order by id DESC LIMIT 1") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
				$TY=$r['time'];
				
			}	
		  
		////if current time is less than max shift time      
		   if($time1>=0001 and $time1<=$TY){
           $cur_date=date("d-m-Y", strtotime( '-1 days' ) ); 
		   }
		   else {
		   $cur_date=date('d-m-Y');	  
		   }

$query 	= mysql_query("SELECT stock,SUM(current),discribe,sentby,id,item,date FROM `truck` where  taken!='2' and receiver='".$_GET['roll']."' GROUP BY item  ORDER BY id ASC") or die(mysql_error()); // Select from the table
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
	  
	
	   /*$upbnm=mysql_query("
	   INSERT INTO daily SET `qty`= '".$_POST["lefts$i"]."',total='".$_POST["totalm$i"]."' ,exp= '".$_POST["totalm$i"]."' ,date='$date',month='$month',year='$year'		 ,room='".$_POST["product$i"]."',reason='purchase' ") or die(mysql_error());
			
		*/
		$cp=$con->query("SELECT * FROM finals where name='".$_POST["product$i"]."'  and area='".$_GET['roll']."' ") or die(mysqli_error($con));
		echo $counts=mysqli_num_rows($cp);
		if($counts>0){
			
			

	   $upbn=mysql_query("UPDATE `finals` SET `qty`= '".$_POST["cqty$i"]."'   WHERE name = '".$_POST["product$i"]."' 	and area='".$_GET['roll']."'	  ") or die(mysql_error());
	   
	    $upwh=mysql_query("UPDATE `warehouse` SET `qty`= '".$_POST["lefts$i"]."'   WHERE id = '".$_POST["wid$i"]."' 		  ") or die(mysql_error());
			
		
			
		 $update_truck =mysql_query  ("UPDATE `truck` SET `taken`= '2',month='$cur_date' WHERE receiver='".$_GET['roll']."' and taken!='2'  ") or die(mysql_error());
	           	
	           	
					
	
	echo "<script>alert('Thank for your Patience . ')</script>";
//echo '<meta http-equiv="Refresh" content="0; url= index.php?receiving&supp='.$_GET['supp'].'&branch='.$who.'">';

 echo '<meta http-equiv="Refresh" content="0; url=../sales/casheir/close.php ">';		  //$result=mysql_query($sell);
			
		}
		else {
		
	   $upbn=mysql_query("INSERT INTO `finals` SET `qty`= '".$_POST["cqty$i"]."',disc= '".$_POST["cates$i"]."',cost= '".$_POST["cost$i"]."',area='".$_GET['roll']."' ,name= '".$_POST["product$i"]."',sp= '".$_POST["sp$i"]."' 	  ") or die(mysql_error());
		
			
		 $update_truck =mysql_query  ("UPDATE `truck` SET `taken`= '2' WHERE receiver='".$_GET['roll']."' and taken!='2'  ") or die(mysql_error());
		     $upwh=mysql_query("UPDATE `warehouse` SET `qty`= '".$_POST["lefts$i"]."'   WHERE name = '".$_POST["product$i"]."' 		  ") or die(mysql_error());
			
	
	echo "<script>alert('Thank for your Patience . ')</script>";
 echo '<meta http-equiv="Refresh" content="0; url=../sales/casheir/close.php ">';
		  //$result=mysql_query($sell);
	
	}

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
<h1 style="background:#088389; text-align:center; font-size:24px; padding:20px 0px; color:#fff;">Stock Validation for <span style="color:#ff0">  <?php echo $branch; ?>  <br><span style="color:#fff">Qty Supplied: <span style="color:#FF0"><?php echo ($qty); ?> </span>Worth of Distributed Product is </span> <?php echo number_format($cost); ?> Frs</span></h1>
 
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
                            
                <td align="center" class="tt">Qty sent</td>
                <td align="center" class="tt">Stock Left</td>
                <td align="center" class="tt">Destination</td>
                 <td align="center" class="tt">TOTAL</td>
                                <td align="center" class="tt">Delete</td>

                
                
                
                
                
            </tr>
            <?php
                // Display the rows in inputs that can be editable
                while($row = mysql_fetch_array($query))	{
                    $i = $i + 1;
            ?>
            <tr>
                <td><?php echo $i; ?><input type="hidden" name="id<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                               

             
                 
                <td><input type="text" name="product<?php echo $i; ?>" value="<?php echo $row['item']; ?>" class="input" required style="width:190px" readonly   /></td>
                  <td><input type="text" name="sp<?php echo $i; ?>" value="<?php echo $row['date']; ?>" class="input" style="width:130px" readonly  /></td>
                   
                   <td><input type="text" name="qty<?php echo $i; ?>" value="<?php echo $row['SUM(current)']; ?>" class="input" style="width:60px" readonly  /></td>
                    
                     <td><input type="text" name="lefts<?php echo $i; ?>" value="<?php echo $row['discribe']; ?>"  class="input"  style="width:60px" readonly  /></td>
                       
                          <td><input type="text" name="left<?php echo $i; ?>" value="<?php echo $branch; ?>"  class="input"  style="width:180px" readonly  /></td>
 
 
                   <td><input type="text" name="totalm<?php echo $i; ?>" value="<?php
				   
				    echo $row['SUM(current)']*$row['date']; ?>" class="input" style="width:60px" readonly  /></td>
                 <td><a href="d.php?roll=<?php echo $row['id']; ?>&sector=<?php echo $_GET['supp']; ?>&area=<?php echo $_GET['roll']; ?>" style="color:#F00" onClick="return confirm('Are you sure you wish to delete <?php echo $row['stock']; ?>') ">Delete</a></td>
                  
                
                 <td><input type="hidden" name="wid<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from warehouse where name='".$row['item']."' 
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $pri=$d['id'];
					
				}   
			   
			    ?>"  style="width:60px"    /></td>
                
                
                <td><input type="hidden" name="cates<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from warehouse where name='".$row['item']."' 
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $cate=$d['disc'];
					
				}   
			   
			    ?>"  style="width:60px"    /></td>
                
                
                <td><input type="hidden" name="cost<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from warehouse where name='".$row['item']."' 
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $cate=$d['cost'];
					
				}   
			   
			    ?>"  style="width:60px"    /></td>
                
                
                 <td><input type="hidden" name="cqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['item']."' and area='".$_GET['roll']."'
			    ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					$qy=$d['qty'];
					
				} 
				if(empty($pri)){
					echo $row['SUM(current)'];
				}
				else {
					echo $row['SUM(current)']+$qy;
				}
			   
			    ?>"  style="width:60px"    /></td>
                   
                   
               
  <td><input type="hidden" name="tc<?php echo $i; ?>" value="<?php echo $cp*$row['SUM(current)'];
				  ?>" class="input" style="width:130px" readonly  /></td>
                
               
                
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
	