<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$product = $_POST['prod'];
		$cp = $_POST['price'];
		$sp = $_POST['sp'];
		$cate=$_POST['cate'];
		$qty=$_POST['qty'];
		$check=$conn->query("SELECT * FROM finals where name='$product'");
		$count=$check->num_rows;
		if($count>0){
			$_SESSION['success'] = 'Product is already in stock';
			
		}
		else {
		$sql =$conn->query( "INSERT INTO finals set qty='$qty',cost='$cp',name='$product',sp='$sp',disc='$cate'") or die(mysqli_error($conn));
		$_SESSION['success'] = 'Product added successfully';
		}
	}

	header('location: index.php');
?>