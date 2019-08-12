<?php
include 'inc/dbconn.php';
	if(isset($_GET['data'])){
		$item = json_decode($_GET['data']);

		$area = $item->area;
		$table = $item->table;
		$command = $item->command;
		$id = $item->id;
		$price = $item->price;
		$c_qty = $item->qty;
		$type = $item->type;
		$comment = $item->comment;
			try{
		   	mysqli_commit($con,FALSE);

			   $inserted = 0;
			   if($c_qty != 0){
			   		$updateQuery = "update  basket set qty = (qty - $c_qty),total = total - ($c_qty * price) where product_id = '$id' and area = '$area' and tab = '$table' and ids = '$command';";
			   		$inserted = mysqli_query($con, $updateQuery);

			   		$updateQuery1 = "delete from basket where qty < '1'";
			   		$inserted1 = mysqli_query($con, $updateQuery1);
			   }

			   $updateQuery = "update  finals set qty = (qty + $c_qty) where id = '$id';";
			   $update = mysqli_query($con, $updateQuery);

			   if($inserted == 1 && $update == 1){
			   	$response['success'] = "1";
			   	$response['qty'] = getRemender($type,$id,$con);
				}else{
				$response['success'] = "0";
			   }

	
		   	mysqli_commit($con);
		}catch(esception $e){
		   	die($e);
	    }
	    echo json_encode($response);
	}else die ("data error");
function getRemender($type,$id,$con){
	if($type == "food"){
		return 100;
	}else{
		 $query = "select qty from finals where id = '$id'";
	    	$result = mysqli_query($con, $query); 
	    	$row=$result->fetch_array();
	    	return $row['qty'];
	}
}

function qtyZero($type,$id,$con){
	if($type == "food"){
		return 100;
	}else{
		 $query = "select qty from finals where id = '$id'";
	    	$result = mysqli_query($con, $query); 
	    	$row=$result->fetch_array();
	    	return $row['qty'];
	}
}

?>