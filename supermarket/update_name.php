<?php

session_start();

if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}


	else {
?>
    

<!DOCTYPE html>
<html>
	
<head>
	<title>New Client</title>
		<meta charset="utf-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
        <link href="style.css" rel="stylesheet" type="text/css" />
		<!--//webfonts-->
</head>




<body>


    <?php 
	$get=mysql_query("SELECT * from client where clien_id='2'") or die(mysql_error());
	while($rows=mysql_fetch_assoc($get)){
	
	 ?>
  
     <form method="post" action="" >
    
    <table>
              <tr><td>Business Name</td><td><input type="text" name="name" value="<?php echo $rows['name'];  ?>" style="width:500px"  /></td></tr>
              
              <tr><td>Business Address/ Residence</td><td><input type="text" name="adress" value="<?php echo $rows['address'];  ?>" style="width:500px" /></td></tr>
              
               <tr><td>Business Contacts</td><td><input type="text" name="tel" value="<?php echo $rows['as1'];  ?>" style="width:500px"  /></td></tr>
               
               
               <tr><td>Email </td><td><input type="text" name="town" value="<?php echo $rows['as2'];  ?>"  style="width:500px" /></td></tr>
               
               <tr><td></td><td><button type="submit" name="update" class="myButton"   style="color:#000; font-weight:bold" >UPDATE & SAVE</button></td></tr>
               
     </table>
    </form><br /><br />
    <?php } ?>
    <?PHP
   if(isset($_POST['update'])){
	   $name=$_POST['name'];
	   $add=$_POST['adress'];
	   $tele=$_POST['tel'];
	   $ville=$_POST['town'];
	   $done="UPDATE client set name='$name',address='$add', as1='$tele',as2='$ville' WHERE clien_id='2'";
	   $run=mysql_query($done) or die(mysql_error());
	   echo "<script>alert('You have Successfully Update your Business Information. Thank You')</script>";
	    echo '<meta http-equiv="Refresh" content="1; url=?update_name&link=Business Name">';
	   
   }
   
   ?>
    </div>
   
    
    <!--675985573/Eliane-->
   
    </div>
	
    
   
			
		 		
</body>
</html>
<?php }  ?>