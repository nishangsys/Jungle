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

  $dfG=$con->query("INSERT INTO supplies set date='$dates',items='$desc',amount='$amount',bys='$user',yn='$discribe' ") or die(mysqli_error($con));
 
 
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
											   echo $message;

										?>
         
  <form class="form-horizontal" action="" method="post" >
  
    
  
     
 

    <div class="form-group">
    
      <label class="control-label col-sm-2" for="email">Creditor's Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Nmae" name="name" required="required" value="<?php echo $name; ?>" readonly="readonly" style="border:2px solid#f00;">
      </div>
    </div>
 
 
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Our Old Debts:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Amount" value="<?php echo $_GET['debt']; ?>" name="old" readonly="readonly" style="border:2px solid#f00;" onBlur="doCalc(this.form)">
      </div>
    </div>
    
    
    
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Our New Debt:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Amount"  name="amount" required="required" onBlur="doCalc(this.form)">
      </div>
    </div>
    
     
     
     
    
    <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Date Supplied:</label>
      <div class="col-sm-10">
      <div class="input-group input-append date" id="dp3" data-date="<?php echo date('d-m-Y') ?>" style="position:relative"
                                 data-date-format="dd-mm-yyyy">
                <span class="input-group-addon add-on"><i class="icon-calendar" style="position:relative; right:0px"></i></span>                <input class="form-control" type="text" name="date" value="<?php echo date('d-m-Y') ?>" readonly />
                                
                         </div>
    </div>
    
    
    
     <div class="form-group">
       
       <label class="control-label col-sm-2" for="email">Discription:</label>
      <div class="col-sm-10">
       <div class="row">
                        <div class="col-lg-12">
                            <div class="box">
                               
                                <div id="div-3" class="body tab-content">
                                    <div class="tab-pane fade active in" id="markdown">
                                        <div class="wmd-panel">
                                            <div id="wmd-button-bar" class="btn-toolbar"></div>
                                            <textarea class="form-control wmd-input" rows="10" name="desc" id="wmd-input">

                        </textarea>
                                            
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="preview">
                                        <div id="wmd-preview" class="wmd-panel wmd-preview"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



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
        <button type="submit" class="btn btn-success" name="OK">SAVE</button>
      </div>
    </div>
  </form>
                                
                   </div>
                   
                   
                    <?php
	  $do12=$con->query("SELECT * from creditors") or die(mysqli_error($con));
	  $i=1;
      
      
      ?>     
        <table class="table table-bordered" style="background:#FFF">
    <thead>
      <tr>
        <th>S/N</th>
        <th>Creditors Name</th>
                <th>Amount Owed</th>

        
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
        