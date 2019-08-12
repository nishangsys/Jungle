
<?php
include '../../includes/dbc.php';
include '../../includes/functions.php';
@session_start();
if(empty($_SESSION['userSession'])){
	
		echo '<meta http-equiv="Refresh" content="0; url=../../login.php">';
}
else {
	
	
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['full_name'];
 $userid=$userRow['id'];
 $level=$userRow['banned'];
 
 $result = $con->query("SELECT * FROM sectors where area='$level'") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
			$sector=$bu['name'];
			$links=$bu['link'];
				}
 
 }
 

 if(empty($level)){
    header("Location: ../login.php");

$ar=$level;

}
else{

?>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>NISSHANG</title>

    <meta name="description" content="responsive layout demos">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <link rel="stylesheet" media="screen" href="css/left-fluid.css">
    


  <link rel="stylesheet" href="js/boostrap.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
function updateDIV(myDiv)
{
   var url='delete.php';
   var id = $F($('id'));
   var myAjax = new Ajax.Updater(myDiv, url, {method: 'get', parameters: 'id='+id});
}
</script>



<!--------------js --------->
<script language="JavaScript">
function fullScreen(theURL) {
window.open(theURL, '', 'fullscreen=yes, scrollbars=auto,addressbar=no');
}
// End -->
</script>

<script>
<!--
function fullwin(){
window.open("http://localhost/pro/resp/casheir/index.php?area=15&open","bfs","fullscreen,scrollbars")
}
//-->
</script>
  <style>
  
  body{
	 background:url(../img/c.gif);

  }
  a{
	  color:#FFF; 
	  font-size:24px;
	  }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */

    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;}
    }
	
	ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: inline-block;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
  transition: 0.3s;
  font-size: 17px;
}

ul.topnav li a:hover {background-color: #555;}

ul.topnav li.icon {display: none;}

@media screen and (max-width:680px) {
  ul.topnav li:not(:first-child) {display: none;}
  ul.topnav li.icon {
    float: right;
    display: inline-block;
  }
}

@media screen and (max-width:680px) {
  ul.topnav.responsive {position: relative;}
  ul.topnav.responsive li.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  ul.topnav.responsive li {
    float: none;
    display: inline;
  }
  ul.topnav.responsive li a {
    display: block;
    text-align: left;
  }
}
  </style>

     <!--[if lt IE 9]>
    	<script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

  </head>
 <?php
 
 
   $query =$con->query("SELECT * FROM sectors WHERE area='".$_GET['area']."' ") or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $SECTOR=$userRow['name'];

 
 }
   ///////////////////updat table
		  $a=$con->query("UPDATE  bar_tables set status='1'  where num='".$_GET['tabs']."'  ") or die(mysqli_error($con));

;
?>


  
  <body >
  
   
 <ul class="topnav" id="myTopnav">

     
 
  
  
  
  <li class="icon">
    <a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">☰</a>
  </li>
  
  
</ul>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Welcome Page</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">SALES BOARD</a></li>
        
      </ul><br>
      <div class="input-group">
     
      </div>
    </div>




      <div class="col-sm-8">
        
       
<div class="container-fluid" style="background-color:#F44336;color:#fff;height:200px;">
  <ul class="topnav" id="myTopnav">

     
 
  <li> <a href="?what=drinks&area=<?php echo $_GET['area']; ?>&temp=hot&tabs=<?php echo $_GET['tabs']; ?>" style="color:#fff">   WELCOME <?PHP echo $user; ?>
       </a></li>
  
       
        <li style="background:#FC6"> &nbsp;&nbsp; <i class="fa fa-user fa-2x"></i> <span style="font-size:16px; font-weight:bold; font-style:italic"><?php echo $_SESSION['user_name']; ?></span> | <a href="../../logout.php" style="color:#F00; "> LOGOUT
       </a></li>
  
  
  
  <li class="icon">
    <a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">☰</a>
  </li>
  
  
</ul>


  <h3>You are Signed in As <span style="color:#FF0"><?php echo $sector; ?></span></h3>
 <p> <a href="javascript:void(0);" onclick="fullScreen('http://NISHANG-SYS/NISHANG/sales/casheir/index.php?area=<?php echo $_GET['area']; ?>&sid=<?php echo $userid; ?>');">Confirm and Sign in as <?php echo $SECTOR; ?>  </a></p>
  <!--<p> <a href="javascript:void(0);" onclick="fullScreen('http://192.0.0.1/NISHANG/sales/casheir/index.php?area=<?php echo $_GET['area']; ?>&sid=<?php echo $userid; ?>');">Confirm and Sign in as <?php echo $SECTOR; ?>  </a></p>-->
  
</div>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <ul class="nav navbar-nav">
    <li class="active"><a href="#">&copy;Copyright. All Right Reserved by the Programmers</a></li>
    
  </ul>
</nav>


          
        
<?php }  } ?>

