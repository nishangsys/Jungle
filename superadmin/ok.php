<?php

include '../includes/dbc.php';
$hm = $_POST['hm'];;
$names = $_POST['product'];
$cate = $_POST['cate'];
$cp = $_POST['cp'];
$sp = $_POST['sp'];
$qty= $_POST['qty'];
$sect = $_POST['sect'];
$total=$qty*$sp;
//$zone = $_POST['arreas'];
$disc = $_POST['disc'];
$today=date('d-m-Y');
$day=date('F');
$year=date('Y');
$month=date('m');
		/////check if you have genearted befor
$check	=mysql_query("SELECT *  FROM history  where date='$today' ") or die(mysqli_error()); // Select 

if(mysql_num_rows($check)>0){
	echo "<script>alert('Sorry have already generate for this month')</script>";
}

/////else run qury
else {
		
echo $chkcount = $id;
for($i=0; $i<$chkcount; $i++)
{
	
	
			$qry =$con->query( "INSERT INTO history set product='$names[$i]',cp='$cp[$i]',sp='$sp[$i]',month='$month',year='$year',total='$total[$i]',dsic='$disct[$i]',sect='$sect[$i]',day='$day',date='$today'") or die(mysqli_error($con));
		
//$updating =$DBcon->query( "UPDATE finance set disc='".$_POST["transfer$i"]."' where cust_id='$cust_ID[$i]'") or die(mysqli_error($DBcon));
				

	//$MySQLiconn->query("UPDATE users SET first_name='$fn[$i]', last_name='$ln[$i]' WHERE id=".$id[$i]);
}
//header("Location: thank.php");
}
?>
