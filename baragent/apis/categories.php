<?php
include 'inc/dbconn.php';
if (isset($_GET['type']) && isset($_GET['area'])) {
$categories = [];
$type = $_GET['type'];
$area = $_GET['area'];
$query;
if($type == "food"){
	$query = $con->query("select DISTINCT serial as name from foods") or die(mysqli_error($con));
}else if($type == "drinks"){
	$query = $con->query("select DISTINCT disc as name from finals where qty > 0 and area = '".$area."'") or die(mysqli_error($con));
}else die("Invalid type");
		$category = [];
		$i = 1;
        while($row = $query->fetch_array()){ 
        	$category['id'] = $i;
        	$category['name'] = $row['name'];

        	array_push($categories, $category);
           $i++;
	}
echo json_encode($categories);
}else die("Type not set");

//drinks : http://localhost/baragent/apis/categories.php?type=drinks&area=3


// food : http://localhost/baragent/apis/categories.php?type=food&area=restaurant
?>