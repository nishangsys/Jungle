    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />

      
<?php
	include '../includes/dbc.php';
$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item
$a=$con->query("SELECT * FROM daily where id='".$_GET['xxx']."'") or die(mysqli_error($con));
	 while($b=$a->fetch_assoc()){
	 
	 $code=$b['cust_id'];
	 }
	 
	 	////////////////insert item
$a=$con->query("SELECT * FROM customers where id='".$code."'") or die(mysqli_error($con));
	 while($b=$a->fetch_assoc()){
	 $names=$b['name'];
	 }
	 	$rusn=$con->query("SELECT  SUM(owed) as owed from daily where cust_id='".$code."' ") or die(mysqli_error($con));
while($rows=$rusn->fetch_assoc()){
	   $owed=($rows['owed']);
		 
	 
	
	 
}
if(isset($_POST['OK'])){
	$amount=$_POST['amount'];
	$tel=$_POST['tel'];
	@session_start();
	$user=$_SESSION['user_name'];
	$yname=$_POST['name'];
	$old=$_POST['old'];
	$bal=$old-$amount;
	$day=date('d-m-Y');
$month=date('m');
$y=date('Y');
	$codes=$code;
	
		if($old<0){
			echo "<script>alert('Sorry Negative balance')</script>";
		}
		
		else {
	
	
	 //////update service_offered
	    $dfkl=$con->query("UPDATE service_offered set status='2' where code='$codes' ") or die(mysqli_error($con));

 
echo  "<script>alert('Success.Thank You')</script>";

	     echo '<meta http-equiv="Refresh" content="0; url=thank.php">';
}


}
?>

 
              <div class="row">
                     
  
		                                <div class="col-md-8">
                                        <?php
											   echo $message;

										?>
         
  <form class="form-horizontal" action="" style="margin-top:40px" method="post" >
  
    
  
     
 

    <div class="form-group">
    
      <label class="control-label col-sm-2" for="email">Customers's Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Nmae" name="name" required="required" value="<?php echo $names; ?>" readonly="readonly" style="border:2px solid#f00;">
      </div>
    </div>
 
 
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Amount Owed:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Amount" value="<?php echo $_GET['owed']; ?>" name="old" readonly="readonly" style="border:2px solid#f00;" onBlur="doCalc(this.form)">
      </div>
    </div>
    
    
   
    
    
 
    
    
    <!---
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Day:</label>
      <div class="col-sm-10">
        <select class="form-control" id="sel1" name="day" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
    <?php 
					for($day=1;$day<=31;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
  </select>
      </div>
    </div>
    
    
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Month:</label>
      <div class="col-sm-10">
        <select class="form-control" id="sel1" name="month" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
      <option value="01">January</option>
              <option value="02">Febuary</option>
              <option value="03">March</option>
              <option value="04">April</option>
              <option value="05">May</option>
              <option value="06">June</option>
              <option value="07">July</option>
              <option value="08">August</option>
              <option value="09">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
				
  </select>
      </div>
    </div>
    
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Year:</label>
      <div class="col-sm-10">
        <select class="form-control" id="sel1" name="year" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
    <?php 
					for($day=2016;$day<=2020;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
  </select>
      </div>
    </div>
    
    
    ---->
    
    
    
  
    
   
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-danger" name="OK" onclick="return confirm('Are you sure <?php echo $names; ?> job is NOT completed')">JOB HAVE NOT BEEN COMPLETED BY THE DRY CLEANERS</button>
      </div>
    </div>
  </form>
                                
                   </div>
                   
                   