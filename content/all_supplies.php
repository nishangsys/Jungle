<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
     <script language="JavaScript" src="../js/pop-up.js"></script> 
        <?php 
		include '../includes/dbc.php';
?>
        
        
        
       
       
       
  <div class="col-sm-12" style="clear:both; ">
          <div class="well">
         
	

                        <div class="panel-body" style="clear:both"  >
                        
                            <div class="table-responsive" style="margin-top:20px">
                            

                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                

        </h3>
        <?php $d=$con->query("SELECT * FROM creditors order by name  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                          <th>S/N</th>
        <th>NAME</th>
        <th>Amount Owed</th>
        <th>Tel</th>
       
        <th>ACTION</th>
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($df=$d->fetch_assoc()){ ?>

      <tr>
       
            <td><?php  echo $i++; ?></td>
        <td><?php echo $name=$df['name']; ?></td>
        <td><?php echo $df['owed']; ?></td>
         <td><?php echo $df['tel']; ?></td>
      

         <td>
          
          
            <a href=javascript:popcontact('../content/all_yoursubs.php?yid=<?php echo $df['id']; ?>') style="color:#fff; text-decoration:blink">     
        <button class="btn btn-primary"><i class="icon-pencil icon-white"></i> View Supplies </button>    
        
</a></td>

       
      
                                            
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
    
    </div>
   </div>