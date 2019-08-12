  <?php
include '../includes/dbc.php';				   
				  
				  
	if(isset($_POST['save'])){
		 @session_start();
	$query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){ 
  $userm=$userRow['user_name']; 
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
 $branch=$_GET['branch'];
 $area=$_GET['area'];
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
		  $values[] = "(
		  
		  '{$item['itemNo']}',
		  '{$item['itemName']}',
		  '{$item['itemNam']}',
		   '{$item['quantity']}',
		  '{$item['avail']}',
		  '{$item['price']}',  '$cur_date','$month','$year','$area','$day','$time','$branch','$userm')";
		
	
    }

    $values = implode(", ", $values);


   $sql = "INSERT INTO truck (  stock,item,taken,current,discribe,date,month,year,status,receiver,day,time,sentto,sentby) VALUES  {$values} "   ;

   $supplr='General';
   $branch='buea';
   

    $result = mysql_query( $sql) or die ( mysql_error()) ;
	echo "<script>alert('SUCCESS. Stocks successfully Update')</script>";
		echo '<meta http-equiv="Refresh" content="0; url= ../content/supplying.php?roll='.$area.'">';

   
}
	}
?>
	
