<a href="?add_debtors" class="btn btn-large btn-danger"><i class="glyphicon glyphicon-plus"></i> &nbsp; Add Debtors</a>
    
    
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
	  	echo '<meta http-equiv="Refresh" content="0; url= ?go_ahead&link='.$name.'&roll='.$yid.'">';
	 

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
 
       
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM daily where owed>0 order by id DESC") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
         <th>Transaction Date</th> 
         <th>Amount Owed</th> 
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['staffname']; ?></td>
                                            <td><?php  echo $bu['date']; ?></td>
                                            <td><?php  echo $bu['owed']; ?></td>
                                           
       <td>
       <a href="?more&link=View Debts Details&serve=<?php echo $bu['staffname']; ?>&date=<?php  echo $bu['date']; ?>&id=<?php echo $bu['cust_id']; ?>"><button class="btn btn-primary"   >View More <?php  echo $bu['name']; ?> </button></a> | 
       <a href="?paying_debts=<?php echo $bu['id']; ?>&link=Receiving Debts from <?php echo $bu['staffname']; ?>&name=<?php echo $bu['staffname']; ?>&owed=<?php  echo $bu['owed']; ?>&date=<?php  echo $bu['date']; ?>&cust_id=<?php  echo $bu['cust_id']; ?>"><button class="btn btn-success"  >Receive Debts</button></a>
       |
        <a href="?add_debts=<?php echo $bu['id']; ?>&link=Adding <?php echo $bu['staffname']; ?> Debts&name=<?php echo $bu['staffname']; ?>&owed=<?php  echo $bu['owed']; ?>&date=<?php  echo $bu['date']; ?>&cust_id=<?php  echo $bu['cust_id']; ?>"><button class="btn btn-danger"  >Add a Debts</button></a>
  
       
       </td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                   



        </div>
       <!--END PAGE CONTENT -->


    </div>

     <!--END MAIN WRAPPER -->

 
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
