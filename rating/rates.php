<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="../assets/css/layout2.css" rel="stylesheet" />
       <link href="../assets/plugins/flot/examples/examples.css" rel="stylesheet" />
       <link rel="stylesheet" href="../assets/plugins/timeline/timeline.css" />
    
    <?php
	$_POST = array_map("ucwords", $_POST);
	include '../includes/dbc.php';
	
	////////////////insert item

if(isset($_POST['saves'])){
echo $rate=$_POST['name'];
$com=$_POST['com'];
$day=date('d');
$month=date('m');
$year=date('Y');
$date=date('d-m-Y');
/////check if you have genearted befor

$do=$con->query("INSERT INTO rating SET star='$rate',com='$com',date='$date',month='$month',year='$year'  ") or die(mysqli_error($con));
$msg = "<div class='alert alert-success'>
					<span class='glyphicon glyphicon-info-sign'></span> &nbsp; Thank you very much
				</div>";
	  	echo '<meta http-equiv="Refresh" content="2; url= close.php">';
}

  
?>
 
       
                        <div class="panel-body">
                        <?php echo $msg; ?>
                           <form method="POST"  class="form-horizontal" action="?star=<?php echo $_GET['star']; ?>" name="logForm" id="logForm" >
    <div class="form-group">
      <label class="control-label col-sm-2"  for="usr_email">Rates</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="<?php echo $_GET['star']; ?> on 5" name="name" value="<?php echo $_GET['star']; ?>" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Your Comment:</label>
      <div class="col-sm-10">
       <textarea class="form-control" rows="3" name="com"></textarea>

      </div>
    </div>
    
    
    
    
    
    
 
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="saves">Save</button>
      </div>
    </div>
  </form>
  
  </div>
 