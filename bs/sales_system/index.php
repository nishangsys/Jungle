<?php include("config/db_config.php");?>
<?php 
 error_reporting(E_ALL); ini_set('display_errors', 1); 
$msg = '';
if(isset($_SESSION['user_id']) && $_SESSION['user_id'] != '') {header("location:booking.php");}
if(isset($_POST) && !empty($_POST)){
$email = $_POST['email'];
$password = $_POST['password'];
$sql = "SELECT * FROM user WHERE email = '$email' AND password = '$password'";
$rs = mysql_query($sql);
if(mysql_num_rows($rs) >  0){
	$row = mysql_fetch_assoc($rs);
	$_SESSION['user_id'] = $row['id'];
	$_SESSION['user_name'] = $row['name'];
	$_SESSION['email'] = $row['email'];
	header("location:booking.php");
} else {
	$msg = 'Worng login details.';
}
}
?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Table booking</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	

  
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons-->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div id="fh5co-offcanvass">
		<ul>
			<li class="active"><a href="index.php" data-nav-section="home">Home</a></li>
			<!--<li><a href="#" data-nav-section="features">Features</a></li>
			<li><a href="#" data-nav-section="design">Design</a></li>
			<li><a href="#" data-nav-section="testimonies">Testimonies</a></li>
			<li><a href="#" data-nav-section="products">Products</a></li>
			<li><a href="#" data-nav-section="benefits">Benefits</a></li>
			<li><a href="#" data-nav-section="pricing">Pricing</a></li>
			<li><a href="#" data-nav-section="faqs">FAQs</a></li> -->
		</ul>
		<!--<h3 class="fh5co-lead">Connect with us</h3>
		<p class="fh5co-social-icons">
			<a href="#"><i class="icon-twitter"></i></a>
			<a href="#"><i class="icon-facebook"></i></a>
			<a href="#"><i class="icon-instagram"></i></a>
			<a href="#"><i class="icon-dribbble"></i></a>
			<a href="#"><i class="icon-youtube"></i></a>
		</p>-->
	</div>
	
	<!--<div id="fh5co-menu" class="navbar">
	
	
	
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><span>Menu</span> <i></i></a>
					<a href="index.php" class="navbar-brand"><span>Booking</span></a>
				</div> 
				
			
		
				
					
				
				
			</div>
		</div>
	</div>-->

	<div id="fh5co-page">
		<div id="fh5co-wrap">
		
			
			<div id="fh5co-main">
				<!--<div id="fh5co-clients">
					<div class="container">
					
						<div class="row text-center">
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate" style="height:15px;">
								
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate">
								
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate">
								
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate">
								
							</div>
						</div>
					</div>
				</div>-->
				
				<div id="fh5co-features" data-section="features">


					<div class="container">
					<div class="row">
					<ul class="nav nav-pills navbar-inverse new-menu ">
					  <li role="presentation" class="active"><a href="index.php">HOME</a></li>
					  <li role="presentation"><a href="#">ORDERS</a></li>
					  <li role="presentation"><a href="#">TABLES</a></li>
					  <li role="presentation"><a href="#">MENU</a></li>
					 
					</ul>
					</div>
					<form name="order" action="" class="form-signin " method="post">
				
        <h2 class="form-signin-heading to-animate">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input id="inputEmail" name="email" class="form-control to-animate" placeholder="Email address" required="" autofocus="" type="email" style="margin-bottom:10px;">
        <label for="inputPassword" class="sr-only">Password</label>
        <input id="inputPassword" name="password" class="form-control to-animate" placeholder="Password" required="" type="password">
        <div class="checkbox">
          
        </div>
        <button class="btn btn-lg btn-primary btn-block to-animate" type="submit">Sign in</button>
      </form>
						
							
							
			        	</div>
			       </div>
			       

			    </div>
				

			   

			</div>
		</div>

		
	</div>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- toCount -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>


	
	</body>
</html>
