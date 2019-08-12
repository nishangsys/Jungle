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
 
 }

 if(empty($level)){
echo '<meta http-equiv="Refresh" content="1; url=../login.php">';

}

 
if($level=='20' ){
	
		                            
 $mm=date('m');
 $yy=date('Y');


	


?> 


 <nav class="navbar navbar-inverse" style="margin-top:-50px">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" style="color:#FF0; font-weight:bold"> Admin Dashboard</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
       
       
      
       
       <li class="active"><a href="?our_stocks&link=Our Stock">Our Stock</a></li>
       
       
       <li class="active"><a href="?sales_meter&link=Sales Meter">Sales Meter</a></li>
       
      
       <li class="active"><a href=" ?supply_meter&link=Supply Meter">Supply Meter</a></li>
       
         <li class="active"><a href=" ?create_user&link=Create Users">Create Users</a></li>
      
         
          <li class="active"><a href=" ?all_user&link=Create Users">All Users</a></li>
      
         
         
       <li  style="background:#009;"><a href="?Accounts&link=Accssing Other Accounts" style="color:#fff; border:1px solid#fff" >Access Other Accounts</a></li>
       

      
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
