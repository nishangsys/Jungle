<?php session_start(); ?>
<html>

<head>


   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/form-elements.css">
	<link rel="stylesheet" type="text/css" href="css/stlye.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<style>
html, body {
  margin: 0;
  height: 100%;
background-image: url(computer-background-notebook-powerpoint-backgrounds.jpg);
	background-position: center center;
	background-size: cover;
}


@-webkit-keyframes cloud_three {
  0% {
    left: 0
  }
  100% {
    left: -200%
  }
}

@-moz-keyframes sky_background {
  0% {
    background: #007fd5;
    color: #007fd5
  }
  50% {
    background: #000;
    color: #a3d9ff
  }
  100% {
    background: #007fd5;
    color: #007fd5
  }
}

@-moz-keyframes moon {
  0% {
    opacity: 0;
    left: -200% -moz-transform: scale(0.5);
    -webkit-transform: scale(0.5);
  }
  50% {
    opacity: 1;
    -moz-transform: scale(1);
    left: 0% bottom: 250px;
    -webkit-transform: scale(1);
  }
  100% {
    opacity: 0;
    bottom: 500px;
    -moz-transform: scale(0.5);
    -webkit-transform: scale(0.5);
  }
}

@-moz-keyframes cloud_one {
  0% {
    left: 0
  }
  100% {
    left: -200%
  }
}

@-moz-keyframes cloud_two {
  0% {
    left: 0
  }
  100% {
    left: -200%
  }
}

@-moz-keyframes cloud_three {
  0% {
    left: 0
  }
  100% {
    left: -200%
  }
}
</style>
</head>
   <script src="FEES/js/index.js"></script>
<?php
session_start();



include 'includes/dbc.php';


if (isset($_POST['doLogin'])) {
	
	$email = strip_tags($_POST['usr_email']);
	$password = strip_tags($_POST['pwd']);
	
	$email = $con->real_escape_string($email);
	$password = $con->real_escape_string($password);
	
	$query = $con->query("SELECT id, user_email, pwd FROM users WHERE user_name='$email'") or die(mysqli_error($con));
	$row=$query->fetch_array();
	
	$count = $query->num_rows; // if email/password are correct returns must be 1 row
	
	if (password_verify($password, $row['pwd']) && $count==1)
	 {
		 
		 
	$_SESSION['userSession'] = $row['id'];
		
	
	
	////get the email of the user using the session_id  
		
$query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 echo $email=$userRow['user_email'];
 $status=$userRow['banned'];
 
 }
 
 
 ////////////////
 $query =$con->query("SELECT * FROM sectors WHERE area='$status'") or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 echo $link=$userRow['link'];
 
 }
 
 /////////////////

	  
		echo '<meta http-equiv="Refresh" content="0; url='.$link.'">';
  
  
	} 
	else {
		$msg = "<div class='alert alert-danger'>
					<span class='glyphicon glyphicon-info-sign'></span> &nbsp; Invalid Username or Password !
				</div>";
	}
	$con->close();
}
?>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <body class="bg-image">

<div class="top-content">
	<div class="inner-bg">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<h1>NISHANG SYSTEMS</h1>
					<div class="description">
						<p>
							For authorized users only
						</p>
					</div>
				</div>
				
			</div>

			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							
							<p>Enter your username and password</p>
						</div>
						<!--<div class="form-top-right">
							<i class="fa fa-key"></i>
						</div>-->
						<div class="form-bottom">
                        
                        
                        <?php echo $msg; ?>
							<form role="form"  method="POST" class="login-form" action="">
								<div class="form-group">
									<label class="sr-only" for="form-username">Username</label>
									<input type="text" name="usr_email" autocomplete="off" placeholder="Enter Username...." class="form-username form-control" id="form-username" required>
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label>
									<input type="password" " placeholder="Enter Password....." class="form-password form-control" id="form-password" name="pwd" required>
								</div>
								<button type="submit" class="btn btn-success" name="doLogin">Login</button>
							</form>
							
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
		
	</div>
	
</div>
</body>

</html>
    
     