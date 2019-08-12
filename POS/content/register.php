 <link rel="stylesheet" media="screen" href="../css/left-fluid.css">

  <link rel="stylesheet" href="../js/boostrap.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>


<?php 


	@session_start();
	


$err = array();
					 
if(isset($_POST['submit'] ) )
{ 
/******************* Filtering/Sanitizing Input *****************************
This code filters harmful script code and escapes data of all POST data
from the user submitted form.
*****************************************************************/
foreach($_POST as $key => $value) {
	$data[$key] = filter($value);
}
$branch=$_POST['branch'];

/************************ SERVER SIDE VALIDATION **************************************/
/********** This validation is useful if javascript is disabled in the browswer ***/

if(empty($data['full_name']) || strlen($data['full_name']) < 4)
{
$err[] = "ERROR - Invalid name. Please enter atleast 3 or more characters for your name";
//header("Location: register.php?msg=$err");
//exit();
}

// Validate User Name
if (!isUserID($data['user_name'])) {
$err[] = "ERROR - Invalid user name. It can contain alphabet, number and underscore.";
//header("Location: register.php?msg=$err");
//exit();
}


// Check User Passwords
if (!checkPwd($data['pwd'],$data['pwd2'])) {
$err[] = "ERROR - Invalid Password or mismatch. Enter 5 chars or more";
//header("Location: register.php?msg=$err");
//exit();
}
	  
$user_ip = $_SERVER['REMOTE_ADDR'];

// stores sha1 of password
$sha1pass = PwdHash($data['pwd']);

// Automatically collects the hostname or domain  like example.com) 
$host  = $_SERVER['HTTP_HOST'];
$host_upper = strtoupper($host);
$path   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');

// Generates activation code simple 4 digit number
$activ_code = rand(1000,9999);

$usr_email = $data['usr_email'];
$user_name = $data['user_name'];
$level=$_POST['level'];

/************ USER EMAIL CHECK ************************************
This code does a second check on the server side if the email already exists. It 
queries the database and if it has any existing email it throws user email already exists
*******************************************************************/

$rs_duplicate = mysql_query("select count(*) as total from users where  user_name='$user_name'") or die(mysql_error());
list($total) = mysql_fetch_row($rs_duplicate);

if ($total > 0)
{
$err[] = "ERROR - The username/email already exists. Please try again with different username and email.";
//header("Location: register.php?msg=$err");
//exit();
}
/***************************************************************************/

if(empty($err)) {

 $sql_insert = "INSERT into `users`
  			(`full_name`,`user_email`,`pwd`,`address`,`tel`,`fax`,`website`,`date`,`users_ip`,`approved`,`activation_code`,`banned`,`country`,`user_name`
			)
		    VALUES
		    ('$data[full_name]','$user_name@mysoftware.com','$sha1pass','$data[pwd]','$data[tel]','$data[fax]','$data[web]'
			,now(),'$user_ip','2','$activ_code','$level','$data[branch]','$user_name'
			)
			";
			
mysql_query($sql_insert,$link) or die("Insertion Failed:" . mysql_error());
$user_id = mysql_insert_id($link);  
$md5_id = md5($user_id);
mysql_query("update users set md5_id='$md5_id' where id='$user_id'");
$message= "<div class='alert alert-success'>".$data['full_name']." Successfully Registered. Thank You</div>";

	 } 
 }					 

?>
<html>
<head>
<title>PHP Login :: Free Registration/Signup Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
<script language="JavaScript" type="text/javascript" src="../js/jquery.validate.js"></script>

  <script>
  $(document).ready(function(){
    $.validator.addMethod("username", function(value, element) {
        return this.optional(element) || /^[a-z0-9\_]+$/i.test(value);
    }, "Username must contain only letters, numbers, or underscore.");

    $("#regForm").validate();
  });
  </script>


</head>

     
	 <?php	
	 if(!empty($err))  {
	   echo "<div class=\"alert alert-warning\">";
	  foreach ($err as $e) {
	    echo "* $e <br>";
	    }
	  echo "</div>";	
	   }
	   echo $message
	 ?> 
     <BR>
      <div class="col-sm-12" style="background:#6C6; color:#FFF; text-align:center; padding:10PX 0PX">
      CREATING NEW USER ACCOUNT
      </div>
     
      <form action="" method="post" name="regForm" class="form-horizontal" id="regForm" style="margin-top:-30px">
                <div class="form-group">

         
       
         <form class="form-horizontal">
         
         
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Full Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text" placeholder="Full Name" name="full_name" required>
      </div>
    </div>
      
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Username:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text" placeholder="Username" name="user_name" required>
      </div>
    </div>
 
 
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Function:</label>
      <div class="col-sm-10">
       <select required class="form-control" id="sel1" name="level">
        <option value="">--------</option>
                 <?php
	$ab = $con->query("SELECT * from sector order by name") or die(mysqli_error($con));
			
		while($c = $ab->fetch_assoc()) {
			?>
 <option value="<?php echo $c['area']; ?>"><?php echo $c['name']; ?></option>
              <?php } ?>

        
      </select>
      </div>
    </div>
    
   
       
       
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
      </div>
    </div>
    
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Confirm Password:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="pwd" name="pwd2" placeholder="Enter password again" required>
      </div>
    </div>
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Branch:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pwd" name="branch" placeholder="Enter password again" readonly="readonly" value="<?php echo $_GET['br']; ?>">
      </div>
    </div>
      <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary" name="submit">Regsiter Staff</button>
      </div>
   
      </form>
     
	

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