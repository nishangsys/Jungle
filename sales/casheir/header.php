<?php
$level=$_SESSION['banned'];

 $area=$_GET['area'];
  $serial;
  		 
//check if the day differnence is more thna 365 days
$rusn=$con->query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(new, '%Y/%m/%d')) AS DAYS,r12,new
FROM roll where roll_id='1'") or die(mysqli_error($con));
while($rows=mysql_fetch_assoc($rusn)){
	$left=($rows['DAYS']);
	   $sp=$rows['r12'];
	  $ri=$rows['new'];
}


      if($left>15  ) {
			echo "<script>alert('This software has expired since ".$ri.". This sofwtare will be blocked Soon ')</script>";
			
			echo '<meta http-equiv="Refresh" content="3; url=../../login.php">';
					
	}
	
	else {
				
 if($left>1 && $left<15 ) {
					echo "<script>alert('This software has expired . System will be bliocked Soon')</script>";


	}
	}

?>
<style>

form input[type="text"],
form input[type="email"],
form input[type="number"],
form input[type="search"],
form input[type="password"],
form textarea,
form select {
		background-color: #eee;
		border: 1px solid rgb( 186, 186, 186 );
		border-radius: 1px;
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.08);
		display: block;
		font-size: 1em;
		margin: 6px 0 12px 0;
		padding: .4em .55em;	
		text-shadow: 0 1px 1px rgba(255, 255, 255, 1);
		transition: all 400ms ease;
		width: 65%;
	}
	
form input[type="text"]:focus,
form input[type="email"]:focus,
form input[type="number"]:focus,
form input[type="search"]:focus,
form input[type="password"]:focus,
form textarea:focus,
form select:focus{ 
		border-color: #4195fc;/* the focus color for a input box */
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px #4195fc;
		width:65%;
}

form input[type="text"]:invalid:focus,
form input[type="email"]:invalid:focus,
form input[type="number"]:invalid:focus,
form input[type="search"]:invalid:focus,
form input[type="password"]:invalid:focus,
form textarea:invalid:focus,
form select:invalid:focus { 
			border-color: rgb(248,66,66);
			box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px rgb(248,66,66);
		}
</style>
  <link href="../assets/css/font-awesome.css" rel="stylesheet" type="text/css" media="all">
        <link href="../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
  
<ul class="topnav" id="myTopnav">

   <li>
   
       </li>
 
 
 
       
       
        <li style="background:#FC6"> &nbsp;&nbsp; <i class="fa fa-user fa-2x"></i> <span style="font-size:16px; font-weight:bold; font-style:italic"><?php echo $_SESSION['user_name']; ?></span> | <a href="../logout.php" style="color:#F00; "> LOGOUT
       </a></li>
  
   
  
  
  <li class="icon">
    <a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">☰</a>
  </li>
  
  
</ul>


<script language="JavaScript" src="../../js/pop-up.js"></script>

<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>

<!--------------------TOPEST MENU --->
