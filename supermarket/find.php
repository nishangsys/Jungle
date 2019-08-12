    
   <?php
   if(isset($_POST['ok'])){
	   include '../includes/dbc.php';
	
	   $name=$_POST['name'];
	   $b=$con->query("SELECT * FROM names where name='$name' LIMIT 1") or die(mysqli_error($con));
	   while($fg=$b->fetch_assoc()){
		   $yname=$fg['name'];
		   $tel=$fg['sector'];
		    $adress=$fg['dept'];
		   $date=date('d-m-Y');
		   $year=date('Y');
		   
	   }
	   $count=mysqli_num_rows($b);
	   if(empty($yname) or $count<1){
		 echo '<meta http-equiv="Refresh" content="0; url=?new_client='.$name.'">';
	   }
	   else{
		   $mk=$con->query("INSERT INTO customers set stu_name='$yname',address='$adress',reg_date='$date',tel='$tel',year='$year' ") or die(mysqli_error($con));
		     echo '<meta http-equiv="Refresh" content="0; url=?new_client='.$name.'">';
	   
	  }
   }
   
   ?>
			