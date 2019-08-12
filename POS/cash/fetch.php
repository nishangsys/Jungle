<?php
//fetch.php
$connect = mysqli_connect("localhost", "nishang", "google1234", "super_db");
$request = mysqli_real_escape_string($connect, $_POST["query"]);
$query = "
 SELECT * FROM supermkt WHERE name LIKE '%".$request."%'
 and qty>0";

$result = mysqli_query($connect, $query);

$data = array();

if(mysqli_num_rows($result) > 0)
{
 while($row = mysqli_fetch_assoc($result))
 {
  $data[] = $row["name"];
 }
 echo json_encode($data);
}

?>
