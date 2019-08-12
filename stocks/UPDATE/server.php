
<?php
	//include connection file 
	include_once("connection.php");
	
	//define index of column
	$columns = array(
		0 =>'name', 
		1 => 'barcode',
		2 => 'sp'
	);
	$error = false;
	$colVal = '';
	$colIndex = $rowId = 0;
	
	$msg = array('status' => !$error, 'msg' => 'Failed! updation in mysql');

	if(isset($_POST)){
    if(isset($_POST['val']) && !empty($_POST['val']) && !$error) {
      $colVal = $_POST['val'];
      $error = false;
      
    } else {
      $error = true;
    }
    if(isset($_POST['index']) && $_POST['index'] >= 0 &&  !$error) {
      $colIndex = $_POST['index'];
      $error = false;
    } else {
      $error = true;
    }
    if(isset($_POST['id']) && $_POST['id'] > 0 && !$error) {
      $rowId = $_POST['id'];
	   $rowName = $_POST['name'];
      $error = false;
    } else {
      $error = true;
    }
	
	if(!$error) {
			$sql = "UPDATE WarehouseSET ".$columns[$colIndex]." = '".$colVal."' WHERE id='".$rowId."'";
			$status = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
			
			
			$sql12 = "UPDATE supermkt SET ".$columns[$colIndex]." = '".$colVal."' WHERE name='".$rowName."'";
			$status12 = mysqli_query($conn, $sql12) or die("database error:". mysqli_error($conn));
			
			
			$msg = array('error' => $error, 'msg' => 'Success! Records Successfully Updated');
	} else {
		$msg = array('error' => $error, 'msg' => 'Failed! Records Not Successfully Updated');
	}
	}
	// send data as json format
	echo json_encode($msg);
	
?>
	