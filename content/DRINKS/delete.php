<?php
	session_start();
	include_once('connection.php');
	
 $query =$conn->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($conn));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['user_name'];
 
 }
 $date=date('d-m-Y ');
 $month=date('m');
 $year=date('Y');
 $time=date('G:i:s');

	if(isset($_GET['id'])){
		
		$cv=$conn->query("select * FROM warehouse WHERE id = '".$_GET['id']."'") or die(mysqli_error($conn));
	while($fg=$cv->fetch_assoc()){
		$prod=$fg['name'];
		$qty=$fg['qty'];
		$sp=$fg['sp'];
	}
	
		$del2=$conn->query(" INSERT INTO reports set name='$user',item='drinks warehouse deletes',date='$date',month='$month',year='$year',time='$time',news='$qty',prod='$prod' ") or die(mysqli_error($conn));
		$sql = "DELETE FROM warehouse WHERE id = '".$_GET['id']."'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = '$prod deleted successfully';
		}
		////////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member deleted successfully';
		// }
		/////////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in $prod';
		}
	}
	else{
		$_SESSION['error'] = 'Select Product to delete first';
	}

	header('location: index.php');
?>