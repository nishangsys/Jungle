<?php
session_start();

include 'inc/dbconn.php';

@session_start();

function getTables($sector,$con){
    $tables = [];
    $query =$con->query("SELECT id,num FROM bar_tables WHERE sector = '$sector' and status = 0") or die(mysqli_error($con));

        while($userRow=$query->fetch_array()){ 
            $table["id"] = "1";
            $table["num"] = $userRow['num'];
            array_push($tables, $table);
        }
    return $tables;
}


if (isset($_GET['email']) && isset($_GET['pwd'])) {
	$response["success"] = 0;
    $email = strip_tags($_GET['email']);
    $password = strip_tags($_GET['pwd']);
    $email = $con->real_escape_string($email);
    $password = $con->real_escape_string($password);
    $query = $con->query("SELECT id, user_name, pwd FROM users WHERE user_name='$email'") or die(mysqli_error($con));
    $row=$query->fetch_array();
     $count = $query->num_rows; 
    if (password_verify($password, $row['pwd']) && $count==1){
        $_SESSION['userSession'] = $row['id'];

       $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));
        while($userRow=$query->fetch_array()){ 
            $response["success"] = "1";
			$response["username"] = $userRow['user_name'];
            $response["fullname"] = $userRow['full_name'];
            $response["id"] = $userRow['id'];
            $response["tel"] = $userRow['tel'];
            $response["sector"] = getSector($userRow['user_level'],$con);
            $response["email"] = $userRow['user_email'];
            $response["tables"] = getTables($response["sector"],$con);
	   }
    }
   
	else {
		
		$response["success"] = "0";
		$response["message"] = "Invalid Username or Password !";
	}
	$con->close();
    
	echo json_encode($response);
} else die("Something went wrong ");

function getSector($userlevel,$con){
    $sector = "";
        $query = $con->query("select  sarea as sector from sectors where  area = '$userlevel'") or die(mysqli_error($con));
        if($row = $query->fetch_array()){ 
            $sector = $row['sector'];
        }
         return $sector;
}

?>