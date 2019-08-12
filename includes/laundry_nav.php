<?php
@session_start();
if(empty($_SESSION['userSession'])){
	
		echo '<meta http-equiv="Refresh" content="0; url=../login.php">';
}
else {
include '../includes/dbc.php';

 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $email=$userRow['user_email'];
 $level=$userRow['banned'];
 $user_name=$userRow['user_name'];
 
 }



 if(empty($level)){
echo '<meta http-equiv="Refresh" content="1; url=../login.php">';

}

 
if($level=='20' or $level=='8'){
	
		                            
 $mm=date('m');
 $yy=date('Y');


	


?> 


 <nav class="navbar navbar-inverse" style="margin-top:-50px; background:#003">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" style="color:#FF0; font-weight:bold"> Laundry Dashboard</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
       
       
      
       
       <li class="active"><a href="?continue&nid=<?php echo $_GET['nid']; ?>&area=types">Types of Cloth</a></li>
       
        
       <li class="active"><a href="?continue&nid=<?php echo $_GET['nid']; ?>&area=service">Types of Service</a></li>
         <li class="active"><a href="#">TOTAL INCOME TODAY: <span style="color:#F00; font-weight:bold"><?php
		 
		$today=date('d-m-Y');
 $query =$con->query("SELECT SUM(rec) as income FROM daily WHERE paidto='$user_name' and date='$today'  and area='8' " ) or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){
echo $income=number_format($userRow['income']);

 } 
		  ?></span></a></li>
       
       
      
         
         
      

      
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../logout.php" style="color:#fff; font-weight:bold"><i class="icon-off " style="color:#Ff0"></i>  Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>
                    <!-- END ALERTS SECTION -->
<?php } 

}

?>
</ul>
</header>
