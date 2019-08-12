
                                    
                                    
                                    
                                    <?php include '../includes/dbc.php'; ?>

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
                           <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM users order by full_name") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>User</th>
        <th>User Name</th> 
         <th>date</th> 
         <th>tel</th>
         <th>Date/Time</th> 
          <th>Old qty</th> 
          
          
           
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
            <td><?php  echo $bu['full_name']; ?></td>
                                        
                                            <td><?php  echo $bu['user_name']; ?></td>
                                                     <td><?php  echo $bu['date']; ?></td>
                                                             <td><?php  echo $bu['country']; ?></td>
                                                        <td>  <a href="?create_user&link=Create Users&delete=<?php echo $bu['id'];  ?>"><button type="submit" class="btn btn-danger" name="submit" onclick="return confirm('Are you sure')">Delete</button></a>|  <a href="?change_pwd&link=Change Password&xxc=<?php echo $bu['id'];  ?>"><button type="submit" class="btn btn-success" name="submit" onclick="return confirm('Are you sure')">Change Password</button></a></td>                
              
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
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
                
</div></div>

                                   </table>

<?php
if(isset($_GET['delete'])){
	$id=$_GET['delete'];
  $sql = $con->query("DELETE FROM commands where id='$id' ") or die(mysqli_error($con))   ;

		 echo '<meta http-equiv="Refresh" content="0; url=appointments.php ">';
}
?>
 
<?php

		  if(isset($_GET['delete'])){
	echo $delete=$_GET['delete'];
 
	 $fj=$con->query("DELETE FROM users where id='$delete'  ") or die(mysqli_error($con));
	 echo "<script>alert('Actiond successfully ')</script>";
	 echo '<meta http-equiv="Refresh" content="0; url=?create_user&link=Create Users">';
	 
		  }
; ?>