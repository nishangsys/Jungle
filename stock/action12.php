  <?php
include '../includes/dbc.php';				   
				  
				  
	if(isset($_POST['save'])){

$ids = $_POST['itemNo'];
$product = $_POST['itemName'];
echo $quantities = $_POST['quantity'];
 $prices =  $_POST['price'];
 $total=$_POST['total'];
 $avial=$_POST['alltotal'];
 $discamt=$_POST['discamt'];
 $what=$_POST['disc'];
 @session_start();
 $names=$_SESSION['user_name'];
 $branch=$_SESSION['country'];
 $supplr=$_GET['supp'];
 $name=$_GET['name'];
$dept=$_GET['dept'];
$id=$_GET['id'];

$items = array();

$size = count($ids);

for($i = 0 ; $i < $size ; $i++){
    // Check for part id
    if ( empty($quantities[$i]) || empty($prices[$i]))  {
        continue;
    }
	$date=date('d-m-Y');
	$month=date('m');
	$day=date('d');
	$time=date('h:i:s');
	$year=date('Y');
	$agent=$_SESSION['user_name'];
	
    $items[] = array(
	
	
        "itemNo"     => $ids[$i],
		"itemName"     =>$product[$i],
		"cost"     =>$cost[$i],
		
        "quantity"    => $quantities[$i],
        "price"       => $prices[$i],
		"total"       => $total[$i],
		"avail"       =>$avial[$i],
		"names"        =>$names[$i],
		"discamt"     =>$discamt,
		"disc"     =>$disc
		
    );
}

if (!empty($items)) {
    $values = array();
    foreach($items as $item){		
		  $values[] = "(
		  '{$item['itemNo']}',
		  '{$item['itemName']}',
		  '{$item['itemNam']}',
		   '{$item['quantity']}',
		  '{$item['avail']}',
		  '{$item['price']}',
		  'pharmacy', '1',
		   '$date','$month','$year','$time','$branch','$id','','','','')";
		
	
    }

    $values = implode(", ", $values);


   $sql = "INSERT INTO basket (opening_stocks,product,  category,qty,closing_stocks,price,section,area,date,month,year,time,status,tab,ids,total,printed,froms) VALUES  {$values} "   ;

   

    $result = mysql_query( $sql) or die ( mysql_error()) ;
	echo "<script>alert('SUCCESS. Stocks successfully Update')</script>";
		echo '<meta http-equiv="Refresh" stock="0; url= my_sales.php?id='.$id.'">';
		
   
}
	}
?>
	
