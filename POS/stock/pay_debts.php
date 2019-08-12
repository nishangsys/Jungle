<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" stock="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />

</head>

<body>
<?php
include '../includes/dbc.php';
$_POST = array_map("ucwords", $_POST);
	 $_GET['adding_creditors'];
	 $a=$con->query("SELECT * FROM creditors where id='".$_GET['adding_debtors']."'") or die(mysqli_error($con));
	 while($b=$a->fetch_assoc()){
		$name=$b['name'];
	 }
	////////////////insert item

if(isset($_POST['OK'])){
	$amount=$_POST['amount'];
	$tel=$_POST['tel'];
	@session_start();
	$user=$_SESSION['user_name'];
	$discribe=$_POST['name'];
	$old=$_POST['old'];
	echo $total=$old-$amount;
	$day=$_POST['day'];
$month=$_POST['month'];
$year=$_POST['year'];
$date=$day."-".$month."-".$year;
	$price=$_POST['price'];

	

	
if($total<0){
	echo  "<script>alert('ERROR. Negative balance')</script>";

}else{
 $do=$con->query("INSERT INTO daily set purpose='payment of $discribe debts ',reason='$discribe',day='$day',month='$month',year='$year',paidto='$user',exp='$amount',staffname='".$_GET['branch']."',date='$date'") or die(mysqli_error($con));;
 
 $do12=$con->query("UPDATE creditors set owed='$total' where id='".$_GET['adding_debtors']."'  ") or die(mysqli_error($con));;
 
 
echo  "<script>alert('Success.Thank You')</script>";
}
}

///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM daily where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  

?>

 
              <div class="row">
                     
  
		                                <div class="col-md-8">
                                        <?php
											   echo $message;

										?>
         
  <form class="form-horizontal" action="" method="post" >
  
    
  
     
 

    <div class="form-group">
    
      <label class="control-label col-sm-2" for="email">Debtors Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Nmae" name="name" required="required" value="<?php echo $name; ?>" readonly="readonly" style="border:2px solid#f00;">
      </div>
    </div>
 
 
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Old Debts:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Amount" value="<?php echo $_GET['debt']; ?>" name="old" readonly="readonly" style="border:2px solid#f00;" onBlur="doCalc(this.form)">
      </div>
    </div>
    
    
    
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Amount Paid:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Amount"  name="amount" required="required" onBlur="doCalc(this.form)">
      </div>
    </div>
    
    
 
    
    
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Day:</label>
      <div class="col-sm-10">
        <select class="form-control" id="sel1" name="day" onBlur="doCalc(this.form)" required >
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
        <button type="submit" class="btn btn-success" name="OK">SAVE</button>
      </div>
    </div>
  </form>
                                
               