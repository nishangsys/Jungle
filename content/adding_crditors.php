<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	
	////////////////insert item

if(isset($_POST['OK'])){
	$amount=$_POST['amount'];
	$tel=$_POST['tel'];
	@session_start();
	$user=$_SESSION['user_name'];
	$discribe=$_POST['name'];
	$day=$_POST['day'];
$month=$_POST['month'];
$year=$_POST['year'];
$date=$day."-".$month."-".$year;
	$price=$_POST['price'];

	
	
	$cake=$namse;
	$check=$con->query("SELECT * FROM creditors where name='$discribe'  and branch='".$_GET['branch']."' and owed>0 ") or die(mysqli_error($con));
	if(mysqli_num_rows($check)>0){
		echo "<script>alert('ERROR. ".$discribe." is already a creditor go and update the amount')</script>";
	}
	else{

 $do=$con->query("INSERT INTO daily set purpose='$discribe',reason='$discribe',day='$day',month='$month',year='$year',paidto='$user',exp='$amount',staffname='".$_GET['branch']."',date='$date' ") or die(mysqli_error($con));;
 
 $do12=$con->query("INSERT INTO creditors set name='$discribe',day='$day',month='$month',year='$year',owed='$amount',branch='".$_GET['branch']."',date='$date',tel='$tel'") or die(mysqli_error($con));;
 
 
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
         
  <form class="form-horizontal" action="" method="post">
  
    
  
     
 

    <div class="form-group">
    
      <label class="control-label col-sm-2" for="email">Creditor's Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Nmae" name="name" required="required">
      </div>
    </div>
 
 
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Telephone:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Telephone" name="tel" required>
      </div>
    </div>
 
 
 
    
    
    
    
    
    
    
  
    
   
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="OK">SAVE</button>
      </div>
    </div>
  </form>
  <?php
  $do12=$con->query("SELECT * FROM creditors ") or die(mysqli_error($con));
  ?>
   <table class="table table-bordered" style="background:#FFF">
    <thead>
      <tr>
        <th>S/N</th>
        <th>Crditor's Name</th>
                <th>Amount We Owed</th>

        
      </tr>
    </thead>
    
    
    <tbody>
    <?php while($df=$do12->fetch_assoc()){ ?>
      <tr>
                 <?php
		if($i%2==0)
 {
     echo '<tr bgcolor="white">';
 }
 else
 {
    echo '<tr bgcolor="AliceBlue">';
 }
		
		?>
        <td><?php  echo $i++; ?></td>
        <td><?php echo $df['name']; ?></td>
                <td><?php echo $df['owed']; ?></td>

      
       
      </tr>
      
    <?php } ?>
    </tbody>
    
  </table>  
  