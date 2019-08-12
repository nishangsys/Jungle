 <?php
include 'inc/dbconn.php';
if (isset($_GET['area']) && isset($_GET['command']) && isset($_GET['table']) && isset($_GET['balance'])&& isset($_GET['agent'])) {
$command = $_GET['command'];
$area = $_GET['area'];
$table = $_GET['table'];
$balance = $_GET['balance'];
$agent = $_GET['agent'];
	 ////Get latest time for shift change
  //date_default_timezone_set("Douala/Cameroon");
        $time1=date('Gi');	////current time	   
		 $see=date('d-m-Y');		   
$C=$con->query("SELECT * FROM overtime where id='1' order by id DESC LIMIT 1") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
				$TY=$r['time'];
				
			}	
		  
		////if current time is less than max shift time      
		   if($time1>=0001 and $time1<=$TY){
           $cur_date=date("d-m-Y", strtotime( '-1 days' ) ); 
		   $now=date("d-m-Y ", strtotime( '-1 days' ) );
		   }
		   else {
		   $cur_date=date('d-m-Y');
		   $now=date('d-m-Y');	  
		   }

$result = [];

$updateQuery = "update  basket set status = '5',balance = '$balance',total = (qty * price),date = '$now' ,agent = '$agent' where (area = '$area' and tab = '$table' and ids = '$command');";
$update = mysqli_query($con, $updateQuery)or die("first  ".mysqli_error($con));

  if($update == 1){ 
  	$result['success'] = "1";
  	$result['balance'] = $balance;
        }else{
    $result['success'] = "0"; 
    $result['message'] = "error";   	
        }
echo json_encode($result);
}else die("Invalid Request");


?> 