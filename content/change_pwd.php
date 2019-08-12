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

	  
$user_ip = $_SERVER['REMOTE_ADDR'];
$pass1=$_POST['pwd'];
$pass2=$_POST['pwd2'];
if($pass1!=$pass2){
	echo "<script>alert('ERROR. Paaswords are not Equal')</script>";
}
else {

// stores sha1 of password
$sha1pass = PwdHash($data['pwd']);


// Generates activation code simple 4 digit number
$activ_code = rand(1000,9999);

$usr_email = $data['usr_email'];
$user_name = $data['user_name'];
$level=$_POST['level'];

/************ USER EMAIL CHECK ************************************
This code does a second check on the server side if the email already exists. It 
queries the database and if it has any existing email it throws user email already exists
*******************************************************************/


/***************************************************************************/

if(empty($err)) {

 $sql_insert =$con->query( "UPDATE users set  pwd='$sha1pass',address='$pass1' where id='".$_GET['xxc']."'") or die(mysqli_error($con));

$message= "<div class='alert alert-success'>PASSWORD SUCCESSFULLY CHANGED</div>";

	 } 
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
CHANGE PASSWORD      </div>
<?php
	$a = $con->query("SELECT * from users where id='".$_GET['xxc']."'") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			?>
     
      <form action="" method="post" name="regForm" class="form-horizontal" id="regForm" style="margin-top:-30px">
                <div class="form-group">

         
       
         <form class="form-horizontal">
         
  
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Username:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text" placeholder="Username" value="<?php echo $rows['user_name']; ?>" name="user_name" readonly="readonly">
      </div>
    </div>
 
 
    
   
       
       
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">New Password:</label>
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
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary" name="submit">CHANGE PASSWORD</button>
      </div>
   
      </form>
     
	<?php } ?>

</div>
</div>

