<?php

@session_start();
include '../../includes/dbc.php';
//include '../../includes/functions.php';

 $querys =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$querys->fetch_assoc()){
 
 $user=$userRow['full_name'];
 $level=$userRow['banned'];
  /////if the active user is admin, get the session user_level
 if($level==20){
 $yarea=$_GET['area'];	 
 }
 else {
	 $yarea=$level;
 }
 
 $result = $con->query("SELECT * FROM sectors where area='$level'") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
			$sector=$bu['name'];
			$links=$bu['link'];
			//$yarea=2;
				}
 
 }
 
 if(empty($level)){
    header("Location: ../login.php");

$ar=$level;

}
else{

?>
 
<style>
#myNavbar a{
	color:#FFf;
	font-weight:bold;
	
	
}
</style>

 <nav class="navbar navbar-inverse" style="background:#000;">
  <div class="container-fluid">
    <div class="navbar-header">
    
    
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
       <a class="navbar-brand" href="#"><img src="../img/image.jpg" style="width:40px; height:40px" /></a>
      <a class="navbar-brand" href="#" style="color:#FF0; font-weight:bold">Nishang Clouds System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
    
                 
              <li><a href="?record_goods&link=Adding Goods&add_good"> New Stock</a></li>
               <li><a href="?record_goods&link=Adding Goods&add_good"> Single stock Update</a></li>
                  
                   
                          <li class="active"><a href="?sales_meter&link=Sales Meter">Sales Meter</a></li>
       
      
       <li class="active"><a href=" ?supply_meter&link=Supply Meter">Supply Meter</a></li>
       
       

              
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../logout.php" style="color:#fff; font-weight:bold"><i class="icon-off " style="color:#Ff0"></i>  Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>
                    <!-- END ALERTS SECTION -->
</ul>
</header>
<?php }  ?>