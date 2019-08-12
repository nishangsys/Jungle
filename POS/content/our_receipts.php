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
        <?php $d=$con->query("SELECT * FROM daily,customers where daily.rec>0 and daily.cust_id=customers.client_id group by daily.cust_id,daily.date order by daily.id DESC") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Contact</th> 
         <th>Bill</th> 
         <th>Amount Paid</th> 
          <th>Amount Owed</th> 
          
          <th>Discount</th>
           <th>Date</th> 
          
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['stu_name']; ?></td>
                                            <td><?php  echo $bu['tel']; ?></td>
                                               <td><?php  echo $bu['total']; ?></td>
                                            
                                            <td><?php  echo $bu['rec']; ?></td>
                        <td style="color:#F00; font-weight:bold"><?php  echo $bu['owed']; ?></td>
                                               <td><?php  echo $bu['discount']; ?></td>
                                            <td><?php  echo $bu['date']; ?></td>
                                         
                                           
       <td>
       <a href="recs.php?roll=<?php  echo $bu['cust_id']; ?>&id=<?php  echo $bu['id']; ?>&date=<?php  echo $bu['date']; ?>" target="_new"><button class="btn btn-primary"   >Print Receipt</button></a>
       
      
       </td>
                                            
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