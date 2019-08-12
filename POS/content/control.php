<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
    
    
    <link rel="stylesheet" media="screen" href="../css/left-fluid.css">
    
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    
      
 <link href="../assets/css/jquery-ui.css" rel="stylesheet" />
<link rel="stylesheet" href="../assets/plugins/uniform/themes/default/css/uniform.default.css" />
<link rel="stylesheet" href="../assets/plugins/inputlimiter/jquery.inputlimiter.1.0.css" />
<link rel="stylesheet" href="../assets/plugins/chosen/chosen.min.css" />
    
   
       
       
  <div class="col-sm-12">
  
  
  
            <form class="form-horizontal" action="" method="post">



          <div class="well">
      <div class="form-group">
<label class="control-label col-lg-4">Select with search</label>
  

<div class="col-lg-8">
<select data-placeholder="Choose a staff Member" class="form-control chzn-select" tabindex="2" name="nam">

        
 <?php
 
		  $y = $dbconn->query("SELECT * from  staffs order by name ") or die(mysqli_error($dbconn));
	  
while($x = $y->fetch_assoc()) {

	?>
   
<option value="<?php echo $x['id']; ?>"><?php echo $x['name']; ?></option>
<?php } ?>
</select>
 <button class="btn btn-success" type="submit" name="ok">Search</button>
 
       
</div>
</div>

  
</form>


<?php //close if statement ?>






<?php ////////////////////// if submit is set the get that staffs id and use it to sell ;?>


<?php
if(isset($_POST['ok'])){
	$id=$_POST['nam'];
//// get staff id as $id from staffs>staffs tbl and use it to search staffs parameters
  $y = $dbconn->query("SELECT * from  staffs WHERE id='$id' limit 1 ") or die(mysqli_error($dbconn));
while($x = $y->fetch_assoc()) {
	$nam=$x['name'];
	$dept=$x['dept'];
}

?>
<a href="?roll=<?php echo $id; ?>&name=Staff (<?php echo $nam; ?>)" style="color:#fff; font-weight:bold"> 
<div class="col-sm-4" style="background:#f00; padding:10px 10px; text-align:CENTER; border:1px solid#fff">  SELL DRUGS TO <?php echo $nam; ?> </div></a>
<?php } 
////////////close search command

 
 ?>
   

<iframe src="search/index.php?roll=<?php  echo $_GET['roll']; ?>" style="width:100%; height:700px; border:none;" ></iframe>
     
      </div>
      </div>
         </div>   
<div class="col-sm-3 sidenav">
      <div class="well">
         
         <?php
	   include '../includes/bills.php';
	   
	   ?>
      </div>
      <div class="well">
        
      </div>
    </div>
  </div>
</div>

        
        
         
        
        
        
        
       <?php
	   include 'bills.php';
	   
	   ?>
       
       <div style="background:#033; width:100%; position:fixed; bottom:5PX">
  <p style="color:#CCC; text-align:center">&copy; <?php echo date('Y'); ?> Copy Rights Reserved by Programmer</p>
</div>


  </body>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
       
                         
    <!--END FOOTER -->
     <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->
        <!-- PAGE LEVEL SCRIPTS -->
    <script src="../assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="../assets/plugins/dataTables/dataTables.bootstrap.js"></script>
     <script>
         $(document).ready(function () {
             $('#dataTables-example').dataTable();
         });
    </script>
                            </div>
                        </div>
     
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

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
        
     <!--END PAGE LEVEL SCRIPT-->


