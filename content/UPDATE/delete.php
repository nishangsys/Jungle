<?php
$connect = mysqli_connect("localhost", "nishang", "google1234", "super_db");
session_start();
 $query =$connect->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($connect));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['user_name'];
 
 }
 $date=date('d-m-Y ');
 $month=date('m');
 $year=date('Y');
 $time=date('G:i:s');
if(isset($_POST["id"]))
{
	$cv=$connect->query("select * FROM warehouse WHERE id = '".$_POST["id"]."'") or die(mysqli_error($connect));
	while($fg=$cv->fetch_assoc()){
		$prod=$fg['name'];
		$qty=$fg['qty'];
		$sp=$fg['sp'];
	}
	
	
		//$del=$connect->query("DELETE FROM warehouse WHERE name = '".$prod."'") or die(mysqli_error($connect));
	
	$del2=$connect->query(" INSERT INTO reports set name='$user',item='drinks warehouse deletes',date='$date',month='$month',year='$year',time='$time',news='$qty',prod='$prod' ") or die(mysqli_error($connect));
	
	
 $query = "DELETE FROM warehouse WHERE id = '".$_POST["id"]."'";
 if(mysqli_query($connect, $query))
 {
  echo 'Data Deleted';
 }
}
?>