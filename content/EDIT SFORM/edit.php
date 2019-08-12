<?php
	session_start();
	include_once('connection.php');
	$query =$conn->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($conn));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['user_name'];
 
 }

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		
		$product = $_POST['prod'];
		$date=$_POST['date'];
		$qty=$_POST['qty'];
		$area=$_POST['area'];
		
	
		$sql = "UPDATE  stockreports set qty='$qty'    WHERE id = '$id'";
		
		

		

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Product updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in $product';
		}
	}
	else{
		$_SESSION['error'] = 'Select $product to edit first';
	}

	header('location: index.php?area='.$area.'&date='.$date.' ');

?>