
<?php
include '../../includes/dbc.php';
include '../../includes/functions.php';
@session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $paidto=$userRow['user_name'];
 $level=$userRow['banned'];
 
 }
 /////if the active user is admin, get the session user_level
 if($level==20){
 $yarea=$_GET['area'];	 
 }
 else {
	 $yarea=$level;
 }

 

 if(empty($level) or empty($yarea) ){
    header("Location: ../../login.php");

$ar=$level;


}
else{
?>

<!DOCTYPE html>
<html>
<head>
  
	<link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="typeahead.js"></script>
	<style>
	body{
		font-size:16px
	}
	ul,li,a{
		list-style:none;
		text-decoration:none;
		font-weight:bold;
	}
		
	input[type="text"],
	input[type="number"]{
		padding:0px 0px;
		font-size:20px
	}
	.typeahead { border: 2px solid #FFF;border-radius: 4px;padding: 8px 12px;max-width: 600px;min-width: 600px;background:# fff;color: #000;}
	.tt-menu { width:300px; }
	ul.typeahead{margin:0px;padding:10px 0px;}
	ul.typeahead.dropdown-menu li a {padding: 10px !important;	border-bottom:#CCC 1px solid;color:#000;}
	ul.typeahead.dropdown-menu li:last-child a { border-bottom:0px !important; }
	.bgcolor {background:; color:#f00) no-repeat center center;padding: 100px 10px 130px;border-radius:4px;text-align:center;margin:10px;}
	.demo-label {font-size:1.5em;font-weight: 500;color:#f00;}
	.dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover {
		color:#fff;
		text-decoration: none;
		background-color: #FF3;
		outline: 0;
		
		font-weight:bold;
	}
	</style>
    
    <script type="text/javascript">
function doCalc(form) {

  form.owed.value = ((parseInt(form.totalbill.value) - parseInt(form.paid.value)));
 
  
}
</script>

    <script>
    $(document).ready(function () {
        $('#txtCountry').typeahead({
            source: function (query, result) {
                $.ajax({
                    url: "server.php?area=<?php echo $_GET['area']; ?>",
					data: 'query=' + query,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
						result($.map(data, function (item) {
							return item;
                        }));
                    }
                });
            }
        });
    });
</script>	

<script language="JavaScript" src="../../js/pop-up.js"></script>
</head>

<h1 style="text-align:center">Changing/Swapping Drinks for Table </h1>
    <div class="col-sm-3 sidenav">
    
     
                
      
      <h4 style="border:2PX solid#00F; background:#FF6; font-weight:bold; color:#F00"> </h4>
      
      <li class="panel active">
                    <a href="?view&roll=<?php echo $_GET['roll']; ?>&idd=<?php echo $_GET['roll']; ?>&area=<?php echo $_GET['area']; ?>" >
                        <i class="icon-table"></i> View & change Command
	   
                       
                    </a>                   
                </li>
                
                
                 <li class="panel active">
                    <a href="?validate_command&roll=<?php echo $_GET['roll']; ?>&idd=<?php echo $_GET['roll']; ?>&area=<?php echo $_GET['area']; ?>" >
                        <i class="icon-table"></i> Validate Command
	   
                       
                    </a>                   
                </li>
    </div>

    <div class="col-sm-9" style=" height:2000px; overflow:scroll; ">
      <?php 
	  if(isset($_GET['view'])){
		  include 'view.php';
	  }
	   if(isset($_GET['validate_command'])){
		  include 'validate_command.php';
	  }
	  
	  ?>
      </div>
      
      <?php } ?>