

<?php
//include_once("db_connect.php");
include '../../includes/dbc.php';
$sql = "SELECT * FROM warehouse WHERE name LIKE '%".$_GET['query']."%' ";
$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
$json = array();
while( $rows = mysqli_fetch_assoc($resultset) ) {
	$json[] = $rows["name"];
}
echo json_encode($json);




?>