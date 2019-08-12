<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

</head>

<body>
<?PHP
	
?>
<?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
	
		$day=$_POST['day'];
$month=$_POST['month'];
$year=$_POST['year'];
$item=$_POST['item'];
$tel=$_POST['tel'];
$email=$_POST['email'];
$qty=$_POST['qty'];
if($day<10){
	$dayy="0".$day;
}
else {
	$dayy=$day;
}

 $date=$dayy."-".$month."-".$year;
$name=$_POST['name'];
$message=$_POST['message'];

 $do=$con->query("INSERT INTO commands SET name='$name',email='$email',tel='$tel', date='$date',month='$month',year='$year',message='$message'") or die(mysqli_error($con));;
 
 
echo  "<script>alert('Success.Thank You')</script>";

}

?>

 
              <div class="row">
                     
  
		                                <div class="col-md-8">
                                        <?php
											   echo $message;

										?>
         
  <form class="form-horizontal" action="" method="post">
  
    
  <input type="hidden" class="form-control" id="email"  name="id" value="<?php echo $_GET['chose']; ?>">
  <input type="hidden" class="form-control" id="email"  name="price" value="<?php echo $_GET['price']; ?>">
  <input type="hidden" class="form-control" id="email"  name="branch" value="<?php echo $_GET['branch']; ?>">
  
    <div class="form-group">
    
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Nmae" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Tel:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pwd" placeholder="Telephone" name="tel">
      </div>
    </div>
    
       
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Day:</label>
      <div class="col-sm-10">
        <select class="form-control" id="sel1" name="day" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
    <?php 
					for($day=01;$day<=31;$day++)
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
					for($day=2017;$day<=2020;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
  </select>
      </div>
    </div>
    
    
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Event Description:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="pwd" placeholder="cake message" name="message" required="required">
      </div>
    </div>
    
    
   
   
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="OK">Submit</button>
      </div>
    </div>
  </form>
                                
                                      
         
</div>

         


 </div>