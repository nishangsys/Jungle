<?php
include '../includes/dbc.php';

?>
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="../assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- END PAGE LEVEL  STYLES -->
       <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
     <!-- END HEAD -->
     <!-- BEGIN BODY -->
<body class="padTop53 " >

     <!-- MAIN WRAPPER -->
    <div id="wrap">
    
    
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['cost'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$type=$_POST['type'];

//$df=$con->query("DELETE FROM styles where name='$shape' and disc='$disc' and branch='$branch'") or die(mysqli_error($con));




$do=$con->query("INSERT INTO styles SET name='$shape',cost='$cost',types='$type'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
}

///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM styles where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  
  /////////////for updates
  $doU=$con->query("SELECT * FROM styles WHERE id='".$_GET['update']."'") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	 $sha=$nam['name'];
	  $cost=$nam['cost'];
	  $type=$nam['types'];
	  $typeess=$nam['dept'];
	  $sp=$nam['sp'];
  }
  
  // now update
  if(isset($_POST['Update'])){
	  $shape=$_POST['name'];;
	  $cost=$_POST['cost'];
	   $type=$_POST['type'];
	
	  $dfGu=$con->query("UPDATE styles SET name='$shape',cost='$cost',types='$type' where id='".$_GET['update']."'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";

  }
 
  
?>
  <?PHP
						 echo $message;
						?>

  <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Service</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Name:" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Cost</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $cost; ?>" name="cost" required placeholder="Cost:" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Type </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $_GET['type']; ?><?php echo $type; ?>"  name="type"  placeholder="Type :"  required>
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="OK" class="btn btn-info">Submit</button>
  
    
  <?php
  if($_GET['update']!=''){
	  echo '<button type="submit" name="Update" class="btn btn-primary">UPDATE</button>';
  }
  ?>
  </div>
  </div>

  </form>


       
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM styles order by name  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Price</th> 
        <th>Service Type</th>  
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['cost']; ?></td>
                                       
                                          <td><?php  echo $bu['types']; ?></td>
                                       
                                           
       <td> <a href="?add_clients=<?php echo $_GET['videos']; ?>&link=Add Client&delete=<?php echo $bu['id']; ?>"><button class="btn btn-danger" onClick="return confirm('Are you sure you want to delete <?php echo $bu['name']; ?>')"  >Delete</button></a>
       |
       <a href="?add_clients=<?php echo $_GET['videos']; ?>&link=Add Client&update=<?php echo $bu['id']; ?>"><button class="btn btn-success"  >Update</button></a>
       
  
       
       </td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            </div>




        </div>
       <!--END PAGE CONTENT -->


    </div>

     <!--END MAIN WRAPPER -->

   <!-- FOOTER -->
    <div id="footer">
        <p>&copy;  binarytheme &nbsp;2014 &nbsp;</p>
    </div>
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
     <!-- END PAGE LEVEL SCRIPTS -->
</body>
     <!-- END BODY -->
</html>
