<a href="generate.php" class="btn btn-large btn-danger"><i class="glyphicon glyphicon-plus"></i> &nbsp; Add Records</a>
    
    
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['saves'])){
$shape=$_POST['name'];
$amt=$_POST['owed'];
$day=$_POST['day'];
$month=$_POST['month'];
$year=$_POST['year'];
$date=$day."-".$month."-".$year;
/////check if you have genearted befor
$check	=$con->query("SELECT *  FROM daily  where staffname='$shape' and owed>0  ") or die(mysqli_error($con)); // Select 

if(mysqli_num_rows($check)>0){
	echo "<script>alert('Sorry Go and Update debts Instead')</script>";
}

/////else run qury
else {
$do=$con->query("INSERT INTO daily SET staffname='$shape',owed='$amt',date='$date',month='$month',year='$year'  ") or die(mysqli_error($con));

$do12=$con->query("INSERT INTO debtors SET name='$shape',amt='$amt',date='$date'") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";

	  	echo '<meta http-equiv="Refresh" content="0; url= ?debtors&link=Our%20Debtors">';
}
}

///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM names where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";
	   
	  	echo '<meta http-equiv="Refresh" content="0; url= ?debtors&link=Our%20Debtors">';

  }
  
  
	 

  // now update
  
  
?>
 
       
                        <div class="panel-body">
                           <form method="POST"  class="form-horizontal" action="" name="logForm" id="logForm" >
    <div class="form-group">
      <label class="control-label col-sm-2"  for="usr_email">Debtors Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Debtors Name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Amount:</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="pwd" placeholder="Amount Owed" name="owed">
      </div>
    </div>
    
    
    
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
    
    
    
    
 
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="saves">Save</button>
      </div>
    </div>
  </form>
  
  </div>
 