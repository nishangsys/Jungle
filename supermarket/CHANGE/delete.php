<?php
$connect = mysqli_connect("localhost", "nishang", "google1234", "pos");
if(isset($_POST["id"]))
{
	$cv=$connect->query("select * FROM finals WHERE id = '".$_POST["id"]."'") or die(mysqli_error($connect));
	while($fg=$cv->fetch_assoc()){
		$prod=$fg['name'];
	}
	
	
		$del=$connect->query("DELETE FROM warehouse WHERE name = '".$prod."'") or die(mysqli_error($connect));
	
	
 $query = "DELETE FROM finals WHERE id = '".$_POST["id"]."'";
 if(mysqli_query($connect, $query))
 {
  echo 'Data Deleted';
 }
}
?>