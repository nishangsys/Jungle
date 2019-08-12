 <?php
include 'inc/dbconn.php';
if (isset($_GET['area']) && isset($_GET['command']) && isset($_GET['table'])) {
$command = $_GET['command'];
$area = $_GET['area'];
$table = $_GET['table'];
$result = [];

$food = getFood($con,$area,$table,$command);
$drinks = getDrinks($con,$area,$table,$command);
$result['food'] = $food;
$result['drinks'] = $drinks;

echo json_encode($result);
}else die("Invalid Request");

function getFood($con,$area,$table,$command){
	$Food = [];
  $query = $con->query("SELECT product_id,qty,comment FROM basket where  area = '$area' && tab = '$table' && ids = '$command' && type = 'food'") or die(mysqli_error($con));
  while($row=$query->fetch_array()){ 
  	$id = $row['product_id']; 
    $food = getItemDetail($id,"food",$con);
    $food['id'] = $id;
    $food['qty'] = $row['qty'];
    $food['comment'] = $row['comment'];
    array_push($Food, $food);     
        }
	return $Food;
}

function getDrinks($con,$area,$table,$command){
	$Drinks = [];
 $query = $con->query("SELECT product_id,qty,comment FROM basket where  area = '$area' && tab = '$table' && ids = '$command' && type = 'drinks'") or die(mysqli_error($con));
  while($row=$query->fetch_array()){ 
  	$id = $row['product_id'];
    $drinks = getItemDetail($id,"drinks",$con);
    $drinks['id'] = $id;
    $drinks['qty'] = $row['qty'];
    $drinks['comment'] = $row['comment'];
    array_push($Drinks, $drinks);        
        }
        return $Drinks;
}

function getItemDetail($id, $type, $con){
	$item = [];
	if($type == "food"){
		$query = $con->query("SELECT product as name,price as sp, image_name, qty FROM foods where  pro_id = '$id'") or die(mysqli_error($con));
	}else{
		$query = $con->query("SELECT name, qty,sp,image_name FROM finals where id = '$id'") or die(mysqli_error($con));
	}
	if($row=$query->fetch_array()){
        $item['name'] = $row['name'];
        $item['q_available'] = $row['qty'];
        $item['image'] = $row['image_name'];
        $item['sp'] = $row['sp']; 
    }
    return $item;
}
?> 