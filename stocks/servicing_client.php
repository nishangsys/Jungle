
    <!-- END PAGE LEVEL  STYLES -->
       <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['tel'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$add=$_POST['addr'];

//$df=$con->query("DELETE FROM names where name='$shape' and disc='$disc' and branch='$branch'") or die(mysqli_error($con));




$do=$con->query("INSERT INTO names SET name='$shape',sector='$disc',dept='$add'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
}

///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM names where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  
  /////////////for updates
  $doU=$con->query("SELECT * FROM names WHERE id='".$_GET['update']."'") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	 $sha=$nam['name'];
	  $dis=$nam['disc'];
	  $contact=$nam['sector'];
	  $address=$nam['dept'];
	  $sp=$nam['sp'];
  }
  
  if(isset($_GET['serve'])){
	 $name=$_GET['serve'];
	 $tel=$_GET['tel'];
	 $addr=$_GET['addr'];
	 $date=date('d-m-Y');
	 $yaer=date('Y');
	 $yid=$_GET['id'];
	 $dfG=$con->query("insert into customers set stu_name='$name',tel='$tel',reg_date='$date',address='$addr',year='$yaer',yourid='$yid'") or die(mysqli_error($con));
	  	echo '<meta http-equiv="Refresh" stock="0; url= ?go_ahead&link='.$name.'&roll='.$yid.'">';
	 

  }
  
  // now update
  if(isset($_POST['Update'])){
	  $shape=$_POST['name'];;
	  $tel=$_POST['tel'];
	   $addr=$_POST['addr'];
	
	  $dfGu=$con->query("UPDATE names SET name='$shape',sector='$tel',dept='$addr' where id='".$_GET['update']."'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";

  }
 
  
?>
  <?PHP
						 echo $message;
						?>

  <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Customer's Names</label>
    <div class="col-sm-10"> 
      <input type="text" required="required" class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Name:" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Conatcts</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $contact; ?>" name="tel" required="required" placeholder="Contact:" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Address </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $address; ?>" name="addr"  placeholder="Address:" >
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
        <?php $d=$con->query("SELECT * FROM names GROUP BY name order by id DESC ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Contact</th> 
         <th>Adrees</th> 
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['sector']; ?></td>
                                            <td><?php  echo $bu['dept']; ?></td>
                                           
       <td>
       <a href="?servicing_client&link=Add Client&serve=<?php echo $bu['name']; ?>&tel=<?php  echo $bu['sector']; ?>&addr=<?php  echo $bu['dept']; ?>&id=<?php echo $bu['id']; ?>"><button class="btn btn-primary"   >Service <?php  echo $bu['name']; ?> </button></a> |
       <a href="?servicing_client=<?php echo $_GET['videos']; ?>&link=Add Client&update=<?php echo $bu['id']; ?>"><button class="btn btn-success"  >Update</button></a>
       
  
       
       </td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                  <!--END MAIN WRAPPER -->

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
  </div>

   