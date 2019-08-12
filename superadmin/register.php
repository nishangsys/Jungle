<?php
session_start();

if(isset($_POST['btn-signup'])) {
	
	$uname = ucwords($_POST['username']);
	$email = strip_tags($_POST['email']);
	$upass = strip_tags($_POST['password']);
	$upass2 = strip_tags($_POST['password2']);
	$level = strip_tags($_POST['level']);
	$uname = $con->real_escape_string($uname);
	$email = $con->real_escape_string($email);
	$upass = $con->real_escape_string($upass);
	$level= $con->real_escape_string($level );
	$date=date('Y-m-d');
	$ip=$_SERVER['REMOTE_ADDR'];
	
$name=gethostname();

//get OS
$os= php_uname();




	if($upass!=$upass2){
		$msg = "<div class='alert alert-danger'>
						<span class='glyphicon glyphicon-info-sign'></span> &nbsp; ERROR.PASSWORD DOES NOT MATCH !
					</div>";
	}
	elseif (strlen($upass)<5){
		$msg = "<div class='alert alert-danger'>
						<span class='glyphicon glyphicon-info-sign'></span> &nbsp; ERROR.Your Password must be at least 7 characters long!
					</div>";
	}
	
	else {
	
	$hashed_password = password_hash($upass, PASSWORD_DEFAULT); // this function works only in PHP 5.5 or latest version
	
	$check_email = $con->query("SELECT email FROM tbl_users WHERE email='$email'");
	$count=$check_email->num_rows;
	
	if ($count==0) {
		
		$query = $con->query("INSERT INTO users set full_name='$uname',user_name='$email',user_email='$email',pwd='$hashed_password',user_level='$level',tel='$tel',banned='$level',ctime='$upass',date='$date',users_ip='$ip',md5_id='$os',activation_code='$name',address='$mttt' ") or die(mysqli_error($con));

			$msg = "<div class='alert alert-success'>
						<span class='glyphicon glyphicon-info-sign'></span> &nbsp; successfully registered !
					</div>";
					echo "<script>alert('User Successfully Created')</script>";		
					
	 echo '<meta http-equiv="Refresh" content="0; url=?create_user&link=Create Users">';
		
	}
	 else {
		
		
		$msg = "<div class='alert alert-danger'>
					<span class='glyphicon glyphicon-info-sign'></span> &nbsp; sorry email already taken !
				</div>";
			
	}
		
	$con->close();
}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BUIB-NISHANG </title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen"> 
<link rel="stylesheet" href="style.css" type="text/css" />
<style>
body{
	background:url(a.JPG) no-repeat center;
	background-size:cover;
}
</style>
</head>
<body>






























   <div class="alert alert-info" style="text-align:center;">








  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-1 sidenav">
    
     <div class="well" style="background:#fff">
    
        
        
        <p style="text-align:left; line-height:1.9; color:#000; padding:5px 15px">
          
        
          
          </strong></p>
          </div>
      
    </div>
    <div class="col-sm-10 text-left"> 

        
        
       <form class="form-signin" method="post" id="register-form" style=" width:100%;  background:url(img/BGG.jpg) no-repeat center; " >
       
        <p style="text-align:left; line-height:1.6; color:#000; padding:5px 15px; background:#FFF">
          
          

            1. Password Must be at least 7 Characters Long and your email address must be valid<br>
       
          
          
          </strong></p>

     
        <?php
		if (isset($msg)) {
			echo $msg;
		}
		?>
          
        <div class="form-group">
        <input type="text" class="form-control" placeholder="Full Names" name="username" required autocomplete="off"  />
        </div>
        
        <div class="form-group">
        <input type="password" class="form-control" placeholder="Password" name="password" required  />
        </div>
        
         <div class="form-group">
        <input type="password" class="form-control" placeholder="Confirm Password" name="password2" required  />
        </div>    
       
        
        
        
         <div class="form-group">
        <input type="text" class="form-control" placeholder="User Name" name="email" required autocomplete="off"  />
        <span id="check-e"></span>
        </div>
        
         <div class="form-group">
       <select required class="form-control" id="sel1" name="level">
        <?php
							
								$result = $con->query("SELECT * FROM sectors") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['area']; ?>"  ><?php echo $bu['name']; ?> </option>
    <?php } ?> 
        
      </select>
        </div>
        
        
        <div class="form-group"></div>
        
     	<hr />
        
        <div class="form-group">
            <button type="submit" class="btn btn-success" name="btn-signup">
    		<span class="glyphicon glyphicon-log-in"></span> &nbsp; Create Account
			</button> 
           
        </div> 
      
      </form>

    </div>
    <div class="col-sm-1 sidenav">
     
</div>
</div>
</div>
</div>






<table class="table table-bordered">
              
              <?php 
			$year=date('Y');
			  $d=$con->query("SELECT * from users ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
     <th>User Name</th>
        <th>Date</th> 
        <th>Service</th>
         <th>branch</th>
  
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['full_name']; ?></td>
                                        
                                            <td><?php  echo $bu['user_name']; ?></td>
                                                     <td><?php  echo $bu['date']; ?></td>
                                                             <td><?php  echo $bu['country']; ?></td>
                                                        <td>  <a href="?create_user&link=Create Users&delete=<?php echo $bu['id'];  ?>"><button type="submit" class="btn btn-danger" name="submit" onclick="return confirm('Are you sure')">Delete</button></a>|  <a href="?change_pwd&link=Change Password&xxc=<?php echo $bu['id'];  ?>"><button type="submit" class="btn btn-success" name="submit" onclick="return confirm('Are you sure')">Change Password</button></a></td>
                                     
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
 
<?php

		  if(isset($_GET['delete'])){
	echo $delete=$_GET['delete'];
 
	 $fj=$con->query("DELETE FROM users where id='$delete'  ") or die(mysqli_error($con));
	 echo "<script>alert('Actiond successfully ')</script>";
	 echo '<meta http-equiv="Refresh" content="0; url=?create_user&link=Create Users">';
	 
		  }
; ?>