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
  $day=date('l d-m-Y');
  $time=date('G:i:s');


$items = array();

$size = count($ids);

for($i = 0 ; $i < $size ; $i++){
    // Check for part id
    if ( empty($quantities[$i]) || empty($prices[$i])) {
        continue;
    }
	$date=date('d-m-Y');
	$month=date('m');
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
		  $values[] = "('',
		  ' $supplr',
		  '{$item['itemNo']}',
		  '{$item['itemName']}',
		  '{$item['itemNam']}',
		   '{$item['quantity']}',
		  '{$item['avail']}',
		  '{$item['price']}',  '$date','$month','$year','$names','$day','$time')";
		
	
    }

    $values = implode(", ", $values);


   $sql = "INSERT INTO truck (sentto,sentby,  item,stock,taken,current,discribe,date,month,year,status,receiver,day,time) VALUES  {$values} "   ;

  

    $result = mysql_query( $sql) or die ( mysql_error()) ;
	echo "<script>alert('SUCCESS. Stocks successfully Update')</script>";
		echo '<meta http-equiv="Refresh" content="0; url= received.php?roll='.$_GET['supp'].'&supp='.$_GET['supp'].'">';

   
}
	}
?>
	
