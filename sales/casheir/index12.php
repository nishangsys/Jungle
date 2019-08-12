
<?php
include '../../includes/dbc.php';
include '../../includes/functions.php';
@session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['full_name'];
 $level=$userRow['banned'];
 
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
	 background:url(../img/m.gif);

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
   ///////////////////updat table
   
   $query =$con->query("SELECT * FROM sectors WHERE area='".$_GET['area']."' ") or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $SECTOR=$userRow['name'];

 
 }
		    ///////////////////updat table
		  $a=$con->query("UPDATE  bar_tables set status='1'  where num='".$_GET['tabs']."'  ") or die(mysqli_error($con));



;
?>


  
  <body >
 

<?php include 'header.php'; ?>
 <div class="container-fluid">
  



      <div class="col-sm-12" >
          
          
          
          
          
           
         <?php
 $section=$_GET['area'];
 $table=$_GET['tabs'];
 //bar area
if($section=='15'){

	$a_area='15';
	$page='../bar/restaupage.php';
	$db_table='our_tables';
	$serial='Bar';
	$db_basket='basket';
	$back='15';
	
}

 ?>
       
    
       
       
         <!----------------------->
   
   <script>
	function ajax(){
		
		var req = new XMLHttpRequest();
		
		req.onreadystatechange = function(){
		
		if(req.readyState == 4 && req.status == 200){
		
		document.getElementById('chat').innerHTML = req.responseText;
		} 
		}
		req.open('GET','billing.php?area=<?php echo $_GET['area']; ?>',true); 
		req.send();
		
		}
		setInterval(function(){ajax()},1000);

</script>
 
    
    
    <body onLoad="ajax();">

		<div id="chat"></div>
		</div>
   
  
   


  </div>
</div>
          </div>
        </div>
        
        
        
        
      

  </body>
</html>
<?php 
}

 ?>