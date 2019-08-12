    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    
    
   <link rel="stylesheet" href="../assets/plugins/datepicker/css/datepicker.css" />
<link rel="stylesheet" href="../assets/plugins/timepicker/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="../assets/plugins/switch/static/stylesheets/bootstrap-switch.css" />


  

      
<?php
	include '../includes/dbc.php';
$_POST = array_map("ucwords", $_POST);
@session_start();

 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['full_name'];
 $level=$userRow['banned'];
 
 }
	
	////////////////insert item
$a=$con->query("SELECT * FROM creditors where id='".$_GET['adding_creditors']."'") or die(mysqli_error($con));
	 while($b=$a->fetch_assoc()){
	 $name=$b['name'];
	 }
if(isset($_POST['OK'])){
	$amount=$_POST['amount'];
	$tel=$_POST['tel'];
	@session_start();
	$user=$_SESSION['user_name'];
	$discribe=$_POST['name'];
	$old=$_POST['old'];
	$desc=nl2br($_POST['desc']);
	$total=$old+$amount;
	$dates=$_POST['date'];
$month=$_POST['month'];
$year=$_POST['year'];
$date=$day."-".$month."-".$year;
	$price=$_POST['price'];

  $dfG=$con->query("INSERT INTO supplies set date='$dates',items='$desc',amount='$amount',bys='$user'") or die(mysqli_error($con));
 
 
 $do12=$con->query("UPDATE creditors set owed='$total' where id='".$_GET['adding_creditors']."' and branch='".$_GET['branch']."' ") or die(mysqli_error($con));;

 
echo  "<script>alert('Success.Thank You')</script>";
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
					
					$query =$con->query("SELECT * FROM creditors where id='".$_GET['yid']."' ") or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 echo $name=$userRow['name'];
 
 }
	  $do12=$con->query("SELECT * from supplies where yn='$name'") or die(mysqli_error($con));
	  $i=1;
      
      
      ?>     
        <table class="table table-bordered" style="background:#FFF">
    <thead>
      <tr>
        <th>S/N</th>
        <th>Date</th>
                <th>Amount Owed</th>
                  <th>Items </th>


        
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
        <td><?php echo $df['date']; ?></td>
                <td><?php echo number_format($df['amount']); ?></td>
                <td><?php echo $df['items']; ?></td>


      
       
      </tr>
      
    <?php } ?>
    </tbody>
    
  </table>  
  
  
   <!-- PAGE LEVEL SCRIPTS -->
   
    <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->


      <!-- PAGE LEVEL SCRIPT-->
 <script src="../assets/js/jquery-ui.min.js"></script>
 <script src="../assets/plugins/uniform/jquery.uniform.min.js"></script>
<script src="../assets/plugins/inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
<script src="../assets/plugins/chosen/chosen.jquery.min.js"></script>
<script src="../assets/plugins/colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="../assets/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<script src="../assets/plugins/validVal/js/jquery.validVal.min.js"></script>
<script src="../assets/plugins/daterangepicker/daterangepicker.js"></script>
<script src="../assets/plugins/daterangepicker/moment.min.js"></script>
<script src="../assets/plugins/datepicker/js/bootstrap-datepicker.js"></script>
<script src="../assets/plugins/timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="../assets/plugins/switch/static/js/bootstrap-switch.min.js"></script>
<script src="../assets/plugins/jquery.dualListbox-1.3/jquery.dualListBox-1.3.min.js"></script>
<script src="../assets/plugins/autosize/jquery.autosize.min.js"></script>
<script src="../assets/plugins/jasny/js/bootstrap-inputmask.js"></script>
       <script src="../assets/js/formsInit.js"></script>
        <script>
            $(function () { formInit(); });
        </script>
        