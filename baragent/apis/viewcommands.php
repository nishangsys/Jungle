
<?php
include 'inc/dbconn.php';
//create command and view command.

if (isset($_GET['area'])) {
$area = $_GET['area'];

    $query = $con->query("select DISTINCT tab as name from basket where area = '".$area."' and status = '0'") or die(mysqli_error($con));
    $tables = [];
    while($row = $query->fetch_array()){ 
        $table['table'] = $row['name'];
        $table['commands'] = getCommands($row['name'],$area,$con);
        array_push($tables, $table);
    }
echo json_encode($tables);
}else die("Invalid Request");

function getCommands($table,$area,$con){
    $query = $con->query("select DISTINCT ids as name from basket where area = '".$area."' and tab = '".$table."' and status = 0") or die(mysqli_error($con));
    $commands = [];
    while($row = $query->fetch_array()){ 
        $command['name'] = $row['name'];
        array_push($commands, $command);
    }
    
    return $commands;
     
}
?>