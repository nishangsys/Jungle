<!DOCTYPE html>
<html lang="en">
<head>
  <title>CASHEIR DASHBOARD</title>
  <meta charset="utf-8">
  
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8" />
    <title>NISHANG CLOUDS </title>
     <meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
     <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <!-- GLOBAL STYLES -->
    
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="../assets/css/layout2.css" rel="stylesheet" />
       <link href="../assets/plugins/flot/examples/examples.css" rel="stylesheet" />
       <link rel="stylesheet" href="../assets/plugins/timeline/timeline.css" />
    <!-- END PAGE LEVEL  STYLES -->
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
	body{
		font-size:18px;
		background:url(../bs/salon-4-wide.jpg)
	}
    ol li{
		display:inline;
	}
	ol li a{
		color:#fff; 
		text-decoration:none;
		font-weight:bold;
		padding:10px 10px;
		
	}
	ul li{
	display:block;
	border-bottom:2px solid#fff;
	padding:5px 5px;
	text-align:center;
}
ul li a{
	color:#fff;
	font-weight:bold;
	text-align:center;
}
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
	  
    }
  </style>
</head>

<body>


      <div style="position:fixed; right:0px; top:90px; background:#033; color:#fff; width:100px; height:190px; right:10px; border:2px solid#fff; z-index:3">
      
      <ul>
      <li><a href="../cash/index.php">Home</a></li>
      
        <li style="background:#F00"><a href="../logout.php">Logout</a></li>
      </ul>
      
      
   </div>

<div class="col-sm-12" style="margin:0px; padding:0px;  ">


<nav class="navbar navbar-inverse" style="background:#033; opacity:0.9; border:2PX solid#FFF">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="../cash/index.php" style="color:#FFF; font-weight:bold">NISHANG CLOUDS SYSTEMS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Back to Dashboard</a></li>
        <li><a href="?<?php echo $_SERVER['PHP_SELF']; ?> "><?php echo $_GET['link']; ?> </a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href=""><span class="glyphicon glyphicon-user"></span> <?php @session_start();  echo $_SESSION['user_name']; ?></a></li>
      </ul>
    </div>
  </div>
</nav>
     

  


<?php

include '../includes/cashboard.php';
?>




</nav>      
      
 </div>     
      
      
 
      
      
      
      
      
  
<?php
    if(isset($_GET['plattnow'])){
?>

<div class="container-fluid" >
  <div class="row content" >
    <div class="col-sm-3 sidenav hidden-xs" >
      <h2>Our Active Clients</h2>
       
             <?php
			 $today=date('d-m-Y');
              $doU=$con->query("SELECT * from basket where date='$today' and ids='inuse' and status='0' ") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	  
	  $a=$con->query("SELECT * from hair_style WHERE name='".$nam['product']."' ") or die(mysqli_error($con));
  while($b=$a->fetch_assoc()){
	  $min=$b['min'];
	  $max=$b['max'];
  }
	  
	  		 $curenttime= $nam['time'];
			  
  $time_ago =strtotime($curenttime);
 $cur_time 	= time();
$time_elapsed 	= $cur_time - $time_ago;
$seconds 	= $time_elapsed ;
 $minutes 	= round($time_elapsed / 60 );
 $hours 		= round($time_elapsed / 3600); 
			
             ?>
               <div class="row">
              
    <div class="col-sm-12">
     <a href="index.php?plattnow&link=Working on my customer&type= <?php echo $nam['froms']; ?>&name=<?php echo $nam['agent']; ?>&sid=8&style= <?php echo $nam['product']; ?>&roll=<?php echo $nam['tab']; ?>&min=<?php echo $min; ?>&max=<?php echo $max; ?>" style="text-decoration:none">
      <div class="panel panel-primary">
        <div class="panel-heading"> <?php echo $nam['froms']; ?></div>
       
        <div class="panel-footer">Cust: <span style="color:#F00"><?php echo $nam['agent']; ?></span><br />
 Style: <strong><?php echo $nam['product']; ?></strong>  <br />    
 
 <span style="color:#f00"> <strong> <?php echo $hours; ?> Hours <?php echo $minutes; ?> Min 
     </strong>
     </span>   
        
        </div>
      </div>
       </a>
            </div>
            </div>
           
            <?php } ?>
            
    </div>
    
    <?php
	
	echo '<div class="col-sm-9">';
echo '<div class="well">';
	}
	else {
echo '<div class="col-sm-12">';
echo '<div class="well">';
}

?>
   <h1>Nishang Clouds System <i class="icon-caret-right  " style="color:#F00"></i>  <i class="icon-caret-right  " style="color:#009"></i>  <span style="color:#f00"><?php echo $_GET['link']; ?></span></h1>     
       <div style="clear:both"></div>
         <?php
			if(isset($_GET['chose_clients'])){
	include '../content/chose_clients.php';
	}
	if(isset($_GET['multi_add'])){
	include '../content/multi_add.php';
	}
	if(isset($_GET['finished'])){
	include '../content/finished.php';
	}
	if(isset($_GET['add_clients'])){
	include '../content/add_clients.php';
	}
	if(isset($_GET['receipts'])){
	include '../content/receipts.php';
	}
	if(isset($_GET['clients'])){
	include '../content/clients_menu.php';
	}
	if(isset($_GET['record_exp'])){
	include '../content/our_exp.php';
	}
	if(isset($_GET['service_menu'])){
	include '../content/add_servicemenu.php';
	}
	
	if(isset($_GET['our_reports'])){
	include '../content/our_reports.php';
	}
	if(isset($_GET['our_appointments'])){
	include '../content/our_appointments.php';
	}
	
	
	if(isset($_GET['staff_menu'])){
	include '../content/register_staff.php';
	}
	if(isset($_GET['add_types'])){
	include '../content/add_types.php';
	}
	if(isset($_GET['add_otherservices'])){
	include '../content/add_otherservices.php';
	}
	
	
	if(isset($_GET['adding_services'])){
	include '../content/adding_services.php';
	}
	if(isset($_GET['add_services'])){
	include '../content/add_services.php';
	}
	if(isset($_GET['servicing_client'])){
	include '../content/servicing_client.php';
	}
	
		if(isset($_GET['go_ahead'])){
	include '../content/serve.php';
	}			
		
		if(isset($_GET['add_goods'])){
	include '../content/categories.php';
	}	
	
		if(isset($_GET['record_goods'])){
	include '../content/chosing_categories.php';
	}	
	
	
		if(isset($_GET['recordin_goods'])){
	include '../content/add_goods.php';
	}	
	
		
		if(isset($_GET['adding_goods'])){
	include '../content/adding_goods.php';
	}		
	
	
		if(isset($_GET['validate'])){
	include '../content/checkout.php';
	}		
		if(isset($_GET['daily_income'])){
	include '../content/daily_reports.php';
	}
		if(isset($_GET['daily_exp'])){
	include '../content/Daily Expenditure.php';
	}	
	if(isset($_GET['income_statement'])){
	include '../content/income_state.php';
	}
	if(isset($_GET['debtors'])){
	include '../content/debtors.php';
	}	
	if(isset($_GET['more'])){
	include '../content/more.php';
	}	
	if(isset($_GET['paying_debts'])){
	include '../content/paying_debts.php';
	}
	if(isset($_GET['add_class'])){
	include '../content/spending_cats.php';
	}
	if(isset($_GET['record_expense'])){
	include '../content/record_expense.php';
	}
	if(isset($_GET['chosing_date'])){
	include '../content/recording_expense.php';
	
	}
	if(isset($_GET['recording_expense'])){
	include '../content/recording_expense.php';
	
	}
	if(isset($_GET['appointments'])){
	include '../content/chose.php';
	
	}
	if(isset($_GET['view_apps'])){
	include '../content/all_appoints.php';
	
	}	
	if(isset($_GET['new_style'])){
	include '../content/adding_services.php';
	
	}
	if(isset($_GET['recording_services'])){
	include '../content/new_style.php';
	
	}
	
	if(isset($_GET['my_client'])){
	include '../content/our_services12.php';
	
	}
	if(isset($_GET['chosing_style'])){
	include '../content/chose_style.php';
	
	}
	if(isset($_GET['my_stylist'])){
	include '../content/our_services.php';
	
	}
	if(isset($_GET['my_staff'])){
	include '../content/hair_staff.php';
	
	}
	
	if(isset($_GET['all_staff'])){
	include '../content/our_staff.php';
	
	}
	
	if(isset($_GET['define_price'])){
	include '../content/define_price.php';
	
	}
	
	if(isset($_GET['chose_stylist'])){
	include '../content/chose_stylists.php';
	
	}
	if(isset($_GET['plattnow'])){
	include '../content/platting.php';
	
	}	
	
	if(isset($_GET['help'])){
	include '../content/help.php';
	
	}
	
	if(isset($_GET['best_customers'])){
	include '../content/best_customers.php';
	
	}	
	if(isset($_GET['view_more'])){
	include '../content/view_more.php';
	
	}	
	
	if(isset($_GET['best_staff'])){
	include '../content/best_staff.php';
	
	}	
	if(isset($_GET['see_more'])){
	include '../content/see_more.php';
	
	}	
	if(isset($_GET['our_stocks'])){
	include '../content/all_mystock.php';
	
	}	
	if(isset($_GET['sales_meter'])){
	include '../content/sales_meter.php';
		}	
		if(isset($_GET['supply_meter'])){
	include '../content/supply_meter.php';
		}
	
	if(isset($_GET['create_user'])){
	include '../content/register.php';
		}
		if(isset($_GET['servicing'])){
	include '../content/servicing.php';
	}	
	
	
	
	?>
      </div>
   
      </div>
    </div>
    </div>
   
   <div style="clear:both; width:100%; height:30px;"></div> 
   <footer class="container-fluid" style="position:fixed; bottom:-5px; padding:20px 0px; border-top:2px solid#999; width:100%; margin:0px; padding:0px;	
 background-color:#fcfcfc;
 filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#fcfcfc, endColorstr=#cad8de);
 background-image:-moz-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-webkit-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-ms-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-o-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-webkit-gradient(linear, right top, right bottom, color-stop(57%,#fcfcfc), color-stop(100%,#cad8de));">
  <p> 
  <ol>
  <li ><a href="#" style="color:#fff; padding:10px 10px; background:#00F"><?php echo date('F'); ?> Appointments</a></li>
  
    <?php $d=$con->query("SELECT * FROM commands order by id DESC limit 5 ") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
	?>
      
        <li><a href="?view_apps&link= Viewing Appointments" style="color:#666;"><?php echo $bu['name']; ?> <span style="color:#F00">(<?php 

$today=date('d-m-Y'); 	
	 $date1 = date_create($bu['date']);
        //echo "Start date: ".$date1->format("d-m-Y")."<br>";
        $date2 = date_create($today);
		
        //echo "End date: ".$date2->format("d-m-Y")."<br>";
		if($date2>$date1){
			echo "<span class='error'> Expired</span>";
		}
		
		elseif ($date2==$date1){
						echo "<span class='error'>Only today </span>";

		}
		
		
		else{
			
        $diff = date_diff($date1,$date2);
	
        echo $diff->format("  %d day")."&nbsp;"."Left"."";
		
		} 
; ?>)</span></a></li>
 
   <?php } ?>
  </ol>
  
</p>
</footer>
