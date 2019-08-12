<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		
		$product = $_POST['prod'];
		$cp = $_POST['price'];
		$sp = $_POST['sp'];
		$cate=$_POST['cate'];
		$qty=$_POST['qty'];
		$pic=$_FILES['userImage']['name'];
		$photo=rand(1,100).$_FILES['userImage']['name'];	
	$photo_temp=$_FILES['userImage']['tmp_name'];
	move_uploaded_file($photo_temp,"../../baragent/image/drinks/$photo");	
if(empty($pic)){
	$photos='';
	
		$sql = "UPDATE warehouse set qty='$qty',cost='$cp',name='$product',sp='$sp',disc='$cate'  WHERE id = '$id'";
	
}
else {
	$photos=$photo;
	
		$sql = "UPDATE warehouse set qty='$qty',cost='$cp',name='$product',sp='$sp',disc='$cate'   WHERE id = '$id'";
		
			$sql_product = $conn->query("UPDATE finals set  image_name='$photos',cost='$cp'  WHERE name='$product' ") or die(mysqli_error($conn));
			$sql = "UPDATE warehouse set  image_name='$photos'  WHERE name='$product' ";
}

		

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

	header('location: index.php');

?>