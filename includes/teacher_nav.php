<?php
@session_start();
include '../includes/dbc.php';

 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['full_name'];
 $level=$userRow['banned'];
 
 }

 if(empty($level)){
    header("Location: ../login.php");


}

 
if($level=='20' or $level=='1' ){
	///////-give sector name from the sectors tbl
	////////////////
 $query =$con->query("SELECT * FROM sectors WHERE area='$level'") or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $link=$userRow['name'];
 
 }


?> 
<style>
#myNavbar a{
	color:#FFf;
	font-weight:bold;
	
}
</style>

 <nav class="navbar navbar-inverse">
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
      
       
        
                   
                          <li class="active"><a href="">Signed in as <?php echo $link; ?></a></li>
       
        <li ><a href="?our_stocks&link=Our Stock">Our Stock</a></li> 
        
           <li ><a href="?bodiro&link=Print a Bodiro">Print a Bar Supplies Bodiro</a></li> 


     <li ><a href="?wbodiro&link=Print a Bodiro">Print a Warehouse Supplies Bodiro</a></li> 

              
              
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../logout.php" style="color:#fff; font-weight:bold"><i class="icon-off " style="color:#Ff0"></i> <?php echo $user; ?> | Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>
                    <!-- END ALERTS SECTION -->
</ul>
</header>
<?php }  ?>