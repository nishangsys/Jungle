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
		$cp = $_POST['price'];
		$sp = $_POST['sp'];
		$cate=$_POST['cate'];
		$qty=$_POST['qty'];
		
		$osp = $_POST['osp'];
		$area=$_POST['area'];
		$oqty=$_POST['oqty'];
		$date=date('d-m-Y');
		$month=date('m');
		$year=date('Y');
		
		$pic=$_FILES['userImage']['name'];
		$photo=rand(1,100).$_FILES['userImage']['name'];	
	$photo_temp=$_FILES['userImage']['tmp_name'];
	
	//// Get sector involved updated
	$query =$conn->query("SELECT name,id,area FROM sectors WHERE area='".$area."' ") or die(mysqli_error($conn));
 while($userRow=$query->fetch_array()){  
 $sector=$userRow['name'];

 }  		

	
		$sql = "UPDATE finals set qty='$qty',cost='$cp',name='$product',sp='$sp',disc='$cate'   WHERE id = '$id'";
		
			$del2=$conn->query(" INSERT INTO reports_ofdeletes set name='$user',item='".$product." deleted from ".$sector."',nqty='$qty',nsp='$sp',oqty='$oqty',osp='$osp',date='$date',month='$month',year='$year',time='$time',news='$qty',prod='$product',action='editting' ") or die(mysqli_error($conn));


		

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

	header('location: index.php?area='.$area.' ');

?>