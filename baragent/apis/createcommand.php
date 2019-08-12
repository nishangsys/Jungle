<?php
include 'inc/dbconn.php';
//create command and view command.

if (isset($_GET['area']) && isset($_GET['tab']) && isset($_GET['name'])) {
    $response = [];
    $area = $_GET['area'];
    $tab = $_GET['tab'];
    $name = $_GET['name'];
    $response = [];
    if(commandExist($tab,$name,$area,$con)){
        $response["success"] = "0";
        $response["message"] = "exist";
    }else{
        $insertQuery = "INSERT INTO basket (tab, date, status, area, ids) VALUES ('$tab', NOW(), 0, '$area', '$name')";
        $inserted = mysqli_query($con, $insertQuery);
        if($inserted == 1){
            $response["success"] = "1";
        }else{
            $response["success"] = "0";
        }
    }

    echo json_encode($response);
}else die("Invalid Request");

function commandExist($tab,$command,$area,$con){
   $query = "select * from basket where tab = '$tab' and area = '$area' and ids = '$command'";
    $result = mysqli_query($con, $query);            
    if(mysqli_num_rows($result) > 0){                
        return true;
        }
        return false;
    }
?>
