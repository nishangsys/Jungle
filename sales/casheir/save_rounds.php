

<?php
 @session_start();
include '../../includes/dbc.php'; // include the database 
 

	if(isset($_POST['save'])){
		$uid = $_POST['uid'];
		
		$area = $_POST['area'];
		$tnum = $_POST['tnum'];
		$oname = $_POST['oname'];
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
		   }
		   else {
		   $cur_date=date('d-m-Y');	  
		   }

		$query =$con->query("SELECT * FROM rounds  WHERE who='$uid' and date='$date' and  num='$tnum'  " ) or die(mysqli_error($con));
		$exist=$query->num_rows;
		
		$query =$con->query("SELECT * FROM basket  WHERE ids='$oname' and  tab='$tnum'  " ) or die(mysqli_error($con));
		$exists=$query->num_rows;

if($exist>0){

}
else if($exists>0){

}
else {
		$query =$con->query("INSERT INTO rounds  SET  who='$uid',date='$cur_date',area='$area',oname='$oname',num='$tnum'  " ) or die(mysqli_error($con));
      }
		
	                             }
	header('location: index.php');

?>