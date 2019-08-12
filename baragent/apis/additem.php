<?php
include 'inc/dbconn.php';
	if(isset($_GET['data'])){
		@session_start();
	
		$uid=$_SESSION['userSession'];
		$item = json_decode($_GET['data']);
        $month=date('m');
		$year=date('Y');
		$area = $item->area;
		$table = $item->table;
		$command = $item->command;
		$id = $item->id;
		$price = $item->price;
		$name = $item->name;
		$c_qty = $item->qty;
		$type = $item->type;
		$comment = $item->comment;
			try{
		   	mysqli_commit($con,FALSE);

			   $inserted = 0;
			   $available = getRemender($type,$id,$con);
			   if($available < $c_qty){
			   		$response['success'] = "0";
			   		$response['message'] = "lesser";
			   		$response['qty'] = $available;

			   }else{
			   		if(foundInCommand($command,$table,$area,$id,$type,$con)){
						$df=$con->query("DELETE FROM basket where product='' ") or die(mysqli_error($con));
						
			   		$updateQuery = "update  basket set qty = (qty + $c_qty),total = (qty * price) where (product_id = '$id' and area = '$area' and tab = '$table' and ids = '$command');";
			   		$inserted = mysqli_query($con, $updateQuery)or die("first  ".mysqli_error($con));
			   }else{
			   		$updateQuery = "insert into basket (product_id,type,product,price,qty,status,ids,tab,area,date,comment,month,year,agent) values ('$id','$type','$name','$price','$c_qty','0','$command','$table','$area',NOW(),'$comment','$month','$year','$uid')";
			   		$inserted = mysqli_query($con, $updateQuery)or die("second ".mysqli_error($con));
			   }

			   $updateQuery = "update  finals set qty = (qty - $c_qty) where id = '$id';";
			   $update = mysqli_query($con, $updateQuery)or die("third  ".mysqli_error($con));

			   if($inserted == 1 && $update == 1){
			   	$response['success'] = "1";
			   	$response['qty'] = getRemender($type,$id,$con);
				}else{
				$response['success'] = "0";
				$response['message'] = "error";
			   }

			}
			
			   

		   	mysqli_commit($con);
		}catch(esception $e){
		   	die($e);
	    }
	    echo json_encode($response);
	}else die ("data error");

function foundInCommand($command,$tab,$area,$id,$type,$con){
	$query = "select * from basket where tab = '$tab' and area = '$area' and ids = '$command' and product_id = '$id' and type = '$type'";
    $result = mysqli_query($con, $query)or die("forth ".mysqli_error($con));           
    if(mysqli_num_rows($result) > 0){                
        return true;
        }
        return false;

}
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

?>