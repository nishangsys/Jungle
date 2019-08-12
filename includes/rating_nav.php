<?php

include '../includes/dbc.php';


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
